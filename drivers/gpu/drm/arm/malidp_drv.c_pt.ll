; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/malidp_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/malidp_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.malidp_hw = type { %struct.malidp_hw_regmap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.malidp_hw_regmap = type { i16, i16, i16, i16, i8, i8, ptr, %struct.malidp_irq_map, %struct.malidp_irq_map, %struct.malidp_irq_map, ptr, i8, i8 }
%struct.malidp_irq_map = type { i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.malidp_drm = type { ptr, %struct.drm_crtc, %struct.drm_writeback_connector, %struct.wait_queue_head, ptr, %struct.atomic_t, i32, %struct.malidp_error_stats, %struct.malidp_error_stats, %struct.spinlock }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.malidp_error_stats = type { i32, i32, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.malidp_hw_device = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i16, i32, i8, i8, [2 x i32], i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.82 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.84 = type { ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.malidp_crtc_state = type { %struct.drm_crtc_state, [64 x i32], [12 x i32], %struct.malidp_se_config, i8 }
%struct.malidp_se_config = type { i8, i8, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_mali_dp__320_1011_malidp_platform_driver_init6 = internal global ptr @malidp_platform_driver_init, section ".initcall6.init", align 4
@malidp_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @malidp_platform_probe, ptr @malidp_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @malidp_drm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mali_dp_groups, ptr @malidp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_malidp_platform_driver_exit = internal global ptr @malidp_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [49 x i8] c"mali_dp.author=Liviu Dudau <Liviu.Dudau@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [43 x i8] c"mali_dp.description=ARM Mali DP DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [41 x i8] c"mali_dp.file=drivers/gpu/drm/arm/mali-dp\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [23 x i8] c"mali_dp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mali-dp\00", [24 x i8] zeroinitializer }, align 32
@malidp_drm_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-dp500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @malidp_device }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-dp550\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @malidp_device, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-dp650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @malidp_device, i64 216) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mali_dp_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mali_dp_group, ptr null], [24 x i8] zeroinitializer }, align 32
@malidp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @malidp_pm_suspend, ptr @malidp_pm_resume, ptr @malidp_pm_suspend, ptr @malidp_pm_resume, ptr @malidp_pm_suspend, ptr @malidp_pm_resume, ptr @malidp_pm_suspend_late, ptr @malidp_pm_resume_early, ptr @malidp_pm_suspend_late, ptr @malidp_pm_resume_early, ptr @malidp_pm_suspend_late, ptr @malidp_pm_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @malidp_runtime_pm_suspend, ptr @malidp_runtime_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@malidp_master_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @malidp_bind, ptr @malidp_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pxlclk\00", [25 x i8] zeroinitializer }, align 32
@malidp_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @malidp_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @malidp_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.15, ptr @.str.16, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Insufficient address space in device-tree.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid HW configuration\0A\00", [38 x i8] zeroinitializer }, align 32
@malidp_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016[drm] found ARM Mali-DP%3x version r%dp%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"malidp_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/arm/malidp_drv.c\00", [63 x i8] zeroinitializer }, align 32
@malidp_bind._entry_ptr = internal global ptr @malidp_bind._entry, section ".printk_index", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm,malidp-arqos-value\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arm,malidp-output-port-lines\00", [35 x i8] zeroinitializer }, align 32
@malidp_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&malidp->wq\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to bind all components\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialise vblank\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ARM Mali Display Processor driver\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20160106\00", [23 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@malidp_debugfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&malidp->errors_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@malidp_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @malidp_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @malidp_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DE\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SE\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%s] num_errors : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s] last_error_status  : 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%s] last_error_vblank : %lld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,mali-dp500\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Device-tree expects %s, but hardware %s DP500.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"is\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"is not\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arm,mali-dp%X\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Device-tree expects %s, but hardware is DP%03X.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/arm/malidp_hw.h\00", [32 x i8] zeroinitializer }, align 32
@malidp_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @malidp_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@malidp_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @malidp_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AFBC buffers' plane offset should be 0\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AFBC buffers must be aligned to 16 pixels\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported AFBC block size\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Invalid value of (pitch * BITS_PER_BYTE) (=%u) should be same as width (=%u) * bpp (=%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup GEM object\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"buffer size (%zu) too small for AFBC buffer size = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timed out waiting for updated configuration\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no 'DE' IRQ specified!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no 'SE' IRQ specified!\0A\00", [40 x i8] zeroinitializer }, align 32
@malidp_device = external dso_local constant [3 x %struct.malidp_hw], align 4
@mali_dp_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mali_dp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mali_dp_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_core_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_core_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @core_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"core_id\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"malidp_platform_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1000, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1004, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"malidp_drm_of_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 580, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"mali_dp_groups\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"malidp_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 994, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"malidp_master_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 924, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 735, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 739, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 743, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 747, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"malidp_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 566, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 781, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 793, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 798, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 804, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 811, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 822, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 833, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 852, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 574, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 575, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 459, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 559, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 560, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"malidp_debugfs_fops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 544, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 519, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 520, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 500, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 502, i32 16 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 504, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 641, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 616, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 626, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 629, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/arm/malidp_hw.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 261, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"malidp_mode_config_funcs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 386, i32 43 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"malidp_mode_config_helpers\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 271, i32 50 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 284, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 291, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 296, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 339, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 348, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 353, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 217, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 437, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 442, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"mali_dp_group\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 666, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"mali_dp_attrs\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 662, i32 26 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"dev_attr_core_id\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 660, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [36 x i8] c"../drivers/gpu/drm/arm/malidp_drv.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 657, i32 34 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_malidp_platform_driver_exit, ptr @__initcall__kmod_mali_dp__320_1011_malidp_platform_driver_init6, ptr @malidp_bind._entry, ptr @malidp_bind._entry_ptr, ptr @malidp_platform_driver_exit, ptr @malidp_platform_driver, ptr @.str, ptr @malidp_drm_of_match, ptr @mali_dp_groups, ptr @malidp_pm_ops, ptr @malidp_master_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @malidp_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @malidp_bind.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @fops, ptr @malidp_debugfs_init.__key, ptr @.str.17, ptr @.str.18, ptr @malidp_debugfs_fops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @malidp_mode_config_funcs, ptr @malidp_mode_config_helpers, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @mali_dp_group, ptr @mali_dp_attrs, ptr @dev_attr_core_id, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_drm_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mali_dp_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_master_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_debugfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mali_dp_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mali_dp_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_core_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @malidp_error(ptr noundef %malidp, ptr nocapture noundef %error_stats, i32 noundef %status, i64 noundef %vblank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %errors_lock = getelementptr inbounds %struct.malidp_drm, ptr %malidp, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %errors_lock) #11
  %last_error_status = getelementptr inbounds %struct.malidp_error_stats, ptr %error_stats, i32 0, i32 1
  %0 = ptrtoint ptr %last_error_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %last_error_status, align 4
  %last_error_vblank = getelementptr inbounds %struct.malidp_error_stats, ptr %error_stats, i32 0, i32 2
  %1 = ptrtoint ptr %last_error_vblank to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %vblank, ptr %last_error_vblank, align 8
  %2 = ptrtoint ptr %error_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_stats, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %error_stats, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %errors_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_platform_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @malidp_platform_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @malidp_platform_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @malidp_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #11
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_graph_get_remote_node(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_of_component_match_add(ptr noundef %dev, ptr noundef nonnull %match, ptr noundef nonnull @malidp_compare_dev, ptr noundef nonnull %call) #11
  call void @of_node_put(ptr noundef nonnull %call) #11
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %call8 = call i32 @component_master_add_with_match(ptr noundef %dev, ptr noundef nonnull @malidp_master_ops, ptr noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end5 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_platform_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @malidp_master_ops) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @malidp_compare_dev(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_bind(ptr noundef %dev) #0 align 64 {
entry:
  %output_width = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %output_width) #11
  %0 = ptrtoint ptr %output_width to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %output_width, align 1, !annotation !129
  %1 = getelementptr inbounds [3 x i8], ptr %output_width, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !129
  %3 = getelementptr inbounds [3 x i8], ptr %output_width, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !129
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2400, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i310 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #11
  %tobool2.not = icmp eq ptr %call.i310, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %5 = ptrtoint ptr %call.i310 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %call.i310, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i310, ptr %call.i, align 8
  %call7 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #11
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call7) #11
  %regs = getelementptr inbounds %struct.malidp_hw_device, ptr %call.i310, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %pclk = getelementptr inbounds %struct.malidp_hw_device, ptr %call.i310, i32 0, i32 2
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %pclk, align 4
  %cmp.i311 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i311, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %aclk = getelementptr inbounds %struct.malidp_hw_device, ptr %call.i310, i32 0, i32 3
  %11 = ptrtoint ptr %aclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %aclk, align 4
  %cmp.i312 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i312, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %mclk = getelementptr inbounds %struct.malidp_hw_device, ptr %call.i310, i32 0, i32 4
  %13 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29, ptr %mclk, align 4
  %cmp.i313 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i313, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #11
  %pxlclk = getelementptr inbounds %struct.malidp_hw_device, ptr %call.i310, i32 0, i32 5
  %15 = ptrtoint ptr %pxlclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call36, ptr %pxlclk, align 4
  %cmp.i314 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %call.i315 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %18, i32 noundef 0) #11
  %19 = zext i32 %call.i315 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i315, label %if.end42.cleanup_crit_edge [
    i32 0, label %if.end42.if.end46_crit_edge
    i32 -19, label %if.end42.if.end46_crit_edge332
  ]

if.end42.if.end46_crit_edge332:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %if.end42.if.end46_crit_edge, %if.end42.if.end46_crit_edge332
  %call47 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @malidp_driver, ptr noundef %dev) #11
  %cmp.i316 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call47 to i32
  br label %alloc_fail

if.end51:                                         ; preds = %if.end46
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call47, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %dev_private, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call47, ptr %driver_data.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %23 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %call.i317 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  br label %if.end56

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = tail call i32 @malidp_runtime_pm_resume(ptr noundef %dev)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53
  %call57 = tail call ptr @of_match_device(ptr noundef nonnull @malidp_drm_of_match, ptr noundef %dev) #11
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end56.query_hw_fail_crit_edge, label %if.end60

