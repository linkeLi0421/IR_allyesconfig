; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_fb_helper_funcs = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.anon.89 = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.radeon_fbdev = type { %struct.drm_fb_helper, %struct.drm_framebuffer, ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.87, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }

@radeon_fb_helper_funcs = internal constant { %struct.drm_fb_helper_funcs, [28 x i8] } { %struct.drm_fb_helper_funcs { ptr @radeonfb_create }, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create fbcon object %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize framebuffer %d\0A\00", [59 x i8] zeroinitializer }, align 32
@radeonfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @radeonfb_open, ptr @radeonfb_release, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_cfb_fillrect, ptr @drm_fb_helper_cfb_copyarea, ptr @drm_fb_helper_cfb_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, [36 x i8] zeroinitializer }, align 32
@radeonfb_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] fb mappable at 0x%lX\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeonfb_create\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/radeon_fb.c\00", [61 x i8] zeroinitializer }, align 32
@radeonfb_create._entry_ptr = internal global ptr @radeonfb_create._entry, section ".printk_index", align 4
@radeonfb_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016[drm] vram apper at 0x%lX\0A\00", [35 x i8] zeroinitializer }, align 32
@radeonfb_create._entry_ptr.7 = internal global ptr @radeonfb_create._entry.5, section ".printk_index", align 4
@radeonfb_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016[drm] size %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@radeonfb_create._entry_ptr.10 = internal global ptr @radeonfb_create._entry.8, section ".printk_index", align 4
@radeonfb_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016[drm] fb depth is %d\0A\00", [40 x i8] zeroinitializer }, align 32
@radeonfb_create._entry_ptr.13 = internal global ptr @radeonfb_create._entry.11, section ".printk_index", align 4
@radeonfb_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016[drm]    pitch is %d\0A\00", [40 x i8] zeroinitializer }, align 32
@radeonfb_create._entry_ptr.16 = internal global ptr @radeonfb_create._entry.14, section ".printk_index", align 4
@radeonfb_create_pinned_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to allocate framebuffer (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"radeonfb_create_pinned_object\00", [34 x i8] zeroinitializer }, align 32
@radeonfb_create_pinned_object._entry_ptr = internal global ptr @radeonfb_create_pinned_object._entry, section ".printk_index", align 4
@radeonfb_create_pinned_object._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 182, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FB failed to set tiling flags\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeonfb_create_pinned_object._entry_ptr.23 = internal global ptr @radeonfb_create_pinned_object._entry.19, section ".printk_index", align 4
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 71, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 20830, i64 22889]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"radeon_fb_helper_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 324, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 238, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 256, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"radeonfb_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 77, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 288, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 289, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 290, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 291, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 292, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 156, i32 3 }
@___asan_gen_.101 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/radeon_fb.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 182, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 71, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeonfb_create._entry, ptr @radeonfb_create._entry.11, ptr @radeonfb_create._entry.14, ptr @radeonfb_create._entry.5, ptr @radeonfb_create._entry.8, ptr @radeonfb_create._entry_ptr, ptr @radeonfb_create._entry_ptr.10, ptr @radeonfb_create._entry_ptr.13, ptr @radeonfb_create._entry_ptr.16, ptr @radeonfb_create._entry_ptr.7, ptr @radeonfb_create_pinned_object._entry, ptr @radeonfb_create_pinned_object._entry.19, ptr @radeonfb_create_pinned_object._entry_ptr, ptr @radeonfb_create_pinned_object._entry_ptr.23, ptr @radeon_fb_helper_funcs, ptr @.str, ptr @.str.1, ptr @radeonfb_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fb_helper_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_create_pinned_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_create_pinned_object._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radeon_align_pitch(ptr nocapture noundef readonly %rdev, i32 noundef %width, i32 noundef %cpp, i1 noundef zeroext %tiled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ugt i32 %1, 17
  %spec.select = or i1 %cmp, %tiled
  %2 = zext i32 %cpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cpp, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %entry.sw.bb5_crit_edge
    i32 4, label %entry.sw.bb5_crit_edge14
  ]

