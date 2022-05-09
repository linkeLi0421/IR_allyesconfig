; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv730_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv730_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atom_clock_dividers = type { i32, %union.anon.109, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.rv7xx_power_info = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], %union.r7xx_clock_registers, i32, i32, i32, i32, [2 x i32], i16, i16, i16, [2 x i8], [32 x %struct.vddc_table_entry], i8, [3 x i8], i32, [2 x i8], [2 x i8], i32, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, %struct.RV770_SMC_STATETABLE, [2 x i8] }>
%union.r7xx_clock_registers = type { %struct.rv770_clock_registers }
%struct.rv770_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vddc_table_entry = type { i16, i8, i8, i32 }
%struct.RV770_SMC_STATETABLE = type { i8, i8, i8, i8, [32 x i8], [32 x i32], %struct.RV770_SMC_VOLTAGEMASKTABLE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE }
%struct.RV770_SMC_VOLTAGEMASKTABLE = type { [4 x i8], [4 x i32] }
%struct.RV770_SMC_SWSTATE = type { i8, i8, i8, i8, [3 x %struct.RV770_SMC_HW_PERFORMANCE_LEVEL] }
%struct.RV770_SMC_HW_PERFORMANCE_LEVEL = type { i8, %union.anon.108, i8, i8, i8, i8, i8, i8, i32, i32, %struct.RV770_SMC_SCLK_VALUE, %union.RV7XX_SMC_MCLK_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, i8, i8, i8, i8 }
%union.anon.108 = type { i8 }
%struct.RV770_SMC_SCLK_VALUE = type { i32, i32, i32, i32, i32, i32 }
%union.RV7XX_SMC_MCLK_VALUE = type { %struct.RV770_SMC_MCLK_VALUE }
%struct.RV770_SMC_MCLK_VALUE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RV770_SMC_VOLTAGE_VALUE = type { i16, i8, i8 }
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
%struct.RV730_SMC_MCLK_VALUE = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rv7xx_ps = type { %struct.rv7xx_pl, %struct.rv7xx_pl, %struct.rv7xx_pl, i8 }
%struct.rv7xx_pl = type { i32, i32, i16, i16, i32, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not force DPM to low\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/rv730_dpm.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 464, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv730_populate_sclk_value(ptr noundef %rdev, i32 noundef %engine_clock, ptr nocapture noundef writeonly %sclk) local_unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #4
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clk_regs, align 4
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 1
  %3 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cg_spll_func_cntl_2, align 4
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 2
  %5 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cg_spll_func_cntl_3, align 4
  %cg_spll_spread_spectrum4 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 3
  %7 = ptrtoint ptr %cg_spll_spread_spectrum4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cg_spll_spread_spectrum4, align 4
  %cg_spll_spread_spectrum_26 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 4
  %9 = ptrtoint ptr %cg_spll_spread_spectrum_26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cg_spll_spread_spectrum_26, align 4
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %11 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spll, align 4
  %call7 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %engine_clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %13 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_div, align 4
  %add = add i32 %14, 1
  %enable_post_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %15 = ptrtoint ptr %enable_post_div to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_post_div, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dividers, align 4
  %shr = lshr i32 %18, 4
  %and = and i32 %shr, 15
  %and11 = and i32 %18, 15
  %add12 = add nuw nsw i32 %and11, 2
  %add13 = add nuw nsw i32 %add12, %and
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %post_divider.0 = phi i32 [ %add13, %if.then9 ], [ 1, %if.end.if.end14_crit_edge ]
  %conv = zext i32 %engine_clock to i64
  %conv15 = zext i32 %add to i64
  %conv16 = zext i32 %post_divider.0 to i64
  %mul = shl nuw nsw i64 %conv, 14
  %mul17 = mul i64 %mul, %conv15
  %mul18 = mul i64 %mul17, %conv16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul18)
  %cmp194 = icmp ult i64 %mul18, 4294967296
  br i1 %cmp194, label %if.then198, label %if.else204, !prof !12

if.then198:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %conv199 = trunc i64 %mul18 to i32
  %div202 = udiv i32 %conv199, %12
  br label %if.end208

if.else204:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %19 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul18) #7, !srcloc !13
  %asmresult1.i = extractvalue { i64, i64 } %19, 1
  %extract.t413 = trunc i64 %asmresult1.i to i32
  br label %if.end208