if.end56.query_hw_fail_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hw_fail

if.end60:                                         ; preds = %if.end56
  %call61 = tail call fastcc zeroext i1 @malidp_has_sufficient_address_space(ptr noundef %call7, ptr noundef nonnull %call57)
  br i1 %call61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #11
  br label %query_hw_fail

if.end63:                                         ; preds = %if.end60
  %call64 = tail call fastcc zeroext i1 @malidp_is_compatible_hw_id(ptr noundef nonnull %call.i310, ptr noundef nonnull %call57)
  br i1 %call64, label %if.end66, label %if.end63.query_hw_fail_crit_edge

if.end63.query_hw_fail_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hw_fail

if.end66:                                         ; preds = %if.end63
  %24 = ptrtoint ptr %call.i310 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i310, align 4
  %query_hw = getelementptr inbounds %struct.malidp_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %query_hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %query_hw, align 4
  %call68 = tail call i32 %27(ptr noundef nonnull %call.i310) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #11
  br label %query_hw_fail

if.end71:                                         ; preds = %if.end66
  %28 = ptrtoint ptr %call.i310 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i310, align 4
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dc_base, align 4
  %conv = zext i16 %31 to i32
  %add = add nuw nsw i32 %conv, 24
  %call73 = tail call fastcc i32 @malidp_hw_read(ptr noundef nonnull %call.i310, i32 noundef %add)
  %shr = lshr i32 %call73, 16
  %shr75 = lshr i32 %call73, 12
  %and = and i32 %shr75, 15
  %shr76 = lshr i32 %call73, 8
  %and77 = and i32 %shr76, 15
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %shr, i32 noundef %and, i32 noundef %and77) #14
  %core_id = getelementptr inbounds %struct.malidp_drm, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %core_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call73, ptr %core_id, align 4
  %33 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node.i, align 8
  %arqos_value = getelementptr inbounds %struct.malidp_hw_device, ptr %call.i310, i32 0, i32 12
  %call.i.i318 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %34, ptr noundef nonnull @.str.10, ptr noundef %arqos_value, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i318)
  %tobool80.not = icmp sgt i32 %call.i.i318, -1
  br i1 %tobool80.not, label %if.end71.if.end83_crit_edge, label %if.then81

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then81:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %arqos_value to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arqos_value, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end71.if.end83_crit_edge
  %36 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node.i, align 8
  %call.i319 = call i32 @of_property_read_variable_u8_array(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef nonnull %output_width, i32 noundef 3, i32 noundef 0) #11
  %38 = call i32 @llvm.smin.i32(i32 %call.i319, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i319)
  %tobool86.not = icmp sgt i32 %call.i319, -1
  br i1 %tobool86.not, label %for.body.preheader, label %if.end83.query_hw_fail_crit_edge

if.end83.query_hw_fail_crit_edge:                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hw_fail