entry.sw.bb5_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %spec.select, i32 255, i32 127
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cond4 = select i1 %spec.select, i32 127, i32 31
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge14
  %cond7 = select i1 %spec.select, i32 63, i32 15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %pitch_mask.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %cond7, %sw.bb5 ], [ %cond4, %sw.bb2 ], [ %cond, %sw.bb ]
  %add = add i32 %pitch_mask.0, %width
  %neg = xor i32 %pitch_mask.0, -1
  %and = and i32 %add, %neg
  %mul = mul i32 %and, %cpp
  ret i32 %mul
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fbdev_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %2 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %connector_list, align 4
  %cmp.i.not = icmp eq ptr %3, %connector_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %real_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %4 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %real_vram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388609, i64 %5)
  %cmp = icmp ult i64 %5, 8388609
  br i1 %cmp, label %if.end.if.end16_crit_edge, label %if.else

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %9, label %lor.lhs.false9 [
    i16 20830, label %if.else.if.then14_crit_edge
    i16 22889, label %if.else.if.then14_crit_edge57
  ]

if.else.if.then14_crit_edge57:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false9:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554433, i64 %5)
  %cmp12 = icmp ult i64 %5, 33554433
  br i1 %cmp12, label %lor.lhs.false9.if.then14_crit_edge, label %lor.lhs.false9.if.end16_crit_edge

lor.lhs.false9.if.end16_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

lor.lhs.false9.if.then14_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false9.if.then14_crit_edge, %if.else.if.then14_crit_edge, %if.else.if.then14_crit_edge57
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %lor.lhs.false9.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %bpp_sel.0 = phi i32 [ 16, %if.then14 ], [ 32, %lor.lhs.false9.if.end16_crit_edge ], [ 8, %if.end.if.end16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 608) #11
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %rdev21 = getelementptr inbounds %struct.radeon_fbdev, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %rdev21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rdev, ptr %rdev21, align 8
  %rfbdev22 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 18
  %13 = ptrtoint ptr %rfbdev22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %rfbdev22, align 4
  %14 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev, align 4
  tail call void @drm_fb_helper_prepare(ptr noundef %15, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_fb_helper_funcs) #8
  %16 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddev, align 4
  %call26 = tail call i32 @drm_fb_helper_init(ptr noundef %17, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end20.free_crit_edge

if.end20.free_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end29:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddev, align 4
  tail call void @drm_helper_disable_unused_functions(ptr noundef %19) #8
  %call32 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %call7.i.i, i32 noundef %bpp_sel.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %fini

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fini:                                             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %call7.i.i) #8
  br label %free

