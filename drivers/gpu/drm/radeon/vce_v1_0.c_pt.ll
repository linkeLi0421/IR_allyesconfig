; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/vce_v1_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/vce_v1_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
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
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.vce_v1_0_fw_signature = type { i32, i32, i32, [8 x %struct.anon.108] }
%struct.anon.108 = type { i32, i32, [4 x i32], [4 x i32] }
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

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/radeon/vce_v1_0.c\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"VCE not responding, trying to reset the ECPU!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VCE not responding, giving up!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@vce_v1_0_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] VCE initialized successfully.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vce_v1_0_init\00", [18 x i8] zeroinitializer }, align 32
@vce_v1_0_init._entry_ptr = internal global ptr @vce_v1_0_init._entry, section ".printk_index", align 4
@switch.table.vce_v1_0_load_fw = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16777239, i32 16777236, i32 16777238, i32 16777237], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 212, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 337, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 349, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [37 x i8] c"../drivers/gpu/drm/radeon/vce_v1_0.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 381, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [30 x i8] c"switch.table.vce_v1_0_load_fw\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @vce_v1_0_init._entry, ptr @vce_v1_0_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.vce_v1_0_load_fw], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v1_0_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vce_v1_0_load_fw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v1_0_get_rptr(ptr noundef %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131468, i32 %3)
  %cmp.i = icmp ugt i32 %3, 131468
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 131468
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !20
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %return

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131468) #5
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131448, i32 %3)
  %cmp.i4 = icmp ugt i32 %3, 131448
  br i1 %cmp.i4, label %if.then.i7, label %if.else.i9

if.then.i7:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 131448
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !20
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %return

if.else.i9:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i8 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131448) #5
  br label %return

return:                                           ; preds = %if.else.i9, %if.then.i7, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ], [ %call3.i8, %if.else.i9 ], [ %11, %if.then.i7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v1_0_get_wptr(ptr noundef %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131472, i32 %3)
  %cmp.i = icmp ugt i32 %3, 131472
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 131472
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !20
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %return

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131472) #5
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131452, i32 %3)
  %cmp.i4 = icmp ugt i32 %3, 131452
  br i1 %cmp.i4, label %if.then.i7, label %if.else.i9

if.then.i7:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 131452
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !20
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %return

if.else.i9:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i8 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131452) #5
  br label %return

return:                                           ; preds = %if.else.i9, %if.then.i7, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ], [ %call3.i8, %if.else.i9 ], [ %11, %if.then.i7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vce_v1_0_set_wptr(ptr noundef %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wptr, align 4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131472, i32 %5)
  %cmp.i = icmp ugt i32 %5, 131472
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 131472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !23
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131472, i32 noundef %3) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131452, i32 %5)
  %cmp.i6 = icmp ugt i32 %5, 131452
  br i1 %cmp.i6, label %do.body.i9, label %if.else.i10

do.body.i9:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  %rmmio.i7 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %11, i32 131452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %9) #5, !srcloc !23
  br label %if.end

if.else.i10:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131452, i32 noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.else.i10, %do.body.i9, %if.else.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vce_v1_0_enable_mgcg(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cg_flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %3)
  %cmp.i = icmp ugt i32 %3, 131832
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 131832
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !20
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131832) #5
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ]
  %or = or i32 %retval.0.i, 65536
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %9)
  %cmp.i40 = icmp ugt i32 %9, 131832
  br i1 %cmp.i40, label %do.body.i, label %if.else.i43

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %rmmio.i41 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %12, i32 131832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %10) #5, !srcloc !23
  br label %r100_mm_wreg.exit

if.else.i43:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131832, i32 noundef %or) #5
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i43, %do.body.i
  %13 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %14)
  %cmp.i45 = icmp ugt i32 %14, 132540
  br i1 %cmp.i45, label %if.then.i48, label %if.else.i50

if.then.i48:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i46 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %16, i32 132540
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #5, !srcloc !20
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit52

if.else.i50:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i49 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132540) #5
  br label %r100_mm_rreg.exit52

r100_mm_rreg.exit52:                              ; preds = %if.else.i50, %if.then.i48
  %retval.0.i51 = phi i32 [ %call3.i49, %if.else.i50 ], [ %18, %if.then.i48 ]
  %and3 = and i32 %retval.0.i51, 6295551
  %or4 = or i32 %and3, -8388608
  %19 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %20)
  %cmp.i54 = icmp ugt i32 %20, 132540
  br i1 %cmp.i54, label %do.body.i57, label %if.else.i58

do.body.i57:                                      ; preds = %r100_mm_rreg.exit52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or4) #5
  %rmmio.i55 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %23, i32 132540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %21) #5, !srcloc !23
  br label %r100_mm_wreg.exit59

if.else.i58:                                      ; preds = %r100_mm_rreg.exit52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132540, i32 noundef %or4) #5
  br label %r100_mm_wreg.exit59

r100_mm_wreg.exit59:                              ; preds = %if.else.i58, %do.body.i57
  %24 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %25)
  %cmp.i61 = icmp ugt i32 %25, 132544
  br i1 %cmp.i61, label %if.then.i64, label %if.else.i66

if.then.i64:                                      ; preds = %r100_mm_wreg.exit59
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i62 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %27, i32 132544
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #5, !srcloc !20
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit68

if.else.i66:                                      ; preds = %r100_mm_wreg.exit59
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i65 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132544) #5
  br label %r100_mm_rreg.exit68

r100_mm_rreg.exit68:                              ; preds = %if.else.i66, %if.then.i64
  %retval.0.i67 = phi i32 [ %call3.i65, %if.else.i66 ], [ %29, %if.then.i64 ]
  %and6 = and i32 %retval.0.i67, -1024
  %30 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %31)
  %cmp.i70 = icmp ugt i32 %31, 132544
  br i1 %cmp.i70, label %do.body.i73, label %if.else.i74

do.body.i73:                                      ; preds = %r100_mm_rreg.exit68
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %and6) #5
  %rmmio.i71 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %33 = ptrtoint ptr %rmmio.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %34, i32 132544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %32) #5, !srcloc !23
  br label %if.end

if.else.i74:                                      ; preds = %r100_mm_rreg.exit68
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132544, i32 noundef %and6) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %rmmio_size.i76 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %35 = ptrtoint ptr %rmmio_size.i76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rmmio_size.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %36)
  %cmp.i77 = icmp ugt i32 %36, 131832
  br i1 %cmp.i77, label %if.then.i80, label %if.else.i82

if.then.i80:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i78 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %38, i32 131832
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #5, !srcloc !20
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit84

if.else.i82:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i81 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131832) #5
  br label %r100_mm_rreg.exit84

r100_mm_rreg.exit84:                              ; preds = %if.else.i82, %if.then.i80
  %retval.0.i83 = phi i32 [ %call3.i81, %if.else.i82 ], [ %40, %if.then.i80 ]
  %and8 = and i32 %retval.0.i83, -65537
  %41 = ptrtoint ptr %rmmio_size.i76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rmmio_size.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %42)
  %cmp.i86 = icmp ugt i32 %42, 131832
  br i1 %cmp.i86, label %do.body.i89, label %if.else.i90

do.body.i89:                                      ; preds = %r100_mm_rreg.exit84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %and8) #5
  %rmmio.i87 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %44 = ptrtoint ptr %rmmio.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %45, i32 131832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %43) #5, !srcloc !23
  br label %r100_mm_wreg.exit91

if.else.i90:                                      ; preds = %r100_mm_rreg.exit84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131832, i32 noundef %and8) #5
  br label %r100_mm_wreg.exit91

r100_mm_wreg.exit91:                              ; preds = %if.else.i90, %do.body.i89
  %46 = ptrtoint ptr %rmmio_size.i76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rmmio_size.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %47)
  %cmp.i93 = icmp ugt i32 %47, 132540
  br i1 %cmp.i93, label %if.then.i96, label %if.else.i98

if.then.i96:                                      ; preds = %r100_mm_wreg.exit91
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i94 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %49, i32 132540
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #5, !srcloc !20
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit100

if.else.i98:                                      ; preds = %r100_mm_wreg.exit91
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i97 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132540) #5
  br label %r100_mm_rreg.exit100

