; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/dce3_1_afmt.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/dce3_1_afmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.87 = type { i32, ptr }
%struct.cea_sad = type { i8, i8, i8, i8 }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.dfixed = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.radeon_fence_driver = type { ptr, i32, i64, ptr, [8 x i64], %struct.atomic64_t, i8, i8, %struct.delayed_work }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.radeon_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [8 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.radeon_irq = type { i8, %struct.spinlock, [8 x %struct.atomic_t], [6 x i8], [6 x %struct.atomic_t], %struct.wait_queue_head, [7 x i8], [7 x i8], %union.radeon_irq_stat_regs, i8 }
%union.radeon_irq_stat_regs = type { %struct.evergreen_irq_stat_regs }
%struct.evergreen_irq_stat_regs = type { [6 x i32], [6 x i32], [6 x i32] }
%struct.radeon_gem = type { %struct.mutex, %struct.list_head }
%struct.radeon_pm = type { %struct.mutex, %struct.rw_semaphore, i32, i32, i32, i8, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, ptr, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i32, i32, [7 x %struct.radeon_pm_profile], i32, ptr, i8, i8, i8, i8, i8, i8, %struct.radeon_dpm }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32, i32 }

@dce3_2_afmt_write_sad_regs.eld_reg_to_type = internal constant { [12 x [2 x i16]], [48 x i8] } { [12 x [2 x i16]] [[2 x i16] [i16 29128, i16 1], [2 x i16] [i16 29132, i16 2], [2 x i16] [i16 29136, i16 3], [2 x i16] [i16 29140, i16 4], [2 x i16] [i16 29144, i16 5], [2 x i16] [i16 29148, i16 6], [2 x i16] [i16 29152, i16 7], [2 x i16] [i16 29156, i16 8], [2 x i16] [i16 29164, i16 10], [2 x i16] [i16 29168, i16 11], [2 x i16] [i16 29172, i16 12], [2 x i16] [i16 29180, i16 14]], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"eld_reg_to_type\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/dce3_1_afmt.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 71, i32 19 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dce3_2_afmt_write_sad_regs.eld_reg_to_type], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce3_2_afmt_write_sad_regs.eld_reg_to_type to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce3_2_afmt_hdmi_write_speaker_allocation(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sadb, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 @radeon_audio_endpoint_rreg(ptr noundef %3, i32 noundef 0, i32 noundef 29116) #3
  %and = and i32 %call, -196736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %tobool.not = icmp eq i32 %sad_count, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %sadb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sadb, align 1
  %6 = and i8 %5, 127
  %and1 = zext i8 %6 to i32
  %or = or i32 %and, %and1
  %or2 = or i32 %or, 65536
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or3 = or i32 %and, 65541
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ %or2, %if.then ], [ %or3, %if.else ]
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef 0, i32 noundef 29116, i32 noundef %tmp.0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_endpoint_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_endpoint_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce3_2_afmt_dp_write_speaker_allocation(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sadb, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 @radeon_audio_endpoint_rreg(ptr noundef %3, i32 noundef 0, i32 noundef 29116) #3
  %and = and i32 %call, -196736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %tobool.not = icmp eq i32 %sad_count, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %sadb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sadb, align 1
  %6 = and i8 %5, 127
  %and1 = zext i8 %6 to i32
  %or = or i32 %and, %and1
  %or2 = or i32 %or, 131072
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or3 = or i32 %and, 131077
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ %or2, %if.then ], [ %or3, %if.else ]
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef 0, i32 noundef 29116, i32 noundef %tmp.0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce3_2_afmt_write_sad_regs(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sads, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %cmp269 = icmp sgt i32 %sad_count, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc44, %for.end.for.cond1.preheader_crit_edge ]
  br i1 %cmp269, label %for.body3.lr.ph, label %for.cond1.preheader.for.end_crit_edge

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx5 = getelementptr [12 x [2 x i16]], ptr @dce3_2_afmt_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.079, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx5, align 2
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %j.073 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.inc.for.body3_crit_edge ]
  %max_channels.072 = phi i32 [ -1, %for.body3.lr.ph ], [ %max_channels.3.ph, %for.inc.for.body3_crit_edge ]
  %stereo_freqs.071 = phi i8 [ 0, %for.body3.lr.ph ], [ %stereo_freqs.2.ph, %for.inc.for.body3_crit_edge ]
  %value.070 = phi i32 [ 0, %for.body3.lr.ph ], [ %value.3.ph, %for.inc.for.body3_crit_edge ]
  %arrayidx = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = zext i8 %7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %8)
  %cmp7 = icmp eq i16 %5, %8
  br i1 %cmp7, label %if.then, label %for.body3.for.inc_crit_edge

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body3
  %channels = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 1
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channels, align 1
  %conv9 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_channels.072, i32 %conv9)
  %cmp10 = icmp slt i32 %max_channels.072, %conv9
  br i1 %cmp10, label %if.then12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %conv9, 7
  %byte2 = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 3
  %11 = ptrtoint ptr %byte2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %byte2, align 1
  %conv15 = zext i8 %12 to i32
  %shl17 = shl nuw nsw i32 %conv15, 16
  %or = or i32 %shl17, %and
  %freq = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 2
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %freq, align 1
  %conv18 = zext i8 %14 to i32
  %shl20 = shl nuw nsw i32 %conv18, 8
  %or21 = or i32 %or, %shl20
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %value.1 = phi i32 [ %or21, %if.then12 ], [ %value.070, %if.then.if.end_crit_edge ]
  %max_channels.1 = phi i32 [ %conv9, %if.then12 ], [ %max_channels.072, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp26 = icmp eq i8 %7, 1
  br i1 %cmp26, label %if.then28, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %freq29 = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 2
  %15 = ptrtoint ptr %freq29 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %freq29, align 1
  %or3260 = or i8 %16, %stereo_freqs.071
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body3.for.inc_crit_edge
  %value.3.ph = phi i32 [ %value.070, %for.body3.for.inc_crit_edge ], [ %value.1, %if.then28 ]
  %stereo_freqs.2.ph = phi i8 [ %stereo_freqs.071, %for.body3.for.inc_crit_edge ], [ %or3260, %if.then28 ]
  %max_channels.3.ph = phi i32 [ %max_channels.072, %for.body3.for.inc_crit_edge ], [ %max_channels.1, %if.then28 ]
  %inc = add nuw nsw i32 %j.073, 1
  %exitcond.not = icmp eq i32 %inc, %sad_count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %stereo_freqs.0.lcssa = phi i8 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %stereo_freqs.071, %if.end.for.end_crit_edge ], [ %stereo_freqs.2.ph, %for.inc.for.end_crit_edge ]
  %value.4 = phi i32 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %value.1, %if.end.for.end_crit_edge ], [ %value.3.ph, %for.inc.for.end_crit_edge ]
  %conv36 = zext i8 %stereo_freqs.0.lcssa to i32
  %shl38 = shl nuw i32 %conv36, 24
  %or39 = or i32 %value.4, %shl38
  %arrayidx40 = getelementptr [12 x [2 x i16]], ptr @dce3_2_afmt_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.079
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx40, align 2
  %conv42 = zext i16 %18 to i32
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef 0, i32 noundef %conv42, i32 noundef %or39) #3
  %inc44 = add nuw nsw i32 %i.079, 1
  %exitcond81.not = icmp eq i32 %inc44, 12
  br i1 %exitcond81.not, label %for.end45, label %for.end.for.cond1.preheader_crit_edge

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce3_2_audio_set_dto(ptr nocapture noundef readonly %rdev, ptr noundef readonly %crtc, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 34
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 191999, i32 %clock)
  %cmp = icmp ugt i32 %clock, 191999
  br i1 %cmp, label %if.end3.if.end13_crit_edge, label %if.else

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %clock)
  %cmp5 = icmp ugt i32 %clock, 95999
  br i1 %cmp5, label %if.else.if.end13_crit_edge, label %if.else7

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %clock)
  %cmp8 = icmp ugt i32 %clock, 47999
  %. = select i1 %cmp8, i32 48000, i32 24000
  %.49 = zext i1 %cmp8 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.else7, %if.else.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %dto_phase.0 = phi i32 [ 192000, %if.end3.if.end13_crit_edge ], [ 96000, %if.else.if.end13_crit_edge ], [ %., %if.else7 ]
  %wallclock_ratio.0 = phi i32 [ 3, %if.end3.if.end13_crit_edge ], [ 2, %if.else.if.end13_crit_edge ], [ %.49, %if.else7 ]
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14 = icmp eq i32 %5, 0
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i = getelementptr i8, ptr %7, i32 1312
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %9 = and i32 %8, -117440513
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or = or i32 %10, %wallclock_ratio.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %13, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %11) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %dto_phase.0) #3
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %16, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %14) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %17 = tail call i32 @llvm.bswap.i32(i32 %clock) #3
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %19, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %17) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %21, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #3, !srcloc !14
  br label %cleanup