free:                                             ; preds = %fini, %if.end20.free_crit_edge
  %ret.0 = phi i32 [ %call26, %if.end20.free_crit_edge ], [ %call32, %fini ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end29.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_disable_unused_functions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fbdev_fini(ptr nocapture noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rfbdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 18
  %0 = ptrtoint ptr %rfbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rfbdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef nonnull %1) #8
  %obj.i = getelementptr inbounds %struct.radeon_fbdev, ptr %1, i32 0, i32 1, i32 15
  %2 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.radeon_fbdev_destroy.exit_crit_edge, label %if.then.i

if.end.radeon_fbdev_destroy.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_fbdev_destroy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fb1.i = getelementptr inbounds %struct.radeon_fbdev, ptr %1, i32 0, i32 1
  tail call fastcc void @radeonfb_destroy_pinned_object(ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %obj.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %obj.i, align 4
  tail call void @drm_framebuffer_unregister_private(ptr noundef %fb1.i) #8
  tail call void @drm_framebuffer_cleanup(ptr noundef %fb1.i) #8
  br label %radeon_fbdev_destroy.exit

radeon_fbdev_destroy.exit:                        ; preds = %if.then.i, %if.end.radeon_fbdev_destroy.exit_crit_edge
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %1) #8
  %5 = ptrtoint ptr %rfbdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rfbdev, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %rfbdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rfbdev, align 4
  br label %return

return:                                           ; preds = %radeon_fbdev_destroy.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fbdev_set_suspend(ptr nocapture noundef readonly %rdev, i32 noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rfbdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 18
  %0 = ptrtoint ptr %rfbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rfbdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool3 = icmp ne i32 %state, 0
  tail call void @drm_fb_helper_set_suspend(ptr noundef nonnull %1, i1 noundef zeroext %tobool3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_set_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_fbdev_robj_is_fb(ptr nocapture noundef readonly %rdev, ptr noundef readnone %robj) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rfbdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 18
  %0 = ptrtoint ptr %rfbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rfbdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %obj = getelementptr inbounds %struct.radeon_fbdev, ptr %1, i32 0, i32 1, i32 15
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -96
  %cmp = icmp eq ptr %add.ptr, %robj
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_create(ptr noundef %helper, ptr noundef %sizes) #2 align 64 {
entry:
  %gobj.i = alloca ptr, align 4
  %mode_cmd = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev1 = getelementptr inbounds %struct.radeon_fbdev, ptr %helper, i32 0, i32 2
  %0 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev1, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mode_cmd) #8
  %2 = call ptr @memset(ptr %mode_cmd, i32 255, i32 104)
  %surface_width = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 2
  %3 = ptrtoint ptr %surface_width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %surface_width, align 4
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %5 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %width, align 4
  %surface_height = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 3
  %6 = ptrtoint ptr %surface_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %surface_height, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height, align 8
  %surface_bpp = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 4
  %9 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %surface_bpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %10)
  %cmp = icmp eq i32 %10, 24
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp3 = icmp ugt i32 %12, 17
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %surface_bpp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %surface_bpp, align 4
  %surface_depth = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 5
  %16 = ptrtoint ptr %surface_depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %surface_depth, align 4
  %call = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %15, i32 noundef %17) #8
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %18 = ptrtoint ptr %pixel_format to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %pixel_format, align 4
  %19 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gobj.i) #8
  %21 = ptrtoint ptr %gobj.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %gobj.i, align 4
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 8
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddev.i, align 4
  %call.i = call ptr @drm_get_format_info(ptr noundef %25, ptr noundef nonnull %mode_cmd) #8
  %26 = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 2
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width, align 4
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %20, i32 0, i32 6
  %31 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %32)
  %cmp.i.i = icmp ugt i32 %32, 17
  %33 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %28, label %if.end.radeon_align_pitch.exit.i_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb2.i.i
    i8 3, label %if.end.sw.bb5.i.i_crit_edge
    i8 4, label %if.end.sw.bb5.i.i_crit_edge162
  ]

if.end.sw.bb5.i.i_crit_edge162:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i.i

if.end.sw.bb5.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i.i

if.end.radeon_align_pitch.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_align_pitch.exit.i

sw.bb.i.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cond.i.i = select i1 %cmp.i.i, i32 255, i32 127
  br label %radeon_align_pitch.exit.i

sw.bb2.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cond4.i.i = select i1 %cmp.i.i, i32 127, i32 31
  br label %radeon_align_pitch.exit.i

sw.bb5.i.i:                                       ; preds = %if.end.sw.bb5.i.i_crit_edge, %if.end.sw.bb5.i.i_crit_edge162
  %cond7.i.i = select i1 %cmp.i.i, i32 63, i32 15
  br label %radeon_align_pitch.exit.i

radeon_align_pitch.exit.i:                        ; preds = %sw.bb5.i.i, %sw.bb2.i.i, %sw.bb.i.i, %if.end.radeon_align_pitch.exit.i_crit_edge
  %pitch_mask.0.i.i = phi i32 [ 0, %if.end.radeon_align_pitch.exit.i_crit_edge ], [ %cond7.i.i, %sw.bb5.i.i ], [ %cond4.i.i, %sw.bb2.i.i ], [ %cond.i.i, %sw.bb.i.i ]
  %add.i.i = add i32 %pitch_mask.0.i.i, %30
  %neg.i.i = xor i32 %pitch_mask.0.i.i, -1
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %mul.i.i = mul i32 %and.i.i, %conv.i
  %pitches.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %34 = ptrtoint ptr %pitches.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i.i, ptr %pitches.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %32)
  %cmp.i = icmp ugt i32 %32, 26
  br i1 %cmp.i, label %if.then.i, label %radeon_align_pitch.exit.i.if.end.i_crit_edge