r100_mm_rreg.exit100:                             ; preds = %if.else.i98, %if.then.i96
  %retval.0.i99 = phi i32 [ %call3.i97, %if.else.i98 ], [ %51, %if.then.i96 ]
  %or10 = and i32 %retval.0.i99, 6295551
  %and11 = or i32 %or10, 2093056
  %52 = ptrtoint ptr %rmmio_size.i76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rmmio_size.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %53)
  %cmp.i102 = icmp ugt i32 %53, 132540
  br i1 %cmp.i102, label %do.body.i105, label %if.else.i106

do.body.i105:                                     ; preds = %r100_mm_rreg.exit100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %54 = tail call i32 @llvm.bswap.i32(i32 %and11) #5
  %rmmio.i103 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %55 = ptrtoint ptr %rmmio.i103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %56, i32 132540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %54) #5, !srcloc !23
  br label %r100_mm_wreg.exit107

if.else.i106:                                     ; preds = %r100_mm_rreg.exit100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132540, i32 noundef %and11) #5
  br label %r100_mm_wreg.exit107

r100_mm_wreg.exit107:                             ; preds = %if.else.i106, %do.body.i105
  %57 = ptrtoint ptr %rmmio_size.i76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rmmio_size.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %58)
  %cmp.i109 = icmp ugt i32 %58, 132544
  br i1 %cmp.i109, label %if.then.i112, label %if.else.i114

if.then.i112:                                     ; preds = %r100_mm_wreg.exit107
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i110 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %59 = ptrtoint ptr %rmmio.i110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %60, i32 132544
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #5, !srcloc !20
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit116

if.else.i114:                                     ; preds = %r100_mm_wreg.exit107
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i113 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132544) #5
  br label %r100_mm_rreg.exit116

r100_mm_rreg.exit116:                             ; preds = %if.else.i114, %if.then.i112
  %retval.0.i115 = phi i32 [ %call3.i113, %if.else.i114 ], [ %62, %if.then.i112 ]
  %or13 = or i32 %retval.0.i115, 1023
  %63 = ptrtoint ptr %rmmio_size.i76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rmmio_size.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %64)
  %cmp.i118 = icmp ugt i32 %64, 132544
  br i1 %cmp.i118, label %do.body.i121, label %if.else.i122

do.body.i121:                                     ; preds = %r100_mm_rreg.exit116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %65 = tail call i32 @llvm.bswap.i32(i32 %or13) #5
  %rmmio.i119 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %66 = ptrtoint ptr %rmmio.i119 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i119, align 4
  %add.ptr.i120 = getelementptr i8, ptr %67, i32 132544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %65) #5, !srcloc !23
  br label %if.end

if.else.i122:                                     ; preds = %r100_mm_rreg.exit116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132544, i32 noundef %or13) #5
  br label %if.end

if.end:                                           ; preds = %if.else.i122, %do.body.i121, %if.else.i74, %do.body.i73
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v1_0_load_fw(ptr nocapture noundef %rdev, ptr nocapture noundef writeonly %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vce_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 81
  %0 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vce_fw, align 8
  %data1 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %5, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vce_v1_0_load_fw, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %num = getelementptr inbounds %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp104.not = icmp eq i32 %9, 0
  br i1 %cmp104.not, label %switch.lookup.for.end_crit_edge, label %for.body.preheader

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %switch.lookup
  %umax = call i32 @llvm.umax.i32(i32 %10, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0105 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0105
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %switch.load)
  %cmp6 = icmp eq i32 %13, %switch.load
  br i1 %cmp6, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %switch.lookup.for.end_crit_edge ], [ %i.0105, %for.body.for.end_crit_edge ], [ %umax, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %10)
  %cmp8 = icmp eq i32 %i.0.lcssa, %10
  br i1 %cmp8, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i32, ptr %data, i32 48
  %nonce = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 2
  %14 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nonce, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr, align 4
  %arrayidx18 = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %data, i32 49
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx19, align 4
  %arrayidx23 = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr i32, ptr %data, i32 50
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx24, align 4
  %arrayidx28 = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr i32, ptr %data, i32 51
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx29, align 4
  %len = getelementptr inbounds %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %add = add i32 %28, 64
  %29 = tail call i32 @llvm.bswap.i32(i32 %add)
  %arrayidx30 = getelementptr i32, ptr %data, i32 52
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr i32, ptr %data, i32 53
  %31 = call ptr @memset(ptr %arrayidx31, i32 0, i32 44)
  %arrayidx32 = getelementptr i32, ptr %data, i32 64
  %arrayidx33 = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 1
  %32 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vce_fw, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %sub = add i32 %35, -332
  %36 = call ptr @memcpy(ptr %arrayidx32, ptr %arrayidx33, i32 %sub)
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %add36 = add i32 %39, 64
  %div103 = lshr i32 %add36, 2
  %add.ptr37 = getelementptr i32, ptr %add.ptr, i32 %div103
  %sigval = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 3
  %40 = ptrtoint ptr %sigval to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sigval, align 4
  %42 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %add.ptr37, align 4
  %arrayidx45 = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 3, i32 1
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr i32, ptr %add.ptr37, i32 1
  %45 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx46, align 4
  %arrayidx50 = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 3, i32 2
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx50, align 4
  %arrayidx51 = getelementptr i32, ptr %add.ptr37, i32 2
  %48 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx51, align 4
  %arrayidx55 = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr i32, ptr %add.ptr37, i32 3
  %51 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx56, align 4
  %keyselect = getelementptr %struct.vce_v1_0_fw_signature, ptr %3, i32 0, i32 3, i32 %i.0.lcssa, i32 1
  %52 = ptrtoint ptr %keyselect to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %keyselect, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %keyselect59 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 8
  %55 = ptrtoint ptr %keyselect59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %keyselect59, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v1_0_bo_size(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vce_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 81
  %0 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vce_fw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %3)
  %cmp = icmp ugt i32 %3, 262144
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 460416
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v1_0_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 1
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %3)
  %cmp.i = icmp ugt i32 %3, 131832
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 131832
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !20
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131832) #5
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ]
  %and = and i32 %retval.0.i, -65537
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %9)
  %cmp.i140 = icmp ugt i32 %9, 131832
  br i1 %cmp.i140, label %do.body.i, label %if.else.i143

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %rmmio.i141 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i141 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i141, align 4
  %add.ptr.i142 = getelementptr i8, ptr %12, i32 131832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %10) #5, !srcloc !23
  br label %r100_mm_wreg.exit

if.else.i143:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131832, i32 noundef %and) #5
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i143, %do.body.i
  %13 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %14)
  %cmp.i145 = icmp ugt i32 %14, 132540
  br i1 %cmp.i145, label %if.then.i148, label %if.else.i150

if.then.i148:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i146 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i146 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i146, align 4
  %add.ptr.i147 = getelementptr i8, ptr %16, i32 132540
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #5, !srcloc !20
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit152

if.else.i150:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i149 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132540) #5
  br label %r100_mm_rreg.exit152

r100_mm_rreg.exit152:                             ; preds = %if.else.i150, %if.then.i148
  %retval.0.i151 = phi i32 [ %call3.i149, %if.else.i150 ], [ %18, %if.then.i148 ]
  %and4 = and i32 %retval.0.i151, 6295551
  %or5 = or i32 %and4, 2093056
  %19 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %20)
  %cmp.i154 = icmp ugt i32 %20, 132540
  br i1 %cmp.i154, label %do.body.i157, label %if.else.i158

do.body.i157:                                     ; preds = %r100_mm_rreg.exit152
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or5) #5
  %rmmio.i155 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i155 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i155, align 4
  %add.ptr.i156 = getelementptr i8, ptr %23, i32 132540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %21) #5, !srcloc !23
  br label %r100_mm_wreg.exit159

if.else.i158:                                     ; preds = %r100_mm_rreg.exit152
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132540, i32 noundef %or5) #5
  br label %r100_mm_wreg.exit159

r100_mm_wreg.exit159:                             ; preds = %if.else.i158, %do.body.i157
  %24 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %25)
  %cmp.i161 = icmp ugt i32 %25, 132544
  br i1 %cmp.i161, label %if.then.i164, label %if.else.i166

if.then.i164:                                     ; preds = %r100_mm_wreg.exit159
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i162 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i162 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %27, i32 132544
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #5, !srcloc !20
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit168