if.end208:                                        ; preds = %if.else204, %if.then198
  %tmp.0.off0 = phi i32 [ %div202, %if.then198 ], [ %extract.t413, %if.else204 ]
  %and216 = and i32 %2, -1045493
  %masksel = select i1 %tobool8.not, i32 0, i32 4
  %shl220 = shl i32 %14, 4
  %20 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dividers, align 4
  %22 = shl i32 %21, 8
  %shl225 = and i32 %22, 61440
  %and228 = shl i32 %21, 16
  %shl229 = and i32 %and228, 983040
  %spll_func_cntl.0 = or i32 %shl220, %and216
  %or221 = or i32 %spll_func_cntl.0, %masksel
  %or226 = or i32 %or221, %shl225
  %or230 = or i32 %or226, %shl229
  %and231 = and i32 %4, -512
  %or232 = or i32 %and231, 2
  %and233 = and i32 %6, -335544320
  %or235 = or i32 %and233, %tmp.0.off0
  %or236 = or i32 %or235, 268435456
  %sclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 7
  %23 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sclk_ss, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool237.not = icmp eq i8 %24, 0
  br i1 %tobool237.not, label %if.end208.if.end258_crit_edge, label %if.then238

if.end208.if.end258_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end258

if.then238:                                       ; preds = %if.end208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #4
  %25 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul239 = mul i32 %post_divider.0, %engine_clock
  %call240 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 2, i32 noundef %mul239) #4
  br i1 %call240, label %if.then241, label %if.then238.if.end257_crit_edge

if.then238.if.end257_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end257

if.then241:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #6
  %mul242 = mul i32 %12, 5
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rate, align 2
  %conv243 = zext i16 %27 to i32
  %mul244 = mul i32 %add, %conv243
  %div245 = udiv i32 %mul242, %mul244
  %28 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ss, align 2
  %conv246 = zext i16 %29 to i32
  %mul247 = mul i32 %tmp.0.off0, %conv246
  %mul248 = mul i32 %div245, 10000
  %div249 = udiv i32 %mul247, %mul248
  %and250 = and i32 %8, -65522
  %shl251 = shl i32 %div245, 4
  %or252 = or i32 %and250, %shl251
  %or253 = or i32 %or252, 1
  %and254 = and i32 %10, -67108864
  %or256 = or i32 %div249, %and254
  br label %if.end257