radeon_align_pitch.exit.i.if.end.i_crit_edge:     ; preds = %radeon_align_pitch.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %radeon_align_pitch.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 8
  %add.i = add i32 %36, 7
  %and.i = and i32 %add.i, -8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %radeon_align_pitch.exit.i.if.end.i_crit_edge
  %height.0.i = phi i32 [ %and.i, %if.then.i ], [ %23, %radeon_align_pitch.exit.i.if.end.i_crit_edge ]
  %mul.i = mul i32 %height.0.i, %mul.i.i
  %add9.i = add i32 %mul.i, 4095
  %and10.i = and i32 %add9.i, -4096
  %call11.i = call i32 @radeon_gem_object_create(ptr noundef %20, i32 noundef %and10.i, i32 noundef 0, i32 noundef 4, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %gobj.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end15.i, label %radeonfb_create_pinned_object.exit.thread150

radeonfb_create_pinned_object.exit.thread150:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %and10.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj.i) #8
  br label %if.then7

if.end15.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %gobj.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gobj.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 -96
  %39 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %28, label %if.end15.i.if.end34.i_crit_edge [
    i8 4, label %if.end15.i.if.then23.i_crit_edge
    i8 2, label %sw.bb20.i
  ]

if.end15.i.if.then23.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

if.end15.i.if.end34.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

sw.bb20.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

if.then23.i:                                      ; preds = %sw.bb20.i, %if.end15.i.if.then23.i_crit_edge
  %tiling_flags.1.ph.i = phi i32 [ 20, %sw.bb20.i ], [ 24, %if.end15.i.if.then23.i_crit_edge ]
  %40 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pitches.i, align 4
  %call27.i = call i32 @radeon_bo_set_tiling_flags(ptr noundef %add.ptr.i, i32 noundef %tiling_flags.1.ph.i, i32 noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then23.i.if.end34.i_crit_edge, label %do.end32.i

if.then23.i.if.end34.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

do.end32.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.20) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end32.i, %if.then23.i.if.end34.i_crit_edge, %if.end15.i.if.end34.i_crit_edge
  %resv32.i.i.i = getelementptr i8, ptr %38, i32 200
  %44 = ptrtoint ptr %resv32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resv32.i.i.i, align 8
  %call.i.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %45, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i.i, -4
  %retval.1.i.i.i = select i1 %cmp.i.i.i, i32 -512, i32 %call.i.i.i.i
  %46 = zext i32 %retval.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %retval.1.i.i.i, label %radeonfb_create_pinned_object.exit [
    i32 0, label %if.end41.i
    i32 -512, label %if.end34.i.radeonfb_create_pinned_object.exit.thread155_crit_edge
  ], !prof !58

if.end34.i.radeonfb_create_pinned_object.exit.thread155_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeonfb_create_pinned_object.exit.thread155

if.end41.i:                                       ; preds = %if.end34.i
  %47 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %48)
  %cmp43.i = icmp ugt i32 %48, 17
  %cond.i = select i1 %cmp43.i, i32 0, i32 134217728
  %49 = zext i32 %cond.i to i64
  %call46.i = call i32 @radeon_bo_pin_restricted(ptr noundef %add.ptr.i, i32 noundef 4, i64 noundef %49, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %bdev.i.i.i.i = getelementptr i8, ptr %38, i32 352
  %50 = ptrtoint ptr %bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdev.i.i.i.i, align 8
  %lru_lock.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %51, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i) #8
  %resource.i.i.i.i = getelementptr i8, ptr %38, i32 372
  %52 = ptrtoint ptr %resource.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %resource.i.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %38, ptr noundef %53, ptr noundef null) #8
  %54 = ptrtoint ptr %bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bdev.i.i.i.i, align 8
  %lru_lock2.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %55, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i) #8
  %56 = ptrtoint ptr %resv32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resv32.i.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %57) #8
  call void @ww_mutex_unlock(ptr noundef %57) #8
  br label %radeonfb_create_pinned_object.exit.thread155