if.else.i166:                                     ; preds = %r100_mm_wreg.exit159
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i165 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132544) #5
  br label %r100_mm_rreg.exit168

r100_mm_rreg.exit168:                             ; preds = %if.else.i166, %if.then.i164
  %retval.0.i167 = phi i32 [ %call3.i165, %if.else.i166 ], [ %29, %if.then.i164 ]
  %or12 = or i32 %retval.0.i167, 63
  %30 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %31)
  %cmp.i170 = icmp ugt i32 %31, 132544
  br i1 %cmp.i170, label %do.body.i173, label %if.else.i174

do.body.i173:                                     ; preds = %r100_mm_rreg.exit168
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %or12) #5
  %rmmio.i171 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %33 = ptrtoint ptr %rmmio.i171 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i171, align 4
  %add.ptr.i172 = getelementptr i8, ptr %34, i32 132544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %32) #5, !srcloc !23
  br label %r100_mm_wreg.exit175

if.else.i174:                                     ; preds = %r100_mm_rreg.exit168
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132544, i32 noundef %or12) #5
  br label %r100_mm_wreg.exit175

r100_mm_wreg.exit175:                             ; preds = %if.else.i174, %do.body.i173
  %35 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %36)
  %cmp.i177 = icmp ugt i32 %36, 131836
  br i1 %cmp.i177, label %do.body.i180, label %if.else.i181

do.body.i180:                                     ; preds = %r100_mm_wreg.exit175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i178 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i178 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i178, align 4
  %add.ptr.i179 = getelementptr i8, ptr %38, i32 131836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 0) #5, !srcloc !23
  br label %r100_mm_wreg.exit182

if.else.i181:                                     ; preds = %r100_mm_wreg.exit175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131836, i32 noundef 0) #5
  br label %r100_mm_wreg.exit182

r100_mm_wreg.exit182:                             ; preds = %if.else.i181, %do.body.i180
  %39 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134688, i32 %40)
  %cmp.i184 = icmp ugt i32 %40, 134688
  br i1 %cmp.i184, label %if.then.i187, label %if.else.i189

if.then.i187:                                     ; preds = %r100_mm_wreg.exit182
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i185 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %41 = ptrtoint ptr %rmmio.i185 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i185, align 4
  %add.ptr.i186 = getelementptr i8, ptr %42, i32 134688
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #5, !srcloc !20
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit191

if.else.i189:                                     ; preds = %r100_mm_wreg.exit182
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i188 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 134688) #5
  br label %r100_mm_rreg.exit191

r100_mm_rreg.exit191:                             ; preds = %if.else.i189, %if.then.i187
  %retval.0.i190 = phi i32 [ %call3.i188, %if.else.i189 ], [ %44, %if.then.i187 ]
  %or19 = or i32 %retval.0.i190, 4
  %45 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134688, i32 %46)
  %cmp.i193 = icmp ugt i32 %46, 134688
  br i1 %cmp.i193, label %do.body.i196, label %if.else.i197

do.body.i196:                                     ; preds = %r100_mm_rreg.exit191
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %or19) #5
  %rmmio.i194 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i194 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i194, align 4
  %add.ptr.i195 = getelementptr i8, ptr %49, i32 134688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 %47) #5, !srcloc !23
  br label %r100_mm_wreg.exit198

if.else.i197:                                     ; preds = %r100_mm_rreg.exit191
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134688, i32 noundef %or19) #5
  br label %r100_mm_wreg.exit198

r100_mm_wreg.exit198:                             ; preds = %if.else.i197, %do.body.i196
  %50 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134808, i32 %51)
  %cmp.i200 = icmp ugt i32 %51, 134808
  br i1 %cmp.i200, label %do.body.i203, label %if.else.i204

do.body.i203:                                     ; preds = %r100_mm_wreg.exit198
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i201 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i201 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i201, align 4
  %add.ptr.i202 = getelementptr i8, ptr %53, i32 134808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 8403200) #5, !srcloc !23
  br label %r100_mm_wreg.exit205

if.else.i204:                                     ; preds = %r100_mm_wreg.exit198
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134808, i32 noundef 3768320) #5
  br label %r100_mm_wreg.exit205

r100_mm_wreg.exit205:                             ; preds = %if.else.i204, %do.body.i203
  %54 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134900, i32 %55)
  %cmp.i207 = icmp ugt i32 %55, 134900
  br i1 %cmp.i207, label %if.then.i210, label %if.else.i212

if.then.i210:                                     ; preds = %r100_mm_wreg.exit205
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i208 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i208 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i208, align 4
  %add.ptr.i209 = getelementptr i8, ptr %57, i32 134900
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #5, !srcloc !20
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit214

if.else.i212:                                     ; preds = %r100_mm_wreg.exit205
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i211 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 134900) #5
  br label %r100_mm_rreg.exit214

r100_mm_rreg.exit214:                             ; preds = %if.else.i212, %if.then.i210
  %retval.0.i213 = phi i32 [ %call3.i211, %if.else.i212 ], [ %59, %if.then.i210 ]
  %and25 = and i32 %retval.0.i213, -2
  %60 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134900, i32 %61)
  %cmp.i216 = icmp ugt i32 %61, 134900
  br i1 %cmp.i216, label %do.body.i219, label %if.else.i220

do.body.i219:                                     ; preds = %r100_mm_rreg.exit214
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %and25) #5
  %rmmio.i217 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %63 = ptrtoint ptr %rmmio.i217 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i217, align 4
  %add.ptr.i218 = getelementptr i8, ptr %64, i32 134900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %62) #5, !srcloc !23
  br label %r100_mm_wreg.exit221

if.else.i220:                                     ; preds = %r100_mm_rreg.exit214
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134900, i32 noundef %and25) #5
  br label %r100_mm_wreg.exit221

r100_mm_wreg.exit221:                             ; preds = %if.else.i220, %do.body.i219
  %65 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134836, i32 %66)
  %cmp.i223 = icmp ugt i32 %66, 134836
  br i1 %cmp.i223, label %do.body.i226, label %if.else.i227

do.body.i226:                                     ; preds = %r100_mm_wreg.exit221
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i224 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %67 = ptrtoint ptr %rmmio.i224 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i224, align 4
  %add.ptr.i225 = getelementptr i8, ptr %68, i32 134836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 0) #5, !srcloc !23
  br label %r100_mm_wreg.exit228

if.else.i227:                                     ; preds = %r100_mm_wreg.exit221
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134836, i32 noundef 0) #5
  br label %r100_mm_wreg.exit228

r100_mm_wreg.exit228:                             ; preds = %if.else.i227, %do.body.i226
  %69 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134840, i32 %70)
  %cmp.i230 = icmp ugt i32 %70, 134840
  br i1 %cmp.i230, label %do.body.i233, label %if.else.i234

do.body.i233:                                     ; preds = %r100_mm_wreg.exit228
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i231 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %71 = ptrtoint ptr %rmmio.i231 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i231, align 4
  %add.ptr.i232 = getelementptr i8, ptr %72, i32 134840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232, i32 0) #5, !srcloc !23
  br label %r100_mm_wreg.exit235

if.else.i234:                                     ; preds = %r100_mm_wreg.exit228
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134840, i32 noundef 0) #5
  br label %r100_mm_wreg.exit235

r100_mm_wreg.exit235:                             ; preds = %if.else.i234, %do.body.i233
  %73 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134816, i32 %74)
  %cmp.i237 = icmp ugt i32 %74, 134816
  br i1 %cmp.i237, label %do.body.i240, label %if.else.i241

do.body.i240:                                     ; preds = %r100_mm_wreg.exit235
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i238 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %75 = ptrtoint ptr %rmmio.i238 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i238, align 4
  %add.ptr.i239 = getelementptr i8, ptr %76, i32 134816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239, i32 0) #5, !srcloc !23
  br label %r100_mm_wreg.exit242

if.else.i241:                                     ; preds = %r100_mm_wreg.exit235
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134816, i32 noundef 0) #5
  br label %r100_mm_wreg.exit242

r100_mm_wreg.exit242:                             ; preds = %if.else.i241, %do.body.i240
  %77 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131292, i32 %78)
  %cmp.i244 = icmp ugt i32 %78, 131292
  br i1 %cmp.i244, label %do.body.i247, label %if.else.i248