if.end257:                                        ; preds = %if.then241, %if.then238.if.end257_crit_edge
  %cg_spll_spread_spectrum.0 = phi i32 [ %or253, %if.then241 ], [ %8, %if.then238.if.end257_crit_edge ]
  %cg_spll_spread_spectrum_2.0 = phi i32 [ %or256, %if.then241 ], [ %10, %if.then238.if.end257_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #4
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.end208.if.end258_crit_edge
  %cg_spll_spread_spectrum.1 = phi i32 [ %cg_spll_spread_spectrum.0, %if.end257 ], [ %8, %if.end208.if.end258_crit_edge ]
  %cg_spll_spread_spectrum_2.1 = phi i32 [ %cg_spll_spread_spectrum_2.0, %if.end257 ], [ %10, %if.end208.if.end258_crit_edge ]
  %sclk_value = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 5
  %30 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %engine_clock, ptr %sclk_value, align 1
  %31 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %or230, ptr %sclk, align 1
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 1
  %32 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %or232, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 2
  %33 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %or236, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %vCG_SPLL_SPREAD_SPECTRUM = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 3
  %34 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %cg_spll_spread_spectrum.1, ptr %vCG_SPLL_SPREAD_SPECTRUM, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2 = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 4
  %35 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1, ptr %vCG_SPLL_SPREAD_SPECTRUM_2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end258, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #4
  ret i32 %call7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_pi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv730_populate_mclk_value(ptr noundef %rdev, i32 noundef %engine_clock, i32 noundef %memory_clock, ptr nocapture noundef writeonly %mclk) local_unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #4
  %mclk_pwrmgt_cntl1 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 5
  %0 = ptrtoint ptr %mclk_pwrmgt_cntl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk_pwrmgt_cntl1, align 4
  %dll_cntl3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 6
  %2 = ptrtoint ptr %dll_cntl3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dll_cntl3, align 4
  %mpll_func_cntl5 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %4 = ptrtoint ptr %mpll_func_cntl5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpll_func_cntl5, align 4
  %mpll_func_cntl2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %6 = ptrtoint ptr %mpll_func_cntl2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_func_cntl2, align 4
  %mpll_func_cntl3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %8 = ptrtoint ptr %mpll_func_cntl3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mpll_func_cntl3, align 4
  %mpll_ss9 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 10
  %10 = ptrtoint ptr %mpll_ss9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mpll_ss9, align 4
  %mpll_ss211 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 11
  %12 = ptrtoint ptr %mpll_ss211 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mpll_ss211, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #4
  %14 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call12 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %memory_clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %15 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_div, align 4
  %add = add i32 %16, 1
  %enable_post_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %17 = ptrtoint ptr %enable_post_div to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_post_div, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  br i1 %tobool13.not, label %if.end.if.end19_crit_edge, label %if.then14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dividers, align 4
  %shr = lshr i32 %20, 4
  %and = and i32 %shr, 15
  %and16 = and i32 %20, 15
  %add17 = add nuw nsw i32 %and16, 2
  %add18 = add nuw nsw i32 %add17, %and
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end.if.end19_crit_edge
  %masksel = phi i32 [ 0, %if.end.if.end19_crit_edge ], [ 4, %if.then14 ]
  %post_divider.0 = phi i32 [ 1, %if.end.if.end19_crit_edge ], [ %add18, %if.then14 ]
  %and24 = and i32 %5, -1045493
  %shl = shl i32 %16, 4
  %21 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dividers, align 4
  %23 = shl i32 %22, 8
  %shl32 = and i32 %23, 61440
  %and35 = shl i32 %22, 16
  %shl36 = and i32 %and35, 983040
  %mpll_func_cntl.0 = or i32 %shl, %and24
  %or28 = or i32 %mpll_func_cntl.0, %masksel
  %or33 = or i32 %or28, %shl32
  %or37 = or i32 %or33, %shl36
  %and38 = and i32 %9, -335544320
  %24 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %enable_dithen = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 4
  %27 = ptrtoint ptr %enable_dithen to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enable_dithen, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool41.not = icmp eq i8 %28, 0
  %.masked = and i32 %26, -268435457
  %and45 = or i32 %.masked, %and38
  %masksel113 = select i1 %tobool41.not, i32 0, i32 268435456
  %mpll_func_cntl_3.0 = or i32 %and45, %masksel113
  %mclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 8
  %29 = ptrtoint ptr %mclk_ss to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mclk_ss, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool47.not = icmp eq i8 %30, 0
  br i1 %tobool47.not, label %if.end19.if.end65_crit_edge, label %if.then48

if.end19.if.end65_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then48:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #4
  %31 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul = mul i32 %post_divider.0, %memory_clock
  %call49 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 1, i32 noundef %mul) #4
  br i1 %call49, label %if.then50, label %if.then48.if.end64_crit_edge

if.then48.if.end64_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %mpll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %32 = ptrtoint ptr %mpll to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mpll, align 4
  %mul51 = mul i32 %33, 5
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %34 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rate, align 2
  %conv = zext i16 %35 to i32
  %mul52 = mul i32 %add, %conv
  %div = udiv i32 %mul51, %mul52
  %36 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ss, align 2
  %conv53 = zext i16 %37 to i32
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %24, align 4
  %mul54 = mul i32 %39, %conv53
  %mul55 = mul i32 %div, 10000
  %div56 = udiv i32 %mul54, %mul55
  %and57 = and i32 %11, -65522
  %shl58 = shl i32 %div, 4
  %and61 = and i32 %13, -67108864
  %or59 = or i32 %and57, %shl58
  %or60 = or i32 %or59, %div56
  %or63 = or i32 %or60, 1
  br label %if.end64