if.else17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i69 = getelementptr i8, ptr %7, i32 1328
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %23 = and i32 %22, -117440513
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %or22 = or i32 %24, %wallclock_ratio.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %or22) #3
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %27, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %25) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %28 = tail call i32 @llvm.bswap.i32(i32 %dto_phase.0) #3
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %30, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %28) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %clock) #3
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %33, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %31) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %35, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 16777216) #3, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce3_2_hdmi_update_acr(ptr nocapture noundef readonly %encoder, i32 noundef %offset, ptr nocapture noundef readonly %acr) local_unnamed_addr #0 align 64 {
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
  %add = add i32 %offset, 29708
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1114112) #3, !srcloc !14
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 4352) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %add2 = add i32 %offset, 29868
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add2)
  %cmp.i108 = icmp ugt i32 %9, %add2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add2)
  %cmp1.i109 = icmp ult i32 %add2, 65536
  %or.cond.i110 = or i1 %cmp1.i109, %cmp.i108
  br i1 %or.cond.i110, label %if.then.i, label %if.else.i113

if.then.i:                                        ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i111 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i111 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i111, align 4
  %add.ptr.i112 = getelementptr i8, ptr %11, i32 %add2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #3, !srcloc !11
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit

if.else.i113:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add2) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i113, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i113 ], [ %13, %if.then.i ]
  %and = and i32 %retval.0.i, 4095
  %cts_32khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 2
  %14 = ptrtoint ptr %cts_32khz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cts_32khz, align 4
  %shl = shl i32 %15, 12
  %or = or i32 %shl, %and
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add2)
  %cmp.i115 = icmp ugt i32 %17, %add2
  %or.cond.i117 = or i1 %cmp1.i109, %cmp.i115
  br i1 %or.cond.i117, label %do.body.i120, label %if.else.i121