for.body.preheader:                               ; preds = %if.end83
  %39 = ptrtoint ptr %output_width to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %output_width, align 1
  %41 = and i8 %40, 15
  %and92 = zext i8 %41 to i32
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %1, align 1
  %44 = and i8 %43, 15
  %and92.1 = zext i8 %44 to i32
  %45 = shl nuw nsw i32 %and92, 16
  %46 = shl nuw nsw i32 %and92.1, 8
  %shl.2 = or i32 %45, %46
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %3, align 1
  %49 = and i8 %48, 15
  %and92.2 = zext i8 %49 to i32
  %or.2 = or i32 %shl.2, %and92.2
  %50 = ptrtoint ptr %call.i310 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i310, align 4
  %out_depth_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %out_depth_base to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %out_depth_base, align 2
  %conv95 = zext i16 %53 to i32
  call fastcc void @malidp_hw_write(ptr noundef nonnull %call.i310, i32 noundef %or.2, i32 noundef %conv95)
  %output_color_depth = getelementptr inbounds %struct.malidp_hw_device, ptr %call.i310, i32 0, i32 8
  %54 = ptrtoint ptr %output_color_depth to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.2, ptr %output_color_depth, align 4
  %config_valid = getelementptr inbounds %struct.malidp_drm, ptr %call.i, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %config_valid, i32 noundef 4) #11
  %55 = ptrtoint ptr %config_valid to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %config_valid, align 4
  %wq = getelementptr inbounds %struct.malidp_drm, ptr %call.i, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.12, ptr noundef nonnull @malidp_bind.__key) #11
  %call99 = call fastcc i32 @malidp_init(ptr noundef %call47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %for.body.preheader.query_hw_fail_crit_edge, label %if.end103

for.body.preheader.query_hw_fail_crit_edge:       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %query_hw_fail

if.end103:                                        ; preds = %for.body.preheader
  %56 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node.i, align 8
  %call105 = call ptr @of_graph_get_port_by_id(ptr noundef %57, i32 noundef 0) #11
  %port = getelementptr inbounds %struct.malidp_drm, ptr %call.i, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call105, ptr %port, align 4
  %call106 = call i32 @component_bind_all(ptr noundef %dev, ptr noundef %call47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #11
  br label %bind_fail

if.end109:                                        ; preds = %if.end103
  %num_encoder = getelementptr inbounds %struct.drm_device, ptr %call47, i32 0, i32 30, i32 15
  %59 = ptrtoint ptr %num_encoder to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp110 = icmp sgt i32 %60, 2
  br i1 %cmp110, label %do.end123, label %if.end109.if.end129_crit_edge, !prof !130

if.end109.if.end129_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

do.end123:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 840, i32 noundef 9, ptr noundef null) #11
  br label %if.end129

if.end129:                                        ; preds = %do.end123, %if.end109.if.end129_crit_edge
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %call47, i32 0, i32 30, i32 16
  %61 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn329 = load ptr, ptr %encoder_list, align 4
  %cmp144.not330 = icmp eq ptr %.pn329, %encoder_list
  br i1 %cmp144.not330, label %if.end129.for.end158_crit_edge, label %if.end129.for.body148_crit_edge

if.end129.for.body148_crit_edge:                  ; preds = %if.end129
  br label %for.body148

if.end129.for.end158_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end158

for.body148:                                      ; preds = %for.body148.for.body148_crit_edge, %if.end129.for.body148_crit_edge
  %.pn331 = phi ptr [ %.pn, %for.body148.for.body148_crit_edge ], [ %.pn329, %if.end129.for.body148_crit_edge ]
  %62 = ptrtoint ptr %num_encoder to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_encoder, align 4
  %notmask = shl nsw i32 -1, %63
  %sub = xor i32 %notmask, -1
  %possible_clones = getelementptr i8, ptr %.pn331, i32 44
  %64 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub, ptr %possible_clones, align 4
  %65 = ptrtoint ptr %.pn331 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load ptr, ptr %.pn331, align 4
  %cmp144.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp144.not, label %for.body148.for.end158_crit_edge, label %for.body148.for.body148_crit_edge

for.body148.for.body148_crit_edge:                ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body148

for.body148.for.end158_crit_edge:                 ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end158

for.end158:                                       ; preds = %for.body148.for.end158_crit_edge, %if.end129.for.end158_crit_edge
  %call159 = call fastcc i32 @malidp_irq_init(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %for.end158.irq_init_fail_crit_edge, label %if.end163

for.end158.irq_init_fail_crit_edge:               ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_init_fail

if.end163:                                        ; preds = %for.end158
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %call47, i32 0, i32 30, i32 19
  %66 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_crtc, align 4
  %call165 = call i32 @drm_vblank_init(ptr noundef %call47, i32 noundef %67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #11
  br label %vblank_fail

if.end169:                                        ; preds = %if.end163
  %call.i320 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #11
  call void @drm_mode_config_reset(ptr noundef %call47) #11
  call void @drm_kms_helper_poll_init(ptr noundef %call47) #11
  %call171 = call i32 @drm_dev_register(ptr noundef %call47, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %register_fail

if.end174:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_fbdev_generic_setup(ptr noundef %call47, i32 noundef 32) #11
  br label %cleanup

register_fail:                                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_kms_helper_poll_fini(ptr noundef %call47) #11
  %call.i321 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  br label %vblank_fail

vblank_fail:                                      ; preds = %register_fail, %if.then168
  %ret.0 = phi i32 [ %call165, %if.then168 ], [ %call171, %register_fail ]
  call void @malidp_se_irq_fini(ptr noundef nonnull %call.i310) #11
  call void @malidp_de_irq_fini(ptr noundef nonnull %call.i310) #11
  br label %irq_init_fail

irq_init_fail:                                    ; preds = %vblank_fail, %for.end158.irq_init_fail_crit_edge
  %ret.1 = phi i32 [ %call159, %for.end158.irq_init_fail_crit_edge ], [ %ret.0, %vblank_fail ]
  call void @drm_atomic_helper_shutdown(ptr noundef %call47) #11
  call void @component_unbind_all(ptr noundef %dev, ptr noundef %call47) #11
  br label %bind_fail

bind_fail:                                        ; preds = %irq_init_fail, %if.then108
  %ret.2 = phi i32 [ %call106, %if.then108 ], [ %ret.1, %irq_init_fail ]
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port, align 4
  call void @of_node_put(ptr noundef %69) #11
  %70 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %port, align 4
  call void @drm_mode_config_cleanup(ptr noundef %call47) #11
  br label %query_hw_fail

query_hw_fail:                                    ; preds = %bind_fail, %for.body.preheader.query_hw_fail_crit_edge, %if.end83.query_hw_fail_crit_edge, %if.then70, %if.end63.query_hw_fail_crit_edge, %if.then62, %if.end56.query_hw_fail_crit_edge
  %ret.3 = phi i32 [ %call68, %if.then70 ], [ %38, %if.end83.query_hw_fail_crit_edge ], [ %call99, %for.body.preheader.query_hw_fail_crit_edge ], [ %ret.2, %bind_fail ], [ -22, %if.then62 ], [ -22, %if.end56.query_hw_fail_crit_edge ], [ -22, %if.end63.query_hw_fail_crit_edge ]
  %call.i322 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #11
  %71 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i324 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i324)
  %tobool.not.i325 = icmp ult i16 %bf.load.i324, 8192
  br i1 %tobool.not.i325, label %if.then182, label %if.else183

if.then182:                                       ; preds = %query_hw_fail
  call void @__sanitizer_cov_trace_pc() #13
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %if.end185

if.else183:                                       ; preds = %query_hw_fail
  call void @__sanitizer_cov_trace_pc() #13
  %call184 = call i32 @malidp_runtime_pm_suspend(ptr noundef %dev)
  br label %if.end185

if.end185:                                        ; preds = %if.else183, %if.then182
  %72 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %dev_private, align 4
  %73 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %driver_data.i, align 4
  call void @drm_dev_put(ptr noundef %call47) #11
  br label %alloc_fail

alloc_fail:                                       ; preds = %if.end185, %if.then49
  %ret.4 = phi i32 [ %20, %if.then49 ], [ %ret.3, %if.end185 ]
  call void @of_reserved_mem_device_release(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %alloc_fail, %if.end174, %if.end42.cleanup_crit_edge, %if.then39, %if.then32, %if.then25, %if.then18, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then11 ], [ %10, %if.then18 ], [ %12, %if.then25 ], [ %14, %if.then32 ], [ %16, %if.then39 ], [ %ret.4, %alloc_fail ], [ 0, %if.end174 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i315, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %output_width) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_unbind(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @drm_dev_unregister(ptr noundef %1) #11
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #11
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #11
  tail call void @malidp_se_irq_fini(ptr noundef %5) #11
  tail call void @malidp_de_irq_fini(ptr noundef %5) #11
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %1) #11
  %port = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  tail call void @of_node_put(ptr noundef %7) #11
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %port, align 4
  tail call void @drm_mode_config_cleanup(ptr noundef %1) #11
  %call.i27 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #11
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %9 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @malidp_runtime_pm_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dev_private, align 4
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @drm_dev_put(ptr noundef %1) #11
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_runtime_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %pclk = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %7) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %aclk = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aclk, align 4
  %call.i10 = tail call i32 @clk_prepare(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i14, label %clk_prepare_enable.exit.clk_prepare_enable.exit16_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit16_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit16

if.end.i14:                                       ; preds = %clk_prepare_enable.exit
  %call1.i12 = tail call i32 @clk_enable(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool2.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool2.not.i13, label %if.end.i14.clk_prepare_enable.exit16_crit_edge, label %if.then3.i15

if.end.i14.clk_prepare_enable.exit16_crit_edge:   ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit16

if.then3.i15:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %clk_prepare_enable.exit16

clk_prepare_enable.exit16:                        ; preds = %if.then3.i15, %if.end.i14.clk_prepare_enable.exit16_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit16_crit_edge
  %mclk = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk, align 4
  %call.i17 = tail call i32 @clk_prepare(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end.i21, label %clk_prepare_enable.exit16.clk_prepare_enable.exit23_crit_edge

clk_prepare_enable.exit16.clk_prepare_enable.exit23_crit_edge: ; preds = %clk_prepare_enable.exit16
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit23

if.end.i21:                                       ; preds = %clk_prepare_enable.exit16
  %call1.i19 = tail call i32 @clk_enable(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool2.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool2.not.i20, label %if.end.i21.clk_prepare_enable.exit23_crit_edge, label %if.then3.i22

if.end.i21.clk_prepare_enable.exit23_crit_edge:   ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit23

if.then3.i22:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %11) #11
  br label %clk_prepare_enable.exit23

clk_prepare_enable.exit23:                        ; preds = %if.then3.i22, %if.end.i21.clk_prepare_enable.exit23_crit_edge, %clk_prepare_enable.exit16.clk_prepare_enable.exit23_crit_edge
  %pm_suspended = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pm_suspended, align 4
  tail call void @malidp_de_irq_hw_init(ptr noundef %5) #11
  tail call void @malidp_se_irq_hw_init(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @malidp_has_sufficient_address_space(ptr nocapture noundef readonly %res, ptr noundef %dev_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %sub.i = add i32 %1, 1
  %add.i = sub i32 %sub.i, %3
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %dev_id, i32 0, i32 2
  %call1 = tail call ptr @strnstr(ptr noundef %compatible, ptr noundef nonnull @.str.24, i32 noundef 128) #11
  %tobool.not = icmp eq ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add.i)
  %cmp2 = icmp ugt i32 %add.i, 4095
  %retval.0 = select i1 %tobool.not, i1 %cmp, i1 %cmp2
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @malidp_is_compatible_hw_id(ptr nocapture noundef readonly %hwdev, ptr noundef %dev_id) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !132

entry.malidp_hw_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %entry.malidp_hw_read.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %5 = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %dev_id, i32 0, i32 2
  %call1 = tail call ptr @strnstr(ptr noundef %compatible, ptr noundef nonnull @.str.24, i32 noundef 128) #11
  %cmp2 = icmp ne ptr %call1, null
  %6 = xor i1 %cmp, %cmp2
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %cmp, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, ptr noundef %compatible, ptr noundef nonnull %cond) #11
  br label %cleanup32

if.else:                                          ; preds = %malidp_hw_read.exit
  br i1 %cmp2, label %if.else.cleanup32_crit_edge, label %if.then13

if.else.cleanup32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.then13:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %7 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %8 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pm_suspended.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i46 = icmp eq i8 %9, 0
  br i1 %tobool.not.i46, label %if.then13.malidp_hw_read.exit50_crit_edge, label %do.end.i47, !prof !132

if.then13.malidp_hw_read.exit50_crit_edge:        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit50

do.end.i47:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit50

malidp_hw_read.exit50:                            ; preds = %do.end.i47, %if.then13.malidp_hw_read.exit50_crit_edge
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %11, i32 49176
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #11, !srcloc !133
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %shr15 = lshr i32 %13, 16
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %shr15)
  %call23 = call ptr @strnstr(ptr noundef %compatible, ptr noundef nonnull %buf, i32 noundef 128) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end31.critedge

if.then25:                                        ; preds = %malidp_hw_read.exit50
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, ptr noundef %compatible, i32 noundef %shr15) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  br label %cleanup32

if.end31.critedge:                                ; preds = %malidp_hw_read.exit50
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  br label %cleanup32

cleanup32:                                        ; preds = %if.end31.critedge, %if.then25, %if.else.cleanup32_crit_edge, %if.then
  %retval.1 = phi i1 [ false, %if.then ], [ false, %if.then25 ], [ true, %if.end31.critedge ], [ true, %if.else.cleanup32_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @malidp_hw_read(ptr nocapture noundef readonly %hwdev, i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %pm_suspended = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !132

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !133
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @malidp_hw_write(ptr nocapture noundef readonly %hwdev, i32 noundef %value, i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %pm_suspended = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !132

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  %regs = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @malidp_init(ptr noundef %drm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @drmm_mode_config_init(ptr noundef %drm) #11
  %min_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %min_line_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min_line_size, align 4
  %conv = zext i8 %5 to i32
  %min_width = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 23
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %min_width, align 4
  %7 = load i8, ptr %min_line_size, align 4
  %conv2 = zext i8 %7 to i32
  %min_height = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 24
  %8 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %min_height, align 4
  %max_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %max_line_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_line_size, align 2
  %conv4 = zext i16 %10 to i32
  %max_width = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 25
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv4, ptr %max_width, align 4
  %12 = load i16, ptr %max_line_size, align 2
  %conv7 = zext i16 %12 to i32
  %max_height = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 26
  %13 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7, ptr %max_height, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 27
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @malidp_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 103
  %15 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @malidp_mode_config_helpers, ptr %helper_private, align 4
  %call11 = tail call i32 @malidp_crtc_init(ptr noundef %drm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %entry.crtc_fail_crit_edge

entry.crtc_fail_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %crtc_fail

if.end:                                           ; preds = %entry
  %call12 = tail call i32 @malidp_mw_connector_init(ptr noundef %drm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end.crtc_fail_crit_edge

if.end.crtc_fail_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %crtc_fail

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

crtc_fail:                                        ; preds = %if.end.crtc_fail_crit_edge, %entry.crtc_fail_crit_edge
  %ret.0 = phi i32 [ %call11, %entry.crtc_fail_crit_edge ], [ %call12, %if.end.crtc_fail_crit_edge ]
  tail call void @drm_mode_config_cleanup(ptr noundef %drm) #11
  br label %cleanup

cleanup:                                          ; preds = %crtc_fail, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %crtc_fail ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @malidp_irq_init(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call2 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @malidp_de_irq_init(ptr noundef %1, i32 noundef %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @malidp_se_irq_init(ptr noundef %1, i32 noundef %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @malidp_de_irq_fini(ptr noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.then5 ], [ %call10, %if.then12 ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @malidp_se_irq_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @malidp_de_irq_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_runtime_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %in_config_mode = getelementptr inbounds %struct.malidp_hw, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %in_config_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_config_mode, align 4
  %call2 = tail call zeroext i1 %9(ptr noundef %5) #11
  br i1 %call2, label %entry.if.end_crit_edge, label %do.end, !prof !132

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 677, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @malidp_se_irq_fini(ptr noundef %5) #11
  tail call void @malidp_de_irq_fini(ptr noundef %5) #11
  %pm_suspended = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %pm_suspended, align 4
  %mclk = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %12) #11
  tail call void @clk_unprepare(ptr noundef %12) #11
  %aclk = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %14) #11
  tail call void @clk_unprepare(ptr noundef %14) #11
  %pclk = getelementptr inbounds %struct.malidp_hw_device, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %16) #11
  tail call void @clk_unprepare(ptr noundef %16) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_debugfs_init(ptr nocapture noundef readonly %minor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %de_errors = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %de_errors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %de_errors, align 8
  %last_error_status.i = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %last_error_status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_error_status.i, align 4
  %last_error_vblank.i = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %last_error_vblank.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %last_error_vblank.i, align 8
  %se_errors = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %se_errors to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %se_errors, align 8
  %last_error_status.i7 = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %last_error_status.i7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %last_error_status.i7, align 4
  %last_error_vblank.i8 = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 8, i32 2
  %9 = ptrtoint ptr %last_error_vblank.i8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %last_error_vblank.i8, align 8
  %errors_lock = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %errors_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @malidp_debugfs_init.__key, i16 noundef signext 3) #11
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %10 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_root, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 420, ptr noundef %11, ptr noundef %13, ptr noundef nonnull @malidp_debugfs_fops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_dumb_create(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus_align_bytes.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %bus_align_bytes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bus_align_bytes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp.i = icmp eq i8 %7, 8
  %shl.i = shl i8 %7, 2
  %retval.0.i = select i1 %cmp.i, i8 8, i8 %shl.i
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %10 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bpp, align 8
  %mul = mul i32 %11, %9
  %sub = add i32 %mul, 7
  %div11 = lshr i32 %sub, 3
  %conv = zext i8 %retval.0.i to i32
  %sub1 = add nsw i32 %conv, -1
  %add2 = add nsw i32 %sub1, %div11
  %neg = sub nsw i32 0, %conv
  %and = and i32 %add2, %neg
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %12 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %pitch, align 4
  %call5 = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #11
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_debugfs_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %ubuf, i32 noundef returned %len, ptr nocapture noundef readnone %offp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %errors_lock = getelementptr inbounds %struct.malidp_drm, ptr %5, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %errors_lock) #11
  %de_errors = getelementptr inbounds %struct.malidp_drm, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %de_errors to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %de_errors, align 8
  %last_error_status.i = getelementptr inbounds %struct.malidp_drm, ptr %5, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %last_error_status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_error_status.i, align 4
  %last_error_vblank.i = getelementptr inbounds %struct.malidp_drm, ptr %5, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %last_error_vblank.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %last_error_vblank.i, align 8
  %se_errors = getelementptr inbounds %struct.malidp_drm, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %se_errors to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %se_errors, align 8
  %last_error_status.i9 = getelementptr inbounds %struct.malidp_drm, ptr %5, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %last_error_status.i9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %last_error_status.i9, align 4
  %last_error_vblank.i10 = getelementptr inbounds %struct.malidp_drm, ptr %5, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %last_error_vblank.i10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %last_error_vblank.i10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %errors_lock, i32 noundef %call2) #11
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @malidp_show_stats, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_show_stats(ptr noundef %m, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %errors_lock = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %errors_lock) #11
  %de_errors5 = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %de_errors5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %de_errors.sroa.0.0.copyload = load i64, ptr %de_errors5, align 8
  %de_errors.sroa.6.0.de_errors5.sroa_idx = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %de_errors.sroa.6.0.de_errors5.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %5)
  %de_errors.sroa.6.0.copyload = load i64, ptr %de_errors.sroa.6.0.de_errors5.sroa_idx, align 8
  %se_errors6 = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %se_errors6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %se_errors.sroa.0.0.copyload = load i64, ptr %se_errors6, align 8
  %se_errors.sroa.6.0.se_errors6.sroa_idx = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %se_errors.sroa.6.0.se_errors6.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %7)
  %se_errors.sroa.6.0.copyload = load i64, ptr %se_errors.sroa.6.0.se_errors6.sroa_idx, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %errors_lock, i32 noundef %call2) #11
  %error_stats.sroa.0.0.extract.shift.i = lshr i64 %de_errors.sroa.0.0.copyload, 32
  %error_stats.sroa.0.0.extract.trunc.i = trunc i64 %error_stats.sroa.0.0.extract.shift.i to i32
  %error_stats.sroa.2.0.extract.trunc.i = trunc i64 %de_errors.sroa.0.0.copyload to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %error_stats.sroa.0.0.extract.trunc.i) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19, i32 noundef %error_stats.sroa.2.0.extract.trunc.i) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, i64 noundef %de_errors.sroa.6.0.copyload) #11
  %error_stats.sroa.0.0.extract.shift.i15 = lshr i64 %se_errors.sroa.0.0.copyload, 32
  %error_stats.sroa.0.0.extract.trunc.i16 = trunc i64 %error_stats.sroa.0.0.extract.shift.i15 to i32
  %error_stats.sroa.2.0.extract.trunc.i17 = trunc i64 %se_errors.sroa.0.0.copyload to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %error_stats.sroa.0.0.extract.trunc.i16) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %error_stats.sroa.2.0.extract.trunc.i17) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i64 noundef %se_errors.sroa.6.0.copyload) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @malidp_de_irq_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @malidp_se_irq_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @malidp_crtc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @malidp_mw_connector_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @malidp_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %0 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %pixel_format.i.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %2 = ptrtoint ptr %pixel_format.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format.i.i, align 4
  %call.i.i = tail call zeroext i1 @malidp_format_mod_supported(ptr noundef %dev, i32 noundef %3, i64 noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i.i:                                       ; preds = %if.then
  %offsets.i.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7
  %4 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offsets.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp3.not.i.i, label %if.end6.i.i, label %if.end.i.i.return.sink.split.i.i_crit_edge

if.end.i.i.return.sink.split.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %6 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %modifier, align 8
  %and.i.i = and i64 %7, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and.i.i)
  %cond.i.i = icmp eq i64 %and.i.i, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.end6.i.i.return.sink.split.i.i_crit_edge