if.end64:                                         ; preds = %if.then50, %if.then48.if.end64_crit_edge
  %mpll_ss.0 = phi i32 [ %or63, %if.then50 ], [ %11, %if.then48.if.end64_crit_edge ]
  %mpll_ss2.0 = phi i32 [ %and61, %if.then50 ], [ %13, %if.then48.if.end64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end19.if.end65_crit_edge
  %mpll_ss.1 = phi i32 [ %mpll_ss.0, %if.end64 ], [ %11, %if.end19.if.end65_crit_edge ]
  %mpll_ss2.1 = phi i32 [ %mpll_ss2.0, %if.end64 ], [ %13, %if.end19.if.end65_crit_edge ]
  %40 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %1, ptr %mclk, align 1
  %vDLL_CNTL = getelementptr inbounds %struct.RV730_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 1
  %41 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %3, ptr %vDLL_CNTL, align 1
  %mclk_value = getelementptr inbounds %struct.RV730_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 7
  %42 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %memory_clock, ptr %mclk_value, align 1
  %vMPLL_FUNC_CNTL = getelementptr inbounds %struct.RV730_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 2
  %43 = ptrtoint ptr %vMPLL_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %or37, ptr %vMPLL_FUNC_CNTL, align 1
  %vMPLL_FUNC_CNTL2 = getelementptr inbounds %struct.RV730_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 3
  %44 = ptrtoint ptr %vMPLL_FUNC_CNTL2 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %7, ptr %vMPLL_FUNC_CNTL2, align 1
  %vMPLL_FUNC_CNTL3 = getelementptr inbounds %struct.RV730_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 4
  %45 = ptrtoint ptr %vMPLL_FUNC_CNTL3 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %mpll_func_cntl_3.0, ptr %vMPLL_FUNC_CNTL3, align 1
  %vMPLL_SS = getelementptr inbounds %struct.RV730_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 5
  %46 = ptrtoint ptr %vMPLL_SS to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %mpll_ss.1, ptr %vMPLL_SS, align 1
  %vMPLL_SS2 = getelementptr inbounds %struct.RV730_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 6
  %47 = ptrtoint ptr %vMPLL_SS2 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %mpll_ss2.1, ptr %vMPLL_SS2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #4
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv730_read_clock_registers(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %clk_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %clk_regs, align 4
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %6, i32 1540
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 1
  %9 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cg_spll_func_cntl_2, align 4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %11, i32 1544
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 2
  %14 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cg_spll_func_cntl_3, align 4
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %16, i32 1936
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  %cg_spll_spread_spectrum = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 3
  %19 = ptrtoint ptr %cg_spll_spread_spectrum to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cg_spll_spread_spectrum, align 4
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %21, i32 1940
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  %cg_spll_spread_spectrum_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 4
  %24 = ptrtoint ptr %cg_spll_spread_spectrum_2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cg_spll_spread_spectrum_2, align 4
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %26, i32 1608
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  %mclk_pwrmgt_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 5
  %29 = ptrtoint ptr %mclk_pwrmgt_cntl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mclk_pwrmgt_cntl, align 4
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %31, i32 1612
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %dll_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 6
  %34 = ptrtoint ptr %dll_cntl to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dll_cntl, align 4
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %36, i32 1572
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #4
  %mpll_func_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %39 = ptrtoint ptr %mpll_func_cntl to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mpll_func_cntl, align 4
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %41, i32 1576
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  %mpll_func_cntl2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %44 = ptrtoint ptr %mpll_func_cntl2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mpll_func_cntl2, align 4
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %46, i32 1580
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #4
  %mpll_func_cntl3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %49 = ptrtoint ptr %mpll_func_cntl3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %mpll_func_cntl3, align 4
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %51, i32 1588
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #4
  %mpll_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 10
  %54 = ptrtoint ptr %mpll_ss to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %mpll_ss, align 4
  %55 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %56, i32 1592
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #4
  %mpll_ss2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 11
  %59 = ptrtoint ptr %mpll_ss2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mpll_ss2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv730_populate_smc_acpi_state(ptr noundef %rdev, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #4
  %ACPIState = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8
  %initialState = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7
  %0 = call ptr @memcpy(ptr %ACPIState, ptr %initialState, i32 280)
  %1 = ptrtoint ptr %ACPIState to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ACPIState, align 1
  %3 = and i8 %2, -2
  store i8 %3, ptr %ACPIState, align 1
  %acpi_vddc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 36
  %4 = ptrtoint ptr %acpi_vddc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %acpi_vddc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vddc = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12
  %call5 = tail call i32 @rv770_populate_vddc_value(ptr noundef %rdev, i16 noundef zeroext %5, ptr noundef %vddc) #4
  %pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcie_gen2, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %acpi_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %acpi_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %acpi_pcie_gen2, align 1, !range !11
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i8 [ %9, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %gen2PCIE = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 3
  %10 = ptrtoint ptr %gen2PCIE to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond, ptr %gen2PCIE, align 1
  %acpi_pcie_gen214 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %acpi_pcie_gen214 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %acpi_pcie_gen214, align 1, !range !11
  %gen2XSP = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 4
  %13 = ptrtoint ptr %gen2XSP to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %gen2XSP, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %min_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 27
  %14 = ptrtoint ptr %min_vddc_in_table to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %min_vddc_in_table, align 4
  %vddc23 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12
  %call24 = tail call i32 @rv770_populate_vddc_value(ptr noundef %rdev, i16 noundef zeroext %15, ptr noundef %vddc23) #4
  %gen2PCIE28 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 3
  %16 = ptrtoint ptr %gen2PCIE28 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %gen2PCIE28, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19
  %mpll_func_cntl29 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %17 = ptrtoint ptr %mpll_func_cntl29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mpll_func_cntl29, align 4
  %mpll_func_cntl2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %19 = ptrtoint ptr %mpll_func_cntl2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mpll_func_cntl2, align 4
  %mpll_func_cntl3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %21 = ptrtoint ptr %mpll_func_cntl3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mpll_func_cntl3, align 4
  %or = and i32 %18, -12
  %and32 = or i32 %or, 9
  %and33 = and i32 %20, -512
  %or34 = or i32 %and33, 1
  %23 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_regs, align 4
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 1
  %25 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cg_spll_func_cntl_2, align 4
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 2
  %27 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cg_spll_func_cntl_3, align 4
  %or38 = and i32 %24, -12
  %and39 = or i32 %or38, 9
  %and40 = and i32 %26, -512
  %or41 = or i32 %and40, 4
  %levels43 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4
  %mclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11
  %vMPLL_FUNC_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 2
  %29 = ptrtoint ptr %vMPLL_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %and32, ptr %vMPLL_FUNC_CNTL, align 1
  %vMPLL_FUNC_CNTL2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 3
  %30 = ptrtoint ptr %vMPLL_FUNC_CNTL2 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %or34, ptr %vMPLL_FUNC_CNTL2, align 1
  %vMPLL_FUNC_CNTL3 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 4
  %31 = ptrtoint ptr %vMPLL_FUNC_CNTL3 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %22, ptr %vMPLL_FUNC_CNTL3, align 1
  %32 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 16776960, ptr %mclk, align 1
  %vDLL_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 1
  %33 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 -16777216, ptr %vDLL_CNTL, align 1
  %mclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 7
  %34 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %mclk_value, align 1
  %sclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10
  %35 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %and39, ptr %sclk, align 1
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %or41, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %28, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %sclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 5
  %38 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 0, ptr %sclk_value, align 1
  %mvdd = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 13
  %call83 = tail call i32 @rv770_populate_mvdd_value(ptr noundef %rdev, i32 noundef 0, ptr noundef %mvdd) #4
  %arrayidx86 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 1
  %39 = call ptr @memcpy(ptr %arrayidx86, ptr %levels43, i32 92)
  %arrayidx92 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 2
  %40 = call ptr @memcpy(ptr %arrayidx92, ptr %levels43, i32 92)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_populate_vddc_value(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_populate_mvdd_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv730_populate_smc_initial_state(ptr noundef %rdev, ptr noundef %radeon_state, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_ps(ptr noundef %radeon_state) #4
  %call1 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #4
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19
  %mpll_func_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 7
  %0 = ptrtoint ptr %mpll_func_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpll_func_cntl, align 4
  %levels = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4
  %mclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11
  %vMPLL_FUNC_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 2
  %2 = ptrtoint ptr %vMPLL_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %vMPLL_FUNC_CNTL, align 1
  %mpll_func_cntl2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 8
  %3 = ptrtoint ptr %mpll_func_cntl2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mpll_func_cntl2, align 4
  %vMPLL_FUNC_CNTL2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 3
  %5 = ptrtoint ptr %vMPLL_FUNC_CNTL2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %vMPLL_FUNC_CNTL2, align 1
  %mpll_func_cntl3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 9
  %6 = ptrtoint ptr %mpll_func_cntl3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_func_cntl3, align 4
  %vMPLL_FUNC_CNTL3 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 4
  %8 = ptrtoint ptr %vMPLL_FUNC_CNTL3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %vMPLL_FUNC_CNTL3, align 1
  %mclk_pwrmgt_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 5
  %9 = ptrtoint ptr %mclk_pwrmgt_cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_pwrmgt_cntl, align 4
  %11 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %mclk, align 1
  %dll_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 6
  %12 = ptrtoint ptr %dll_cntl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dll_cntl, align 4
  %vDLL_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 1
  %14 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %vDLL_CNTL, align 1
  %mpll_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 10
  %15 = ptrtoint ptr %mpll_ss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mpll_ss, align 4
  %vMPLL_SS = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 5
  %17 = ptrtoint ptr %vMPLL_SS to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %vMPLL_SS, align 1
  %mpll_ss2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 11
  %18 = ptrtoint ptr %mpll_ss2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mpll_ss2, align 4
  %vMPLL_SS2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 6
  %20 = ptrtoint ptr %vMPLL_SS2 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %vMPLL_SS2, align 1
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2
  %mclk32 = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %mclk32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk32, align 4
  %mclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 7
  %23 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %mclk_value, align 1
  %24 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_regs, align 4
  %sclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10
  %26 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %sclk, align 1
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 1
  %27 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cg_spll_func_cntl_2, align 4
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 2
  %30 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cg_spll_func_cntl_3, align 4
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 2
  %32 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %cg_spll_spread_spectrum = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 3
  %33 = ptrtoint ptr %cg_spll_spread_spectrum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cg_spll_spread_spectrum, align 4
  %vCG_SPLL_SPREAD_SPECTRUM = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 3
  %35 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %vCG_SPLL_SPREAD_SPECTRUM, align 1
  %cg_spll_spread_spectrum_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 4
  %36 = ptrtoint ptr %cg_spll_spread_spectrum_2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cg_spll_spread_spectrum_2, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 4
  %38 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %vCG_SPLL_SPREAD_SPECTRUM_2, align 1
  %39 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %low, align 4
  %sclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 5
  %41 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %sclk_value, align 1
  %42 = ptrtoint ptr %levels to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %levels, align 1
  %call71 = tail call zeroext i8 @rv770_get_seq_value(ptr noundef %rdev, ptr noundef %low) #4
  %43 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call71, ptr %43, align 1
  %vddc = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vddc, align 4
  %vddc79 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 12
  %call80 = tail call i32 @rv770_populate_vddc_value(ptr noundef %rdev, i16 noundef zeroext %46, ptr noundef %vddc79) #4
  %mvdd = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 13
  %call84 = tail call i32 @rv770_populate_initial_mvdd_value(ptr noundef %rdev, ptr noundef %mvdd) #4
  %aT = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 8
  %47 = ptrtoint ptr %aT to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 65535, ptr %aT, align 1
  %dsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 47
  %48 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dsp, align 4
  %bSP = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 9
  %50 = ptrtoint ptr %bSP to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %bSP, align 1
  %boot_in_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 4
  %51 = ptrtoint ptr %boot_in_gen2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %boot_in_gen2, align 4, !range !11
  %53 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 3
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %52, ptr %53, align 1
  %flags = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %58, ptr %59, align 1
  %initialState = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7
  %arrayidx112 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 1
  %61 = call ptr @memcpy(ptr %arrayidx112, ptr %levels, i32 92)
  %arrayidx118 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 2
  %62 = call ptr @memcpy(ptr %arrayidx118, ptr %levels, i32 92)
  %63 = ptrtoint ptr %initialState to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %initialState, align 1
  %65 = or i8 %64, 1
  store i8 %65, ptr %initialState, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_ps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_get_seq_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_populate_initial_mvdd_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv730_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %radeon_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_ps(ptr noundef %radeon_state) #4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 10160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %low, align 4
  %call2 = tail call i32 @rv770_calculate_memory_refresh_rate(ptr noundef %rdev, i32 noundef %4) #4
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %medium to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %medium, align 4
  %call4 = tail call i32 @rv770_calculate_memory_refresh_rate(ptr noundef %rdev, i32 noundef %6) #4
  %shl5 = shl i32 %call4, 16
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %call7 = tail call i32 @rv770_calculate_memory_refresh_rate(ptr noundef %rdev, i32 noundef %8) #4
  %shl8 = shl i32 %call7, 24
  %or = call i32 @llvm.fshl.i32(i32 %call2, i32 %2, i32 8)
  %or9 = or i32 %or, %shl5
  %or10 = or i32 %or9, %shl8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %or10) #4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %11, i32 10160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %9) #4, !srcloc !17
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %13, i32 10100
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %16, i32 10104
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call, align 4
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk, align 4
  tail call void @radeon_atom_set_engine_dram_timings(ptr noundef %rdev, i32 noundef %19, i32 noundef %21) #4
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %23, i32 10100
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %26, i32 10104
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %29, i32 10232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %24) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %31, i32 10244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %27) #4, !srcloc !17
  %32 = ptrtoint ptr %medium to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %medium, align 4
  %mclk21 = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %mclk21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mclk21, align 4
  tail call void @radeon_atom_set_engine_dram_timings(ptr noundef %rdev, i32 noundef %33, i32 noundef %35) #4
  %36 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %37, i32 10100
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %40, i32 10104
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %43, i32 10228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %38) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %45, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %41) #4, !srcloc !17
  %46 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %low, align 4
  %mclk27 = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %mclk27 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mclk27, align 4
  tail call void @radeon_atom_set_engine_dram_timings(ptr noundef %rdev, i32 noundef %47, i32 noundef %49) #4
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %51, i32 10100
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %54, i32 10104
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %56 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %57, i32 10224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %52) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %58 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %59, i32 10236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %55) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %61, i32 10100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %14) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %62 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %63, i32 10104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %17) #4, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_calculate_memory_refresh_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_engine_dram_timings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv730_start_dpm(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1604
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %5, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %3) #4, !srcloc !17
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %7, i32 1608
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %9 = and i32 %8, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %9) #4, !srcloc !17
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %13, i32 1596
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %15 = or i32 %14, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %17, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %15) #4, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv730_stop_dpm(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 21) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %5, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %3) #4, !srcloc !17
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %7, i32 1604
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %11, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %9) #4, !srcloc !17
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 1608
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %15 = or i32 %14, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %17, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %15) #4, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_send_msg_to_smc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv730_program_dcodt(ptr noundef %rdev, i1 noundef zeroext %use_dcodt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #4
  %not.use_dcodt = xor i1 %use_dcodt, true
  %cond = zext i1 %not.use_dcodt to i32
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 10616
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %3 = and i32 %2, 16777215
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx = getelementptr %struct.rv7xx_power_info, ptr %call, i32 0, i32 33, i32 %cond
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %or = or i32 %4, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 10616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %7) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %11, i32 10620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %7) #4, !srcloc !17
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 10624
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %15 = and i32 %14, 16777215
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %arrayidx4 = getelementptr %struct.rv7xx_power_info, ptr %call, i32 0, i32 34, i32 %cond
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %18 to i32
  %or6 = or i32 %16, %conv5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or6) #4
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %21, i32 10624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %19) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %23, i32 10628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %19) #4, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv730_get_odt_values(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #4
  %odt_value_0 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 33
  %0 = ptrtoint ptr %odt_value_0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %odt_value_0, align 4
  %odt_value_1 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 34
  %1 = ptrtoint ptr %odt_value_1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %odt_value_1, align 2
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 10616
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %5 = lshr i32 %4, 24
  %conv = trunc i32 %5 to i8
  %arrayidx4 = getelementptr %struct.rv7xx_power_info, ptr %call, i32 0, i32 33, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx4, align 1
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %8, i32 10624
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %10 = lshr i32 %9, 24
  %conv7 = trunc i32 %10 to i8
  %arrayidx9 = getelementptr %struct.rv7xx_power_info, ptr %call, i32 0, i32 34, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %arrayidx9, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv730_dpm.c", i32 464, i32 3}
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
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148892263, i64 2148892543, i64 2148892877, i64 2148893211}
!14 = !{i64 6702831}
!15 = !{i64 2157423016}
!16 = !{i64 2157423423}
!17 = !{i64 6702413}