do.body.i120:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i118 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i118 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %20, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %18) #3, !srcloc !14
  br label %r100_mm_wreg.exit122

if.else.i121:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add2, i32 noundef %or) #3
  br label %r100_mm_wreg.exit122

r100_mm_wreg.exit122:                             ; preds = %if.else.i121, %do.body.i120
  %add8 = add i32 %offset, 29872
  %21 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add8)
  %cmp.i124 = icmp ugt i32 %22, %add8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add8)
  %cmp1.i125 = icmp ult i32 %add8, 65536
  %or.cond.i126 = or i1 %cmp1.i125, %cmp.i124
  br i1 %or.cond.i126, label %if.then.i129, label %if.else.i131

if.then.i129:                                     ; preds = %r100_mm_wreg.exit122
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i127 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %23 = ptrtoint ptr %rmmio.i127 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %24, i32 %add8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #3, !srcloc !11
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit133

if.else.i131:                                     ; preds = %r100_mm_wreg.exit122
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i130 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add8) #3
  br label %r100_mm_rreg.exit133

r100_mm_rreg.exit133:                             ; preds = %if.else.i131, %if.then.i129
  %retval.0.i132 = phi i32 [ %call3.i130, %if.else.i131 ], [ %26, %if.then.i129 ]
  %and10 = and i32 %retval.0.i132, -1048576
  %n_32khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 1
  %27 = ptrtoint ptr %n_32khz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_32khz, align 4
  %and11 = and i32 %28, 1048575
  %or14 = or i32 %and11, %and10
  %29 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add8)
  %cmp.i135 = icmp ugt i32 %30, %add8
  %or.cond.i137 = or i1 %cmp1.i125, %cmp.i135
  br i1 %or.cond.i137, label %do.body.i140, label %if.else.i141

