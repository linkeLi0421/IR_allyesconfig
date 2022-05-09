; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/ni_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/ni_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.radeon_clock = type { %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_mc = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i64, i64 }
%struct.radeon_gart = type { i32, ptr, ptr, i32, i32, i32, ptr, ptr, i8 }
%struct.radeon_mode_info = type { ptr, ptr, i32, i8, [6 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, ptr, i32 }
%struct.radeon_scratch = type { i32, i32, [32 x i8], [32 x i32] }
%struct.radeon_doorbell = type { i32, i32, ptr, i32, [32 x i32] }
%struct.radeon_mman = type { %struct.ttm_device, i8 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.radeon_fence_driver = type { ptr, i32, i64, ptr, [8 x i64], %struct.atomic64_t, i8, i8, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.radeon_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [8 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.radeon_irq = type { i8, %struct.spinlock, [8 x %struct.atomic_t], [6 x i8], [6 x %struct.atomic_t], %struct.wait_queue_head, [7 x i8], [7 x i8], %union.radeon_irq_stat_regs, i8 }
%union.radeon_irq_stat_regs = type { %struct.evergreen_irq_stat_regs }
%struct.evergreen_irq_stat_regs = type { [6 x i32], [6 x i32], [6 x i32] }
%struct.radeon_gem = type { %struct.mutex, %struct.list_head }
%struct.radeon_pm = type { %struct.mutex, %struct.rw_semaphore, i32, i32, i32, i8, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, ptr, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i32, i32, [7 x %struct.radeon_pm_profile], i32, ptr, i8, i8, i8, i8, i8, i8, %struct.radeon_dpm }
%union.dfixed = type { i32 }
%struct.radeon_pm_profile = type { i32, i32, i32, i32 }
%struct.radeon_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, [6 x %struct.radeon_vce_state], i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, %struct.radeon_dpm_dynamic_state, %struct.radeon_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, i8, %struct.radeon_dpm_thermal, i32, i32, i32 }
%struct.radeon_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.radeon_dpm_dynamic_state = type { %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_array, %struct.radeon_clock_array, %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits, i32, i32, i16, i16, %struct.radeon_cac_leakage_table, %struct.radeon_phase_shedding_limits_table, ptr, ptr }
%struct.radeon_uvd_clock_voltage_dependency_table = type { i8, ptr }
%struct.radeon_vce_clock_voltage_dependency_table = type { i8, ptr }
%struct.radeon_clock_voltage_dependency_table = type { i32, ptr }
%struct.radeon_clock_array = type { i32, ptr }
%struct.radeon_clock_and_voltage_limits = type { i32, i32, i16, i16 }
%struct.radeon_cac_leakage_table = type { i32, ptr }
%struct.radeon_phase_shedding_limits_table = type { i32, ptr }
%struct.radeon_dpm_fan = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i8 }
%struct.radeon_dpm_thermal = type { %struct.work_struct, i32, i32, i8 }
%struct.radeon_uvd = type { i8, ptr, ptr, i64, i32, [30 x %struct.atomic_t], [30 x ptr], [30 x i32], %struct.delayed_work }
%struct.radeon_vce = type { ptr, i64, i32, i32, [16 x %struct.atomic_t], [16 x ptr], [16 x i32], %struct.delayed_work, i32 }
%struct.radeon_wb = type { ptr, ptr, i64, i8, i8 }
%struct.radeon_dummy_page = type { i64, ptr, i32 }
%struct.radeon_surface_reg = type { ptr }
%struct.r600_vram_scratch = type { ptr, ptr, i64 }
%struct.r600_ih = type { ptr, ptr, i32, i32, i64, i32, %struct.atomic_t, i8 }
%struct.radeon_rlc = type { ptr, i64, ptr, ptr, i32, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i32 }
%struct.radeon_mec = type { ptr, i64, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.r600_audio = type { i8, [7 x %struct.r600_audio_pin], i32, ptr, ptr, ptr }
%struct.r600_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.radeon_vm_manager = type { [16 x ptr], i32, i32, i64, i8, [16 x i32] }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.radeon_vm = type { %struct.mutex, %struct.rb_root_cached, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, [8 x %struct.radeon_vm_id] }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.radeon_vm_id = type { i32, i64, ptr, ptr }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.94, %struct.anon.95, [8 x ptr], %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103 }
%struct.anon.94 = type { ptr, ptr, ptr }
%struct.anon.95 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [35 x i8] c"../drivers/gpu/drm/radeon/ni_dma.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 2721, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_dma_get_rptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wb2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %2 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb2, align 4
  %rptr_offs = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 3
  %4 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr_offs, align 4
  %div9 = lshr i32 %5, 2
  %arrayidx = getelementptr i32, ptr %3, i32 %div9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  %. = select i1 %cmp, i32 53256, i32 55304
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %.
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then
  %rptr.0 = phi i32 [ %7, %if.then ], [ %13, %if.else ]
  %and = lshr i32 %rptr.0, 2
  %shr = and i32 %and, 65535
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_dma_get_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 53260, i32 55308
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %.
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %and = lshr i32 %5, 2
  %shr = and i32 %and, 65535
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_set_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 53260, i32 55308
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wptr, align 4
  %shl = shl i32 %3, 2
  %and = and i32 %shl, 262140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_ring_ib_execute(ptr noundef %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %vm = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 6
  %2 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5 = getelementptr %struct.radeon_vm, ptr %3, i32 0, i32 10, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 8
  %phi.bo = shl i32 %5, 20
  %phi.bo52 = and i32 %phi.bo, 15728640
  %phi.bo53 = or i32 %phi.bo52, 1073741824
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo53, %cond.true ], [ 1073741824, %entry.cond.end_crit_edge ]
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr, align 4
  %add = add i32 %9, 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %next_rptr.0 = phi i32 [ %add, %if.then ], [ %inc, %while.cond.while.cond_crit_edge ]
  %and = and i32 %next_rptr.0, 7
  %cmp.not = icmp eq i32 %and, 5
  %inc = add i32 %next_rptr.0, 1
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add7 = add i32 %next_rptr.0, 3
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %while.end.radeon_ring_write.exit_crit_edge

while.end.radeon_ring_write.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %while.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %12 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring1.i, align 8
  %14 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wptr, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %wptr, align 4
  %arrayidx.i = getelementptr i32, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 536870913, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %17 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ptr_mask.i, align 4
  %19 = load i32, ptr %wptr, align 4
  %and.i = and i32 %19, %18
  store i32 %and.i, ptr %wptr, align 4
  %20 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %22 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %23, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %next_rptr_gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 5
  %24 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %next_rptr_gpu_addr, align 8
  %26 = trunc i64 %25 to i32
  %conv = and i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i55 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i55, label %if.then.i56, label %radeon_ring_write.exit.radeon_ring_write.exit66_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit66_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit66

if.then.i56:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit66

radeon_ring_write.exit66:                         ; preds = %if.then.i56, %radeon_ring_write.exit.radeon_ring_write.exit66_crit_edge
  %27 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i, align 8
  %29 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr, align 4
  %inc.i59 = add i32 %30, 1
  store i32 %inc.i59, ptr %wptr, align 4
  %arrayidx.i60 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %conv, ptr %arrayidx.i60, align 4
  %32 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ptr_mask.i, align 4
  %34 = load i32, ptr %wptr, align 4
  %and.i62 = and i32 %34, %33
  store i32 %and.i62, ptr %wptr, align 4
  %35 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count_dw.i, align 4
  %dec.i63 = add i32 %36, -1
  store i32 %dec.i63, ptr %count_dw.i, align 4
  %37 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i65 = add i32 %38, -1
  store i32 %dec4.i65, ptr %ring_free_dw.i, align 8
  %39 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %next_rptr_gpu_addr, align 8
  %shr = lshr i64 %40, 32
  %conv11 = trunc i64 %shr to i32
  %and12 = and i32 %conv11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i63)
  %cmp.i68 = icmp slt i32 %dec.i63, 1
  br i1 %cmp.i68, label %if.then.i69, label %radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge

radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge: ; preds = %radeon_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit79

if.then.i69:                                      ; preds = %radeon_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit79

radeon_ring_write.exit79:                         ; preds = %if.then.i69, %radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 8
  %43 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wptr, align 4
  %inc.i72 = add i32 %44, 1
  store i32 %inc.i72, ptr %wptr, align 4
  %arrayidx.i73 = getelementptr i32, ptr %42, i32 %44
  %45 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %and12, ptr %arrayidx.i73, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ptr_mask.i, align 4
  %48 = load i32, ptr %wptr, align 4
  %and.i75 = and i32 %48, %47
  store i32 %and.i75, ptr %wptr, align 4
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 4
  %dec.i76 = add i32 %50, -1
  store i32 %dec.i76, ptr %count_dw.i, align 4
  %51 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i78 = add i32 %52, -1
  store i32 %dec4.i78, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i76)
  %cmp.i81 = icmp slt i32 %dec.i76, 1
  br i1 %cmp.i81, label %if.then.i82, label %radeon_ring_write.exit79.radeon_ring_write.exit92_crit_edge