if.end6.i.i.return.sink.split.i.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i.i

sw.bb.i.i:                                        ; preds = %if.end6.i.i
  %width.i.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %8 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width.i.i, align 4
  %rem.i.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %sw.bb.i.i.return.sink.split.i.i_crit_edge

sw.bb.i.i.return.sink.split.i.i_crit_edge:        ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i.i
  %height.i.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %10 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i.i, align 8
  %rem9.i.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9.i.i)
  %tobool10.not.i.i = icmp eq i32 %rem9.i.i, 0
  br i1 %tobool10.not.i.i, label %sw.bb.i10.i, label %lor.lhs.false.i.i.return.sink.split.i.i_crit_edge

lor.lhs.false.i.i.return.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %lor.lhs.false.i.i.return.sink.split.i.i_crit_edge, %sw.bb.i.i.return.sink.split.i.i_crit_edge, %if.end6.i.i.return.sink.split.i.i_crit_edge, %if.end.i.i.return.sink.split.i.i_crit_edge
  %.str.33.sink.i.i = phi ptr [ @.str.31, %if.end.i.i.return.sink.split.i.i_crit_edge ], [ @.str.32, %lor.lhs.false.i.i.return.sink.split.i.i_crit_edge ], [ @.str.32, %sw.bb.i.i.return.sink.split.i.i_crit_edge ], [ @.str.33, %if.end6.i.i.return.sink.split.i.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.33.sink.i.i) #11
  br label %return

sw.bb.i10.i:                                      ; preds = %lor.lhs.false.i.i
  %call.i7.i = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #11
  %12 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width.i.i, align 4
  %div54.i.i = lshr i32 %13, 4
  %14 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i.i, align 8
  %div155.i.i = lshr i32 %15, 4
  %mul.i.i = mul i32 %div155.i.i, %div54.i.i
  %16 = ptrtoint ptr %call.i7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i7.i, align 4
  %call2.i.i = tail call i32 @malidp_format_get_bpp(i32 noundef %17) #11
  %18 = shl i32 %call2.i.i, 5
  %div556.i.i = and i32 %18, 536870880
  %mul6.i.i = shl i32 %mul.i.i, 4
  %add.i.i = add i32 %mul6.i.i, 127
  %and7.i.i = and i32 %add.i.i, -128
  %add8.i.i = add nuw nsw i32 %div556.i.i, 127
  %and9.i.i = and i32 %add8.i.i, 1073741696
  %mul10.i.i = mul i32 %and9.i.i, %mul.i.i
  %add11.i.i = add i32 %mul10.i.i, %and7.i.i
  %19 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width.i.i, align 4
  %mul13.i.i = mul i32 %20, %call2.i.i
  %pitches.i.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %21 = ptrtoint ptr %pitches.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pitches.i.i, align 4
  %mul15.i.i = shl i32 %22, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i.i, i32 %mul15.i.i)
  %cmp.not.i.i = icmp eq i32 %mul13.i.i, %mul15.i.i
  br i1 %cmp.not.i.i, label %if.end.i12.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %mul15.i.i, i32 noundef %20, i32 noundef %call2.i.i) #11
  br label %return

if.end.i12.i:                                     ; preds = %sw.bb.i10.i
  %handles.i.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %23 = ptrtoint ptr %handles.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handles.i.i, align 4
  %call21.i.i = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %24) #11
  %tobool.not.i11.i = icmp eq ptr %call21.i.i, null
  br i1 %tobool.not.i11.i, label %if.then22.i.i, label %if.end23.i.i

if.then22.i.i:                                    ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.36) #11
  br label %return

if.end23.i.i:                                     ; preds = %if.end.i12.i
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call21.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add11.i.i)
  %cmp24.i.i = icmp ult i32 %26, %add11.i.i
  br i1 %cmp24.i.i, label %if.then.i.i.i, label %if.then.i61.i.i

if.then.i.i.i:                                    ; preds = %if.end23.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %26, i32 noundef %add11.i.i) #11
  %call.i.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call21.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr nonnull %call21.i.i, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call21.i.i, ptr nonnull %call21.i.i, i32 1, ptr nonnull elementtype(i32) %call21.i.i) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !132

if.end5.i.i.i.i.i.i.i.i.return_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call21.i.i, i32 noundef 3) #11
  br label %return

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !139
  tail call void @drm_gem_object_free(ptr noundef nonnull %call21.i.i) #11
  br label %return

if.then.i61.i.i:                                  ; preds = %if.end23.i.i
  %call.i.i.i.i.i.i.i.i58.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call21.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr nonnull %call21.i.i, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call21.i.i, ptr nonnull %call21.i.i, i32 1, ptr nonnull elementtype(i32) %call21.i.i) #11, !srcloc !138
  %asmresult.i.i.i.i.i.i.i.i.i59.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i59.i.i)
  %cmp.i.i.i.i.i.i60.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i59.i.i, 1
  br i1 %cmp.i.i.i.i.i.i60.i.i, label %if.then.i.i.i65.i.i, label %if.end5.i.i.i.i.i.i63.i.i

if.end5.i.i.i.i.i.i63.i.i:                        ; preds = %if.then.i61.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i59.i.i)
  %.not.i.i.i.i.i.i62.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i59.i.i, 0
  br i1 %.not.i.i.i.i.i.i62.i.i, label %if.end5.i.i.i.i.i.i63.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i.i.i64.i.i, !prof !132

