; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_sync.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_sync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@radeon_sync_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Syncing to a disabled ring!\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_sync_rings\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/radeon_sync.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_sync_rings._entry_ptr = internal global ptr @radeon_sync_rings._entry, section ".printk_index", align 4
@radeon_fence_ops = external dso_local constant %struct.dma_fence_ops, align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/radeon_sync.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 138, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @radeon_sync_rings._entry, ptr @radeon_sync_rings._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_sync_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @radeon_sync_create(ptr nocapture noundef writeonly %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %sync, i32 0, i32 52)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_sync_fence(ptr nocapture noundef %sync, ptr noundef %fence) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 8
  %arrayidx = getelementptr %struct.radeon_sync, ptr %sync, i32 0, i32 1, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.radeon_fence_later.exit_crit_edge, label %do.body.i

if.end.i.radeon_fence_later.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_fence_later.exit

do.body.i:                                        ; preds = %if.end.i
  %ring4.i = getelementptr inbounds %struct.radeon_fence, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not.i = icmp eq i32 %1, %5
  br i1 %cmp.not.i, label %do.end12.i, label %do.body8.i, !prof !17

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %seq.i = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %6 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq.i, align 8
  %seq13.i = getelementptr inbounds %struct.radeon_fence, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %seq13.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seq13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp14.i = icmp ugt i64 %7, %9
  %a.b.i = select i1 %cmp14.i, ptr %fence, ptr %3
  br label %radeon_fence_later.exit

radeon_fence_later.exit:                          ; preds = %do.end12.i, %if.end.i.radeon_fence_later.exit_crit_edge
  %retval.0.i = phi ptr [ %fence, %if.end.i.radeon_fence_later.exit_crit_edge ], [ %a.b.i, %do.end12.i ]
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %arrayidx, align 4
  %is_vm_update = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 4
  %11 = ptrtoint ptr %is_vm_update to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_vm_update, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %radeon_fence_later.exit.cleanup_crit_edge, label %if.end.i20

radeon_fence_later.exit.cleanup_crit_edge:        ; preds = %radeon_fence_later.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i20:                                       ; preds = %radeon_fence_later.exit
  %last_vm_update = getelementptr inbounds %struct.radeon_sync, ptr %sync, i32 0, i32 2
  %13 = ptrtoint ptr %last_vm_update to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last_vm_update, align 4
  %tobool1.not.i19 = icmp eq ptr %14, null
  br i1 %tobool1.not.i19, label %if.end.i20.radeon_fence_later.exit32_crit_edge, label %do.body.i24

if.end.i20.radeon_fence_later.exit32_crit_edge:   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_fence_later.exit32

do.body.i24:                                      ; preds = %if.end.i20
  %15 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ring, align 8
  %ring4.i22 = getelementptr inbounds %struct.radeon_fence, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %ring4.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ring4.i22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i23 = icmp eq i32 %16, %18
  br i1 %cmp.not.i23, label %do.end12.i30, label %do.body8.i25, !prof !17

do.body8.i25:                                     ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end12.i30:                                     ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #7
  %seq.i26 = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %19 = ptrtoint ptr %seq.i26 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %seq.i26, align 8
  %seq13.i27 = getelementptr inbounds %struct.radeon_fence, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %seq13.i27 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %seq13.i27, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp14.i28 = icmp ugt i64 %20, %22
  %a.b.i29 = select i1 %cmp14.i28, ptr %fence, ptr %14
  br label %radeon_fence_later.exit32

radeon_fence_later.exit32:                        ; preds = %do.end12.i30, %if.end.i20.radeon_fence_later.exit32_crit_edge
  %retval.0.i31 = phi ptr [ %fence, %if.end.i20.radeon_fence_later.exit32_crit_edge ], [ %a.b.i29, %do.end12.i30 ]
  %23 = ptrtoint ptr %last_vm_update to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i31, ptr %last_vm_update, align 4
  br label %cleanup

cleanup:                                          ; preds = %radeon_fence_later.exit32, %radeon_fence_later.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_sync_resv(ptr noundef readnone %rdev, ptr nocapture noundef %sync, ptr noundef %resv, i1 noundef zeroext %shared) local_unnamed_addr #2 align 64 {
entry:
  %cursor = alloca %struct.dma_resv_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #5
  %0 = getelementptr inbounds i8, ptr %cursor, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %frombool.i = zext i1 %shared to i8
  %2 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %resv, ptr %cursor, align 4
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %3 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %all_fences2.i, align 4
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %4 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fence.i, align 4
  %call = call ptr @dma_resv_iter_first(ptr noundef nonnull %cursor) #5
  %tobool1.not20 = icmp eq ptr %call, null
  br i1 %tobool1.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %last_vm_update.i = getelementptr inbounds %struct.radeon_sync, ptr %sync, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.021 = phi ptr [ %call, %for.body.lr.ph ], [ %call9, %for.inc.for.body_crit_edge ]
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f.021, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %cmp.i.not = icmp eq ptr %6, @radeon_fence_ops
  br i1 %cmp.i.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %rdev4 = getelementptr inbounds %struct.radeon_fence, ptr %f.021, i32 0, i32 1
  %7 = ptrtoint ptr %rdev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev4, align 8
  %cmp = icmp eq ptr %8, %rdev
  br i1 %cmp, label %if.end.i.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i:                                       ; preds = %land.lhs.true
  %ring.i = getelementptr inbounds %struct.radeon_fence, ptr %f.021, i32 0, i32 3
  %9 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring.i, align 8
  %arrayidx.i = getelementptr %struct.radeon_sync, ptr %sync, i32 0, i32 1, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.radeon_fence_later.exit.i_crit_edge, label %do.body.i.i