if.end53.i:                                       ; preds = %if.end41.i
  %call54.i = call i32 @radeon_bo_kmap(ptr noundef %add.ptr.i, ptr noundef null) #8
  %bdev.i.i.i99.i = getelementptr i8, ptr %38, i32 352
  %58 = ptrtoint ptr %bdev.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bdev.i.i.i99.i, align 8
  %lru_lock.i.i.i100.i = getelementptr inbounds %struct.ttm_device, ptr %59, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i100.i) #8
  %resource.i.i.i101.i = getelementptr i8, ptr %38, i32 372
  %60 = ptrtoint ptr %resource.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %resource.i.i.i101.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %38, ptr noundef %61, ptr noundef null) #8
  %62 = ptrtoint ptr %bdev.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bdev.i.i.i99.i, align 8
  %lru_lock2.i.i.i102.i = getelementptr inbounds %struct.ttm_device, ptr %63, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i102.i) #8
  %64 = ptrtoint ptr %resv32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %resv32.i.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %65) #8
  call void @ww_mutex_unlock(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %radeonfb_create_pinned_object.exit.thread, label %if.end53.i.radeonfb_create_pinned_object.exit.thread155_crit_edge

if.end53.i.radeonfb_create_pinned_object.exit.thread155_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeonfb_create_pinned_object.exit.thread155

radeonfb_create_pinned_object.exit.thread:        ; preds = %if.end53.i
  %66 = ptrtoint ptr %gobj.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gobj.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj.i) #8
  %call12 = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %helper) #8
  %cmp.i134 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then14, label %if.end16

radeonfb_create_pinned_object.exit.thread155:     ; preds = %if.end53.i.radeonfb_create_pinned_object.exit.thread155_crit_edge, %if.then48.i, %if.end34.i.radeonfb_create_pinned_object.exit.thread155_crit_edge
  %ret.0.i.ph = phi i32 [ %retval.1.i.i.i, %if.end34.i.radeonfb_create_pinned_object.exit.thread155_crit_edge ], [ %call54.i, %if.end53.i.radeonfb_create_pinned_object.exit.thread155_crit_edge ], [ %call46.i, %if.then48.i ]
  %68 = ptrtoint ptr %gobj.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gobj.i, align 4
  call fastcc void @radeonfb_destroy_pinned_object(ptr noundef %69) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj.i) #8
  br label %if.then7

radeonfb_create_pinned_object.exit:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i.i = getelementptr i8, ptr %38, i32 464
  %70 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rdev.i.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.24, ptr noundef %add.ptr.i) #12
  %74 = ptrtoint ptr %gobj.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gobj.i, align 4
  call fastcc void @radeonfb_destroy_pinned_object(ptr noundef %75) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj.i) #8
  br label %if.then7

if.then7:                                         ; preds = %radeonfb_create_pinned_object.exit, %radeonfb_create_pinned_object.exit.thread155, %radeonfb_create_pinned_object.exit.thread150
  %retval.0.i154 = phi i32 [ -12, %radeonfb_create_pinned_object.exit.thread150 ], [ %retval.1.i.i.i, %radeonfb_create_pinned_object.exit ], [ %ret.0.i.ph, %radeonfb_create_pinned_object.exit.thread155 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %retval.0.i154) #8
  br label %cleanup

