; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/dce6_afmt.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/dce6_afmt.c"
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.radeon_afmt = type { i8, i32, i8, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.cea_sad = type { i8, i8, i8, i8 }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No connected audio pins found!\0A\00", [32 x i8] zeroinitializer }, align 32
@dce6_afmt_write_sad_regs.eld_reg_to_type = internal constant { [12 x [2 x i16]], [48 x i8] } { [12 x [2 x i16]] [[2 x i16] [i16 40, i16 1], [2 x i16] [i16 41, i16 2], [2 x i16] [i16 42, i16 3], [2 x i16] [i16 43, i16 4], [2 x i16] [i16 44, i16 5], [2 x i16] [i16 45, i16 6], [2 x i16] [i16 46, i16 7], [2 x i16] [i16 47, i16 8], [2 x i16] [i16 49, i16 10], [2 x i16] [i16 50, i16 11], [2 x i16] [i16 51, i16 12], [2 x i16] [i16 53, i16 14]], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 107, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"eld_reg_to_type\00", align 1
@___asan_gen_.5 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/dce6_afmt.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 210, i32 19 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @dce6_afmt_write_sad_regs.eld_reg_to_type], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce6_afmt_write_sad_regs.eld_reg_to_type to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dce6_endpoint_rreg(ptr noundef %rdev, i32 noundef %block_offset, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %end_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %end_idx_lock) #3
  %add = add i32 %block_offset, 24064
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %reg) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !14
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %reg) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %add5 = add i32 %block_offset, 24068
  %5 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add5)
  %cmp.i13 = icmp ugt i32 %6, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5)
  %cmp1.i14 = icmp ult i32 %add5, 65536
  %or.cond.i15 = or i1 %cmp1.i14, %cmp.i13
  br i1 %or.cond.i15, label %if.then.i, label %if.else.i18

if.then.i:                                        ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i16 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 %add5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #3, !srcloc !15
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  br label %r100_mm_rreg.exit

if.else.i18:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add5) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i18, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i18 ], [ %10, %if.then.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %end_idx_lock, i32 noundef %call2) #3
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_endpoint_wreg(ptr noundef %rdev, i32 noundef %block_offset, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %end_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %end_idx_lock) #3
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %1)
  %cmp5 = icmp ugt i32 %1, 56
  %add = add i32 %block_offset, 24064
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp.i = icmp ugt i32 %3, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %reg) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #3, !srcloc !14
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %reg) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %and = and i32 %reg, 255
  %or = or i32 %and, 256
  %rmmio_size.i18 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %7 = ptrtoint ptr %rmmio_size.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmmio_size.i18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp.i19 = icmp ugt i32 %8, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i20 = icmp ult i32 %add, 65536
  %or.cond.i21 = or i1 %cmp1.i20, %cmp.i19
  br i1 %or.cond.i21, label %do.body.i24, label %if.else.i25

do.body.i24:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i22 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %9) #3, !srcloc !14
  br label %if.end

if.else.i25:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #3
  br label %if.end

if.end:                                           ; preds = %if.else.i25, %do.body.i24, %if.else.i, %do.body.i
  %add8 = add i32 %block_offset, 24068
  %rmmio_size.i27 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add8)
  %cmp.i28 = icmp ugt i32 %13, %add8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add8)
  %cmp1.i29 = icmp ult i32 %add8, 65536
  %or.cond.i30 = or i1 %cmp1.i29, %cmp.i28
  br i1 %or.cond.i30, label %do.body.i33, label %if.else.i34

do.body.i33:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %v) #3
  %rmmio.i31 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %16, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %14) #3, !srcloc !14
  br label %r100_mm_wreg.exit35

if.else.i34:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add8, i32 noundef %v) #3
  br label %r100_mm_wreg.exit35