if.end.i.i.radeon_fence_later.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_fence_later.exit.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %ring4.i.i = getelementptr inbounds %struct.radeon_fence, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ring4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ring4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp.not.i.i = icmp eq i32 %10, %14
  br i1 %cmp.not.i.i, label %do.end12.i.i, label %do.body8.i.i, !prof !17

do.body8.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end12.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %seq.i.i = getelementptr inbounds %struct.radeon_fence, ptr %f.021, i32 0, i32 2
  %15 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %seq.i.i, align 8
  %seq13.i.i = getelementptr inbounds %struct.radeon_fence, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %seq13.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %seq13.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp14.i.i = icmp ugt i64 %16, %18
  %a.b.i.i = select i1 %cmp14.i.i, ptr %f.021, ptr %12
  br label %radeon_fence_later.exit.i

radeon_fence_later.exit.i:                        ; preds = %do.end12.i.i, %if.end.i.i.radeon_fence_later.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %f.021, %if.end.i.i.radeon_fence_later.exit.i_crit_edge ], [ %a.b.i.i, %do.end12.i.i ]
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  %is_vm_update.i = getelementptr inbounds %struct.radeon_fence, ptr %f.021, i32 0, i32 4
  %20 = ptrtoint ptr %is_vm_update.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_vm_update.i, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.i = icmp eq i8 %21, 0
  br i1 %tobool4.not.i, label %radeon_fence_later.exit.i.for.inc_crit_edge, label %if.end.i20.i

radeon_fence_later.exit.i.for.inc_crit_edge:      ; preds = %radeon_fence_later.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i20.i:                                     ; preds = %radeon_fence_later.exit.i
  %22 = ptrtoint ptr %last_vm_update.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last_vm_update.i, align 4
  %tobool1.not.i19.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i19.i, label %if.end.i20.i.radeon_fence_later.exit32.i_crit_edge, label %do.body.i24.i

if.end.i20.i.radeon_fence_later.exit32.i_crit_edge: ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_fence_later.exit32.i

do.body.i24.i:                                    ; preds = %if.end.i20.i
  %24 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring.i, align 8
  %ring4.i22.i = getelementptr inbounds %struct.radeon_fence, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %ring4.i22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring4.i22.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i23.i = icmp eq i32 %25, %27
  br i1 %cmp.not.i23.i, label %do.end12.i30.i, label %do.body8.i25.i, !prof !17

do.body8.i25.i:                                   ; preds = %do.body.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

do.end12.i30.i:                                   ; preds = %do.body.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  %seq.i26.i = getelementptr inbounds %struct.radeon_fence, ptr %f.021, i32 0, i32 2
  %28 = ptrtoint ptr %seq.i26.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %seq.i26.i, align 8
  %seq13.i27.i = getelementptr inbounds %struct.radeon_fence, ptr %23, i32 0, i32 2
  %30 = ptrtoint ptr %seq13.i27.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %seq13.i27.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp14.i28.i = icmp ugt i64 %29, %31
  %a.b.i29.i = select i1 %cmp14.i28.i, ptr %f.021, ptr %23
  br label %radeon_fence_later.exit32.i

radeon_fence_later.exit32.i:                      ; preds = %do.end12.i30.i, %if.end.i20.i.radeon_fence_later.exit32.i_crit_edge
  %retval.0.i31.i = phi ptr [ %f.021, %if.end.i20.i.radeon_fence_later.exit32.i_crit_edge ], [ %a.b.i29.i, %do.end12.i30.i ]
  %32 = ptrtoint ptr %last_vm_update.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i31.i, ptr %last_vm_update.i, align 4
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %f.021, i1 noundef zeroext true, i32 noundef 2147483647) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool6.not = icmp sgt i32 %call.i, -1
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %radeon_fence_later.exit32.i, %radeon_fence_later.exit.i.for.inc_crit_edge
  %call9 = call ptr @dma_resv_iter_next(ptr noundef nonnull %cursor) #5
  %tobool1.not = icmp eq ptr %call9, null
  br i1 %tobool1.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %r.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %call.i, %if.end.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #5
  ret i32 %r.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_sync_rings(ptr noundef %rdev, ptr nocapture noundef %sync, i32 noundef %ring) local_unnamed_addr #2 align 64 {