do.body.i247:                                     ; preds = %r100_mm_wreg.exit242
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i245 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %79 = ptrtoint ptr %rmmio.i245 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i245, align 4
  %add.ptr.i246 = getelementptr i8, ptr %80, i32 131292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246, i32 268435456) #5, !srcloc !23
  br label %r100_mm_wreg.exit249

if.else.i248:                                     ; preds = %r100_mm_wreg.exit242
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131292, i32 noundef 16) #5
  br label %r100_mm_wreg.exit249

r100_mm_wreg.exit249:                             ; preds = %if.else.i248, %do.body.i247
  %81 = trunc i64 %1 to i32
  %82 = add i32 %81, 256
  %conv = and i32 %82, 2147483647
  %83 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131108, i32 %84)
  %cmp.i251 = icmp ugt i32 %84, 131108
  br i1 %cmp.i251, label %do.body.i254, label %if.else.i255

do.body.i254:                                     ; preds = %r100_mm_wreg.exit249
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %85 = tail call i32 @llvm.bswap.i32(i32 %conv) #5
  %rmmio.i252 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %86 = ptrtoint ptr %rmmio.i252 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmmio.i252, align 4
  %add.ptr.i253 = getelementptr i8, ptr %87, i32 131108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253, i32 %85) #5, !srcloc !23
  br label %r100_mm_wreg.exit256

if.else.i255:                                     ; preds = %r100_mm_wreg.exit249
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131108, i32 noundef %conv) #5
  br label %r100_mm_wreg.exit256

r100_mm_wreg.exit256:                             ; preds = %if.else.i255, %do.body.i254
  %88 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131112, i32 %89)
  %cmp.i258 = icmp ugt i32 %89, 131112
  br i1 %cmp.i258, label %do.body.i261, label %if.else.i262

do.body.i261:                                     ; preds = %r100_mm_wreg.exit256
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i259 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %90 = ptrtoint ptr %rmmio.i259 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i259, align 4
  %add.ptr.i260 = getelementptr i8, ptr %91, i32 131112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 1024) #5, !srcloc !23
  br label %r100_mm_wreg.exit263

if.else.i262:                                     ; preds = %r100_mm_wreg.exit256
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131112, i32 noundef 262144) #5
  br label %r100_mm_wreg.exit263

r100_mm_wreg.exit263:                             ; preds = %if.else.i262, %do.body.i261
  %92 = add i32 %81, 262400
  %conv33 = and i32 %92, 2147483647
  %93 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131116, i32 %94)
  %cmp.i265 = icmp ugt i32 %94, 131116
  br i1 %cmp.i265, label %do.body.i268, label %if.else.i269

do.body.i268:                                     ; preds = %r100_mm_wreg.exit263
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %95 = tail call i32 @llvm.bswap.i32(i32 %conv33) #5
  %rmmio.i266 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %96 = ptrtoint ptr %rmmio.i266 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i266, align 4
  %add.ptr.i267 = getelementptr i8, ptr %97, i32 131116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %95) #5, !srcloc !23
  br label %r100_mm_wreg.exit270

if.else.i269:                                     ; preds = %r100_mm_wreg.exit263
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131116, i32 noundef %conv33) #5
  br label %r100_mm_wreg.exit270

r100_mm_wreg.exit270:                             ; preds = %if.else.i269, %do.body.i268
  %98 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131120, i32 %99)
  %cmp.i272 = icmp ugt i32 %99, 131120
  br i1 %cmp.i272, label %do.body.i275, label %if.else.i276

do.body.i275:                                     ; preds = %r100_mm_wreg.exit270
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i273 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %100 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i274 = getelementptr i8, ptr %101, i32 131120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 256) #5, !srcloc !23
  br label %r100_mm_wreg.exit277

if.else.i276:                                     ; preds = %r100_mm_wreg.exit270
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131120, i32 noundef 65536) #5
  br label %r100_mm_wreg.exit277

r100_mm_wreg.exit277:                             ; preds = %if.else.i276, %do.body.i275
  %102 = add i32 %81, 327936
  %conv37 = and i32 %102, 2147483647
  %103 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131124, i32 %104)
  %cmp.i279 = icmp ugt i32 %104, 131124
  br i1 %cmp.i279, label %do.body.i282, label %if.else.i283

do.body.i282:                                     ; preds = %r100_mm_wreg.exit277
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %105 = tail call i32 @llvm.bswap.i32(i32 %conv37) #5
  %rmmio.i280 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %106 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i281 = getelementptr i8, ptr %107, i32 131124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 %105) #5, !srcloc !23
  br label %r100_mm_wreg.exit284

if.else.i283:                                     ; preds = %r100_mm_wreg.exit277
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131124, i32 noundef %conv37) #5
  br label %r100_mm_wreg.exit284

r100_mm_wreg.exit284:                             ; preds = %if.else.i283, %do.body.i282
  %108 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131128, i32 %109)
  %cmp.i286 = icmp ugt i32 %109, 131128
  br i1 %cmp.i286, label %do.body.i289, label %if.else.i290

do.body.i289:                                     ; preds = %r100_mm_wreg.exit284
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %rmmio.i287 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %110 = ptrtoint ptr %rmmio.i287 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmmio.i287, align 4
  %add.ptr.i288 = getelementptr i8, ptr %111, i32 131128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 -2147089920) #5, !srcloc !23
  br label %r100_mm_wreg.exit291

if.else.i290:                                     ; preds = %r100_mm_wreg.exit284
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131128, i32 noundef 132736) #5
  br label %r100_mm_wreg.exit291

r100_mm_wreg.exit291:                             ; preds = %if.else.i290, %do.body.i289
  %112 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134772, i32 %113)
  %cmp.i293 = icmp ugt i32 %113, 134772
  br i1 %cmp.i293, label %if.then.i296, label %if.else.i298

if.then.i296:                                     ; preds = %r100_mm_wreg.exit291
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i294 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %114 = ptrtoint ptr %rmmio.i294 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rmmio.i294, align 4
  %add.ptr.i295 = getelementptr i8, ptr %115, i32 134772
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i295) #5, !srcloc !20
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit300

if.else.i298:                                     ; preds = %r100_mm_wreg.exit291
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i297 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 134772) #5
  br label %r100_mm_rreg.exit300

r100_mm_rreg.exit300:                             ; preds = %if.else.i298, %if.then.i296
  %retval.0.i299 = phi i32 [ %call3.i297, %if.else.i298 ], [ %117, %if.then.i296 ]
  %and41 = and i32 %retval.0.i299, -257
  %118 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134772, i32 %119)
  %cmp.i302 = icmp ugt i32 %119, 134772
  br i1 %cmp.i302, label %do.body.i305, label %if.else.i306

do.body.i305:                                     ; preds = %r100_mm_rreg.exit300
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %120 = tail call i32 @llvm.bswap.i32(i32 %and41) #5
  %rmmio.i303 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %121 = ptrtoint ptr %rmmio.i303 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rmmio.i303, align 4
  %add.ptr.i304 = getelementptr i8, ptr %122, i32 134772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i304, i32 %120) #5, !srcloc !23
  br label %r100_mm_wreg.exit307

if.else.i306:                                     ; preds = %r100_mm_rreg.exit300
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134772, i32 noundef %and41) #5
  br label %r100_mm_wreg.exit307

r100_mm_wreg.exit307:                             ; preds = %if.else.i306, %do.body.i305
  %keyselect = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 8
  %123 = ptrtoint ptr %keyselect to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %keyselect, align 4
  %125 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134680, i32 %126)
  %cmp.i309 = icmp ugt i32 %126, 134680
  br i1 %cmp.i309, label %do.body.i312, label %if.else.i313

do.body.i312:                                     ; preds = %r100_mm_wreg.exit307
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %127 = tail call i32 @llvm.bswap.i32(i32 %124) #5
  %rmmio.i310 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %128 = ptrtoint ptr %rmmio.i310 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmmio.i310, align 4
  %add.ptr.i311 = getelementptr i8, ptr %129, i32 134680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i311, i32 %127) #5, !srcloc !23
  br label %r100_mm_wreg.exit314

if.else.i313:                                     ; preds = %r100_mm_wreg.exit307
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 134680, i32 noundef %124) #5
  br label %r100_mm_wreg.exit314