r100_mm_wreg.exit35:                              ; preds = %if.else.i34, %do.body.i33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %end_idx_lock, i32 noundef %call2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce6_audio_get_pin(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pins.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 2
  %0 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pins.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.i = icmp sgt i32 %1, 0
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.if.then33_crit_edge

entry.if.then33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %offset2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.020.i, i32 5
  %2 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset2.i, align 4
  %call.i = tail call i32 @radeon_audio_endpoint_rreg(ptr noundef %rdev, i32 noundef %3, i32 noundef 86) #3
  %shr.mask.i = and i32 %call.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i)
  %cmp3.i = icmp ne i32 %shr.mask.i, 1073741824
  %spec.select.i = zext i1 %cmp3.i to i8
  %4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.020.i, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select.i, ptr %4, align 4
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %6 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %dce6_afmt_get_connected_pins.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

dce6_afmt_get_connected_pins.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp61 = icmp sgt i32 %7, 0
  br i1 %cmp61, label %for.body.lr.ph, label %dce6_afmt_get_connected_pins.exit.if.then33_crit_edge

dce6_afmt_get_connected_pins.exit.if.then33_crit_edge: ; preds = %dce6_afmt_get_connected_pins.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

for.body.lr.ph:                                   ; preds = %dce6_afmt_get_connected_pins.exit
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %for.body.lr.ph
  %pin.063 = phi ptr [ null, %for.body.lr.ph ], [ %pin.1, %for.inc29.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %for.inc29.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.062
  %connected = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.062, i32 6
  %8 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %connected, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %for.body.for.inc29_crit_edge, label %if.then

for.body.for.inc29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc29

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddev, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 16
  %12 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn56 = load ptr, ptr %encoder_list, align 4
  %cmp10.not58 = icmp eq ptr %.pn56, %encoder_list
  br i1 %cmp10.not58, label %if.then.cleanup_crit_edge, label %if.then.for.body11_crit_edge

if.then.for.body11_crit_edge:                     ; preds = %if.then
  br label %for.body11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %if.then.for.body11_crit_edge
  %.pn60 = phi ptr [ %.pn, %for.inc.for.body11_crit_edge ], [ %.pn56, %if.then.for.body11_crit_edge ]
  %pin_count.059 = phi i32 [ %pin_count.1, %for.inc.for.body11_crit_edge ], [ 0, %if.then.for.body11_crit_edge ]
  %encoder.0 = getelementptr i8, ptr %.pn60, i32 -4
  %call = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder.0) #3
  br i1 %call, label %if.then12, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then12:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #5
  %enc_priv = getelementptr i8, ptr %.pn60, i32 220
  %13 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enc_priv, align 4
  %pin16 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %pin16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin16, align 4
  %cmp17 = icmp eq ptr %16, %arrayidx
  %inc = zext i1 %cmp17 to i32
  %spec.select = add i32 %pin_count.059, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body11.for.inc_crit_edge
  %pin_count.1 = phi i32 [ %pin_count.059, %for.body11.for.inc_crit_edge ], [ %spec.select, %if.then12 ]
  %17 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn60, align 4
  %18 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddev, align 4
  %encoder_list9 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 16
  %cmp10.not = icmp eq ptr %.pn, %encoder_list9
  br i1 %cmp10.not, label %for.end, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body11

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pin_count.1)
  %cmp25 = icmp eq i32 %pin_count.1, 0
  br i1 %cmp25, label %for.end.cleanup_crit_edge, label %for.end.for.inc29_crit_edge

for.end.for.inc29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc29:                                        ; preds = %for.end.for.inc29_crit_edge, %for.body.for.inc29_crit_edge
  %pin.1 = phi ptr [ %arrayidx, %for.end.for.inc29_crit_edge ], [ %pin.063, %for.body.for.inc29_crit_edge ]
  %inc30 = add nuw nsw i32 %i.062, 1
  %20 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pins.i, align 8
  %cmp = icmp slt i32 %inc30, %21
  br i1 %cmp, label %for.inc29.for.body_crit_edge, label %for.end31

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end31:                                        ; preds = %for.inc29
  %tobool32.not = icmp eq ptr %pin.1, null
  br i1 %tobool32.not, label %for.end31.if.then33_crit_edge, label %for.end31.cleanup_crit_edge

for.end31.cleanup_crit_edge:                      ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end31.if.then33_crit_edge:                    ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