if.end5.i.i.i.i.i.i63.i.i.if.end3_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then10.i.i.i.i.i.i64.i.i:                      ; preds = %if.end5.i.i.i.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call21.i.i, i32 noundef 3) #11
  br label %if.end3

if.then.i.i.i65.i.i:                              ; preds = %if.then.i61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !139
  tail call void @drm_gem_object_free(ptr noundef nonnull %call21.i.i) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then.i.i.i65.i.i, %if.then10.i.i.i.i.i.i64.i.i, %if.end5.i.i.i.i.i.i63.i.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) #11
  br label %return

return:                                           ; preds = %if.end3, %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.return_crit_edge, %if.then22.i.i, %if.then.i.i, %return.sink.split.i.i, %if.then.return_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end3 ], [ inttoptr (i32 -22 to ptr), %if.then.i.i ], [ inttoptr (i32 -22 to ptr), %if.then22.i.i ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.i.i.i.return_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.return_crit_edge ], [ inttoptr (i32 -22 to ptr), %return.sink.split.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @malidp_format_mod_supported(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @malidp_format_get_bpp(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_atomic_commit_tail(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i1 @dma_fence_begin_signalling() #11
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %config_valid = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %config_valid, i32 noundef 4) #11
  %6 = ptrtoint ptr %config_valid to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 208, ptr %config_valid, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %set_config_valid = getelementptr inbounds %struct.malidp_hw, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %set_config_valid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_config_valid, align 4
  tail call void %12(ptr noundef %8, i8 noundef zeroext 0) #11
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %state) #11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %num_crtc83 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 30, i32 19
  %15 = ptrtoint ptr %num_crtc83 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_crtc83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp84 = icmp sgt i32 %16, 0
  br i1 %cmp84, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %18, i32 %i.085
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_crtcs_state, ptr %18, i32 %i.085, i32 2
  %21 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %old_state, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 -8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %20, i32 0, i32 22
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state.i, align 4
  %color_mgmt_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %color_mgmt_changed.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %color_mgmt_changed.i, align 2
  %28 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %bf.cast.not.i = icmp eq i8 %28, 0
  br i1 %bf.cast.not.i, label %land.lhs.true.malidp_atomic_commit_update_gamma.exit_crit_edge, label %if.end.i

land.lhs.true.malidp_atomic_commit_update_gamma.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_atomic_commit_update_gamma.exit

if.end.i:                                         ; preds = %land.lhs.true
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gamma_lut.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %24, i32 0, i32 9
  %31 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i.i, label %if.then2.i.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !132

if.then2.i.malidp_hw_read.exit.i.i_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %if.then2.i.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %36 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i2.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i2.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_clearbits.exit.i_crit_edge, label %do.end.i3.i.i, !prof !132

malidp_hw_read.exit.i.i.malidp_hw_clearbits.exit.i_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_clearbits.exit.i

do.end.i3.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_clearbits.exit.i

malidp_hw_clearbits.exit.i:                       ; preds = %do.end.i3.i.i, %malidp_hw_read.exit.i.i.malidp_hw_clearbits.exit.i_crit_edge
  %38 = and i32 %35, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %40, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %38) #11, !srcloc !136
  br label %malidp_atomic_commit_update_gamma.exit

if.else.i:                                        ; preds = %if.end.i
  %gamma_lut7.i = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 12
  %41 = ptrtoint ptr %gamma_lut7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gamma_lut7.i, align 4
  %tobool8.not.i = icmp eq ptr %42, null
  br i1 %tobool8.not.i, label %if.else.i.if.then14.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then14.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %30, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.not.i = icmp eq i32 %44, %46
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end15.i_crit_edge, label %lor.lhs.false.i.if.then14.i_crit_edge

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

lor.lhs.false.i.if.end15.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then14.i:                                      ; preds = %lor.lhs.false.i.if.then14.i_crit_edge, %if.else.i.if.then14.i_crit_edge
  %gamma_coeffs.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %26, i32 0, i32 1
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %24, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 4
  %conv.i.i = zext i16 %50 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 48
  %pm_suspended.i.i26.i = getelementptr inbounds %struct.malidp_hw_device, ptr %24, i32 0, i32 9
  %51 = ptrtoint ptr %pm_suspended.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pm_suspended.i.i26.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i27.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i27.i, label %if.then14.i.malidp_hw_write.exit.i.i_crit_edge, label %do.end.i.i28.i, !prof !132

if.then14.i.malidp_hw_write.exit.i.i_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit.i.i

do.end.i.i28.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit.i.i

malidp_hw_write.exit.i.i:                         ; preds = %do.end.i.i28.i, %if.then14.i.malidp_hw_write.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %regs.i.i29.i = getelementptr inbounds %struct.malidp_hw_device, ptr %24, i32 0, i32 1
  %53 = ptrtoint ptr %regs.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i29.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %54, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30.i, i32 1792) #11, !srcloc !136
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %malidp_hw_write.exit17.i.i.for.body.i.i_crit_edge, %malidp_hw_write.exit.i.i
  %i.018.i.i = phi i32 [ 0, %malidp_hw_write.exit.i.i ], [ %inc.i.i, %malidp_hw_write.exit17.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %gamma_coeffs.i, i32 %i.018.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i, align 4
  %57 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %24, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 4
  %conv5.i.i = zext i16 %60 to i32
  %add6.i.i = add nuw nsw i32 %conv5.i.i, 52
  %61 = ptrtoint ptr %pm_suspended.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pm_suspended.i.i26.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i13.i.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i13.i.i, label %for.body.i.i.malidp_hw_write.exit17.i.i_crit_edge, label %do.end.i14.i.i, !prof !132

for.body.i.i.malidp_hw_write.exit17.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit17.i.i

do.end.i14.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit17.i.i

malidp_hw_write.exit17.i.i:                       ; preds = %do.end.i14.i.i, %for.body.i.i.malidp_hw_write.exit17.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %63 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  %64 = ptrtoint ptr %regs.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i.i29.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %65, i32 %add6.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %63) #11, !srcloc !136
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %malidp_hw_write.exit17.i.i.if.end15.i_crit_edge, label %malidp_hw_write.exit17.i.i.for.body.i.i_crit_edge

malidp_hw_write.exit17.i.i.for.body.i.i_crit_edge: ; preds = %malidp_hw_write.exit17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

malidp_hw_write.exit17.i.i.if.end15.i_crit_edge:  ; preds = %malidp_hw_write.exit17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %malidp_hw_write.exit17.i.i.if.end15.i_crit_edge, %lor.lhs.false.i.if.end15.i_crit_edge
  %pm_suspended.i.i31.i = getelementptr inbounds %struct.malidp_hw_device, ptr %24, i32 0, i32 9
  %66 = ptrtoint ptr %pm_suspended.i.i31.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pm_suspended.i.i31.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i32.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.i32.i, label %if.end15.i.malidp_hw_read.exit.i37.i_crit_edge, label %do.end.i.i33.i, !prof !132

if.end15.i.malidp_hw_read.exit.i37.i_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit.i37.i

do.end.i.i33.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit.i37.i

malidp_hw_read.exit.i37.i:                        ; preds = %do.end.i.i33.i, %if.end15.i.malidp_hw_read.exit.i37.i_crit_edge
  %regs.i.i34.i = getelementptr inbounds %struct.malidp_hw_device, ptr %24, i32 0, i32 1
  %68 = ptrtoint ptr %regs.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i34.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %69, i32 32
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.i) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %71 = ptrtoint ptr %pm_suspended.i.i31.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pm_suspended.i.i31.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i2.i36.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i2.i36.i, label %malidp_hw_read.exit.i37.i.malidp_hw_setbits.exit.i_crit_edge, label %do.end.i3.i38.i, !prof !132

malidp_hw_read.exit.i37.i.malidp_hw_setbits.exit.i_crit_edge: ; preds = %malidp_hw_read.exit.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_setbits.exit.i

do.end.i3.i38.i:                                  ; preds = %malidp_hw_read.exit.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_setbits.exit.i

malidp_hw_setbits.exit.i:                         ; preds = %do.end.i3.i38.i, %malidp_hw_read.exit.i37.i.malidp_hw_setbits.exit.i_crit_edge
  %73 = or i32 %70, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %74 = ptrtoint ptr %regs.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i34.i, align 4
  %add.ptr.i5.i39.i = getelementptr i8, ptr %75, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i39.i, i32 %73) #11, !srcloc !136
  br label %malidp_atomic_commit_update_gamma.exit

malidp_atomic_commit_update_gamma.exit:           ; preds = %malidp_hw_setbits.exit.i, %malidp_hw_clearbits.exit.i, %land.lhs.true.malidp_atomic_commit_update_gamma.exit_crit_edge
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 8
  %78 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %state.i, align 4
  %color_mgmt_changed.i44 = getelementptr inbounds %struct.drm_crtc_state, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %color_mgmt_changed.i44 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i45 = load i8, ptr %color_mgmt_changed.i44, align 2
  %81 = and i8 %bf.load.i45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %bf.cast.not.i46 = icmp eq i8 %81, 0
  br i1 %bf.cast.not.i46, label %malidp_atomic_commit_update_gamma.exit.malidp_atomic_commit_update_coloradj.exit_crit_edge, label %if.end.i48

malidp_atomic_commit_update_gamma.exit.malidp_atomic_commit_update_coloradj.exit_crit_edge: ; preds = %malidp_atomic_commit_update_gamma.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_atomic_commit_update_coloradj.exit

if.end.i48:                                       ; preds = %malidp_atomic_commit_update_gamma.exit
  %ctm.i = getelementptr inbounds %struct.drm_crtc_state, ptr %79, i32 0, i32 11
  %82 = ptrtoint ptr %ctm.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctm.i, align 4
  %tobool.not.i47 = icmp eq ptr %83, null
  br i1 %tobool.not.i47, label %if.then2.i51, label %if.else.i61

if.then2.i51:                                     ; preds = %if.end.i48
  %pm_suspended.i.i.i49 = getelementptr inbounds %struct.malidp_hw_device, ptr %77, i32 0, i32 9
  %84 = ptrtoint ptr %pm_suspended.i.i.i49 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pm_suspended.i.i.i49, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i.i50 = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i.i50, label %if.then2.i51.malidp_hw_read.exit.i.i56_crit_edge, label %do.end.i.i.i52, !prof !132