radeon_ring_write.exit79.radeon_ring_write.exit92_crit_edge: ; preds = %radeon_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit92

if.then.i82:                                      ; preds = %radeon_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit92

radeon_ring_write.exit92:                         ; preds = %if.then.i82, %radeon_ring_write.exit79.radeon_ring_write.exit92_crit_edge
  %53 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1.i, align 8
  %55 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wptr, align 4
  %inc.i85 = add i32 %56, 1
  store i32 %inc.i85, ptr %wptr, align 4
  %arrayidx.i86 = getelementptr i32, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %add7, ptr %arrayidx.i86, align 4
  %58 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ptr_mask.i, align 4
  %60 = load i32, ptr %wptr, align 4
  %and.i88 = and i32 %60, %59
  store i32 %and.i88, ptr %wptr, align 4
  %61 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count_dw.i, align 4
  %dec.i89 = add i32 %62, -1
  store i32 %dec.i89, ptr %count_dw.i, align 4
  %63 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i91 = add i32 %64, -1
  store i32 %dec4.i91, ptr %ring_free_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %radeon_ring_write.exit92, %cond.end.if.end_crit_edge
  %wptr14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %65 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wptr14, align 4
  %and15145 = and i32 %66, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and15145)
  %cmp16.not146 = icmp eq i32 %and15145, 5
  br i1 %cmp16.not146, label %if.end.while.end19_crit_edge, label %while.body18.lr.ph

if.end.while.end19_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end19

while.body18.lr.ph:                               ; preds = %if.end
  %count_dw.i93 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %ring1.i96 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %ptr_mask.i100 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %ring_free_dw.i103 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  br label %while.body18

while.body18:                                     ; preds = %radeon_ring_write.exit105.while.body18_crit_edge, %while.body18.lr.ph
  %67 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i94 = icmp slt i32 %68, 1
  br i1 %cmp.i94, label %if.then.i95, label %while.body18.radeon_ring_write.exit105_crit_edge

while.body18.radeon_ring_write.exit105_crit_edge: ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit105

if.then.i95:                                      ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit105