do.body.i140:                                     ; preds = %r100_mm_rreg.exit133
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %or14) #3
  %rmmio.i138 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i138 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i138, align 4
  %add.ptr.i139 = getelementptr i8, ptr %33, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %31) #3, !srcloc !14
  br label %r100_mm_wreg.exit142

if.else.i141:                                     ; preds = %r100_mm_rreg.exit133
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add8, i32 noundef %or14) #3
  br label %r100_mm_wreg.exit142

r100_mm_wreg.exit142:                             ; preds = %if.else.i141, %do.body.i140
  %add20 = add i32 %offset, 29876
  %34 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add20)
  %cmp.i144 = icmp ugt i32 %35, %add20
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add20)
  %cmp1.i145 = icmp ult i32 %add20, 65536
  %or.cond.i146 = or i1 %cmp1.i145, %cmp.i144
  br i1 %or.cond.i146, label %if.then.i149, label %if.else.i151

if.then.i149:                                     ; preds = %r100_mm_wreg.exit142
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i147 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %36 = ptrtoint ptr %rmmio.i147 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i147, align 4
  %add.ptr.i148 = getelementptr i8, ptr %37, i32 %add20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #3, !srcloc !11
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit153

if.else.i151:                                     ; preds = %r100_mm_wreg.exit142
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i150 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add20) #3
  br label %r100_mm_rreg.exit153

r100_mm_rreg.exit153:                             ; preds = %if.else.i151, %if.then.i149
  %retval.0.i152 = phi i32 [ %call3.i150, %if.else.i151 ], [ %39, %if.then.i149 ]
  %and22 = and i32 %retval.0.i152, 4095
  %cts_44_1khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 4
  %40 = ptrtoint ptr %cts_44_1khz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cts_44_1khz, align 4
  %shl24 = shl i32 %41, 12
  %or26 = or i32 %shl24, %and22
  %42 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add20)
  %cmp.i155 = icmp ugt i32 %43, %add20
  %or.cond.i157 = or i1 %cmp1.i145, %cmp.i155
  br i1 %or.cond.i157, label %do.body.i160, label %if.else.i161

do.body.i160:                                     ; preds = %r100_mm_rreg.exit153
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %44 = tail call i32 @llvm.bswap.i32(i32 %or26) #3
  %rmmio.i158 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i159 = getelementptr i8, ptr %46, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %44) #3, !srcloc !14
  br label %r100_mm_wreg.exit162

if.else.i161:                                     ; preds = %r100_mm_rreg.exit153
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add20, i32 noundef %or26) #3
  br label %r100_mm_wreg.exit162

r100_mm_wreg.exit162:                             ; preds = %if.else.i161, %do.body.i160
  %add32 = add i32 %offset, 29880
  %47 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add32)
  %cmp.i164 = icmp ugt i32 %48, %add32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add32)
  %cmp1.i165 = icmp ult i32 %add32, 65536
  %or.cond.i166 = or i1 %cmp1.i165, %cmp.i164
  br i1 %or.cond.i166, label %if.then.i169, label %if.else.i171

if.then.i169:                                     ; preds = %r100_mm_wreg.exit162
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i167 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %49 = ptrtoint ptr %rmmio.i167 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i167, align 4
  %add.ptr.i168 = getelementptr i8, ptr %50, i32 %add32
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #3, !srcloc !11
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit173

if.else.i171:                                     ; preds = %r100_mm_wreg.exit162
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i170 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add32) #3
  br label %r100_mm_rreg.exit173