r100_mm_wreg.exit314:                             ; preds = %if.else.i313, %do.body.i312
  %rmmio.i317 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %r100_mm_wreg.exit314
  %i.0343 = phi i32 [ 0, %r100_mm_wreg.exit314 ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748000) #5
  %140 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134672, i32 %141)
  %cmp.i316 = icmp ugt i32 %141, 134672
  br i1 %cmp.i316, label %if.then.i319, label %if.else.i321

if.then.i319:                                     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i318 = getelementptr i8, ptr %143, i32 134672
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #5, !srcloc !20
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit323

if.else.i321:                                     ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i320 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 134672) #5
  br label %r100_mm_rreg.exit323

r100_mm_rreg.exit323:                             ; preds = %if.else.i321, %if.then.i319
  %retval.0.i322 = phi i32 [ %call3.i320, %if.else.i321 ], [ %145, %if.then.i319 ]
  %and48 = and i32 %retval.0.i322, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %r100_mm_rreg.exit323
  %inc = add nuw nsw i32 %i.0343, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %r100_mm_rreg.exit323
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0343)
  %cmp50 = icmp eq i32 %i.0343, 10
  br i1 %cmp50, label %for.end.cleanup_crit_edge, label %if.end53

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %for.end
  %146 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134672, i32 %147)
  %cmp.i325 = icmp ugt i32 %147, 134672
  br i1 %cmp.i325, label %if.then.i328, label %if.else.i330

if.then.i328:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %148 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i327 = getelementptr i8, ptr %149, i32 134672
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327) #5, !srcloc !20
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit332

if.else.i330:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i329 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 134672) #5
  br label %r100_mm_rreg.exit332

r100_mm_rreg.exit332:                             ; preds = %if.else.i330, %if.then.i328
  %retval.0.i331 = phi i32 [ %call3.i329, %if.else.i330 ], [ %151, %if.then.i328 ]
  %and55 = and i32 %retval.0.i331, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %r100_mm_rreg.exit332.cleanup_crit_edge, label %r100_mm_rreg.exit332.while.cond64.preheader_crit_edge

r100_mm_rreg.exit332.while.cond64.preheader_crit_edge: ; preds = %r100_mm_rreg.exit332
  br label %while.cond64.preheader

r100_mm_rreg.exit332.cleanup_crit_edge:           ; preds = %r100_mm_rreg.exit332
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond64.preheader:                           ; preds = %for.inc74.while.cond64.preheader_crit_edge, %r100_mm_rreg.exit332.while.cond64.preheader_crit_edge
  %i.1345 = phi i32 [ %inc75, %for.inc74.while.cond64.preheader_crit_edge ], [ 0, %r100_mm_rreg.exit332.while.cond64.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748000) #5
  %162 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 134672, i32 %163)
  %cmp.i334 = icmp ugt i32 %163, 134672
  br i1 %cmp.i334, label %if.then.i337, label %if.else.i339

if.then.i337:                                     ; preds = %while.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i336 = getelementptr i8, ptr %165, i32 134672
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i336) #5, !srcloc !20
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit341

if.else.i339:                                     ; preds = %while.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i338 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 134672) #5
  br label %r100_mm_rreg.exit341

r100_mm_rreg.exit341:                             ; preds = %if.else.i339, %if.then.i337
  %retval.0.i340 = phi i32 [ %call3.i338, %if.else.i339 ], [ %167, %if.then.i337 ]
  %and70 = and i32 %retval.0.i340, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %for.end76, label %for.inc74

for.inc74:                                        ; preds = %r100_mm_rreg.exit341
  %inc75 = add nuw nsw i32 %i.1345, 1
  %exitcond346.not = icmp eq i32 %inc75, 10
  br i1 %exitcond346.not, label %for.inc74.cleanup_crit_edge, label %for.inc74.while.cond64.preheader_crit_edge

for.inc74.while.cond64.preheader_crit_edge:       ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond64.preheader

for.inc74.cleanup_crit_edge:                      ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end76:                                        ; preds = %r100_mm_rreg.exit341
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.1345)
  %cmp77 = icmp eq i32 %i.1345, 10
  br i1 %cmp77, label %for.end76.cleanup_crit_edge, label %if.end80

for.end76.cleanup_crit_edge:                      ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end80:                                         ; preds = %for.end76
  %168 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %169)
  %cmp.i.i = icmp ugt i32 %169, 131832
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i.i = getelementptr i8, ptr %171, i32 131832
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !20
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit.i

if.else.i.i:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131832) #5
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %173, %if.then.i.i ]
  %or.i = or i32 %retval.0.i.i, 65536
  %174 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %175)
  %cmp.i23.i = icmp ugt i32 %175, 131832
  br i1 %cmp.i23.i, label %do.body.i.i, label %if.else.i26.i

do.body.i.i:                                      ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %176 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %177 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %178, i32 131832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %176) #5, !srcloc !23
  br label %r100_mm_wreg.exit.i

if.else.i26.i:                                    ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131832, i32 noundef %or.i) #5
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i26.i, %do.body.i.i
  %179 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %180)
  %cmp.i28.i = icmp ugt i32 %180, 131836
  br i1 %cmp.i28.i, label %if.then.i31.i, label %if.else.i33.i

if.then.i31.i:                                    ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %181 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %182, i32 131836
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #5, !srcloc !20
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit35.i

if.else.i33.i:                                    ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i32.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131836) #5
  br label %r100_mm_rreg.exit35.i

r100_mm_rreg.exit35.i:                            ; preds = %if.else.i33.i, %if.then.i31.i
  %retval.0.i34.i = phi i32 [ %call3.i32.i, %if.else.i33.i ], [ %184, %if.then.i31.i ]
  %or2.i = and i32 %retval.0.i34.i, -14745856
  %and.i = or i32 %or2.i, 30
  %185 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %186)
  %cmp.i37.i = icmp ugt i32 %186, 131836
  br i1 %cmp.i37.i, label %do.body.i40.i, label %if.else.i41.i

do.body.i40.i:                                    ; preds = %r100_mm_rreg.exit35.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %187 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %188 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %189, i32 131836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %187) #5, !srcloc !23
  br label %r100_mm_wreg.exit42.i

if.else.i41.i:                                    ; preds = %r100_mm_rreg.exit35.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131836, i32 noundef %and.i) #5
  br label %r100_mm_wreg.exit42.i

r100_mm_wreg.exit42.i:                            ; preds = %if.else.i41.i, %do.body.i40.i
  %190 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %191)
  %cmp.i44.i = icmp ugt i32 %191, 132540
  br i1 %cmp.i44.i, label %if.then.i47.i, label %if.else.i49.i

if.then.i47.i:                                    ; preds = %r100_mm_wreg.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  %192 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %193, i32 132540
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #5, !srcloc !20
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit51.i

if.else.i49.i:                                    ; preds = %r100_mm_wreg.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i48.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132540) #5
  br label %r100_mm_rreg.exit51.i

r100_mm_rreg.exit51.i:                            ; preds = %if.else.i49.i, %if.then.i47.i
  %retval.0.i50.i = phi i32 [ %call3.i48.i, %if.else.i49.i ], [ %195, %if.then.i47.i ]
  %and4.i = and i32 %retval.0.i50.i, 6295551
  %196 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132540, i32 %197)
  %cmp.i53.i = icmp ugt i32 %197, 132540
  br i1 %cmp.i53.i, label %do.body.i56.i, label %if.else.i57.i

do.body.i56.i:                                    ; preds = %r100_mm_rreg.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %198 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #5
  %199 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %200, i32 132540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %198) #5, !srcloc !23
  br label %r100_mm_wreg.exit58.i

if.else.i57.i:                                    ; preds = %r100_mm_rreg.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132540, i32 noundef %and4.i) #5
  br label %r100_mm_wreg.exit58.i

r100_mm_wreg.exit58.i:                            ; preds = %if.else.i57.i, %do.body.i56.i
  %201 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %202)
  %cmp.i60.i = icmp ugt i32 %202, 132544
  br i1 %cmp.i60.i, label %if.then.i63.i, label %if.else.i65.i

if.then.i63.i:                                    ; preds = %r100_mm_wreg.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  %203 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %204, i32 132544
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i) #5, !srcloc !20
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit67.i

if.else.i65.i:                                    ; preds = %r100_mm_wreg.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i64.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 132544) #5
  br label %r100_mm_rreg.exit67.i