entry:
  %semaphore = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.091 = phi i32 [ 0, %entry ], [ %inc44, %for.inc.for.body_crit_edge ]
  %count.090 = phi i32 [ 0, %entry ], [ %count.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_sync, ptr %sync, i32 0, i32 1, i32 %i.091
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %semaphore) #5
  %2 = ptrtoint ptr %semaphore to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %semaphore, align 4, !annotation !20
  %call = call zeroext i1 @radeon_fence_need_sync(ptr noundef %1, i32 noundef %ring) #5
  br i1 %call, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.091
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.091, i32 17
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ready, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #8
  br label %cleanup.thread

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.090)
  %cmp5 = icmp ugt i32 %count.090, 3
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %call7 = call i32 @radeon_fence_wait(ptr noundef %1, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.for.inc_crit_edge, label %if.then6.cleanup.thread_crit_edge

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end11:                                         ; preds = %if.end4
  %call12 = call i32 @radeon_semaphore_create(ptr noundef %rdev, ptr noundef nonnull %semaphore) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup.thread_crit_edge

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end15:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %semaphore, align 4
  %inc = add nuw nsw i32 %count.090, 1
  %arrayidx16 = getelementptr [4 x ptr], ptr %sync, i32 0, i32 %count.090
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx16, align 4
  %call19 = call i32 @radeon_ring_alloc(ptr noundef %rdev, ptr noundef %arrayidx2, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.cleanup.thread_crit_edge

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %semaphore, align 4
  %call23 = call zeroext i1 @radeon_semaphore_emit_signal(ptr noundef %rdev, i32 noundef %i.091, ptr noundef %11) #5
  br i1 %call23, label %if.end31, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void @radeon_ring_undo(ptr noundef %arrayidx2) #5
  %call27 = call i32 @radeon_fence_wait(ptr noundef %1, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.for.inc_crit_edge, label %if.then24.cleanup.thread_crit_edge

if.then24.cleanup.thread_crit_edge:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end31:                                         ; preds = %if.end22
  %12 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %semaphore, align 4
  %call32 = call zeroext i1 @radeon_semaphore_emit_wait(ptr noundef %rdev, i32 noundef %ring, ptr noundef %13) #5
  br i1 %call32, label %if.end40, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @radeon_ring_undo(ptr noundef %arrayidx2) #5
  %call36 = call i32 @radeon_fence_wait(ptr noundef %1, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then33.for.inc_crit_edge, label %if.then33.cleanup.thread_crit_edge

if.then33.cleanup.thread_crit_edge:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  call void @radeon_ring_commit(ptr noundef %rdev, ptr noundef %arrayidx2, i1 noundef zeroext false) #5
  call void @radeon_fence_note_sync(ptr noundef %1, i32 noundef %ring) #5
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then33.cleanup.thread_crit_edge, %if.then24.cleanup.thread_crit_edge, %if.end15.cleanup.thread_crit_edge, %if.end11.cleanup.thread_crit_edge, %if.then6.cleanup.thread_crit_edge, %do.end
  %retval.1.ph = phi i32 [ -22, %do.end ], [ %call7, %if.then6.cleanup.thread_crit_edge ], [ %call12, %if.end11.cleanup.thread_crit_edge ], [ %call19, %if.end15.cleanup.thread_crit_edge ], [ %call27, %if.then24.cleanup.thread_crit_edge ], [ %call36, %if.then33.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %semaphore) #5
  br label %cleanup45

for.inc:                                          ; preds = %if.end40, %if.then33.for.inc_crit_edge, %if.then24.for.inc_crit_edge, %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.end40 ], [ %count.090, %for.body.for.inc_crit_edge ], [ %count.090, %if.then6.for.inc_crit_edge ], [ %inc, %if.then24.for.inc_crit_edge ], [ %inc, %if.then33.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %semaphore) #5
  %inc44 = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc44, 8
  br i1 %exitcond.not, label %for.inc.cleanup45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

cleanup45:                                        ; preds = %for.inc.cleanup45_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %for.inc.cleanup45_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_fence_need_sync(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_semaphore_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_semaphore_emit_signal(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_undo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_semaphore_emit_wait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_note_sync(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_sync_free(ptr noundef %rdev, ptr noundef %sync, ptr noundef %fence) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_semaphore_free(ptr noundef %rdev, ptr noundef %sync, ptr noundef %fence) #5
  %arrayidx.1 = getelementptr [4 x ptr], ptr %sync, i32 0, i32 1
  tail call void @radeon_semaphore_free(ptr noundef %rdev, ptr noundef %arrayidx.1, ptr noundef %fence) #5
  %arrayidx.2 = getelementptr [4 x ptr], ptr %sync, i32 0, i32 2
  tail call void @radeon_semaphore_free(ptr noundef %rdev, ptr noundef %arrayidx.2, ptr noundef %fence) #5
  %arrayidx.3 = getelementptr [4 x ptr], ptr %sync, i32 0, i32 3
  tail call void @radeon_semaphore_free(ptr noundef %rdev, ptr noundef %arrayidx.3, ptr noundef %fence) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_semaphore_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_sync.c", i32 138, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeon_sync_rings._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeon_sync_rings._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2157404997, i64 2157405493, i64 2157405034, i64 2157405090, i64 2157405124, i64 2157405148, i64 2157405189, i64 2157405210, i64 2157405238, i64 2157405272}
!19 = !{i8 0, i8 2}
!20 = !{!"auto-init"}