if.then14:                                        ; preds = %radeonfb_create_pinned_object.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %radeonfb_create_pinned_object.exit.thread
  %skip_vt_switch = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 32
  %77 = ptrtoint ptr %skip_vt_switch to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %skip_vt_switch, align 4
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ddev, align 4
  %fb17 = getelementptr inbounds %struct.radeon_fbdev, ptr %helper, i32 0, i32 1
  %call18 = call i32 @radeon_framebuffer_init(ptr noundef %79, ptr noundef %fb17, ptr noundef nonnull %mode_cmd, ptr noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %call18) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %fb24 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 2
  %80 = ptrtoint ptr %fb24 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %fb17, ptr %fb24, align 4
  %kptr = getelementptr i8, ptr %67, i32 436
  %81 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %kptr, align 4
  %size.i = getelementptr i8, ptr %67, i32 184
  %83 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i, align 8
  call void @mmioset(ptr noundef %82, i32 noundef 0, i32 noundef %84) #8
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 20
  %85 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @radeonfb_ops, ptr %fbops, align 4
  %bdev.i = getelementptr i8, ptr %67, i32 352
  %86 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bdev.i, align 8
  %call.i135 = call ptr @radeon_get_rdev(ptr noundef %87) #8
  %resource.i = getelementptr i8, ptr %67, i32 372
  %88 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mem_type.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %91, label %if.end21.radeon_bo_gpu_offset.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.end21.radeon_bo_gpu_offset.exit_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_bo_gpu_offset.exit

sw.bb.i:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i135, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i135, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i ], [ %gtt_start.i, %sw.bb.i ]
  %93 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %vram_start.sink.i, align 8
  br label %radeon_bo_gpu_offset.exit

radeon_bo_gpu_offset.exit:                        ; preds = %sw.epilog.sink.split.i, %if.end21.radeon_bo_gpu_offset.exit_crit_edge
  %start.0.i = phi i64 [ 0, %if.end21.radeon_bo_gpu_offset.exit_crit_edge ], [ %94, %sw.epilog.sink.split.i ]
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %89, align 4
  %shl.i = shl i32 %96, 12
  %mc = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42
  %vram_start = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42, i32 8
  %97 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %vram_start, align 8
  %add.i137 = sub i64 %start.0.i, %98
  %99 = trunc i64 %add.i137 to i32
  %conv = add i32 %shl.i, %99
  %aper_base = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42, i32 1
  %100 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %aper_base, align 4
  %add = add i32 %conv, %101
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 1
  %102 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add, ptr %smem_start, align 4
  %103 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size.i, align 8
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 7, i32 2
  %105 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %smem_len, align 4
  %106 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %kptr, align 4
  %108 = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 25
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %107, ptr %108, align 4
  %110 = load i32, ptr %size.i, align 8
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 26
  %111 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %screen_size, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %call12, ptr noundef %helper, ptr noundef %sizes) #8
  %112 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ddev, align 4
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %113, i32 0, i32 30, i32 28
  %114 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fb_base, align 4
  %apertures = getelementptr inbounds %struct.fb_info, ptr %call12, i32 0, i32 31
  %116 = ptrtoint ptr %apertures to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %apertures, align 4
  %ranges = getelementptr inbounds %struct.apertures_struct, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %115, ptr %ranges, align 4
  %119 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mc, align 8
  %121 = load ptr, ptr %apertures, align 4
  %size = getelementptr inbounds %struct.apertures_struct, ptr %121, i32 2
  %122 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %120, ptr %size, align 4
  %123 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %108, align 4
  %cmp38 = icmp eq ptr %124, null
  br i1 %cmp38, label %out, label %do.end

do.end:                                           ; preds = %radeon_bo_gpu_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %smem_start, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %126) #12
  %127 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %aper_base, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %128) #12
  %129 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size.i, align 8
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %130) #12
  %format = getelementptr inbounds %struct.radeon_fbdev, ptr %helper, i32 0, i32 1, i32 4
  %131 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.drm_format_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %depth, align 4
  %conv63 = zext i8 %134 to i32
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv63) #12
  %pitches = getelementptr inbounds %struct.radeon_fbdev, ptr %helper, i32 0, i32 1, i32 6
  %135 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pitches, align 8
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %136) #12
  br label %cleanup

out:                                              ; preds = %radeon_bo_gpu_offset.exit
  %tobool71.not = icmp eq ptr %fb17, null
  br i1 %tobool71.not, label %out.cleanup_crit_edge, label %if.then74

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then74:                                        ; preds = %out
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %if.then74.drm_gem_object_put.exit_crit_edge, label %if.then.i141