r100_mm_rreg.exit67.i:                            ; preds = %if.else.i65.i, %if.then.i63.i
  %retval.0.i66.i = phi i32 [ %call3.i64.i, %if.else.i65.i ], [ %206, %if.then.i63.i ]
  %and6.i = and i32 %retval.0.i66.i, -1024
  %207 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 132544, i32 %208)
  %cmp.i69.i = icmp ugt i32 %208, 132544
  br i1 %cmp.i69.i, label %do.body.i72.i, label %if.else.i73.i

do.body.i72.i:                                    ; preds = %r100_mm_rreg.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %209 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #5
  %210 = ptrtoint ptr %rmmio.i317 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmmio.i317, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %211, i32 132544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 %209) #5, !srcloc !23
  br label %cleanup

if.else.i73.i:                                    ; preds = %r100_mm_rreg.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 132544, i32 noundef %and6.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else.i73.i, %do.body.i72.i, %for.end76.cleanup_crit_edge, %for.inc74.cleanup_crit_edge, %r100_mm_rreg.exit332.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ -22, %r100_mm_rreg.exit332.cleanup_crit_edge ], [ -110, %for.end76.cleanup_crit_edge ], [ 0, %do.body.i72.i ], [ 0, %if.else.i73.i ], [ -110, %for.inc74.cleanup_crit_edge ], [ -110, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v1_0_start(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131076, i32 %1)
  %cmp.i = icmp ugt i32 %1, 131076
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 131076
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !20
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131076) #5
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %or = or i32 %retval.0.i, 1
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131076, i32 %7)
  %cmp.i156 = icmp ugt i32 %7, 131076
  br i1 %cmp.i156, label %do.body.i, label %if.else.i159

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %rmmio.i157 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i157 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i157, align 4
  %add.ptr.i158 = getelementptr i8, ptr %10, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %8) #5, !srcloc !23
  br label %r100_mm_wreg.exit

if.else.i159:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131076, i32 noundef %or) #5
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i159, %do.body.i
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 7
  %11 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wptr, align 4
  %13 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131468, i32 %14)
  %cmp.i161 = icmp ugt i32 %14, 131468
  br i1 %cmp.i161, label %do.body.i164, label %if.else.i165

do.body.i164:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %rmmio.i162 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i162 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %17, i32 131468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %15) #5, !srcloc !23
  br label %r100_mm_wreg.exit166

if.else.i165:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131468, i32 noundef %12) #5
  br label %r100_mm_wreg.exit166

r100_mm_wreg.exit166:                             ; preds = %if.else.i165, %do.body.i164
  %18 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wptr, align 4
  %20 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131472, i32 %21)
  %cmp.i168 = icmp ugt i32 %21, 131472
  br i1 %cmp.i168, label %do.body.i171, label %if.else.i172

do.body.i171:                                     ; preds = %r100_mm_wreg.exit166
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %rmmio.i169 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %23 = ptrtoint ptr %rmmio.i169 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i169, align 4
  %add.ptr.i170 = getelementptr i8, ptr %24, i32 131472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %22) #5, !srcloc !23
  br label %r100_mm_wreg.exit173

if.else.i172:                                     ; preds = %r100_mm_wreg.exit166
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131472, i32 noundef %19) #5
  br label %r100_mm_wreg.exit173

r100_mm_wreg.exit173:                             ; preds = %if.else.i172, %do.body.i171
  %gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 14
  %25 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %26 to i32
  %27 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131456, i32 %28)
  %cmp.i175 = icmp ugt i32 %28, 131456
  br i1 %cmp.i175, label %do.body.i178, label %if.else.i179

do.body.i178:                                     ; preds = %r100_mm_wreg.exit173
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv) #5
  %rmmio.i176 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %30 = ptrtoint ptr %rmmio.i176 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %31, i32 131456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %29) #5, !srcloc !23
  br label %r100_mm_wreg.exit180

if.else.i179:                                     ; preds = %r100_mm_wreg.exit173
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131456, i32 noundef %conv) #5
  br label %r100_mm_wreg.exit180

r100_mm_wreg.exit180:                             ; preds = %if.else.i179, %do.body.i178
  %32 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %33, 32
  %conv5 = trunc i64 %shr to i32
  %34 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131460, i32 %35)
  %cmp.i182 = icmp ugt i32 %35, 131460
  br i1 %cmp.i182, label %do.body.i185, label %if.else.i186

do.body.i185:                                     ; preds = %r100_mm_wreg.exit180
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv5) #5
  %rmmio.i183 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i183 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i183, align 4
  %add.ptr.i184 = getelementptr i8, ptr %38, i32 131460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %36) #5, !srcloc !23
  br label %r100_mm_wreg.exit187

if.else.i186:                                     ; preds = %r100_mm_wreg.exit180
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131460, i32 noundef %conv5) #5
  br label %r100_mm_wreg.exit187

r100_mm_wreg.exit187:                             ; preds = %if.else.i186, %do.body.i185
  %ring_size = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 9
  %39 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ring_size, align 4
  %div153 = lshr i32 %40, 2
  %41 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131464, i32 %42)
  %cmp.i189 = icmp ugt i32 %42, 131464
  br i1 %cmp.i189, label %do.body.i192, label %if.else.i193

do.body.i192:                                     ; preds = %r100_mm_wreg.exit187
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %div153) #5
  %rmmio.i190 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %44 = ptrtoint ptr %rmmio.i190 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i190, align 4
  %add.ptr.i191 = getelementptr i8, ptr %45, i32 131464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %43) #5, !srcloc !23
  br label %r100_mm_wreg.exit194

if.else.i193:                                     ; preds = %r100_mm_wreg.exit187
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131464, i32 noundef %div153) #5
  br label %r100_mm_wreg.exit194

r100_mm_wreg.exit194:                             ; preds = %if.else.i193, %do.body.i192
  %wptr8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 7
  %46 = ptrtoint ptr %wptr8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wptr8, align 4
  %48 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131448, i32 %49)
  %cmp.i196 = icmp ugt i32 %49, 131448
  br i1 %cmp.i196, label %do.body.i199, label %if.else.i200

do.body.i199:                                     ; preds = %r100_mm_wreg.exit194
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %rmmio.i197 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %51 = ptrtoint ptr %rmmio.i197 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i197, align 4
  %add.ptr.i198 = getelementptr i8, ptr %52, i32 131448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %50) #5, !srcloc !23
  br label %r100_mm_wreg.exit201

if.else.i200:                                     ; preds = %r100_mm_wreg.exit194
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131448, i32 noundef %47) #5
  br label %r100_mm_wreg.exit201

r100_mm_wreg.exit201:                             ; preds = %if.else.i200, %do.body.i199
  %53 = ptrtoint ptr %wptr8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wptr8, align 4
  %55 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131452, i32 %56)
  %cmp.i203 = icmp ugt i32 %56, 131452
  br i1 %cmp.i203, label %do.body.i206, label %if.else.i207

do.body.i206:                                     ; preds = %r100_mm_wreg.exit201
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  %rmmio.i204 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %58 = ptrtoint ptr %rmmio.i204 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i204, align 4
  %add.ptr.i205 = getelementptr i8, ptr %59, i32 131452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %57) #5, !srcloc !23
  br label %r100_mm_wreg.exit208

if.else.i207:                                     ; preds = %r100_mm_wreg.exit201
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131452, i32 noundef %54) #5
  br label %r100_mm_wreg.exit208

r100_mm_wreg.exit208:                             ; preds = %if.else.i207, %do.body.i206
  %gpu_addr10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 14
  %60 = ptrtoint ptr %gpu_addr10 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %gpu_addr10, align 8
  %conv11 = trunc i64 %61 to i32
  %62 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131436, i32 %63)
  %cmp.i210 = icmp ugt i32 %63, 131436
  br i1 %cmp.i210, label %do.body.i213, label %if.else.i214

do.body.i213:                                     ; preds = %r100_mm_wreg.exit208
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv11) #5
  %rmmio.i211 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %65 = ptrtoint ptr %rmmio.i211 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i211, align 4
  %add.ptr.i212 = getelementptr i8, ptr %66, i32 131436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 %64) #5, !srcloc !23
  br label %r100_mm_wreg.exit215

if.else.i214:                                     ; preds = %r100_mm_wreg.exit208
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131436, i32 noundef %conv11) #5
  br label %r100_mm_wreg.exit215