radeon_ring_write.exit105:                        ; preds = %if.then.i95, %while.body18.radeon_ring_write.exit105_crit_edge
  %69 = ptrtoint ptr %ring1.i96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i96, align 8
  %71 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wptr14, align 4
  %inc.i98 = add i32 %72, 1
  store i32 %inc.i98, ptr %wptr14, align 4
  %arrayidx.i99 = getelementptr i32, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 -268435456, ptr %arrayidx.i99, align 4
  %74 = ptrtoint ptr %ptr_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ptr_mask.i100, align 4
  %76 = load i32, ptr %wptr14, align 4
  %and.i101 = and i32 %76, %75
  store i32 %and.i101, ptr %wptr14, align 4
  %77 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i93, align 4
  %dec.i102 = add i32 %78, -1
  store i32 %dec.i102, ptr %count_dw.i93, align 4
  %79 = ptrtoint ptr %ring_free_dw.i103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ring_free_dw.i103, align 8
  %dec4.i104 = add i32 %80, -1
  store i32 %dec4.i104, ptr %ring_free_dw.i103, align 8
  %and15 = and i32 %and.i101, 7
  %cmp16.not = icmp eq i32 %and15, 5
  br i1 %cmp16.not, label %radeon_ring_write.exit105.while.end19_crit_edge, label %radeon_ring_write.exit105.while.body18_crit_edge

radeon_ring_write.exit105.while.body18_crit_edge: ; preds = %radeon_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body18

radeon_ring_write.exit105.while.end19_crit_edge:  ; preds = %radeon_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end19

while.end19:                                      ; preds = %radeon_ring_write.exit105.while.end19_crit_edge, %if.end.while.end19_crit_edge
  %count_dw.i106 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %81 = ptrtoint ptr %count_dw.i106 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count_dw.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i107 = icmp slt i32 %82, 1
  br i1 %cmp.i107, label %if.then.i108, label %while.end19.radeon_ring_write.exit118_crit_edge

while.end19.radeon_ring_write.exit118_crit_edge:  ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit118

if.then.i108:                                     ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit118

radeon_ring_write.exit118:                        ; preds = %if.then.i108, %while.end19.radeon_ring_write.exit118_crit_edge
  %ring1.i109 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %83 = ptrtoint ptr %ring1.i109 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ring1.i109, align 8
  %85 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wptr14, align 4
  %inc.i111 = add i32 %86, 1
  store i32 %inc.i111, ptr %wptr14, align 4
  %arrayidx.i112 = getelementptr i32, ptr %84, i32 %86
  %87 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %cond, ptr %arrayidx.i112, align 4
  %ptr_mask.i113 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %88 = ptrtoint ptr %ptr_mask.i113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ptr_mask.i113, align 4
  %90 = load i32, ptr %wptr14, align 4
  %and.i114 = and i32 %90, %89
  store i32 %and.i114, ptr %wptr14, align 4
  %91 = ptrtoint ptr %count_dw.i106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i106, align 4
  %dec.i115 = add i32 %92, -1
  store i32 %dec.i115, ptr %count_dw.i106, align 4
  %ring_free_dw.i116 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %93 = ptrtoint ptr %ring_free_dw.i116 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ring_free_dw.i116, align 8
  %dec4.i117 = add i32 %94, -1
  store i32 %dec4.i117, ptr %ring_free_dw.i116, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %95 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %gpu_addr, align 8
  %97 = trunc i64 %96 to i32
  %conv23 = and i32 %97, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i115)
  %cmp.i120 = icmp slt i32 %dec.i115, 1
  br i1 %cmp.i120, label %if.then.i121, label %radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge

radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge: ; preds = %radeon_ring_write.exit118
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit131

if.then.i121:                                     ; preds = %radeon_ring_write.exit118
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit131

radeon_ring_write.exit131:                        ; preds = %if.then.i121, %radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge
  %98 = ptrtoint ptr %ring1.i109 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ring1.i109, align 8
  %100 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wptr14, align 4
  %inc.i124 = add i32 %101, 1
  store i32 %inc.i124, ptr %wptr14, align 4
  %arrayidx.i125 = getelementptr i32, ptr %99, i32 %101
  %102 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %conv23, ptr %arrayidx.i125, align 4
  %103 = ptrtoint ptr %ptr_mask.i113 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ptr_mask.i113, align 4
  %105 = load i32, ptr %wptr14, align 4
  %and.i127 = and i32 %105, %104
  store i32 %and.i127, ptr %wptr14, align 4
  %106 = ptrtoint ptr %count_dw.i106 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count_dw.i106, align 4
  %dec.i128 = add i32 %107, -1
  store i32 %dec.i128, ptr %count_dw.i106, align 4
  %108 = ptrtoint ptr %ring_free_dw.i116 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ring_free_dw.i116, align 8
  %dec4.i130 = add i32 %109, -1
  store i32 %dec4.i130, ptr %ring_free_dw.i116, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %110 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %length_dw, align 4
  %112 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %gpu_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i128)
  %cmp.i133 = icmp slt i32 %dec.i128, 1
  br i1 %cmp.i133, label %if.then.i134, label %radeon_ring_write.exit131.radeon_ring_write.exit144_crit_edge

radeon_ring_write.exit131.radeon_ring_write.exit144_crit_edge: ; preds = %radeon_ring_write.exit131
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit144

if.then.i134:                                     ; preds = %radeon_ring_write.exit131
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit144

radeon_ring_write.exit144:                        ; preds = %if.then.i134, %radeon_ring_write.exit131.radeon_ring_write.exit144_crit_edge
  %shl24 = shl i32 %111, 12
  %shr26 = lshr i64 %113, 32
  %conv28 = trunc i64 %shr26 to i32
  %and29 = and i32 %conv28, 255
  %or30 = or i32 %and29, %shl24
  %114 = ptrtoint ptr %ring1.i109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ring1.i109, align 8
  %116 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %wptr14, align 4
  %inc.i137 = add i32 %117, 1
  store i32 %inc.i137, ptr %wptr14, align 4
  %arrayidx.i138 = getelementptr i32, ptr %115, i32 %117
  %118 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 %or30, ptr %arrayidx.i138, align 4
  %119 = ptrtoint ptr %ptr_mask.i113 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ptr_mask.i113, align 4
  %121 = load i32, ptr %wptr14, align 4
  %and.i140 = and i32 %121, %120
  store i32 %and.i140, ptr %wptr14, align 4
  %122 = ptrtoint ptr %count_dw.i106 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %count_dw.i106, align 4
  %dec.i141 = add i32 %123, -1
  store i32 %dec.i141, ptr %count_dw.i106, align 4
  %124 = ptrtoint ptr %ring_free_dw.i116 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ring_free_dw.i116, align 8
  %dec4.i143 = add i32 %125, -1
  store i32 %dec4.i143, ptr %ring_free_dw.i116, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_stop(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %copy_ring_index, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %visible_vram_size, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 53248
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %9) #5, !srcloc !15
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %13, i32 55296
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #5, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %17, i32 55296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %15) #5, !srcloc !15
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 17
  %18 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ready, align 8
  %ready9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4, i32 17
  %19 = ptrtoint ptr %ready9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ready9, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_set_active_vram_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_dma_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  %arrayidx4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  br label %for.body