if.then2.i51.malidp_hw_read.exit.i.i56_crit_edge: ; preds = %if.then2.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit.i.i56

do.end.i.i.i52:                                   ; preds = %if.then2.i51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit.i.i56

malidp_hw_read.exit.i.i56:                        ; preds = %do.end.i.i.i52, %if.then2.i51.malidp_hw_read.exit.i.i56_crit_edge
  %regs.i.i.i53 = getelementptr inbounds %struct.malidp_hw_device, ptr %77, i32 0, i32 1
  %86 = ptrtoint ptr %regs.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i.i.i53, align 4
  %add.ptr.i.i.i54 = getelementptr i8, ptr %87, i32 32
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i54) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %89 = ptrtoint ptr %pm_suspended.i.i.i49 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pm_suspended.i.i.i49, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i2.i.i55 = icmp eq i8 %90, 0
  br i1 %tobool.not.i2.i.i55, label %malidp_hw_read.exit.i.i56.malidp_hw_clearbits.exit.i59_crit_edge, label %do.end.i3.i.i57, !prof !132

malidp_hw_read.exit.i.i56.malidp_hw_clearbits.exit.i59_crit_edge: ; preds = %malidp_hw_read.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_clearbits.exit.i59

do.end.i3.i.i57:                                  ; preds = %malidp_hw_read.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_clearbits.exit.i59

malidp_hw_clearbits.exit.i59:                     ; preds = %do.end.i3.i.i57, %malidp_hw_read.exit.i.i56.malidp_hw_clearbits.exit.i59_crit_edge
  %91 = and i32 %88, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %regs.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i.i53, align 4
  %add.ptr.i5.i.i58 = getelementptr i8, ptr %93, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i58, i32 %91) #11, !srcloc !136
  br label %malidp_atomic_commit_update_coloradj.exit

if.else.i61:                                      ; preds = %if.end.i48
  %ctm7.i = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 11
  %94 = ptrtoint ptr %ctm7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctm7.i, align 4
  %tobool8.not.i60 = icmp eq ptr %95, null
  br i1 %tobool8.not.i60, label %if.else.i61.if.then14.i64_crit_edge, label %lor.lhs.false.i63

if.else.i61.if.then14.i64_crit_edge:              ; preds = %if.else.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i64

lor.lhs.false.i63:                                ; preds = %if.else.i61
  %96 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %83, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp.not.i62 = icmp eq i32 %97, %99
  br i1 %cmp.not.i62, label %lor.lhs.false.i63.if.end17.i_crit_edge, label %lor.lhs.false.i63.if.then14.i64_crit_edge

lor.lhs.false.i63.if.then14.i64_crit_edge:        ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i64

lor.lhs.false.i63.if.end17.i_crit_edge:           ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then14.i64:                                    ; preds = %lor.lhs.false.i63.if.then14.i64_crit_edge, %if.else.i61.if.then14.i64_crit_edge
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %77, i32 0, i32 9
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %77, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %malidp_hw_write.exit.i.for.body.i_crit_edge, %if.then14.i64
  %i.042.i = phi i32 [ 0, %if.then14.i64 ], [ %inc.i, %malidp_hw_write.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.malidp_crtc_state, ptr %79, i32 0, i32 2, i32 %i.042.i
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i, align 4
  %102 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %77, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %103, align 4
  %conv.i = zext i16 %105 to i32
  %mul.i = shl i32 %i.042.i, 2
  %add16.i = add i32 %mul.i, %conv.i
  %106 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pm_suspended.i.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i.i = icmp eq i8 %107, 0
  br i1 %tobool.not.i.i, label %for.body.i.malidp_hw_write.exit.i_crit_edge, label %do.end.i.i, !prof !132

for.body.i.malidp_hw_write.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit.i

malidp_hw_write.exit.i:                           ; preds = %do.end.i.i, %for.body.i.malidp_hw_write.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %108 = tail call i32 @llvm.bswap.i32(i32 %101) #11
  %109 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %108) #11, !srcloc !136
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %malidp_hw_write.exit.i.if.end17.i_crit_edge, label %malidp_hw_write.exit.i.for.body.i_crit_edge

malidp_hw_write.exit.i.for.body.i_crit_edge:      ; preds = %malidp_hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

malidp_hw_write.exit.i.if.end17.i_crit_edge:      ; preds = %malidp_hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %malidp_hw_write.exit.i.if.end17.i_crit_edge, %lor.lhs.false.i63.if.end17.i_crit_edge
  %pm_suspended.i.i33.i = getelementptr inbounds %struct.malidp_hw_device, ptr %77, i32 0, i32 9
  %111 = ptrtoint ptr %pm_suspended.i.i33.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %pm_suspended.i.i33.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i.i34.i = icmp eq i8 %112, 0
  br i1 %tobool.not.i.i34.i, label %if.end17.i.malidp_hw_read.exit.i39.i_crit_edge, label %do.end.i.i35.i, !prof !132

if.end17.i.malidp_hw_read.exit.i39.i_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit.i39.i

do.end.i.i35.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit.i39.i

malidp_hw_read.exit.i39.i:                        ; preds = %do.end.i.i35.i, %if.end17.i.malidp_hw_read.exit.i39.i_crit_edge
  %regs.i.i36.i = getelementptr inbounds %struct.malidp_hw_device, ptr %77, i32 0, i32 1
  %113 = ptrtoint ptr %regs.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i36.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %114, i32 32
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %116 = ptrtoint ptr %pm_suspended.i.i33.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pm_suspended.i.i33.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i2.i38.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i2.i38.i, label %malidp_hw_read.exit.i39.i.malidp_hw_setbits.exit.i65_crit_edge, label %do.end.i3.i40.i, !prof !132

malidp_hw_read.exit.i39.i.malidp_hw_setbits.exit.i65_crit_edge: ; preds = %malidp_hw_read.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_setbits.exit.i65

do.end.i3.i40.i:                                  ; preds = %malidp_hw_read.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_setbits.exit.i65

malidp_hw_setbits.exit.i65:                       ; preds = %do.end.i3.i40.i, %malidp_hw_read.exit.i39.i.malidp_hw_setbits.exit.i65_crit_edge
  %118 = or i32 %115, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %119 = ptrtoint ptr %regs.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i.i36.i, align 4
  %add.ptr.i5.i41.i = getelementptr i8, ptr %120, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i41.i, i32 %118) #11, !srcloc !136
  br label %malidp_atomic_commit_update_coloradj.exit

malidp_atomic_commit_update_coloradj.exit:        ; preds = %malidp_hw_setbits.exit.i65, %malidp_hw_clearbits.exit.i59, %malidp_atomic_commit_update_gamma.exit.malidp_atomic_commit_update_coloradj.exit_crit_edge
  %121 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state.i, align 4
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i, align 8
  %scaler_config.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %se_base.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %se_base.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %se_base.i, align 2
  %conv.i67 = zext i16 %128 to i32
  %features.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %126, i32 0, i32 4
  %129 = ptrtoint ptr %features.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %features.i, align 4
  %131 = and i8 %130, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i68 = icmp eq i8 %131, 0
  %cond.i = select i1 %tobool.not.i68, i32 12, i32 16
  %add.i = add nuw nsw i32 %cond.i, %conv.i67
  %132 = ptrtoint ptr %scaler_config.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load.i69 = load i8, ptr %scaler_config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i69)
  %tobool13.not.i = icmp sgt i8 %bf.load.i69, -1
  br i1 %tobool13.not.i, label %if.then.i, label %if.end.i76

if.then.i:                                        ; preds = %malidp_atomic_commit_update_coloradj.exit
  %pm_suspended.i.i70 = getelementptr inbounds %struct.malidp_hw_device, ptr %124, i32 0, i32 9
  %133 = ptrtoint ptr %pm_suspended.i.i70 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %pm_suspended.i.i70, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i.i71 = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i71, label %if.then.i.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i72, !prof !132

if.then.i.malidp_hw_read.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit.i

do.end.i.i72:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i72, %if.then.i.malidp_hw_read.exit.i_crit_edge
  %regs.i.i73 = getelementptr inbounds %struct.malidp_hw_device, ptr %124, i32 0, i32 1
  %135 = ptrtoint ptr %regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i.i73, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %136, i32 %add.i
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %138 = and i32 %137, -16777217
  %139 = ptrtoint ptr %pm_suspended.i.i70 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %pm_suspended.i.i70, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i96.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i96.i, label %malidp_hw_read.exit.i.malidp_hw_write.exit.i75_crit_edge, label %do.end.i97.i, !prof !132

malidp_hw_read.exit.i.malidp_hw_write.exit.i75_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit.i75

do.end.i97.i:                                     ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit.i75

malidp_hw_write.exit.i75:                         ; preds = %do.end.i97.i, %malidp_hw_read.exit.i.malidp_hw_write.exit.i75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %141 = ptrtoint ptr %regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i73, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %142, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %138) #11, !srcloc !136
  br label %for.inc

if.end.i76:                                       ; preds = %malidp_atomic_commit_update_coloradj.exit
  %add12.i = add nuw nsw i32 %add.i, 36
  %add11.i = add nuw nsw i32 %add.i, 20
  %scaler_config7.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %22, i32 0, i32 3
  %se_set_scaling_coeffs.i = getelementptr inbounds %struct.malidp_hw, ptr %126, i32 0, i32 8
  %143 = ptrtoint ptr %se_set_scaling_coeffs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %se_set_scaling_coeffs.i, align 4
  %call16.i = tail call i32 %144(ptr noundef %124, ptr noundef %scaler_config.i, ptr noundef %scaler_config7.i) #11
  %pm_suspended.i100.i = getelementptr inbounds %struct.malidp_hw_device, ptr %124, i32 0, i32 9
  %145 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i101.i = icmp eq i8 %146, 0
  br i1 %tobool.not.i101.i, label %if.end.i76.malidp_hw_read.exit105.i_crit_edge, label %do.end.i102.i, !prof !132

if.end.i76.malidp_hw_read.exit105.i_crit_edge:    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_read.exit105.i

do.end.i102.i:                                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 261, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_read.exit105.i