r100_mm_wreg.exit215:                             ; preds = %if.else.i214, %do.body.i213
  %67 = ptrtoint ptr %gpu_addr10 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %gpu_addr10, align 8
  %shr13 = lshr i64 %68, 32
  %conv15 = trunc i64 %shr13 to i32
  %69 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131440, i32 %70)
  %cmp.i217 = icmp ugt i32 %70, 131440
  br i1 %cmp.i217, label %do.body.i220, label %if.else.i221

do.body.i220:                                     ; preds = %r100_mm_wreg.exit215
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %71 = tail call i32 @llvm.bswap.i32(i32 %conv15) #5
  %rmmio.i218 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %72 = ptrtoint ptr %rmmio.i218 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i218, align 4
  %add.ptr.i219 = getelementptr i8, ptr %73, i32 131440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %71) #5, !srcloc !23
  br label %r100_mm_wreg.exit222

if.else.i221:                                     ; preds = %r100_mm_wreg.exit215
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131440, i32 noundef %conv15) #5
  br label %r100_mm_wreg.exit222

r100_mm_wreg.exit222:                             ; preds = %if.else.i221, %do.body.i220
  %ring_size16 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 9
  %74 = ptrtoint ptr %ring_size16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ring_size16, align 4
  %div17154 = lshr i32 %75, 2
  %76 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131444, i32 %77)
  %cmp.i224 = icmp ugt i32 %77, 131444
  br i1 %cmp.i224, label %do.body.i227, label %if.else.i228

do.body.i227:                                     ; preds = %r100_mm_wreg.exit222
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %div17154) #5
  %rmmio.i225 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %79 = ptrtoint ptr %rmmio.i225 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i225, align 4
  %add.ptr.i226 = getelementptr i8, ptr %80, i32 131444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %78) #5, !srcloc !23
  br label %r100_mm_wreg.exit229

if.else.i228:                                     ; preds = %r100_mm_wreg.exit222
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131444, i32 noundef %div17154) #5
  br label %r100_mm_wreg.exit229

r100_mm_wreg.exit229:                             ; preds = %if.else.i228, %do.body.i227
  %81 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131092, i32 %82)
  %cmp.i231 = icmp ugt i32 %82, 131092
  br i1 %cmp.i231, label %if.then.i234, label %if.else.i236

if.then.i234:                                     ; preds = %r100_mm_wreg.exit229
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i232 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %83 = ptrtoint ptr %rmmio.i232 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i232, align 4
  %add.ptr.i233 = getelementptr i8, ptr %84, i32 131092
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #5, !srcloc !20
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit238

if.else.i236:                                     ; preds = %r100_mm_wreg.exit229
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i235 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131092) #5
  br label %r100_mm_rreg.exit238

r100_mm_rreg.exit238:                             ; preds = %if.else.i236, %if.then.i234
  %retval.0.i237 = phi i32 [ %call3.i235, %if.else.i236 ], [ %86, %if.then.i234 ]
  %or22 = or i32 %retval.0.i237, 1
  %87 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131092, i32 %88)
  %cmp.i240 = icmp ugt i32 %88, 131092
  br i1 %cmp.i240, label %do.body.i243, label %if.else.i244

do.body.i243:                                     ; preds = %r100_mm_rreg.exit238
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %89 = tail call i32 @llvm.bswap.i32(i32 %or22) #5
  %rmmio.i241 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %90 = ptrtoint ptr %rmmio.i241 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i241, align 4
  %add.ptr.i242 = getelementptr i8, ptr %91, i32 131092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 %89) #5, !srcloc !23
  br label %r100_mm_wreg.exit245

if.else.i244:                                     ; preds = %r100_mm_rreg.exit238
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131092, i32 noundef %or22) #5
  br label %r100_mm_wreg.exit245

r100_mm_wreg.exit245:                             ; preds = %if.else.i244, %do.body.i243
  %92 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %93)
  %cmp.i247 = icmp ugt i32 %93, 131360
  br i1 %cmp.i247, label %if.then.i250, label %if.else.i252

if.then.i250:                                     ; preds = %r100_mm_wreg.exit245
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i248 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %94 = ptrtoint ptr %rmmio.i248 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i248, align 4
  %add.ptr.i249 = getelementptr i8, ptr %95, i32 131360
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #5, !srcloc !20
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit254

if.else.i252:                                     ; preds = %r100_mm_wreg.exit245
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i251 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131360) #5
  br label %r100_mm_rreg.exit254

r100_mm_rreg.exit254:                             ; preds = %if.else.i252, %if.then.i250
  %retval.0.i253 = phi i32 [ %call3.i251, %if.else.i252 ], [ %97, %if.then.i250 ]
  %or29 = or i32 %retval.0.i253, 5
  %98 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %99)
  %cmp.i256 = icmp ugt i32 %99, 131360
  br i1 %cmp.i256, label %do.body.i259, label %if.else.i260

do.body.i259:                                     ; preds = %r100_mm_rreg.exit254
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %100 = tail call i32 @llvm.bswap.i32(i32 %or29) #5
  %rmmio.i257 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %101 = ptrtoint ptr %rmmio.i257 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i257, align 4
  %add.ptr.i258 = getelementptr i8, ptr %102, i32 131360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 %100) #5, !srcloc !23
  br label %while.body.preheader

if.else.i260:                                     ; preds = %r100_mm_rreg.exit254
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131360, i32 noundef %or29) #5
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.else.i260, %do.body.i259
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.0339 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %while.body.preheader ]
  %dec = add nsw i32 %__ms.0339, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %104 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %105)
  %cmp.i263 = icmp ugt i32 %105, 131360
  br i1 %cmp.i263, label %if.then.i266, label %if.else.i268

if.then.i266:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i264 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %106 = ptrtoint ptr %rmmio.i264 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i264, align 4
  %add.ptr.i265 = getelementptr i8, ptr %107, i32 131360
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #5, !srcloc !20
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit270

if.else.i268:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i267 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131360) #5
  br label %r100_mm_rreg.exit270

r100_mm_rreg.exit270:                             ; preds = %if.else.i268, %if.then.i266
  %retval.0.i269 = phi i32 [ %call3.i267, %if.else.i268 ], [ %109, %if.then.i266 ]
  %and35 = and i32 %retval.0.i269, -6
  %110 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %111)
  %cmp.i272 = icmp ugt i32 %111, 131360
  br i1 %cmp.i272, label %do.body.i275, label %if.else.i276

do.body.i275:                                     ; preds = %r100_mm_rreg.exit270
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %112 = tail call i32 @llvm.bswap.i32(i32 %and35) #5
  %rmmio.i273 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %113 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i274 = getelementptr i8, ptr %114, i32 131360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 %112) #5, !srcloc !23
  br label %r100_mm_wreg.exit277

if.else.i276:                                     ; preds = %r100_mm_rreg.exit270
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131360, i32 noundef %and35) #5
  br label %r100_mm_wreg.exit277

r100_mm_wreg.exit277:                             ; preds = %if.else.i276, %do.body.i275
  %rmmio.i280 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %r100_mm_wreg.exit318.for.cond40.preheader_crit_edge, %r100_mm_wreg.exit277
  %cmp345 = phi i1 [ true, %r100_mm_wreg.exit277 ], [ %cmp, %r100_mm_wreg.exit318.for.cond40.preheader_crit_edge ]
  %i.0344 = phi i32 [ 0, %r100_mm_wreg.exit277 ], [ %inc84, %r100_mm_wreg.exit318.for.cond40.preheader_crit_edge ]
  br label %for.body43

for.body43:                                       ; preds = %while.body51.preheader.for.body43_crit_edge, %for.cond40.preheader
  %j.0341 = phi i32 [ 0, %for.cond40.preheader ], [ %inc, %while.body51.preheader.for.body43_crit_edge ]
  %115 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131076, i32 %116)
  %cmp.i279 = icmp ugt i32 %116, 131076
  br i1 %cmp.i279, label %if.then.i282, label %if.else.i284

if.then.i282:                                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i281 = getelementptr i8, ptr %118, i32 131076
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #5, !srcloc !20
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit286

if.else.i284:                                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i283 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131076) #5
  br label %r100_mm_rreg.exit286