r100_mm_rreg.exit173:                             ; preds = %if.else.i171, %if.then.i169
  %retval.0.i172 = phi i32 [ %call3.i170, %if.else.i171 ], [ %52, %if.then.i169 ]
  %and34 = and i32 %retval.0.i172, -1048576
  %n_44_1khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 3
  %53 = ptrtoint ptr %n_44_1khz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_44_1khz, align 4
  %and35 = and i32 %54, 1048575
  %or38 = or i32 %and35, %and34
  %55 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add32)
  %cmp.i175 = icmp ugt i32 %56, %add32
  %or.cond.i177 = or i1 %cmp1.i165, %cmp.i175
  br i1 %or.cond.i177, label %do.body.i180, label %if.else.i181

do.body.i180:                                     ; preds = %r100_mm_rreg.exit173
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %57 = tail call i32 @llvm.bswap.i32(i32 %or38) #3
  %rmmio.i178 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %58 = ptrtoint ptr %rmmio.i178 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i178, align 4
  %add.ptr.i179 = getelementptr i8, ptr %59, i32 %add32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %57) #3, !srcloc !14
  br label %r100_mm_wreg.exit182

if.else.i181:                                     ; preds = %r100_mm_rreg.exit173
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add32, i32 noundef %or38) #3
  br label %r100_mm_wreg.exit182

r100_mm_wreg.exit182:                             ; preds = %if.else.i181, %do.body.i180
  %add44 = add i32 %offset, 29884
  %60 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %add44)
  %cmp.i184 = icmp ugt i32 %61, %add44
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add44)
  %cmp1.i185 = icmp ult i32 %add44, 65536
  %or.cond.i186 = or i1 %cmp1.i185, %cmp.i184
  br i1 %or.cond.i186, label %if.then.i189, label %if.else.i191

if.then.i189:                                     ; preds = %r100_mm_wreg.exit182
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i187 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %62 = ptrtoint ptr %rmmio.i187 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i187, align 4
  %add.ptr.i188 = getelementptr i8, ptr %63, i32 %add44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188) #3, !srcloc !11
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit193

if.else.i191:                                     ; preds = %r100_mm_wreg.exit182
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i190 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add44) #3
  br label %r100_mm_rreg.exit193

r100_mm_rreg.exit193:                             ; preds = %if.else.i191, %if.then.i189
  %retval.0.i192 = phi i32 [ %call3.i190, %if.else.i191 ], [ %65, %if.then.i189 ]
  %and46 = and i32 %retval.0.i192, 4095
  %cts_48khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 6
  %66 = ptrtoint ptr %cts_48khz to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cts_48khz, align 4
  %shl48 = shl i32 %67, 12
  %or50 = or i32 %shl48, %and46
  %68 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add44)
  %cmp.i195 = icmp ugt i32 %69, %add44
  %or.cond.i197 = or i1 %cmp1.i185, %cmp.i195
  br i1 %or.cond.i197, label %do.body.i200, label %if.else.i201

do.body.i200:                                     ; preds = %r100_mm_rreg.exit193
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %70 = tail call i32 @llvm.bswap.i32(i32 %or50) #3
  %rmmio.i198 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %71 = ptrtoint ptr %rmmio.i198 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i198, align 4
  %add.ptr.i199 = getelementptr i8, ptr %72, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %70) #3, !srcloc !14
  br label %r100_mm_wreg.exit202

if.else.i201:                                     ; preds = %r100_mm_rreg.exit193
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add44, i32 noundef %or50) #3
  br label %r100_mm_wreg.exit202

r100_mm_wreg.exit202:                             ; preds = %if.else.i201, %do.body.i200
  %add56 = add i32 %offset, 29888
  %73 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add56)
  %cmp.i204 = icmp ugt i32 %74, %add56
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add56)
  %cmp1.i205 = icmp ult i32 %add56, 65536
  %or.cond.i206 = or i1 %cmp1.i205, %cmp.i204
  br i1 %or.cond.i206, label %if.then.i209, label %if.else.i211