if.then33:                                        ; preds = %for.end31.if.then33_crit_edge, %dce6_afmt_get_connected_pins.exit.if.then33_crit_edge, %entry.if.then33_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %for.end31.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then33 ], [ %pin.1, %for.end31.cleanup_crit_edge ], [ %arrayidx, %for.end.cleanup_crit_edge ], [ %arrayidx, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_encoder_is_digital(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_afmt_select_pin(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pin = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %offset = getelementptr inbounds %struct.radeon_afmt, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add = add i32 %11, 28988
  %id = getelementptr inbounds %struct.r600_audio_pin, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %and = and i32 %13, 7
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp.i = icmp ugt i32 %15, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %16 = shl nuw nsw i32 %and, 24
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #3, !srcloc !14
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %and) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.body.i, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_afmt_write_latency_fields(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pin = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else15, label %if.then6

if.then6:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.drm_connector, ptr %connector, i32 0, i32 43, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.then6.if.end31_crit_edge, label %if.then8

if.then6.if.end31_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx9 = getelementptr %struct.drm_connector, ptr %connector, i32 0, i32 44, i32 1
  %arrayidx11 = getelementptr %struct.drm_connector, ptr %connector, i32 0, i32 45, i32 1
  br label %if.end31.sink.split

if.else15:                                        ; preds = %if.end
  %latency_present16 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 43
  %14 = ptrtoint ptr %latency_present16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %latency_present16, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %if.else15.if.end31_crit_edge, label %if.then19

if.else15.if.end31_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #5
  %video_latency20 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 44
  %audio_latency24 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 45
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.then19, %if.then8
  %audio_latency24.sink = phi ptr [ %audio_latency24, %if.then19 ], [ %arrayidx11, %if.then8 ]
  %and22.sink.in.in = phi ptr [ %video_latency20, %if.then19 ], [ %arrayidx9, %if.then8 ]
  %16 = ptrtoint ptr %and22.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %and22.sink.in = load i32, ptr %and22.sink.in.in, align 4
  %and22.sink = and i32 %and22.sink.in, 255
  %17 = ptrtoint ptr %audio_latency24.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %audio_latency24.sink, align 4
  %and26 = shl i32 %18, 8
  %shl27 = and i32 %and26, 65280
  %or28 = or i32 %shl27, %and22.sink
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else15.if.end31_crit_edge, %if.then6.if.end31_crit_edge
  %tmp1.0 = phi i32 [ 0, %if.then6.if.end31_crit_edge ], [ 0, %if.else15.if.end31_crit_edge ], [ %or28, %if.end31.sink.split ]
  %offset = getelementptr inbounds %struct.r600_audio_pin, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef %20, i32 noundef 55, i32 noundef %tmp1.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_endpoint_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_afmt_hdmi_write_speaker_allocation(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sadb, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pin = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %offset = getelementptr inbounds %struct.r600_audio_pin, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %call = tail call i32 @radeon_audio_endpoint_rreg(ptr noundef %3, i32 noundef %11, i32 noundef 37) #3
  %and = and i32 %call, -196736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %tobool6.not = icmp eq i32 %sad_count, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %sadb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sadb, align 1
  %14 = and i8 %13, 127
  %and8 = zext i8 %14 to i32
  %or = or i32 %and, %and8
  %or9 = or i32 %or, 65536
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or10 = or i32 %and, 65541
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %tmp1.0 = phi i32 [ %or9, %if.then7 ], [ %or10, %if.else ]
  %15 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin, align 4
  %offset13 = getelementptr inbounds %struct.r600_audio_pin, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %offset13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset13, align 4
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef %18, i32 noundef 37, i32 noundef %tmp1.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_endpoint_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_afmt_dp_write_speaker_allocation(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sadb, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pin = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %offset = getelementptr inbounds %struct.r600_audio_pin, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %call = tail call i32 @radeon_audio_endpoint_rreg(ptr noundef %3, i32 noundef %11, i32 noundef 37) #3
  %and = and i32 %call, -196736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %tobool6.not = icmp eq i32 %sad_count, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %sadb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sadb, align 1
  %14 = and i8 %13, 127
  %and8 = zext i8 %14 to i32
  %or = or i32 %and, %and8
  %or9 = or i32 %or, 131072
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or10 = or i32 %and, 131077
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %tmp1.0 = phi i32 [ %or9, %if.then7 ], [ %or10, %if.else ]
  %15 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin, align 4
  %offset13 = getelementptr inbounds %struct.r600_audio_pin, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %offset13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset13, align 4
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef %18, i32 noundef 37, i32 noundef %tmp1.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_afmt_write_sad_regs(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sads, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup52_crit_edge, label %lor.lhs.false

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup52

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup52_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup52

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pin = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup52_crit_edge, label %for.cond.preheader

lor.lhs.false2.cleanup52_crit_edge:               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup52

for.cond.preheader:                               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %cmp585 = icmp sgt i32 %sad_count, 0
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end.for.cond4.preheader_crit_edge, %for.cond.preheader
  %i.095 = phi i32 [ 0, %for.cond.preheader ], [ %inc50, %for.end.for.cond4.preheader_crit_edge ]
  br i1 %cmp585, label %for.body6.lr.ph, label %for.cond4.preheader.for.end_crit_edge

for.cond4.preheader.for.end_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %arrayidx8 = getelementptr [12 x [2 x i16]], ptr @dce6_afmt_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.095, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx8, align 2
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %j.089 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc.for.body6_crit_edge ]
  %max_channels.088 = phi i32 [ -1, %for.body6.lr.ph ], [ %max_channels.3.ph, %for.inc.for.body6_crit_edge ]
  %stereo_freqs.087 = phi i8 [ 0, %for.body6.lr.ph ], [ %stereo_freqs.2.ph, %for.inc.for.body6_crit_edge ]
  %value.086 = phi i32 [ 0, %for.body6.lr.ph ], [ %value.3.ph, %for.inc.for.body6_crit_edge ]
  %arrayidx = getelementptr %struct.cea_sad, ptr %sads, i32 %j.089
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = zext i8 %13 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %14)
  %cmp10 = icmp eq i16 %11, %14
  br i1 %cmp10, label %if.then12, label %for.body6.for.inc_crit_edge

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then12:                                        ; preds = %for.body6
  %channels = getelementptr %struct.cea_sad, ptr %sads, i32 %j.089, i32 1
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channels, align 1
  %conv13 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_channels.088, i32 %conv13)
  %cmp14 = icmp slt i32 %max_channels.088, %conv13
  br i1 %cmp14, label %if.then16, label %if.then12.if.end28_crit_edge

if.then12.if.end28_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %conv13, 7
  %byte2 = getelementptr %struct.cea_sad, ptr %sads, i32 %j.089, i32 3
  %17 = ptrtoint ptr %byte2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %byte2, align 1
  %conv19 = zext i8 %18 to i32
  %shl21 = shl nuw nsw i32 %conv19, 16
  %or = or i32 %shl21, %and
  %freq = getelementptr %struct.cea_sad, ptr %sads, i32 %j.089, i32 2
  %19 = ptrtoint ptr %freq to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %freq, align 1
  %conv22 = zext i8 %20 to i32
  %shl24 = shl nuw nsw i32 %conv22, 8
  %or25 = or i32 %or, %shl24
  br label %if.end28

if.end28:                                         ; preds = %if.then16, %if.then12.if.end28_crit_edge
  %value.1 = phi i32 [ %or25, %if.then16 ], [ %value.086, %if.then12.if.end28_crit_edge ]
  %max_channels.1 = phi i32 [ %conv13, %if.then16 ], [ %max_channels.088, %if.then12.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp31 = icmp eq i8 %13, 1
  br i1 %cmp31, label %if.then33, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %freq34 = getelementptr %struct.cea_sad, ptr %sads, i32 %j.089, i32 2
  %21 = ptrtoint ptr %freq34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %freq34, align 1
  %or3776 = or i8 %22, %stereo_freqs.087
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %for.body6.for.inc_crit_edge
  %value.3.ph = phi i32 [ %value.086, %for.body6.for.inc_crit_edge ], [ %value.1, %if.then33 ]
  %stereo_freqs.2.ph = phi i8 [ %stereo_freqs.087, %for.body6.for.inc_crit_edge ], [ %or3776, %if.then33 ]
  %max_channels.3.ph = phi i32 [ %max_channels.088, %for.body6.for.inc_crit_edge ], [ %max_channels.1, %if.then33 ]
  %inc = add nuw nsw i32 %j.089, 1
  %exitcond.not = icmp eq i32 %inc, %sad_count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body6

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge, %for.cond4.preheader.for.end_crit_edge
  %stereo_freqs.0.lcssa = phi i8 [ 0, %for.cond4.preheader.for.end_crit_edge ], [ %stereo_freqs.087, %if.end28.for.end_crit_edge ], [ %stereo_freqs.2.ph, %for.inc.for.end_crit_edge ]
  %value.4 = phi i32 [ 0, %for.cond4.preheader.for.end_crit_edge ], [ %value.1, %if.end28.for.end_crit_edge ], [ %value.3.ph, %for.inc.for.end_crit_edge ]
  %conv41 = zext i8 %stereo_freqs.0.lcssa to i32
  %shl43 = shl nuw i32 %conv41, 24
  %or44 = or i32 %value.4, %shl43
  %23 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pin, align 4
  %offset = getelementptr inbounds %struct.r600_audio_pin, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %arrayidx46 = getelementptr [12 x [2 x i16]], ptr @dce6_afmt_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.095
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx46, align 2
  %conv48 = zext i16 %28 to i32
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %5, i32 noundef %26, i32 noundef %conv48, i32 noundef %or44) #3
  %inc50 = add nuw nsw i32 %i.095, 1
  %exitcond97.not = icmp eq i32 %inc50, 12
  br i1 %exitcond97.not, label %for.end.cleanup52_crit_edge, label %for.end.for.cond4.preheader_crit_edge

for.end.for.cond4.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond4.preheader

for.end.cleanup52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup52

cleanup52:                                        ; preds = %for.end.cleanup52_crit_edge, %lor.lhs.false2.cleanup52_crit_edge, %lor.lhs.false.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_audio_enable(ptr noundef %rdev, ptr noundef readonly %pin, i8 noundef zeroext %enable_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pin, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %offset = getelementptr inbounds %struct.r600_audio_pin, ptr %pin, i32 0, i32 5
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable_mask)
  %tobool1.not = icmp eq i8 %enable_mask, 0
  %cond = select i1 %tobool1.not, i32 0, i32 -2147483648
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %rdev, i32 noundef %1, i32 noundef 84, i32 noundef %cond) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_hdmi_audio_set_dto(ptr nocapture noundef readonly %rdev, ptr noundef readonly %crtc, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.0) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %6, i32 1456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 -1067646976) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %clock) #3
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 1460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %7) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce6_dp_audio_set_dto(ptr nocapture noundef readonly %rdev, ptr noundef readonly %crtc, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_id, align 8
  %or1 = or i32 %1, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %or1, %if.then ], [ 16, %entry.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.0) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #3, !srcloc !14
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %5 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %6)
  %cmp = icmp ugt i32 %6, 56
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1168
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %shr = and i32 %9, 127
  %call3 = tail call i32 @radeon_audio_decode_dfs_div(i32 noundef %shr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then5

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %mul = mul i32 %clock, 100
  %div6 = udiv i32 %mul, %call3
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2.if.end7_crit_edge
  %clock.addr.0 = phi i32 [ %div6, %if.then5 ], [ %clock, %if.then2.if.end7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 -1067646976) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %clock.addr.0) #3
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %14, i32 1468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %12) #3, !srcloc !14
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %16, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 -1067646976) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %17 = tail call i32 @llvm.bswap.i32(i32 %clock) #3
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %19, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %17) #3, !srcloc !14
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_decode_dfs_div(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/dce6_afmt.c", i32 107, i32 3}
!2 = !{ptr @dce6_afmt_write_sad_regs.eld_reg_to_type, !3, !"eld_reg_to_type", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/dce6_afmt.c", i32 210, i32 19}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2157419082}
!14 = !{i64 6710778}
!15 = !{i64 6711196}
!16 = !{i64 2157418675}
!17 = !{i8 0, i8 2}