r100_mm_rreg.exit286:                             ; preds = %if.else.i284, %if.then.i282
  %retval.0.i285 = phi i32 [ %call3.i283, %if.else.i284 ], [ %120, %if.then.i282 ]
  %and45 = and i32 %retval.0.i285, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %while.body51.preheader, label %r100_mm_rreg.exit286.do.body86_crit_edge

r100_mm_rreg.exit286.do.body86_crit_edge:         ; preds = %r100_mm_rreg.exit286
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

while.body51.preheader:                           ; preds = %r100_mm_rreg.exit286
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %j.0341, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end56, label %while.body51.preheader.for.body43_crit_edge

while.body51.preheader.for.body43_crit_edge:      ; preds = %while.body51.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body43

if.end56:                                         ; preds = %while.body51.preheader
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  %131 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %132)
  %cmp.i288 = icmp ugt i32 %132, 131360
  br i1 %cmp.i288, label %if.then.i291, label %if.else.i293

if.then.i291:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i290 = getelementptr i8, ptr %134, i32 131360
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i290) #5, !srcloc !20
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit295

if.else.i293:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i292 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131360) #5
  br label %r100_mm_rreg.exit295

r100_mm_rreg.exit295:                             ; preds = %if.else.i293, %if.then.i291
  %retval.0.i294 = phi i32 [ %call3.i292, %if.else.i293 ], [ %136, %if.then.i291 ]
  %or61 = or i32 %retval.0.i294, 1
  %137 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %138)
  %cmp.i297 = icmp ugt i32 %138, 131360
  br i1 %cmp.i297, label %do.body.i300, label %if.else.i301

do.body.i300:                                     ; preds = %r100_mm_rreg.exit295
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %139 = tail call i32 @llvm.bswap.i32(i32 %or61) #5
  %140 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i299 = getelementptr i8, ptr %141, i32 131360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 %139) #5, !srcloc !23
  br label %r100_mm_wreg.exit302

if.else.i301:                                     ; preds = %r100_mm_rreg.exit295
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131360, i32 noundef %or61) #5
  br label %r100_mm_wreg.exit302

r100_mm_wreg.exit302:                             ; preds = %if.else.i301, %do.body.i300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #5
  %152 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %153)
  %cmp.i304 = icmp ugt i32 %153, 131360
  br i1 %cmp.i304, label %if.then.i307, label %if.else.i309

if.then.i307:                                     ; preds = %r100_mm_wreg.exit302
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i306 = getelementptr i8, ptr %155, i32 131360
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i306) #5, !srcloc !20
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit311

if.else.i309:                                     ; preds = %r100_mm_wreg.exit302
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i308 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131360) #5
  br label %r100_mm_rreg.exit311

r100_mm_rreg.exit311:                             ; preds = %if.else.i309, %if.then.i307
  %retval.0.i310 = phi i32 [ %call3.i308, %if.else.i309 ], [ %157, %if.then.i307 ]
  %and73 = and i32 %retval.0.i310, -2
  %158 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131360, i32 %159)
  %cmp.i313 = icmp ugt i32 %159, 131360
  br i1 %cmp.i313, label %do.body.i316, label %if.else.i317

do.body.i316:                                     ; preds = %r100_mm_rreg.exit311
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %160 = tail call i32 @llvm.bswap.i32(i32 %and73) #5
  %161 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i315 = getelementptr i8, ptr %162, i32 131360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i315, i32 %160) #5, !srcloc !23
  br label %r100_mm_wreg.exit318

if.else.i317:                                     ; preds = %r100_mm_rreg.exit311
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131360, i32 noundef %and73) #5
  br label %r100_mm_wreg.exit318

r100_mm_wreg.exit318:                             ; preds = %if.else.i317, %do.body.i316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %163(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %165(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %168(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %170(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %171(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748000) #5
  %inc84 = add nuw nsw i32 %i.0344, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0344)
  %cmp = icmp ult i32 %i.0344, 9
  %exitcond346.not = icmp eq i32 %inc84, 10
  br i1 %exitcond346.not, label %r100_mm_wreg.exit318.do.body86_crit_edge, label %r100_mm_wreg.exit318.for.cond40.preheader_crit_edge

r100_mm_wreg.exit318.for.cond40.preheader_crit_edge: ; preds = %r100_mm_wreg.exit318
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond40.preheader

r100_mm_wreg.exit318.do.body86_crit_edge:         ; preds = %r100_mm_wreg.exit318
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

do.body86:                                        ; preds = %r100_mm_wreg.exit318.do.body86_crit_edge, %r100_mm_rreg.exit286.do.body86_crit_edge
  %cmp.lcssa = phi i1 [ %cmp345, %r100_mm_rreg.exit286.do.body86_crit_edge ], [ %cmp, %r100_mm_wreg.exit318.do.body86_crit_edge ]
  %173 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131076, i32 %174)
  %cmp.i320 = icmp ugt i32 %174, 131076
  br i1 %cmp.i320, label %if.then.i323, label %if.else.i325

if.then.i323:                                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #7
  %175 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i322 = getelementptr i8, ptr %176, i32 131076
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i322) #5, !srcloc !20
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  br label %r100_mm_rreg.exit327

if.else.i325:                                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i324 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131076) #5
  br label %r100_mm_rreg.exit327

r100_mm_rreg.exit327:                             ; preds = %if.else.i325, %if.then.i323
  %retval.0.i326 = phi i32 [ %call3.i324, %if.else.i325 ], [ %178, %if.then.i323 ]
  %and89 = and i32 %retval.0.i326, -2
  %179 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131076, i32 %180)
  %cmp.i329 = icmp ugt i32 %180, 131076
  br i1 %cmp.i329, label %do.body.i332, label %if.else.i333

do.body.i332:                                     ; preds = %r100_mm_rreg.exit327
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %181 = tail call i32 @llvm.bswap.i32(i32 %and89) #5
  %182 = ptrtoint ptr %rmmio.i280 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rmmio.i280, align 4
  %add.ptr.i331 = getelementptr i8, ptr %183, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i331, i32 %181) #5, !srcloc !23
  br label %r100_mm_wreg.exit334

if.else.i333:                                     ; preds = %r100_mm_rreg.exit327
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131076, i32 noundef %and89) #5
  br label %r100_mm_wreg.exit334

r100_mm_wreg.exit334:                             ; preds = %if.else.i333, %do.body.i332
  br i1 %cmp.lcssa, label %r100_mm_wreg.exit334.cleanup96_crit_edge, label %if.then94

r100_mm_wreg.exit334.cleanup96_crit_edge:         ; preds = %r100_mm_wreg.exit334
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup96

if.then94:                                        ; preds = %r100_mm_wreg.exit334
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #5
  br label %cleanup96

cleanup96:                                        ; preds = %if.then94, %r100_mm_wreg.exit334.cleanup96_crit_edge
  %retval.0 = phi i32 [ -1, %if.then94 ], [ 0, %r100_mm_wreg.exit334.cleanup96_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v1_0_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vce_v1_0_start(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 17
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ready, align 8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %1 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asic, align 8
  %arrayidx3 = getelementptr %struct.radeon_asic, ptr %2, i32 0, i32 14, i32 6
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx3, align 4
  %ring_test = getelementptr inbounds %struct.radeon_asic_ring, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %ring_test to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring_test, align 4
  %call4 = tail call i32 %6(ptr noundef %rdev, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ready, align 8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7
  %ready11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 17
  %8 = ptrtoint ptr %ready11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ready11, align 8
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %arrayidx14 = getelementptr %struct.radeon_asic, ptr %10, i32 0, i32 14, i32 7
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx14, align 4
  %ring_test15 = getelementptr inbounds %struct.radeon_asic_ring, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %ring_test15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring_test15, align 4
  %call16 = tail call i32 %14(ptr noundef %rdev, ptr noundef %arrayidx10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end, label %if.then18

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %ready11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ready11, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then18, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call16, %if.then18 ], [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/vce_v1_0.c", i32 212, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/vce_v1_0.c", i32 337, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/vce_v1_0.c", i32 349, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/vce_v1_0.c", i32 381, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vce_v1_0_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @vce_v1_0_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 6694120}
!21 = !{i64 2157418366}
!22 = !{i64 2157418773}
!23 = !{i64 6693702}
!24 = !{!"branch_weights", i32 1, i32 2000}