if.then.i209:                                     ; preds = %r100_mm_wreg.exit202
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i207 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %75 = ptrtoint ptr %rmmio.i207 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i207, align 4
  %add.ptr.i208 = getelementptr i8, ptr %76, i32 %add56
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #3, !srcloc !11
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit213

if.else.i211:                                     ; preds = %r100_mm_wreg.exit202
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i210 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add56) #3
  br label %r100_mm_rreg.exit213

r100_mm_rreg.exit213:                             ; preds = %if.else.i211, %if.then.i209
  %retval.0.i212 = phi i32 [ %call3.i210, %if.else.i211 ], [ %78, %if.then.i209 ]
  %and58 = and i32 %retval.0.i212, -1048576
  %n_48khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 5
  %79 = ptrtoint ptr %n_48khz to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n_48khz, align 4
  %and59 = and i32 %80, 1048575
  %or62 = or i32 %and59, %and58
  %81 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %add56)
  %cmp.i215 = icmp ugt i32 %82, %add56
  %or.cond.i217 = or i1 %cmp1.i205, %cmp.i215
  br i1 %or.cond.i217, label %do.body.i220, label %if.else.i221

do.body.i220:                                     ; preds = %r100_mm_rreg.exit213
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %83 = tail call i32 @llvm.bswap.i32(i32 %or62) #3
  %rmmio.i218 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %84 = ptrtoint ptr %rmmio.i218 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i218, align 4
  %add.ptr.i219 = getelementptr i8, ptr %85, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %83) #3, !srcloc !14
  br label %r100_mm_wreg.exit222

if.else.i221:                                     ; preds = %r100_mm_rreg.exit213
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add56, i32 noundef %or62) #3
  br label %r100_mm_wreg.exit222

r100_mm_wreg.exit222:                             ; preds = %if.else.i221, %do.body.i220
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce3_2_set_audio_packet(ptr nocapture noundef readonly %encoder, i32 noundef %offset) local_unnamed_addr #0 align 64 {
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
  %add = add i32 %offset, 29704
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268436224) #3, !srcloc !14
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 196624) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %add2 = add i32 %offset, 30212
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add2)
  %cmp.i29 = icmp ugt i32 %9, %add2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add2)
  %cmp1.i30 = icmp ult i32 %add2, 65536
  %or.cond.i31 = or i1 %cmp1.i30, %cmp.i29
  br i1 %or.cond.i31, label %do.body.i34, label %if.else.i35

do.body.i34:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %rmmio.i32 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 16777220) #3, !srcloc !14
  br label %r100_mm_wreg.exit36

if.else.i35:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add2, i32 noundef 67108865) #3
  br label %r100_mm_wreg.exit36

r100_mm_wreg.exit36:                              ; preds = %if.else.i35, %do.body.i34
  %add3 = add i32 %offset, 29716
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add3)
  %cmp.i38 = icmp ugt i32 %13, %add3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3)
  %cmp1.i39 = icmp ult i32 %add3, 65536
  %or.cond.i40 = or i1 %cmp1.i39, %cmp.i38
  br i1 %or.cond.i40, label %if.then.i, label %if.else.i43

if.then.i:                                        ; preds = %r100_mm_wreg.exit36
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i41 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %15, i32 %add3
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #3, !srcloc !11
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit

if.else.i43:                                      ; preds = %r100_mm_wreg.exit36
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add3) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i43, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i43 ], [ %17, %if.then.i ]
  %or = or i32 %retval.0.i, 48
  %18 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add3)
  %cmp.i45 = icmp ugt i32 %19, %add3
  %or.cond.i47 = or i1 %cmp1.i39, %cmp.i45
  br i1 %or.cond.i47, label %do.body.i50, label %if.else.i51

do.body.i50:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i48 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i48, align 4
  %add.ptr.i49 = getelementptr i8, ptr %22, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %20) #3, !srcloc !14
  br label %r100_mm_wreg.exit52

if.else.i51:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add3, i32 noundef %or) #3
  br label %r100_mm_wreg.exit52