for.cond:                                         ; preds = %for.body
  br i1 %cmp1, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %cmp1 = phi i1 [ true, %entry ], [ false, %for.cond.for.body_crit_edge ]
  %ring.0 = select i1 %cmp1, ptr %arrayidx, ptr %arrayidx4
  %reg_offset.0 = select i1 %cmp1, i32 0, i32 2048
  %wb_offset.0 = select i1 %cmp1, i32 1792, i32 2304
  %add = or i32 %reg_offset.0, 53316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !15
  %add5 = or i32 %reg_offset.0, 53320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %3, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 0) #5, !srcloc !15
  %ring_size = getelementptr inbounds %struct.radeon_ring, ptr %ring.0, i32 0, i32 9
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_size, align 4
  %div159 = lshr i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i = icmp ugt i32 %5, 7
  %sub.i162 = add nsw i32 %div159, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i162, i1 false) #5, !range !16
  %.neg = mul nsw i32 %6, -2
  %add.i.op = add nsw i32 %.neg, 64
  %shl = select i1 %cmp.i, i32 %add.i.op, i32 0
  %or = or i32 %shl, 8704
  %add41 = or i32 %reg_offset.0, 53248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %9, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %7) #5, !srcloc !15
  %add42 = or i32 %reg_offset.0, 53256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %11, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 0) #5, !srcloc !15
  %add43 = or i32 %reg_offset.0, 53260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %13, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 0) #5, !srcloc !15
  %add44 = or i32 %reg_offset.0, 53276
  %14 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %gpu_addr, align 8
  %conv45 = zext i32 %wb_offset.0 to i64
  %add46 = add i64 %15, %conv45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %sh.diff = lshr i64 %add46, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %and = and i32 %tr.sh.diff, -16777216
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %17, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %and) #5, !srcloc !15
  %add49 = or i32 %reg_offset.0, 53280
  %18 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gpu_addr, align 8
  %20 = trunc i64 %19 to i32
  %21 = add i32 %wb_offset.0, %20
  %conv55 = and i32 %21, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv55) #5
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %24, i32 %add49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %22) #5, !srcloc !15
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enabled, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  %or58 = or i32 %shl, 12800
  %spec.select = select i1 %tobool.not, i32 %or, i32 %or58
  %add60 = or i32 %reg_offset.0, 53252
  %gpu_addr61 = getelementptr inbounds %struct.radeon_ring, ptr %ring.0, i32 0, i32 14
  %27 = ptrtoint ptr %gpu_addr61 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %gpu_addr61, align 8
  %shr62 = lshr i64 %28, 8
  %conv63 = trunc i64 %shr62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv63) #5
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %31, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %29) #5, !srcloc !15
  %add65 = or i32 %reg_offset.0, 53284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %33, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 285212800) #5, !srcloc !15
  %add66 = or i32 %reg_offset.0, 53292
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %35, i32 %add66
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #5, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  %37 = and i32 %36, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %39, i32 %add66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %37) #5, !srcloc !15
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring.0, i32 0, i32 7
  %40 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %wptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %42, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 0) #5, !srcloc !15
  %or74 = or i32 %spec.select, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %or74) #5
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i184 = getelementptr i8, ptr %45, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %43) #5, !srcloc !15
  %ready = getelementptr inbounds %struct.radeon_ring, ptr %ring.0, i32 0, i32 17
  %46 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ready, align 8
  %47 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %asic, align 8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring.0, i32 0, i32 19
  %49 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx, align 8
  %arrayidx76 = getelementptr %struct.radeon_asic, ptr %48, i32 0, i32 14, i32 %50
  %51 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx76, align 4
  %ring_test = getelementptr inbounds %struct.radeon_asic_ring, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %ring_test to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring_test, align 4
  %call77 = tail call i32 %54(ptr noundef %rdev, ptr noundef %ring.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %for.cond, label %if.then79

if.then79:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %ready.le = getelementptr inbounds %struct.radeon_ring, ptr %ring.0, i32 0, i32 17
  %55 = ptrtoint ptr %ready.le to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ready.le, align 8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %56 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %57, i32 0, i32 17, i32 5
  %58 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %copy_ring_index, align 4
  %.off = add i32 %59, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then91, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then91:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %real_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %60 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %real_vram_size, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %61) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %for.end.cleanup_crit_edge, %if.then79
  ret i32 %call77
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cayman_dma_stop(ptr noundef %rdev)
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %arrayidx) #5
  %arrayidx2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %arrayidx2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_fini(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cayman_dma_is_lockup(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cayman_gpu_check_soft_reset(ptr noundef %rdev) #5
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 4, i32 32
  %and = and i32 %., %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_ring_lockup_update(ptr noundef %rdev, ptr noundef %ring) #5
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call zeroext i1 @radeon_ring_test_lockup(ptr noundef %rdev, ptr noundef %ring) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1
  %retval.0 = phi i1 [ %call3, %if.end2 ], [ false, %if.then1 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_gpu_check_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_lockup_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_vm_copy_pages(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not52 = icmp eq i32 %count, 0
  br i1 %tobool.not52, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %count.addr.055 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %src.addr.054 = phi i64 [ %src, %while.body.lr.ph ], [ %add31, %while.body.while.body_crit_edge ]
  %pe.addr.053 = phi i64 [ %pe, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %mul = shl i32 %count.addr.055, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048574)
  %or = or i32 %0, 805306368
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.053 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %7, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx5, align 4
  %conv7 = trunc i64 %src.addr.054 to i32
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %10, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7, ptr %arrayidx11, align 4
  %shr = lshr i64 %pe.addr.053, 32
  %conv13 = trunc i64 %shr to i32
  %and14 = and i32 %conv13, 255
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %13, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and14, ptr %arrayidx18, align 4
  %shr19 = lshr i64 %src.addr.054, 32
  %conv21 = trunc i64 %shr19 to i32
  %and22 = and i32 %conv21, 255
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc25 = add i32 %16, 1
  store i32 %inc25, ptr %length_dw, align 4
  %arrayidx26 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and22, ptr %arrayidx26, align 4
  %mul27 = shl nuw nsw i32 %0, 2
  %conv28 = zext i32 %mul27 to i64
  %add = add i64 %pe.addr.053, %conv28
  %add31 = add i64 %src.addr.054, %conv28
  %div51 = lshr exact i32 %0, 1
  %sub = sub i32 %count.addr.055, %div51
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_vm_write_pages(ptr noundef %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not73 = icmp eq i32 %count, 0
  br i1 %tobool.not73, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %and14 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %and17 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %conv23 = zext i32 %incr to i64
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end22.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %count.addr.1.lcssa = phi i32 [ %count.addr.074, %while.body.while.cond.loopexit_crit_edge ], [ %dec, %if.end22.while.cond.loopexit_crit_edge ]
  %addr.addr.1.lcssa = phi i64 [ %addr.addr.075, %while.body.while.cond.loopexit_crit_edge ], [ %add, %if.end22.while.cond.loopexit_crit_edge ]
  %pe.addr.1.lcssa = phi i64 [ %pe.addr.076, %while.body.while.cond.loopexit_crit_edge ], [ %add38, %if.end22.while.cond.loopexit_crit_edge ]
  %tobool.not = icmp eq i32 %count.addr.1.lcssa, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.076 = phi i64 [ %pe, %while.body.lr.ph ], [ %pe.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %addr.addr.075 = phi i64 [ %addr, %while.body.lr.ph ], [ %addr.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %count.addr.074 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %mul = shl i32 %count.addr.074, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048574)
  %or = or i32 %0, 536870912
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.076 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %pe.addr.076, 32
  %conv6 = trunc i64 %shr to i32
  %and7 = and i32 %conv6, 255
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %10, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp12.not65 = icmp eq i32 %0, 0
  br i1 %cmp12.not65, label %while.body.while.cond.loopexit_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %while.body.for.body_crit_edge
  %ndw.070 = phi i32 [ %sub, %if.end22.for.body_crit_edge ], [ %0, %while.body.for.body_crit_edge ]
  %pe.addr.169 = phi i64 [ %add38, %if.end22.for.body_crit_edge ], [ %pe.addr.076, %while.body.for.body_crit_edge ]
  %addr.addr.167 = phi i64 [ %add, %if.end22.for.body_crit_edge ], [ %addr.addr.075, %while.body.for.body_crit_edge ]
  %count.addr.166 = phi i32 [ %dec, %if.end22.for.body_crit_edge ], [ %count.addr.074, %while.body.for.body_crit_edge ]
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i64 @radeon_vm_map_gart(ptr noundef %rdev, i64 noundef %addr.addr.167) #5
  %extract.t = trunc i64 %call to i32
  %extract = lshr i64 %call, 32
  %extract.t62 = trunc i64 %extract to i32
  br label %if.end22

if.else:                                          ; preds = %for.body
  br i1 %tobool18.not, label %if.else.if.end22_crit_edge, label %if.then19

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t61 = trunc i64 %addr.addr.167 to i32
  %extract63 = lshr i64 %addr.addr.167, 32
  %extract.t64 = trunc i64 %extract63 to i32
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.else.if.end22_crit_edge, %if.then16
  %value.0.off0 = phi i32 [ %extract.t, %if.then16 ], [ %extract.t61, %if.then19 ], [ 0, %if.else.if.end22_crit_edge ]
  %value.0.off32 = phi i32 [ %extract.t62, %if.then16 ], [ %extract.t64, %if.then19 ], [ 0, %if.else.if.end22_crit_edge ]
  %add = add i64 %addr.addr.167, %conv23
  %conv26 = or i32 %value.0.off0, %flags
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 8
  %14 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length_dw, align 4
  %inc29 = add i32 %15, 1
  store i32 %inc29, ptr %length_dw, align 4
  %arrayidx30 = getelementptr i32, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv26, ptr %arrayidx30, align 4
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc36 = add i32 %18, 1
  store i32 %inc36, ptr %length_dw, align 4
  %arrayidx37 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %value.0.off32, ptr %arrayidx37, align 4
  %sub = add i32 %ndw.070, -2
  %dec = add i32 %count.addr.166, -1
  %add38 = add i64 %pe.addr.169, 8
  %cmp12.not = icmp eq i32 %sub, 0
  br i1 %cmp12.not, label %if.end22.while.cond.loopexit_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end22.while.cond.loopexit_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @radeon_vm_map_gart(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_vm_set_pages(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not81 = icmp eq i32 %count, 0
  br i1 %tobool.not81, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.084 = phi i64 [ %pe, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %addr.addr.083 = phi i64 [ %addr, %while.body.lr.ph ], [ %add48, %while.body.while.body_crit_edge ]
  %count.addr.082 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %mul = shl i32 %count.addr.082, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048574)
  %extract.t = trunc i64 %addr.addr.083 to i32
  %extract = lshr i64 %addr.addr.083, 32
  %extract.t80 = trunc i64 %extract to i32
  %value.0.off0 = select i1 %tobool1.not, i32 0, i32 %extract.t
  %value.0.off32 = select i1 %tobool1.not, i32 0, i32 %extract.t80
  %or = or i32 %0, 606076928
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.084 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %7, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx8, align 4
  %shr = lshr i64 %pe.addr.084, 32
  %conv10 = trunc i64 %shr to i32
  %and11 = and i32 %conv10, 255
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc14 = add i32 %10, 1
  store i32 %inc14, ptr %length_dw, align 4
  %arrayidx15 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and11, ptr %arrayidx15, align 4
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc18 = add i32 %13, 1
  store i32 %inc18, ptr %length_dw, align 4
  %arrayidx19 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %arrayidx19, align 4
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc22 = add i32 %16, 1
  store i32 %inc22, ptr %length_dw, align 4
  %arrayidx23 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx23, align 4
  %18 = load ptr, ptr %ptr, align 8
  %19 = load i32, ptr %length_dw, align 4
  %inc27 = add i32 %19, 1
  store i32 %inc27, ptr %length_dw, align 4
  %arrayidx28 = getelementptr i32, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %value.0.off0, ptr %arrayidx28, align 4
  %21 = load ptr, ptr %ptr, align 8
  %22 = load i32, ptr %length_dw, align 4
  %inc34 = add i32 %22, 1
  store i32 %inc34, ptr %length_dw, align 4
  %arrayidx35 = getelementptr i32, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %value.0.off32, ptr %arrayidx35, align 4
  %24 = load ptr, ptr %ptr, align 8
  %25 = load i32, ptr %length_dw, align 4
  %inc38 = add i32 %25, 1
  store i32 %inc38, ptr %length_dw, align 4
  %arrayidx39 = getelementptr i32, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %incr, ptr %arrayidx39, align 4
  %27 = load ptr, ptr %ptr, align 8
  %28 = load i32, ptr %length_dw, align 4
  %inc42 = add i32 %28, 1
  store i32 %inc42, ptr %length_dw, align 4
  %arrayidx43 = getelementptr i32, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx43, align 4
  %mul44 = shl nuw nsw i32 %0, 2
  %conv45 = zext i32 %mul44 to i64
  %add = add i64 %pe.addr.084, %conv45
  %div79 = lshr exact i32 %0, 1
  %mul46 = mul i32 %div79, %incr
  %conv47 = zext i32 %mul46 to i64
  %add48 = add i64 %addr.addr.083, %conv47
  %sub = sub i32 %count.addr.082, %div79
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_vm_pad_ib(ptr nocapture noundef %ib) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %0 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length_dw, align 4
  %and4 = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not5 = icmp eq i32 %and4, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %7, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 8
  %inc = add i32 %2, 1
  %5 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -268435456, ptr %arrayidx, align 4
  %7 = load i32, ptr %length_dw, align 4
  %and = and i32 %7, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_dma_vm_flush(ptr nocapture noundef readnone %rdev, ptr noundef %ring, i32 noundef %vm_id, i64 noundef %pd_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -1879048192, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %7 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask.i, align 4
  %9 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %9, %8
  store i32 %and.i, ptr %wptr.i, align 4
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %12 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %13, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %14 = add i32 %vm_id, 1359
  %shr = and i32 %14, 1072758783
  %or = or i32 %shr, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i17 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i17, label %if.then.i18, label %radeon_ring_write.exit.radeon_ring_write.exit28_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit28_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit28

if.then.i18:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit28

radeon_ring_write.exit28:                         ; preds = %if.then.i18, %radeon_ring_write.exit.radeon_ring_write.exit28_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 8
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wptr.i, align 4
  %inc.i21 = add i32 %18, 1
  store i32 %inc.i21, ptr %wptr.i, align 4
  %arrayidx.i22 = getelementptr i32, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %or, ptr %arrayidx.i22, align 4
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ptr_mask.i, align 4
  %22 = load i32, ptr %wptr.i, align 4
  %and.i24 = and i32 %22, %21
  store i32 %and.i24, ptr %wptr.i, align 4
  %23 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count_dw.i, align 4
  %dec.i25 = add i32 %24, -1
  store i32 %dec.i25, ptr %count_dw.i, align 4
  %25 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i27 = add i32 %26, -1
  store i32 %dec4.i27, ptr %ring_free_dw.i, align 8
  %shr1 = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i25)
  %cmp.i30 = icmp slt i32 %dec.i25, 1
  br i1 %cmp.i30, label %if.then.i31, label %radeon_ring_write.exit28.radeon_ring_write.exit41_crit_edge

radeon_ring_write.exit28.radeon_ring_write.exit41_crit_edge: ; preds = %radeon_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit41

if.then.i31:                                      ; preds = %radeon_ring_write.exit28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit41

radeon_ring_write.exit41:                         ; preds = %if.then.i31, %radeon_ring_write.exit28.radeon_ring_write.exit41_crit_edge
  %27 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i, align 8
  %29 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr.i, align 4
  %inc.i34 = add i32 %30, 1
  store i32 %inc.i34, ptr %wptr.i, align 4
  %arrayidx.i35 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %conv, ptr %arrayidx.i35, align 4
  %32 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ptr_mask.i, align 4
  %34 = load i32, ptr %wptr.i, align 4
  %and.i37 = and i32 %34, %33
  store i32 %and.i37, ptr %wptr.i, align 4
  %35 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count_dw.i, align 4
  %dec.i38 = add i32 %36, -1
  store i32 %dec.i38, ptr %count_dw.i, align 4
  %37 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i40 = add i32 %38, -1
  store i32 %dec4.i40, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i38)
  %cmp.i43 = icmp slt i32 %dec.i38, 1
  br i1 %cmp.i43, label %if.then.i44, label %radeon_ring_write.exit41.radeon_ring_write.exit54_crit_edge

radeon_ring_write.exit41.radeon_ring_write.exit54_crit_edge: ; preds = %radeon_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit54

if.then.i44:                                      ; preds = %radeon_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit54

radeon_ring_write.exit54:                         ; preds = %if.then.i44, %radeon_ring_write.exit41.radeon_ring_write.exit54_crit_edge
  %39 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ring1.i, align 8
  %41 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wptr.i, align 4
  %inc.i47 = add i32 %42, 1
  store i32 %inc.i47, ptr %wptr.i, align 4
  %arrayidx.i48 = getelementptr i32, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 -1879048192, ptr %arrayidx.i48, align 4
  %44 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptr_mask.i, align 4
  %46 = load i32, ptr %wptr.i, align 4
  %and.i50 = and i32 %46, %45
  store i32 %and.i50, ptr %wptr.i, align 4
  %47 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count_dw.i, align 4
  %dec.i51 = add i32 %48, -1
  store i32 %dec.i51, ptr %count_dw.i, align 4
  %49 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i53 = add i32 %50, -1
  store i32 %dec4.i53, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i51)
  %cmp.i56 = icmp slt i32 %dec.i51, 1
  br i1 %cmp.i56, label %if.then.i57, label %radeon_ring_write.exit54.radeon_ring_write.exit67_crit_edge

radeon_ring_write.exit54.radeon_ring_write.exit67_crit_edge: ; preds = %radeon_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit67

if.then.i57:                                      ; preds = %radeon_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit67

radeon_ring_write.exit67:                         ; preds = %if.then.i57, %radeon_ring_write.exit54.radeon_ring_write.exit67_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 8
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wptr.i, align 4
  %inc.i60 = add i32 %54, 1
  store i32 %inc.i60, ptr %wptr.i, align 4
  %arrayidx.i61 = getelementptr i32, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 988448, ptr %arrayidx.i61, align 4
  %56 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ptr_mask.i, align 4
  %58 = load i32, ptr %wptr.i, align 4
  %and.i63 = and i32 %58, %57
  store i32 %and.i63, ptr %wptr.i, align 4
  %59 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count_dw.i, align 4
  %dec.i64 = add i32 %60, -1
  store i32 %dec.i64, ptr %count_dw.i, align 4
  %61 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i66 = add i32 %62, -1
  store i32 %dec4.i66, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64)
  %cmp.i69 = icmp slt i32 %dec.i64, 1
  br i1 %cmp.i69, label %if.then.i70, label %radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge

radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge: ; preds = %radeon_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit80

if.then.i70:                                      ; preds = %radeon_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit80

radeon_ring_write.exit80:                         ; preds = %if.then.i70, %radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge
  %63 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ring1.i, align 8
  %65 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wptr.i, align 4
  %inc.i73 = add i32 %66, 1
  store i32 %inc.i73, ptr %wptr.i, align 4
  %arrayidx.i74 = getelementptr i32, ptr %64, i32 %66
  %67 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %arrayidx.i74, align 4
  %68 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ptr_mask.i, align 4
  %70 = load i32, ptr %wptr.i, align 4
  %and.i76 = and i32 %70, %69
  store i32 %and.i76, ptr %wptr.i, align 4
  %71 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count_dw.i, align 4
  %dec.i77 = add i32 %72, -1
  store i32 %dec.i77, ptr %count_dw.i, align 4
  %73 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i79 = add i32 %74, -1
  store i32 %dec4.i79, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i77)
  %cmp.i82 = icmp slt i32 %dec.i77, 1
  br i1 %cmp.i82, label %if.then.i83, label %radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge

radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge: ; preds = %radeon_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit93

if.then.i83:                                      ; preds = %radeon_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit93

radeon_ring_write.exit93:                         ; preds = %if.then.i83, %radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge
  %75 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ring1.i, align 8
  %77 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wptr.i, align 4
  %inc.i86 = add i32 %78, 1
  store i32 %inc.i86, ptr %wptr.i, align 4
  %arrayidx.i87 = getelementptr i32, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 -1879048192, ptr %arrayidx.i87, align 4
  %80 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ptr_mask.i, align 4
  %82 = load i32, ptr %wptr.i, align 4
  %and.i89 = and i32 %82, %81
  store i32 %and.i89, ptr %wptr.i, align 4
  %83 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count_dw.i, align 4
  %dec.i90 = add i32 %84, -1
  store i32 %dec.i90, ptr %count_dw.i, align 4
  %85 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i92 = add i32 %86, -1
  store i32 %dec4.i92, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i90)
  %cmp.i95 = icmp slt i32 %dec.i90, 1
  br i1 %cmp.i95, label %if.then.i96, label %radeon_ring_write.exit93.radeon_ring_write.exit106_crit_edge

radeon_ring_write.exit93.radeon_ring_write.exit106_crit_edge: ; preds = %radeon_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit106

if.then.i96:                                      ; preds = %radeon_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit106

radeon_ring_write.exit106:                        ; preds = %if.then.i96, %radeon_ring_write.exit93.radeon_ring_write.exit106_crit_edge
  %87 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring1.i, align 8
  %89 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %wptr.i, align 4
  %inc.i99 = add i32 %90, 1
  store i32 %inc.i99, ptr %wptr.i, align 4
  %arrayidx.i100 = getelementptr i32, ptr %88, i32 %90
  %91 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 984350, ptr %arrayidx.i100, align 4
  %92 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ptr_mask.i, align 4
  %94 = load i32, ptr %wptr.i, align 4
  %and.i102 = and i32 %94, %93
  store i32 %and.i102, ptr %wptr.i, align 4
  %95 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %count_dw.i, align 4
  %dec.i103 = add i32 %96, -1
  store i32 %dec.i103, ptr %count_dw.i, align 4
  %97 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i105 = add i32 %98, -1
  store i32 %dec4.i105, ptr %ring_free_dw.i, align 8
  %shl2 = shl nuw i32 1, %vm_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i103)
  %cmp.i108 = icmp slt i32 %dec.i103, 1
  br i1 %cmp.i108, label %if.then.i109, label %radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge

radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge: ; preds = %radeon_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit119

if.then.i109:                                     ; preds = %radeon_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit119

radeon_ring_write.exit119:                        ; preds = %if.then.i109, %radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge
  %99 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ring1.i, align 8
  %101 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wptr.i, align 4
  %inc.i112 = add i32 %102, 1
  store i32 %inc.i112, ptr %wptr.i, align 4
  %arrayidx.i113 = getelementptr i32, ptr %100, i32 %102
  %103 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 %shl2, ptr %arrayidx.i113, align 4
  %104 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ptr_mask.i, align 4
  %106 = load i32, ptr %wptr.i, align 4
  %and.i115 = and i32 %106, %105
  store i32 %and.i115, ptr %wptr.i, align 4
  %107 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %count_dw.i, align 4
  %dec.i116 = add i32 %108, -1
  store i32 %dec.i116, ptr %count_dw.i, align 4
  %109 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i118 = add i32 %110, -1
  store i32 %dec4.i118, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i116)
  %cmp.i121 = icmp slt i32 %dec.i116, 1
  br i1 %cmp.i121, label %if.then.i122, label %radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge

radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge: ; preds = %radeon_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit132

if.then.i122:                                     ; preds = %radeon_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit132

radeon_ring_write.exit132:                        ; preds = %if.then.i122, %radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge
  %111 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring1.i, align 8
  %113 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %wptr.i, align 4
  %inc.i125 = add i32 %114, 1
  store i32 %inc.i125, ptr %wptr.i, align 4
  %arrayidx.i126 = getelementptr i32, ptr %112, i32 %114
  %115 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 -1744830464, ptr %arrayidx.i126, align 4
  %116 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ptr_mask.i, align 4
  %118 = load i32, ptr %wptr.i, align 4
  %and.i128 = and i32 %118, %117
  store i32 %and.i128, ptr %wptr.i, align 4
  %119 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %count_dw.i, align 4
  %dec.i129 = add i32 %120, -1
  store i32 %dec.i129, ptr %count_dw.i, align 4
  %121 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i131 = add i32 %122, -1
  store i32 %dec4.i131, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i129)
  %cmp.i134 = icmp slt i32 %dec.i129, 1
  br i1 %cmp.i134, label %if.then.i135, label %radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge

radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge: ; preds = %radeon_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit145

if.then.i135:                                     ; preds = %radeon_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit145

radeon_ring_write.exit145:                        ; preds = %if.then.i135, %radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge
  %123 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ring1.i, align 8
  %125 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %wptr.i, align 4
  %inc.i138 = add i32 %126, 1
  store i32 %inc.i138, ptr %wptr.i, align 4
  %arrayidx.i139 = getelementptr i32, ptr %124, i32 %126
  %127 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 267388190, ptr %arrayidx.i139, align 4
  %128 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ptr_mask.i, align 4
  %130 = load i32, ptr %wptr.i, align 4
  %and.i141 = and i32 %130, %129
  store i32 %and.i141, ptr %wptr.i, align 4
  %131 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %count_dw.i, align 4
  %dec.i142 = add i32 %132, -1
  store i32 %dec.i142, ptr %count_dw.i, align 4
  %133 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i144 = add i32 %134, -1
  store i32 %dec4.i144, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i142)
  %cmp.i147 = icmp slt i32 %dec.i142, 1
  br i1 %cmp.i147, label %if.then.i148, label %radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge

radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge: ; preds = %radeon_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit158

if.then.i148:                                     ; preds = %radeon_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit158

radeon_ring_write.exit158:                        ; preds = %if.then.i148, %radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge
  %135 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ring1.i, align 8
  %137 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %wptr.i, align 4
  %inc.i151 = add i32 %138, 1
  store i32 %inc.i151, ptr %wptr.i, align 4
  %arrayidx.i152 = getelementptr i32, ptr %136, i32 %138
  %139 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 0, ptr %arrayidx.i152, align 4
  %140 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ptr_mask.i, align 4
  %142 = load i32, ptr %wptr.i, align 4
  %and.i154 = and i32 %142, %141
  store i32 %and.i154, ptr %wptr.i, align 4
  %143 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %count_dw.i, align 4
  %dec.i155 = add i32 %144, -1
  store i32 %dec.i155, ptr %count_dw.i, align 4
  %145 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i157 = add i32 %146, -1
  store i32 %dec4.i157, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i155)
  %cmp.i160 = icmp slt i32 %dec.i155, 1
  br i1 %cmp.i160, label %if.then.i161, label %radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge

radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge: ; preds = %radeon_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit171

if.then.i161:                                     ; preds = %radeon_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %radeon_ring_write.exit171

radeon_ring_write.exit171:                        ; preds = %if.then.i161, %radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge
  %147 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ring1.i, align 8
  %149 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %wptr.i, align 4
  %inc.i164 = add i32 %150, 1
  store i32 %inc.i164, ptr %wptr.i, align 4
  %arrayidx.i165 = getelementptr i32, ptr %148, i32 %150
  %151 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 0, ptr %arrayidx.i165, align 4
  %152 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ptr_mask.i, align 4
  %154 = load i32, ptr %wptr.i, align 4
  %and.i167 = and i32 %154, %153
  store i32 %and.i167, ptr %wptr.i, align 4
  %155 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %count_dw.i, align 4
  %dec.i168 = add i32 %156, -1
  store i32 %dec.i168, ptr %count_dw.i, align 4
  %157 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i170 = add i32 %158, -1
  store i32 %dec4.i170, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{i64 6699549}
!13 = !{i64 2157419734}
!14 = !{i64 2157420141}
!15 = !{i64 6699131}
!16 = !{i32 0, i32 33}