malidp_hw_read.exit105.i:                         ; preds = %do.end.i102.i, %if.end.i76.malidp_hw_read.exit105.i_crit_edge
  %regs.i103.i = getelementptr inbounds %struct.malidp_hw_device, ptr %124, i32 0, i32 1
  %147 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %148, i32 %add.i
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i) #11, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !134
  %150 = and i32 %149, -520093697
  %151 = ptrtoint ptr %scaler_config.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load19.i = load i8, ptr %scaler_config.i, align 4
  %152 = and i8 %bf.load19.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool22.not.i = icmp eq i8 %152, 0
  %cond23.i = select i1 %tobool22.not.i, i32 0, i32 12
  %153 = or i32 %150, 318767104
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #11
  %or25.i = or i32 %cond23.i, %154
  %155 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i107.i = icmp eq i8 %156, 0
  br i1 %tobool.not.i107.i, label %malidp_hw_read.exit105.i.malidp_hw_write.exit111.i_crit_edge, label %do.end.i108.i, !prof !132

malidp_hw_read.exit105.i.malidp_hw_write.exit111.i_crit_edge: ; preds = %malidp_hw_read.exit105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit111.i

do.end.i108.i:                                    ; preds = %malidp_hw_read.exit105.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit111.i

malidp_hw_write.exit111.i:                        ; preds = %do.end.i108.i, %malidp_hw_read.exit105.i.malidp_hw_write.exit111.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %157 = tail call i32 @llvm.bswap.i32(i32 %or25.i) #11
  %158 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %159, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %157) #11, !srcloc !136
  %input_h.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 3
  %160 = ptrtoint ptr %input_h.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %input_h.i, align 4
  %162 = and i16 %161, 8191
  %and27.i = zext i16 %162 to i32
  %shl.i = shl nuw nsw i32 %and27.i, 16
  %input_w.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 2
  %163 = ptrtoint ptr %input_w.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %input_w.i, align 2
  %165 = and i16 %164, 8191
  %and29.i = zext i16 %165 to i32
  %or31.i = or i32 %shl.i, %and29.i
  %166 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i113.i = icmp eq i8 %167, 0
  br i1 %tobool.not.i113.i, label %malidp_hw_write.exit111.i.malidp_hw_write.exit117.i_crit_edge, label %do.end.i114.i, !prof !132

malidp_hw_write.exit111.i.malidp_hw_write.exit117.i_crit_edge: ; preds = %malidp_hw_write.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit117.i

do.end.i114.i:                                    ; preds = %malidp_hw_write.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit117.i

malidp_hw_write.exit117.i:                        ; preds = %do.end.i114.i, %malidp_hw_write.exit111.i.malidp_hw_write.exit117.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %168 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #11
  %169 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %170, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116.i, i32 %168) #11, !srcloc !136
  %output_h.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 5
  %171 = ptrtoint ptr %output_h.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %output_h.i, align 4
  %173 = and i16 %172, 8191
  %and34.i = zext i16 %173 to i32
  %shl35.i = shl nuw nsw i32 %and34.i, 16
  %output_w.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 4
  %174 = ptrtoint ptr %output_w.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %output_w.i, align 2
  %176 = and i16 %175, 8191
  %and37.i = zext i16 %176 to i32
  %or39.i = or i32 %shl35.i, %and37.i
  %add40.i = add nuw nsw i32 %add.i, 24
  %177 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.not.i119.i = icmp eq i8 %178, 0
  br i1 %tobool.not.i119.i, label %malidp_hw_write.exit117.i.malidp_hw_write.exit123.i_crit_edge, label %do.end.i120.i, !prof !132

malidp_hw_write.exit117.i.malidp_hw_write.exit123.i_crit_edge: ; preds = %malidp_hw_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit123.i

do.end.i120.i:                                    ; preds = %malidp_hw_write.exit117.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit123.i

malidp_hw_write.exit123.i:                        ; preds = %do.end.i120.i, %malidp_hw_write.exit117.i.malidp_hw_write.exit123.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %179 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #11
  %180 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %181, i32 %add40.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 %179) #11, !srcloc !136
  %h_init_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 6
  %182 = ptrtoint ptr %h_init_phase.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %h_init_phase.i, align 4
  %184 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i125.i = icmp eq i8 %185, 0
  br i1 %tobool.not.i125.i, label %malidp_hw_write.exit123.i.malidp_hw_write.exit129.i_crit_edge, label %do.end.i126.i, !prof !132

malidp_hw_write.exit123.i.malidp_hw_write.exit129.i_crit_edge: ; preds = %malidp_hw_write.exit123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit129.i

do.end.i126.i:                                    ; preds = %malidp_hw_write.exit123.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit129.i

malidp_hw_write.exit129.i:                        ; preds = %do.end.i126.i, %malidp_hw_write.exit123.i.malidp_hw_write.exit129.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %186 = tail call i32 @llvm.bswap.i32(i32 %183) #11
  %187 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %188, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %186) #11, !srcloc !136
  %h_delta_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 7
  %189 = ptrtoint ptr %h_delta_phase.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %h_delta_phase.i, align 4
  %add42.i = add nuw nsw i32 %add.i, 40
  %191 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i131.i = icmp eq i8 %192, 0
  br i1 %tobool.not.i131.i, label %malidp_hw_write.exit129.i.malidp_hw_write.exit135.i_crit_edge, label %do.end.i132.i, !prof !132

malidp_hw_write.exit129.i.malidp_hw_write.exit135.i_crit_edge: ; preds = %malidp_hw_write.exit129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit135.i

do.end.i132.i:                                    ; preds = %malidp_hw_write.exit129.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit135.i

malidp_hw_write.exit135.i:                        ; preds = %do.end.i132.i, %malidp_hw_write.exit129.i.malidp_hw_write.exit135.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %193 = tail call i32 @llvm.bswap.i32(i32 %190) #11
  %194 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %195, i32 %add42.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %193) #11, !srcloc !136
  %v_init_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 8
  %196 = ptrtoint ptr %v_init_phase.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %v_init_phase.i, align 4
  %add43.i = add nuw nsw i32 %add.i, 44
  %198 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i137.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i137.i, label %malidp_hw_write.exit135.i.malidp_hw_write.exit141.i_crit_edge, label %do.end.i138.i, !prof !132

malidp_hw_write.exit135.i.malidp_hw_write.exit141.i_crit_edge: ; preds = %malidp_hw_write.exit135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit141.i

do.end.i138.i:                                    ; preds = %malidp_hw_write.exit135.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit141.i

malidp_hw_write.exit141.i:                        ; preds = %do.end.i138.i, %malidp_hw_write.exit135.i.malidp_hw_write.exit141.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %200 = tail call i32 @llvm.bswap.i32(i32 %197) #11
  %201 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %202, i32 %add43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 %200) #11, !srcloc !136
  %v_delta_phase.i = getelementptr inbounds %struct.malidp_crtc_state, ptr %122, i32 0, i32 3, i32 9
  %203 = ptrtoint ptr %v_delta_phase.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %v_delta_phase.i, align 4
  %add44.i = add nuw nsw i32 %add.i, 48
  %205 = ptrtoint ptr %pm_suspended.i100.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pm_suspended.i100.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i143.i = icmp eq i8 %206, 0
  br i1 %tobool.not.i143.i, label %malidp_hw_write.exit141.i.malidp_hw_write.exit147.i_crit_edge, label %do.end.i144.i, !prof !132

malidp_hw_write.exit141.i.malidp_hw_write.exit147.i_crit_edge: ; preds = %malidp_hw_write.exit141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_hw_write.exit147.i

do.end.i144.i:                                    ; preds = %malidp_hw_write.exit141.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 268, i32 noundef 9, ptr noundef null) #11
  br label %malidp_hw_write.exit147.i

malidp_hw_write.exit147.i:                        ; preds = %do.end.i144.i, %malidp_hw_write.exit141.i.malidp_hw_write.exit147.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @arm_heavy_mb() #11
  %207 = tail call i32 @llvm.bswap.i32(i32 %204) #11
  %208 = ptrtoint ptr %regs.i103.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i103.i, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %209, i32 %add44.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i, i32 %207) #11, !srcloc !136
  br label %for.inc

for.inc:                                          ; preds = %malidp_hw_write.exit147.i, %malidp_hw_write.exit.i75, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %210 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %211, i32 0, i32 30, i32 19
  %212 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %213
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %state, i32 noundef 1) #11
  tail call void @malidp_mw_atomic_commit(ptr noundef %1, ptr noundef %state) #11
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %state) #11
  %214 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %215, i32 0, i32 5
  %216 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev_private.i, align 4
  %crtc.i = getelementptr inbounds %struct.malidp_drm, ptr %217, i32 0, i32 1
  %state1.i = getelementptr inbounds %struct.malidp_drm, ptr %217, i32 0, i32 1, i32 22
  %218 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %state1.i, align 4
  %event.i = getelementptr inbounds %struct.drm_crtc_state, ptr %219, i32 0, i32 18
  %220 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %event.i, align 4
  %event2.i = getelementptr inbounds %struct.malidp_drm, ptr %217, i32 0, i32 4
  %222 = ptrtoint ptr %event2.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %221, ptr %event2.i, align 4
  store ptr null, ptr %event.i, align 4
  %223 = load ptr, ptr %state1.i, align 4
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %active.i, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i77 = icmp eq i8 %225, 0
  %226 = ptrtoint ptr %event2.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %event2.i, align 4
  %tobool21.not.i = icmp eq ptr %227, null
  br i1 %tobool.not.i77, label %if.else.i81, label %if.then.i78

if.then.i78:                                      ; preds = %for.end
  br i1 %tobool21.not.i, label %if.then.i78.if.end.i80_crit_edge, label %if.then10.i

if.then.i78.if.end.i80_crit_edge:                 ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i80

if.then10.i:                                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #13
  %call.i79 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc.i) #11
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.then10.i, %if.then.i78.if.end.i80_crit_edge
  %call12.i = tail call fastcc i32 @malidp_set_and_wait_config_valid(ptr noundef %215) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.end.i80.malidp_atomic_commit_hw_done.exit_crit_edge

if.end.i80.malidp_atomic_commit_hw_done.exit_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_atomic_commit_hw_done.exit