if.then74.drm_gem_object_put.exit_crit_edge:      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then.i141:                                     ; preds = %if.then74
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %67, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  call void @llvm.prefetch.p0(ptr nonnull %67, i32 1, i32 3, i32 1) #8
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %67, ptr nonnull %67, i32 1, ptr nonnull elementtype(i32) %67) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %67, i32 noundef 3) #8
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  call void @drm_gem_object_free(ptr noundef nonnull %67) #8
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.then74.drm_gem_object_put.exit_crit_edge
  call void @drm_framebuffer_unregister_private(ptr noundef nonnull %fb17) #8
  call void @drm_framebuffer_cleanup(ptr noundef nonnull %fb17) #8
  call void @kfree(ptr noundef nonnull %fb17) #8
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit, %out.cleanup_crit_edge, %do.end, %if.then20, %if.then14, %if.then7
  %retval.0 = phi i32 [ %retval.0.i154, %if.then7 ], [ 0, %do.end ], [ -28, %drm_gem_object_put.exit ], [ -28, %out.cleanup_crit_edge ], [ %call18, %if.then20 ], [ %76, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode_cmd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_framebuffer_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_unregister_private(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_object_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_set_tiling_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin_restricted(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeonfb_destroy_pinned_object(ptr noundef %gobj) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gobj, i32 -96
  %resv32.i.i = getelementptr i8, ptr %gobj, i32 200
  %0 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %2 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then
    i32 -512, label %entry.if.end_crit_edge
  ], !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i = getelementptr i8, ptr %gobj, i32 464
  %3 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24, ptr noundef %add.ptr) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_bo_kunmap(ptr noundef %add.ptr) #8
  tail call void @radeon_bo_unpin(ptr noundef %add.ptr) #8
  %bdev.i.i.i = getelementptr i8, ptr %gobj, i32 352
  %7 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr i8, ptr %gobj, i32 372
  %9 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %gobj, ptr noundef %10, ptr noundef null) #8
  %11 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %13 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %14) #8
  tail call void @ww_mutex_unlock(ptr noundef %14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.i, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %gobj, null
  br i1 %tobool.not.i, label %if.end.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end.drm_gem_object_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %gobj, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull %gobj, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %gobj, ptr nonnull %gobj, i32 1, ptr nonnull elementtype(i32) %gobj) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %gobj, i32 noundef 3) #8
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @drm_gem_object_free(ptr noundef nonnull %gobj) #8
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end.drm_gem_object_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %rdev1 = getelementptr inbounds %struct.radeon_fbdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev1, align 8
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddev, align 4
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %call.i14 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i14, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddev, align 4
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6, align 4
  %call.i15 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %rdev1 = getelementptr inbounds %struct.radeon_fbdev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev1, align 8
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %9 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddev, align 4
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  %call.i5 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_fillrect(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_copyarea(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_imageblit(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_rdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @radeon_fb_helper_funcs, !1, !"radeon_fb_helper_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 324, i32 41}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 238, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 256, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 288, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @radeonfb_create._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeonfb_create._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 289, i32 2}
!14 = !{ptr @radeonfb_create._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeonfb_create._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 290, i32 2}
!18 = !{ptr @radeonfb_create._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @radeonfb_create._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 291, i32 2}
!22 = !{ptr @radeonfb_create._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @radeonfb_create._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 292, i32 2}
!26 = !{ptr @radeonfb_create._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @radeonfb_create._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 156, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @radeonfb_create_pinned_object._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @radeonfb_create_pinned_object._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 182, i32 4}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @radeonfb_create_pinned_object._entry.19, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @radeonfb_create_pinned_object._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!41 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @radeon_bo_reserve._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @radeon_bo_reserve._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!47 = !{ptr @radeonfb_ops, !48, !"radeonfb_ops", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_fb.c", i32 77, i32 28}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!59 = !{i64 2148437922}
!60 = !{i64 2148352362, i64 2148352394, i64 2148352423, i64 2148352457, i64 2148352488, i64 2148352511}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2149314036}