r100_mm_wreg.exit52:                              ; preds = %if.else.i51, %do.body.i50
  %add7 = add i32 %offset, 29720
  %23 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add7)
  %cmp.i54 = icmp ugt i32 %24, %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7)
  %cmp1.i55 = icmp ult i32 %add7, 65536
  %or.cond.i56 = or i1 %cmp1.i55, %cmp.i54
  br i1 %or.cond.i56, label %if.then.i59, label %if.else.i61

if.then.i59:                                      ; preds = %r100_mm_wreg.exit52
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i57 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %25 = ptrtoint ptr %rmmio.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %26, i32 %add7
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #3, !srcloc !11
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit63

if.else.i61:                                      ; preds = %r100_mm_wreg.exit52
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i60 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add7) #3
  br label %r100_mm_rreg.exit63

r100_mm_rreg.exit63:                              ; preds = %if.else.i61, %if.then.i59
  %retval.0.i62 = phi i32 [ %call3.i60, %if.else.i61 ], [ %28, %if.then.i59 ]
  %or10 = or i32 %retval.0.i62, 512
  %29 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add7)
  %cmp.i65 = icmp ugt i32 %30, %add7
  %or.cond.i67 = or i1 %cmp1.i55, %cmp.i65
  br i1 %or.cond.i67, label %do.body.i70, label %if.else.i71

do.body.i70:                                      ; preds = %r100_mm_rreg.exit63
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %or10) #3
  %rmmio.i68 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i68, align 4
  %add.ptr.i69 = getelementptr i8, ptr %33, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %31) #3, !srcloc !14
  br label %r100_mm_wreg.exit72

if.else.i71:                                      ; preds = %r100_mm_rreg.exit63
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add7, i32 noundef %or10) #3
  br label %r100_mm_wreg.exit72

r100_mm_wreg.exit72:                              ; preds = %if.else.i71, %do.body.i70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce3_2_set_mute(ptr nocapture noundef readonly %encoder, i32 noundef %offset, i1 noundef zeroext %mute) local_unnamed_addr #0 align 64 {
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
  %add = add i32 %offset, 29736
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %mute, label %do.body, label %do.body3

do.body:                                          ; preds = %entry
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %or = or i32 %retval.0.i, 1
  %10 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp.i23 = icmp ugt i32 %11, %add
  %or.cond.i25 = or i1 %cmp1.i, %cmp.i23
  br i1 %or.cond.i25, label %do.body.i, label %if.else.i28

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i26 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %12) #3, !srcloc !14
  br label %if.end

if.else.i28:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %or) #3
  br label %if.end

do.body3:                                         ; preds = %entry
  br i1 %or.cond.i, label %if.then.i35, label %if.else.i37

if.then.i35:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i33 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #3, !srcloc !11
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %r100_mm_rreg.exit39

if.else.i37:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i36 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #3
  br label %r100_mm_rreg.exit39

r100_mm_rreg.exit39:                              ; preds = %if.else.i37, %if.then.i35
  %retval.0.i38 = phi i32 [ %call3.i36, %if.else.i37 ], [ %18, %if.then.i35 ]
  %and7 = and i32 %retval.0.i38, -2
  %19 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp.i41 = icmp ugt i32 %20, %add
  %or.cond.i43 = or i1 %cmp1.i, %cmp.i41
  br i1 %or.cond.i43, label %do.body.i46, label %if.else.i47

do.body.i46:                                      ; preds = %r100_mm_rreg.exit39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %and7) #3
  %rmmio.i44 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %21) #3, !srcloc !14
  br label %if.end

if.else.i47:                                      ; preds = %r100_mm_rreg.exit39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %and7) #3
  br label %if.end

if.end:                                           ; preds = %if.else.i47, %do.body.i46, %if.else.i28, %do.body.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @dce3_2_afmt_write_sad_regs.eld_reg_to_type, !1, !"eld_reg_to_type", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/dce3_1_afmt.c", i32 71, i32 19}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 6706725}
!12 = !{i64 2157414204}
!13 = !{i64 2157414611}
!14 = !{i64 6706307}