while.cond.preheader.i:                           ; preds = %if.end.i80
  %call15.i = tail call fastcc i32 @malidp_set_and_wait_config_valid(ptr noundef %215) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.1.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.1.i:                                   ; preds = %while.cond.preheader.i
  %call15.1.i = tail call fastcc i32 @malidp_set_and_wait_config_valid(ptr noundef %215) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1.i)
  %tobool16.not.1.i = icmp eq i32 %call15.1.i, 0
  br i1 %tobool16.not.1.i, label %while.cond.1.i.while.end.i_crit_edge, label %while.cond.2.i

while.cond.1.i.while.end.i_crit_edge:             ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %call15.2.i = tail call fastcc i32 @malidp_set_and_wait_config_valid(ptr noundef %215) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2.i)
  %tobool16.not.2.i = icmp eq i32 %call15.2.i, 0
  br i1 %tobool16.not.2.i, label %while.cond.2.i.while.end.i_crit_edge, label %while.cond.3.i

while.cond.2.i.while.end.i_crit_edge:             ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %call15.3.i = tail call fastcc i32 @malidp_set_and_wait_config_valid(ptr noundef %215) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.3.i)
  %tobool16.not.3.i = icmp eq i32 %call15.3.i, 0
  br i1 %tobool16.not.3.i, label %while.cond.3.i.while.end.i_crit_edge, label %while.cond.4.i

while.cond.3.i.while.end.i_crit_edge:             ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.4.i:                                   ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.4.i = tail call fastcc i32 @malidp_set_and_wait_config_valid(ptr noundef %215) #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.4.i, %while.cond.3.i.while.end.i_crit_edge, %while.cond.2.i.while.end.i_crit_edge, %while.cond.1.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38) #11
  br label %malidp_atomic_commit_hw_done.exit

if.else.i81:                                      ; preds = %for.end
  br i1 %tobool21.not.i, label %if.else.i81.malidp_atomic_commit_hw_done.exit_crit_edge, label %if.then22.i

if.else.i81.malidp_atomic_commit_hw_done.exit_crit_edge: ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %malidp_atomic_commit_hw_done.exit

if.then22.i:                                      ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #13
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %215, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock.i) #11
  %228 = ptrtoint ptr %event2.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %event2.i, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc.i, ptr noundef %229) #11
  %230 = ptrtoint ptr %event2.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %event2.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock.i) #11
  br label %malidp_atomic_commit_hw_done.exit

malidp_atomic_commit_hw_done.exit:                ; preds = %if.then22.i, %if.else.i81.malidp_atomic_commit_hw_done.exit_crit_edge, %while.end.i, %if.end.i80.malidp_atomic_commit_hw_done.exit_crit_edge
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %state) #11
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call) #11
  %231 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev1, align 4
  %call.i82 = tail call i32 @__pm_runtime_idle(ptr noundef %232, i32 noundef 5) #11
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %state) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_begin_signalling() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @malidp_mw_atomic_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_end_signalling(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @malidp_set_and_wait_config_valid(ptr nocapture noundef readonly %drm) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %set_config_valid = getelementptr inbounds %struct.malidp_hw, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %set_config_valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_config_valid, align 4
  tail call void %7(ptr noundef %3, i8 noundef zeroext 1) #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %in_config_mode = getelementptr inbounds %struct.malidp_hw, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %in_config_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_config_mode, align 4
  %call = tail call zeroext i1 %11(ptr noundef %3) #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %config_valid = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %config_valid, i32 noundef 4) #11
  %12 = ptrtoint ptr %config_valid to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %config_valid, align 4
  br label %cleanup47

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 184) #11
  %config_valid6 = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 5
  %call.i.i67 = tail call zeroext i1 @__kasan_check_read(ptr noundef %config_valid6, i32 noundef 4) #11
  %13 = ptrtoint ptr %config_valid6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %config_valid6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.end.if.end44.thread_crit_edge, label %if.then14

if.end.if.end44.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.thread

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wq = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 3
  %call1781 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i6882 = call zeroext i1 @__kasan_check_read(ptr noundef %config_valid6, i32 noundef 4) #11
  %16 = ptrtoint ptr %config_valid6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %config_valid6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp2183 = icmp eq i32 %17, 1
  br i1 %cmp2183, label %if.then14.for.end_crit_edge, label %if.then14.if.end37_crit_edge

if.then14.if.end37_crit_edge:                     ; preds = %if.then14
  br label %if.end37

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %if.then14.if.end37_crit_edge
  %__ret15.185 = phi i32 [ %__ret15.1, %cleanup.if.end37_crit_edge ], [ 25, %if.then14.if.end37_crit_edge ]
  %call1784 = phi i32 [ %call17, %cleanup.if.end37_crit_edge ], [ %call1781, %if.then14.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1784)
  %tobool38.not = icmp eq i32 %call1784, 0
  br i1 %tobool38.not, label %cleanup, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

cleanup:                                          ; preds = %if.end37
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret15.185) #11
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i68 = call zeroext i1 @__kasan_check_read(ptr noundef %config_valid6, i32 noundef 4) #11
  %18 = ptrtoint ptr %config_valid6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %config_valid6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp21 = icmp eq i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool25.not = icmp eq i32 %call41, 0
  %20 = select i1 %cmp21, i1 %tobool25.not, i1 false
  %__ret15.1 = select i1 %20, i32 1, i32 %call41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %tobool31.not = icmp eq i32 %__ret15.1, 0
  %21 = select i1 %cmp21, i1 true, i1 %tobool31.not
  br i1 %21, label %cleanup.for.end_crit_edge, label %cleanup.if.end37_crit_edge

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then14.for.end_crit_edge
  %__ret15.1.lcssa = phi i32 [ 25, %if.then14.for.end_crit_edge ], [ %__ret15.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #11
  br label %if.end44

if.end44:                                         ; preds = %for.end, %if.end37.if.end44_crit_edge
  %__ret15.271 = phi i32 [ %__ret15.1.lcssa, %for.end ], [ %call1784, %if.end37.if.end44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.271)
  %cmp46 = icmp sgt i32 %__ret15.271, 0
  br i1 %cmp46, label %if.end44.if.end44.thread_crit_edge, label %if.end44.cleanup47_crit_edge

if.end44.cleanup47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup47

if.end44.if.end44.thread_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.thread

if.end44.thread:                                  ; preds = %if.end44.if.end44.thread_crit_edge, %if.end.if.end44.thread_crit_edge
  br label %cleanup47

cleanup47:                                        ; preds = %if.end44.thread, %if.end44.cleanup47_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end44.thread ], [ -110, %if.end44.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @malidp_de_irq_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @malidp_se_irq_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %core_id = getelementptr inbounds %struct.malidp_drm, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %core_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_id, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.42, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_pm_suspend_late(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @malidp_runtime_pm_suspend(ptr noundef %dev)
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_pm_resume_early(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @malidp_runtime_pm_resume(ptr noundef %dev)
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !115, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_mali_dp__320_1011_malidp_platform_driver_init6, !1, !"__initcall__kmod_mali_dp__320_1011_malidp_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 1011, i32 1}
!2 = !{ptr @__exitcall_malidp_platform_driver_exit, !1, !"__exitcall_malidp_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author321, !4, !"__UNIQUE_ID_author321", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 1013, i32 1}
!5 = !{ptr @__UNIQUE_ID_description322, !6, !"__UNIQUE_ID_description322", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 1014, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 1015, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 1004, i32 11}
!12 = !{ptr @malidp_platform_driver, !13, !"malidp_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 1000, i32 31}
!14 = !{ptr @malidp_master_ops, !15, !"malidp_master_ops", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 924, i32 42}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 735, i32 34}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 739, i32 34}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 743, i32 34}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 747, i32 36}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 781, i32 3}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 793, i32 3}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 798, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @malidp_bind._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @malidp_bind._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 804, i32 6}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 811, i32 6}
!38 = !{ptr @malidp_bind.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 822, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 833, i32 3}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 852, i32 3}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 574, i32 10}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 575, i32 10}
!49 = !{ptr @malidp_driver, !50, !"malidp_driver", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 566, i32 32}
!51 = !{ptr @malidp_debugfs_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 559, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 560, i32 22}
!56 = !{ptr @malidp_debugfs_fops, !57, !"malidp_debugfs_fops", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 544, i32 37}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 519, i32 26}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 520, i32 26}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 500, i32 16}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 502, i32 16}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 504, i32 16}
!68 = !{ptr @fops, !69, !"fops", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 459, i32 1}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 641, i32 32}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 616, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 626, i32 30}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 629, i32 4}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/arm/malidp_hw.h", i32 261, i32 2}
!82 = !{ptr @malidp_mode_config_funcs, !83, !"malidp_mode_config_funcs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 386, i32 43}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 284, i32 3}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 291, i32 4}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 296, i32 3}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 321, i32 3}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 339, i32 3}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 348, i32 3}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 353, i32 3}
!98 = !{ptr @malidp_mode_config_helpers, !99, !"malidp_mode_config_helpers", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 271, i32 50}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 217, i32 4}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 437, i32 3}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 442, i32 3}
!106 = !{ptr @malidp_drm_of_match, !107, !"malidp_drm_of_match", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 580, i32 35}
!108 = !{ptr @mali_dp_groups, !109, !"mali_dp_groups", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 666, i32 1}
!110 = !{ptr @mali_dp_group, !109, !"mali_dp_group", i1 false, i1 false}
!111 = !{ptr @mali_dp_attrs, !112, !"mali_dp_attrs", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 662, i32 26}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 660, i32 8}
!115 = !{ptr @dev_attr_core_id, !114, !"dev_attr_core_id", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 657, i32 34}
!118 = !{ptr @malidp_pm_ops, !119, !"malidp_pm_ops", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/arm/malidp_drv.c", i32 994, i32 32}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i8 0, i8 2}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 7077826}
!134 = !{i64 2157071224}
!135 = !{i64 2157072123}
!136 = !{i64 7077408}
!137 = !{i64 2148455405}
!138 = !{i64 2148369845, i64 2148369877, i64 2148369906, i64 2148369940, i64 2148369971, i64 2148369994}
!139 = !{i64 2149331519}
