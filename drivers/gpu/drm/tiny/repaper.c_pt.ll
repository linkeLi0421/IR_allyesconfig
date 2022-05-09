; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/repaper.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/repaper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.repaper_epd = type { %struct.drm_device, %struct.drm_simple_display_pipe, ptr, %struct.drm_connector, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i8, i8, i32, ptr, ptr, i8, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@__initcall__kmod_repaper__320_1168_repaper_spi_driver_init6 = internal global ptr @repaper_spi_driver_init, section ".initcall6.init", align 4
@repaper_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @repaper_id, ptr @repaper_probe, ptr @repaper_remove, ptr @repaper_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @repaper_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_repaper_spi_driver_exit = internal global ptr @repaper_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [58 x i8] c"repaper.description=Pervasive Displays RePaper DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [31 x i8] c"repaper.author=Noralf Tr\C3\B8nnes\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [42 x i8] c"repaper.file=drivers/gpu/drm/tiny/repaper\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [20 x i8] c"repaper.license=GPL\00", section ".modinfo", align 1
@repaper_id = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"e1144cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"e1190cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"e2200cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"e2271cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"repaper\00", [24 x i8] zeroinitializer }, align 32
@repaper_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pervasive,e1144cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pervasive,e1190cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pervasive,e2200cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pervasive,e2271cs021\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@repaper_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 983, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set dma mask %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"repaper_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tiny/repaper.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@repaper_probe._entry_ptr = internal global ptr @repaper_probe._entry, section ".printk_index", align 4
@repaper_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.20, ptr @.str.21, i32 19, ptr null, i32 0, ptr @repaper_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@repaper_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create_with_dirty, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"panel-on\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Failed to get gpio 'panel-on'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"discharge\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Failed to get gpio 'discharge'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Failed to get gpio 'reset'\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Failed to get gpio 'busy'\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pervasive,thermal-zone\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Failed to get thermal zone: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@repaper_e1144cs021_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 128, i16 128, i16 128, i16 128, i16 0, i16 96, i16 96, i16 96, i16 96, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 29, i16 22, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@repaper_e1144cs021_cs = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\00\00\0F\FF\00", [24 x i8] zeroinitializer }, align 32
@repaper_e1190cs021_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 144, i16 144, i16 144, i16 144, i16 0, i16 128, i16 128, i16 128, i16 128, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 36, i16 32, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@repaper_e1190cs021_cs = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\03\FC\00\00\FF", [24 x i8] zeroinitializer }, align 32
@repaper_e2200cs021_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 200, i16 200, i16 200, i16 200, i16 0, i16 96, i16 96, i16 96, i16 96, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 46, i16 22, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@repaper_e2200cs021_cs = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\00\01\FF\E0\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"border\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Failed to get gpio 'border'\0A\00", [59 x i8] zeroinitializer }, align 32
@repaper_e2271cs021_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 264, i16 264, i16 264, i16 264, i16 0, i16 176, i16 176, i16 176, i16 176, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 57, i16 38, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@repaper_e2271cs021_cs = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\7F\FF\FE\00\00", [24 x i8] zeroinitializer }, align 32
@repaper_connector_hfuncs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @repaper_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@repaper_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@repaper_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @repaper_pipe_enable, ptr @repaper_pipe_disable, ptr null, ptr @repaper_pipe_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@repaper_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713112], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SPI speed: %uMHz\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Pervasive Displays RePaper e-ink panels\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20170405\00", [23 x i8] zeroinitializer }, align 32
@repaper_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to duplicate mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* timeout waiting for panel to become ready.\0A\00", [44 x i8] zeroinitializer }, align 32
@repaper_pipe_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 698, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read chip (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"repaper_pipe_enable\00", [44 x i8] zeroinitializer }, align 32
@repaper_pipe_enable._entry_ptr = internal global ptr @repaper_pipe_enable._entry, section ".printk_index", align 4
@repaper_pipe_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 700, ptr @.str.7, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wrong COG ID 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@repaper_pipe_enable._entry_ptr.29 = internal global ptr @repaper_pipe_enable._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to read chip (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* panel is reported broken\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"*ERROR* dc/dc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Flushing [FB:%d] st=%ums\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Failed to get temperature (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"repaper_spi_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1158, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"repaper_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 949, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1160, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"repaper_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 940, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 983, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"repaper_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 929, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"repaper_mode_config_funcs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 889, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1002, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1006, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1010, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1014, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1018, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1022, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1026, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1030, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1034, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1038, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"repaper_e1144cs021_mode\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 899, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"repaper_e1144cs021_cs\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 903, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"repaper_e1190cs021_mode\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 906, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"repaper_e1190cs021_cs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 910, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant [24 x i8] c"repaper_e2200cs021_mode\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 913, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant [22 x i8] c"repaper_e2200cs021_cs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 917, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1075, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1079, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"repaper_e2271cs021_mode\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 920, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"repaper_e2271cs021_cs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 924, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"repaper_connector_hfuncs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 877, i32 48 }
@___asan_gen_.141 = private unnamed_addr constant [24 x i8] c"repaper_connector_funcs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 881, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [19 x i8] c"repaper_pipe_funcs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 850, i32 51 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"repaper_formats\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 895, i32 23 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1136, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 934, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 935, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant [13 x i8] c"repaper_fops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 927, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 863, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 654, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 689, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 698, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 700, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 711, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 713, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 765, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 550, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [34 x i8] c"../drivers/gpu/drm/tiny/repaper.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 485, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_repaper_spi_driver_exit, ptr @__initcall__kmod_repaper__320_1168_repaper_spi_driver_init6, ptr @repaper_pipe_enable._entry, ptr @repaper_pipe_enable._entry.27, ptr @repaper_pipe_enable._entry_ptr, ptr @repaper_pipe_enable._entry_ptr.29, ptr @repaper_probe._entry, ptr @repaper_probe._entry_ptr, ptr @repaper_spi_driver_exit, ptr @repaper_spi_driver, ptr @repaper_id, ptr @.str, ptr @repaper_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @repaper_driver, ptr @repaper_mode_config_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @repaper_e1144cs021_mode, ptr @repaper_e1144cs021_cs, ptr @repaper_e1190cs021_mode, ptr @repaper_e1190cs021_cs, ptr @repaper_e2200cs021_mode, ptr @repaper_e2200cs021_cs, ptr @.str.17, ptr @.str.18, ptr @repaper_e2271cs021_mode, ptr @repaper_e2271cs021_cs, ptr @repaper_connector_hfuncs, ptr @repaper_connector_funcs, ptr @repaper_pipe_funcs, ptr @repaper_formats, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @repaper_fops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_id to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e1144cs021_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e1144cs021_cs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e1190cs021_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e1190cs021_cs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e2200cs021_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e2200cs021_cs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e2271cs021_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_e2271cs021_cs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_connector_hfuncs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_pipe_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repaper_pipe_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @repaper_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @repaper_spi_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @repaper_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @repaper_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @repaper_probe(ptr noundef %spi) #2 align 64 {
entry:
  %thermal_zone = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thermal_zone) #8
  %0 = ptrtoint ptr %thermal_zone to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %thermal_zone, align 4, !annotation !121
  %call = tail call ptr @device_get_match_data(ptr noundef %spi) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %model.0 = phi i32 [ %1, %if.then ], [ %3, %if.else ]
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 19
  %4 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %coherent_dma_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 18
  %6 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %coherent_dma_mask, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %spi, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %do.end

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %spi, i64 noundef 4294967295) #8
  br label %if.end9

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %call.i.i) #11
  br label %cleanup

if.end9:                                          ; preds = %dma_coerce_mask_and_coherent.exit.thread, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %spi, ptr noundef nonnull @repaper_driver, i32 noundef 5056, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call16 = tail call i32 @drmm_mode_config_init(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %funcs = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @repaper_mode_config_funcs, ptr %funcs, align 4
  %spi20 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 4
  %9 = ptrtoint ptr %spi20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spi, ptr %spi20, align 8
  %call21 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.6, i32 noundef 3) #8
  %panel_on = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 5
  %10 = ptrtoint ptr %panel_on to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %panel_on, align 4
  %cmp.i282 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end19
  %cmp.not = icmp eq ptr %call21, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then24.cleanup_crit_edge, label %if.then27

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call30 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef 3) #8
  %discharge = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 7
  %12 = ptrtoint ptr %discharge to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %discharge, align 4
  %cmp.i283 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end29
  %cmp36.not = icmp eq ptr %call30, inttoptr (i32 -517 to ptr)
  br i1 %cmp36.not, label %if.then33.cleanup_crit_edge, label %if.then37

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call30 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %call40 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef 3) #8
  %reset = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 8
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call40, ptr %reset, align 8
  %cmp.i284 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end39
  %cmp46.not = icmp eq ptr %call40, inttoptr (i32 -517 to ptr)
  br i1 %cmp46.not, label %if.then43.cleanup_crit_edge, label %if.then47

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %call50 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef 1) #8
  %busy = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 9
  %16 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call50, ptr %busy, align 4
  %cmp.i285 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end49
  %cmp56.not = icmp eq ptr %call50, inttoptr (i32 -517 to ptr)
  br i1 %cmp56.not, label %if.then53.cleanup_crit_edge, label %if.then57

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call50 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  %call60 = call i32 @device_property_read_string(ptr noundef %spi, ptr noundef nonnull @.str.15, ptr noundef nonnull %thermal_zone) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end59.if.end70_crit_edge

if.end59.if.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then62:                                        ; preds = %if.end59
  %18 = ptrtoint ptr %thermal_zone to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %thermal_zone, align 4
  %call63 = call ptr @thermal_zone_get_zone_by_name(ptr noundef %19) #8
  %thermal = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 10
  %20 = ptrtoint ptr %thermal to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call63, ptr %thermal, align 8
  %cmp.i286 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %if.then66, label %if.then62.if.end70_crit_edge

if.then62.if.end70_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %thermal_zone to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %thermal_zone, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16, ptr noundef %22) #8
  %23 = ptrtoint ptr %thermal to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %thermal, align 8
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end70:                                         ; preds = %if.then62.if.end70_crit_edge, %if.end59.if.end70_crit_edge
  %26 = zext i32 %model.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %model.0, label %if.end70.cleanup_crit_edge [
    i32 1, label %if.end70.sw.epilog_crit_edge
    i32 2, label %sw.bb71
    i32 3, label %sw.bb78
    i32 4, label %sw.bb85
  ]

if.end70.sw.epilog_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb71:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end70
  %call86 = call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef 3) #8
  %border = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 6
  %27 = ptrtoint ptr %border to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call86, ptr %border, align 8
  %cmp.i287 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %if.then89, label %sw.bb85.sw.epilog_crit_edge

sw.bb85.sw.epilog_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then89:                                        ; preds = %sw.bb85
  %cmp92.not = icmp eq ptr %call86, inttoptr (i32 -517 to ptr)
  br i1 %cmp92.not, label %if.then89.cleanup_crit_edge, label %if.then93

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then93:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call86 to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb85.sw.epilog_crit_edge, %sw.bb78, %sw.bb71, %if.end70.sw.epilog_crit_edge
  %repaper_e2271cs021_cs.sink = phi ptr [ @repaper_e2200cs021_cs, %sw.bb78 ], [ @repaper_e1190cs021_cs, %sw.bb71 ], [ @repaper_e1144cs021_cs, %if.end70.sw.epilog_crit_edge ], [ @repaper_e2271cs021_cs, %sw.bb85.sw.epilog_crit_edge ]
  %.sink292 = phi i32 [ 480, %sw.bb78 ], [ 480, %sw.bb71 ], [ 480, %if.end70.sw.epilog_crit_edge ], [ 630, %sw.bb85.sw.epilog_crit_edge ]
  %.sink291 = phi i32 [ 24, %sw.bb78 ], [ 16, %sw.bb71 ], [ 24, %if.end70.sw.epilog_crit_edge ], [ 44, %sw.bb85.sw.epilog_crit_edge ]
  %.sink290 = phi i8 [ 1, %sw.bb78 ], [ 0, %sw.bb71 ], [ 1, %if.end70.sw.epilog_crit_edge ], [ 1, %sw.bb85.sw.epilog_crit_edge ]
  %.sink289 = phi i8 [ 1, %sw.bb78 ], [ 0, %sw.bb71 ], [ 0, %if.end70.sw.epilog_crit_edge ], [ 1, %sw.bb85.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 0, %sw.bb78 ], [ 2, %sw.bb71 ], [ %model.0, %if.end70.sw.epilog_crit_edge ], [ 0, %sw.bb85.sw.epilog_crit_edge ]
  %mode.0 = phi ptr [ @repaper_e2200cs021_mode, %sw.bb78 ], [ @repaper_e1190cs021_mode, %sw.bb71 ], [ @repaper_e1144cs021_mode, %if.end70.sw.epilog_crit_edge ], [ @repaper_e2271cs021_mode, %sw.bb85.sw.epilog_crit_edge ]
  %channel_select96 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 14
  %29 = ptrtoint ptr %channel_select96 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %repaper_e2271cs021_cs.sink, ptr %channel_select96, align 8
  %stage_time97 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 15
  %30 = ptrtoint ptr %stage_time97 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink292, ptr %stage_time97, align 4
  %bytes_per_scan98 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 13
  %31 = ptrtoint ptr %bytes_per_scan98 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink291, ptr %bytes_per_scan98, align 4
  %middle_scan99 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 17
  %32 = ptrtoint ptr %middle_scan99 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink290, ptr %middle_scan99, align 4
  %pre_border_byte100 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 18
  %33 = ptrtoint ptr %pre_border_byte100 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink289, ptr %pre_border_byte100, align 1
  %border_byte101 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 19
  %34 = ptrtoint ptr %border_byte101 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %border_byte101, align 8
  %mode102 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 2
  %35 = ptrtoint ptr %mode102 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mode.0, ptr %mode102, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode.0, i32 0, i32 1
  %36 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %37 to i32
  %width = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 12
  %38 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv, ptr %width, align 8
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode.0, i32 0, i32 6
  %39 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vdisplay, align 2
  %conv103 = zext i16 %40 to i32
  %height = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 11
  %41 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv103, ptr %height, align 4
  %stage_time104 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 15
  %42 = ptrtoint ptr %stage_time104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stage_time104, align 4
  %factored_stage_time = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 16
  %44 = ptrtoint ptr %factored_stage_time to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %factored_stage_time, align 8
  %45 = lshr i32 %conv, 2
  %bytes_per_scan106 = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 13
  %46 = ptrtoint ptr %bytes_per_scan106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytes_per_scan106, align 4
  %add = add nuw nsw i32 %45, 2
  %add107 = add i32 %add, %47
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %add107, i32 noundef 3520) #8
  %line_buffer = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 20
  %48 = ptrtoint ptr %line_buffer to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %line_buffer, align 4
  %tobool110.not = icmp eq ptr %call.i, null
  br i1 %tobool110.not, label %sw.epilog.cleanup_crit_edge, label %if.end112

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end112:                                        ; preds = %sw.epilog
  %49 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width, align 8
  %51 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height, align 4
  %mul115 = mul i32 %52, %50
  %div116281 = lshr i32 %mul115, 3
  %call.i288 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %div116281, i32 noundef 3520) #8
  %current_frame = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 21
  %53 = ptrtoint ptr %current_frame to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i288, ptr %current_frame, align 8
  %tobool119.not = icmp eq ptr %call.i288, null
  br i1 %tobool119.not, label %if.end112.cleanup_crit_edge, label %if.end121

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end121:                                        ; preds = %if.end112
  %min_width = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 30, i32 23
  %54 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 30, i32 25
  %55 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 30, i32 24
  %56 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv103, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 30, i32 26
  %57 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv103, ptr %max_height, align 4
  %connector = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 3
  %helper_private.i = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 3, i32 35
  %58 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @repaper_connector_hfuncs, ptr %helper_private.i, align 4
  %call135 = call i32 @drm_connector_init(ptr noundef %call10, ptr noundef %connector, ptr noundef nonnull @repaper_connector_funcs, i32 noundef 19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end138:                                        ; preds = %if.end121
  %pipe = getelementptr inbounds %struct.repaper_epd, ptr %call10, i32 0, i32 1
  %call140 = call i32 @drm_simple_display_pipe_init(ptr noundef %call10, ptr noundef %pipe, ptr noundef nonnull @repaper_pipe_funcs, ptr noundef nonnull @repaper_formats, i32 noundef 1, ptr noundef null, ptr noundef %connector) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end138.cleanup_crit_edge

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end143:                                        ; preds = %if.end138
  call void @drm_mode_config_reset(ptr noundef %call10) #8
  %call144 = call i32 @drm_dev_register(ptr noundef %call10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end147:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %60 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_speed_hz, align 8
  %div148 = udiv i32 %61, 1000000
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %div148) #8
  call void @drm_fbdev_generic_setup(ptr noundef %call10, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.end143.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then93, %if.then89.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.then66, %if.then57, %if.then53.cleanup_crit_edge, %if.then47, %if.then43.cleanup_crit_edge, %if.then37, %if.then33.cleanup_crit_edge, %if.then27, %if.then24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then12, %do.end
  %retval.0 = phi i32 [ %7, %if.then12 ], [ 0, %if.end147 ], [ %25, %if.then66 ], [ %call.i.i, %do.end ], [ %call16, %if.end14.cleanup_crit_edge ], [ %11, %if.then27 ], [ -517, %if.then24.cleanup_crit_edge ], [ %13, %if.then37 ], [ -517, %if.then33.cleanup_crit_edge ], [ %15, %if.then47 ], [ -517, %if.then43.cleanup_crit_edge ], [ %17, %if.then57 ], [ -517, %if.then53.cleanup_crit_edge ], [ %28, %if.then93 ], [ -517, %if.then89.cleanup_crit_edge ], [ -19, %if.end70.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end112.cleanup_crit_edge ], [ %call135, %if.end121.cleanup_crit_edge ], [ %call140, %if.end138.cleanup_crit_edge ], [ %call144, %if.end143.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thermal_zone) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @repaper_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #8
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @repaper_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_get_zone_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table_vmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @repaper_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %mode2 = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode2, align 8
  %call3 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_mode_set_name(ptr noundef nonnull %call3) #8
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 2
  %6 = or i8 %5, 8
  store i8 %6, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call3) #8
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 26
  %7 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %width_mm, align 2
  %conv5 = zext i16 %8 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %9 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 27
  %10 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %height_mm, align 4
  %conv7 = zext i16 %11 to i32
  %height_mm9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %height_mm9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7, ptr %height_mm9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @repaper_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %plane_state) #2 align 64 {
entry:
  %reg.addr.i.i237 = alloca i8, align 1
  %val.addr.i238 = alloca i8, align 1
  %reg.addr.i226 = alloca i8, align 1
  %val.i227 = alloca i8, align 1
  %reg.addr.i.i219 = alloca i8, align 1
  %val.addr.i220 = alloca i8, align 1
  %reg.addr.i.i212 = alloca i8, align 1
  %val.addr.i213 = alloca i8, align 1
  %reg.addr.i.i205 = alloca i8, align 1
  %val.addr.i206 = alloca i8, align 1
  %reg.addr.i.i198 = alloca i8, align 1
  %val.addr.i199 = alloca i8, align 1
  %reg.addr.i.i191 = alloca i8, align 1
  %val.addr.i192 = alloca i8, align 1
  %reg.addr.i.i184 = alloca i8, align 1
  %val.addr.i185 = alloca i8, align 1
  %reg.addr.i.i177 = alloca i8, align 1
  %val.addr.i178 = alloca i8, align 1
  %reg.addr.i.i170 = alloca i8, align 1
  %val.addr.i171 = alloca i8, align 1
  %reg.addr.i.i163 = alloca i8, align 1
  %val.addr.i164 = alloca i8, align 1
  %reg.addr.i158 = alloca i8, align 1
  %reg.addr.i.i151 = alloca i8, align 1
  %val.addr.i152 = alloca i8, align 1
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %reg.addr.i.i = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %id.i140 = alloca i8, align 1
  %id.i = alloca i8, align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [1 x i8], align 1
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %spi1 = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %idx, align 4, !annotation !121
  %call6 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #8
  br i1 %call6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #8
  %reset = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 0) #8
  %panel_on = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %panel_on to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel_on, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 0) #8
  %discharge = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %discharge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %discharge, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #8
  %border = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %border to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %border, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %12, i32 noundef 0) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %14 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end9.repaper_spi_mosi_low.exit_crit_edge

if.end9.repaper_spi_mosi_low.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_spi_mosi_low.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %repaper_spi_mosi_low.exit

repaper_spi_mosi_low.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.end9.repaper_spi_mosi_low.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %28 = ptrtoint ptr %panel_on to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %panel_on, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 1) #8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #8
  %30 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reset, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %31, i32 noundef 1) #8
  %32 = ptrtoint ptr %border to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %border, align 8
  %tobool13.not = icmp eq ptr %33, null
  br i1 %tobool13.not, label %repaper_spi_mosi_low.exit.if.end16_crit_edge, label %if.then14

repaper_spi_mosi_low.exit.if.end16_crit_edge:     ; preds = %repaper_spi_mosi_low.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %repaper_spi_mosi_low.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %33, i32 noundef 1) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %repaper_spi_mosi_low.exit.if.end16_crit_edge
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %34 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reset, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %35, i32 noundef 0) #8
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %36 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reset, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef 1) #8
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  %busy = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %if.end16
  %i.0249 = phi i32 [ 100, %if.end16 ], [ %dec, %if.end22.for.body_crit_edge ]
  %38 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %busy, align 4
  %call19 = call i32 @gpiod_get_value_cansleep(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end25, label %if.end22

if.end22:                                         ; preds = %for.body
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #8
  %dec = add nsw i32 %i.0249, -1
  %cmp = icmp ugt i32 %i.0249, 1
  br i1 %cmp, label %if.end22.for.body_crit_edge, label %if.then24

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24) #8
  call fastcc void @power_off(ptr noundef %1)
  br label %out_exit

if.end25:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id.i) #8
  %40 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %id.i, align 1, !annotation !121
  %call.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 113, ptr noundef null, ptr noundef nonnull %id.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id.i140) #8
  %41 = ptrtoint ptr %id.i140 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %id.i140, align 1, !annotation !121
  %call.i141 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 113, ptr noundef null, ptr noundef nonnull %id.i140, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i142 = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i142, label %cond.false.i144, label %if.end25.repaper_read_id.exit146_crit_edge

if.end25.repaper_read_id.exit146_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_read_id.exit146

cond.false.i144:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %id.i140 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %id.i140, align 1
  %conv.i143 = zext i8 %43 to i32
  br label %repaper_read_id.exit146

repaper_read_id.exit146:                          ; preds = %cond.false.i144, %if.end25.repaper_read_id.exit146_crit_edge
  %cond.i145 = phi i32 [ %conv.i143, %cond.false.i144 ], [ %call.i141, %if.end25.repaper_read_id.exit146_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id.i140) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond.i145)
  %cmp28.not = icmp eq i32 %cond.i145, 18
  br i1 %cmp28.not, label %if.end36, label %if.then29

if.then29:                                        ; preds = %repaper_read_id.exit146
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i145)
  %cmp30 = icmp slt i32 %cond.i145, 0
  %.str.25..str.28 = select i1 %cmp30, ptr @.str.25, ptr @.str.28
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.25..str.28, i32 noundef %cond.i145) #11
  call fastcc void @power_off(ptr noundef %1)
  br label %out_exit

if.end36:                                         ; preds = %repaper_read_id.exit146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %44 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 64, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %45 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %reg.addr.i.i, align 1
  %call.i.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end36.repaper_write_val.exit_crit_edge

if.end36.repaper_write_val.exit_crit_edge:        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit

repaper_write_val.exit:                           ; preds = %if.end.i.i, %if.end36.repaper_write_val.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %46 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 15, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %val.i, align 1, !annotation !121
  %call.i147 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool.not.i148 = icmp eq i32 %call.i147, 0
  br i1 %tobool.not.i148, label %if.end.i, label %repaper_write_val.exit.repaper_read_val.exit_crit_edge

repaper_write_val.exit.repaper_read_val.exit_crit_edge: ; preds = %repaper_write_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_read_val.exit

if.end.i:                                         ; preds = %repaper_write_val.exit
  %call1.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 115, ptr noundef null, ptr noundef nonnull %val.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %cond.false.i150, label %if.end.i.repaper_read_val.exit_crit_edge

if.end.i.repaper_read_val.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_read_val.exit

cond.false.i150:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i, align 1
  %conv.i149 = zext i8 %49 to i32
  br label %repaper_read_val.exit

repaper_read_val.exit:                            ; preds = %cond.false.i150, %if.end.i.repaper_read_val.exit_crit_edge, %repaper_write_val.exit.repaper_read_val.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i147, %repaper_write_val.exit.repaper_read_val.exit_crit_edge ], [ %conv.i149, %cond.false.i150 ], [ %call1.i, %if.end.i.repaper_read_val.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %50 = and i32 %retval.0.i, -2147483520
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %50)
  %.not = icmp eq i32 %50, 128
  br i1 %.not, label %if.end46, label %if.then41

if.then41:                                        ; preds = %repaper_read_val.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp39 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp39, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i) #8
  br label %if.end45

if.else44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.31) #8
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then43
  call fastcc void @power_off(ptr noundef %1)
  br label %out_exit

if.end46:                                         ; preds = %repaper_read_val.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i152)
  %51 = ptrtoint ptr %val.addr.i152 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %val.addr.i152, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i151) #8
  %52 = ptrtoint ptr %reg.addr.i.i151 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 11, ptr %reg.addr.i.i151, align 1
  %call.i.i153 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i151, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i153)
  %tobool.not.i.i154 = icmp eq i32 %call.i.i153, 0
  br i1 %tobool.not.i.i154, label %if.end.i.i156, label %if.end46.repaper_write_val.exit157_crit_edge

if.end46.repaper_write_val.exit157_crit_edge:     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit157

if.end.i.i156:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i155 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i152, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit157

repaper_write_val.exit157:                        ; preds = %if.end.i.i156, %if.end46.repaper_write_val.exit157_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i151) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i152)
  %channel_select = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 14
  %53 = ptrtoint ptr %channel_select to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %channel_select, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i158)
  %55 = ptrtoint ptr %reg.addr.i158 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %reg.addr.i158, align 1
  %call.i159 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i158, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i160 = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i160, label %if.end.i162, label %repaper_write_val.exit157.repaper_write_buf.exit_crit_edge

repaper_write_val.exit157.repaper_write_buf.exit_crit_edge: ; preds = %repaper_write_val.exit157
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_buf.exit

if.end.i162:                                      ; preds = %repaper_write_val.exit157
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i161 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef %54, ptr noundef null, i32 noundef 8) #8
  br label %repaper_write_buf.exit

repaper_write_buf.exit:                           ; preds = %if.end.i162, %repaper_write_val.exit157.repaper_write_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i158)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i164)
  %56 = ptrtoint ptr %val.addr.i164 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -47, ptr %val.addr.i164, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i163) #8
  %57 = ptrtoint ptr %reg.addr.i.i163 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 7, ptr %reg.addr.i.i163, align 1
  %call.i.i165 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i163, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i165)
  %tobool.not.i.i166 = icmp eq i32 %call.i.i165, 0
  br i1 %tobool.not.i.i166, label %if.end.i.i168, label %repaper_write_buf.exit.repaper_write_val.exit169_crit_edge

repaper_write_buf.exit.repaper_write_val.exit169_crit_edge: ; preds = %repaper_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit169

if.end.i.i168:                                    ; preds = %repaper_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i167 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i164, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit169

repaper_write_val.exit169:                        ; preds = %if.end.i.i168, %repaper_write_buf.exit.repaper_write_val.exit169_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i163) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i164)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i171)
  %58 = ptrtoint ptr %val.addr.i171 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %val.addr.i171, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i170) #8
  %59 = ptrtoint ptr %reg.addr.i.i170 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 8, ptr %reg.addr.i.i170, align 1
  %call.i.i172 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i170, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %tobool.not.i.i173 = icmp eq i32 %call.i.i172, 0
  br i1 %tobool.not.i.i173, label %if.end.i.i175, label %repaper_write_val.exit169.repaper_write_val.exit176_crit_edge

repaper_write_val.exit169.repaper_write_val.exit176_crit_edge: ; preds = %repaper_write_val.exit169
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit176

if.end.i.i175:                                    ; preds = %repaper_write_val.exit169
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i174 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i171, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit176

repaper_write_val.exit176:                        ; preds = %if.end.i.i175, %repaper_write_val.exit169.repaper_write_val.exit176_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i170) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i171)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i178)
  %60 = ptrtoint ptr %val.addr.i178 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -62, ptr %val.addr.i178, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i177) #8
  %61 = ptrtoint ptr %reg.addr.i.i177 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 9, ptr %reg.addr.i.i177, align 1
  %call.i.i179 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i177, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %tobool.not.i.i180 = icmp eq i32 %call.i.i179, 0
  br i1 %tobool.not.i.i180, label %if.end.i.i182, label %repaper_write_val.exit176.repaper_write_val.exit183_crit_edge

repaper_write_val.exit176.repaper_write_val.exit183_crit_edge: ; preds = %repaper_write_val.exit176
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit183

if.end.i.i182:                                    ; preds = %repaper_write_val.exit176
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i181 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i178, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit183

repaper_write_val.exit183:                        ; preds = %if.end.i.i182, %repaper_write_val.exit176.repaper_write_val.exit183_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i177) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i178)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i185)
  %62 = ptrtoint ptr %val.addr.i185 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %val.addr.i185, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i184) #8
  %63 = ptrtoint ptr %reg.addr.i.i184 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 4, ptr %reg.addr.i.i184, align 1
  %call.i.i186 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i184, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186)
  %tobool.not.i.i187 = icmp eq i32 %call.i.i186, 0
  br i1 %tobool.not.i.i187, label %if.end.i.i189, label %repaper_write_val.exit183.repaper_write_val.exit190_crit_edge

repaper_write_val.exit183.repaper_write_val.exit190_crit_edge: ; preds = %repaper_write_val.exit183
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit190

if.end.i.i189:                                    ; preds = %repaper_write_val.exit183
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i188 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i185, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit190

repaper_write_val.exit190:                        ; preds = %if.end.i.i189, %repaper_write_val.exit183.repaper_write_val.exit190_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i184) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i185)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i192)
  %64 = ptrtoint ptr %val.addr.i192 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %val.addr.i192, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i191) #8
  %65 = ptrtoint ptr %reg.addr.i.i191 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %reg.addr.i.i191, align 1
  %call.i.i193 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i191, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %tobool.not.i.i194 = icmp eq i32 %call.i.i193, 0
  br i1 %tobool.not.i.i194, label %if.end.i.i196, label %repaper_write_val.exit190.repaper_write_val.exit197_crit_edge

repaper_write_val.exit190.repaper_write_val.exit197_crit_edge: ; preds = %repaper_write_val.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit197

if.end.i.i196:                                    ; preds = %repaper_write_val.exit190
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i195 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i192, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit197

repaper_write_val.exit197:                        ; preds = %if.end.i.i196, %repaper_write_val.exit190.repaper_write_val.exit197_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i191) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i192)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i199)
  %66 = ptrtoint ptr %val.addr.i199 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %val.addr.i199, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i198) #8
  %67 = ptrtoint ptr %reg.addr.i.i198 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %reg.addr.i.i198, align 1
  %call.i.i200 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i198, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i200)
  %tobool.not.i.i201 = icmp eq i32 %call.i.i200, 0
  br i1 %tobool.not.i.i201, label %if.end.i.i203, label %repaper_write_val.exit197.repaper_write_val.exit204_crit_edge

repaper_write_val.exit197.repaper_write_val.exit204_crit_edge: ; preds = %repaper_write_val.exit197
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit204

if.end.i.i203:                                    ; preds = %repaper_write_val.exit197
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i202 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i199, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit204

repaper_write_val.exit204:                        ; preds = %if.end.i.i203, %repaper_write_val.exit197.repaper_write_val.exit204_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i198) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i199)
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  br label %for.body57

for.cond55:                                       ; preds = %if.end64
  %inc = add nuw nsw i32 %i.1250, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.then72.critedge, label %for.cond55.for.body57_crit_edge

for.cond55.for.body57_crit_edge:                  ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.body57:                                       ; preds = %for.cond55.for.body57_crit_edge, %repaper_write_val.exit204
  %i.1250 = phi i32 [ 0, %repaper_write_val.exit204 ], [ %inc, %for.cond55.for.body57_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i206)
  %68 = ptrtoint ptr %val.addr.i206 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %val.addr.i206, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i205) #8
  %69 = ptrtoint ptr %reg.addr.i.i205 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 5, ptr %reg.addr.i.i205, align 1
  %call.i.i207 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i205, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %tobool.not.i.i208 = icmp eq i32 %call.i.i207, 0
  br i1 %tobool.not.i.i208, label %if.end.i.i210, label %for.body57.repaper_write_val.exit211_crit_edge

for.body57.repaper_write_val.exit211_crit_edge:   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit211

if.end.i.i210:                                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i209 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i206, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit211

repaper_write_val.exit211:                        ; preds = %if.end.i.i210, %for.body57.repaper_write_val.exit211_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i205) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i206)
  call void @msleep(i32 noundef 240) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i213)
  %70 = ptrtoint ptr %val.addr.i213 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %val.addr.i213, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i212) #8
  %71 = ptrtoint ptr %reg.addr.i.i212 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 5, ptr %reg.addr.i.i212, align 1
  %call.i.i214 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i212, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %tobool.not.i.i215 = icmp eq i32 %call.i.i214, 0
  br i1 %tobool.not.i.i215, label %if.end.i.i217, label %repaper_write_val.exit211.repaper_write_val.exit218_crit_edge

repaper_write_val.exit211.repaper_write_val.exit218_crit_edge: ; preds = %repaper_write_val.exit211
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit218

if.end.i.i217:                                    ; preds = %repaper_write_val.exit211
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i216 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i213, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit218

repaper_write_val.exit218:                        ; preds = %if.end.i.i217, %repaper_write_val.exit211.repaper_write_val.exit218_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i212) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i213)
  call void @msleep(i32 noundef 40) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i220)
  %72 = ptrtoint ptr %val.addr.i220 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 15, ptr %val.addr.i220, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i219) #8
  %73 = ptrtoint ptr %reg.addr.i.i219 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 5, ptr %reg.addr.i.i219, align 1
  %call.i.i221 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i219, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i221)
  %tobool.not.i.i222 = icmp eq i32 %call.i.i221, 0
  br i1 %tobool.not.i.i222, label %if.end.i.i224, label %repaper_write_val.exit218.repaper_write_val.exit225_crit_edge

repaper_write_val.exit218.repaper_write_val.exit225_crit_edge: ; preds = %repaper_write_val.exit218
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit225

if.end.i.i224:                                    ; preds = %repaper_write_val.exit218
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i223 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i220, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit225

repaper_write_val.exit225:                        ; preds = %if.end.i.i224, %repaper_write_val.exit218.repaper_write_val.exit225_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i219) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i220)
  call void @msleep(i32 noundef 40) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i226)
  %74 = ptrtoint ptr %reg.addr.i226 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 15, ptr %reg.addr.i226, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i227) #8
  %75 = ptrtoint ptr %val.i227 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %val.i227, align 1, !annotation !121
  %call.i228 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i226, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool.not.i229 = icmp eq i32 %call.i228, 0
  br i1 %tobool.not.i229, label %if.end.i232, label %repaper_write_val.exit225.repaper_read_val.exit236_crit_edge

repaper_write_val.exit225.repaper_read_val.exit236_crit_edge: ; preds = %repaper_write_val.exit225
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_read_val.exit236

if.end.i232:                                      ; preds = %repaper_write_val.exit225
  %call1.i230 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 115, ptr noundef null, ptr noundef nonnull %val.i227, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i230)
  %tobool2.not.i231 = icmp eq i32 %call1.i230, 0
  br i1 %tobool2.not.i231, label %repaper_read_val.exit236.thread, label %if.end.i232.repaper_read_val.exit236_crit_edge

if.end.i232.repaper_read_val.exit236_crit_edge:   ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_read_val.exit236

repaper_read_val.exit236.thread:                  ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %val.i227 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %val.i227, align 1
  %conv.i233 = zext i8 %77 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i227) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i226)
  br label %if.end64

repaper_read_val.exit236:                         ; preds = %if.end.i232.repaper_read_val.exit236_crit_edge, %repaper_write_val.exit225.repaper_read_val.exit236_crit_edge
  %retval.0.i235 = phi i32 [ %call.i228, %repaper_write_val.exit225.repaper_read_val.exit236_crit_edge ], [ %call1.i230, %if.end.i232.repaper_read_val.exit236_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i227) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i226)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i235)
  %cmp62 = icmp slt i32 %retval.0.i235, 0
  br i1 %cmp62, label %if.then63, label %repaper_read_val.exit236.if.end64_crit_edge

repaper_read_val.exit236.if.end64_crit_edge:      ; preds = %repaper_read_val.exit236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then63:                                        ; preds = %repaper_read_val.exit236
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i235) #8
  call fastcc void @power_off(ptr noundef %1)
  br label %out_exit

if.end64:                                         ; preds = %repaper_read_val.exit236.if.end64_crit_edge, %repaper_read_val.exit236.thread
  %retval.0.i235247 = phi i32 [ %conv.i233, %repaper_read_val.exit236.thread ], [ %retval.0.i235, %repaper_read_val.exit236.if.end64_crit_edge ]
  %and65 = and i32 %retval.0.i235247, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %for.cond55, label %if.end73

if.then72.critedge:                               ; preds = %for.cond55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.32) #8
  call fastcc void @power_off(ptr noundef %1)
  br label %out_exit

if.end73:                                         ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i238)
  %78 = ptrtoint ptr %val.addr.i238 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 4, ptr %val.addr.i238, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i237) #8
  %79 = ptrtoint ptr %reg.addr.i.i237 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %reg.addr.i.i237, align 1
  %call.i.i239 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i237, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i239)
  %tobool.not.i.i240 = icmp eq i32 %call.i.i239, 0
  br i1 %tobool.not.i.i240, label %if.end.i.i242, label %if.end73.repaper_write_val.exit243_crit_edge

if.end73.repaper_write_val.exit243_crit_edge:     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit243

if.end.i.i242:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i241 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i238, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit243

repaper_write_val.exit243:                        ; preds = %if.end.i.i242, %if.end73.repaper_write_val.exit243_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i237) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i238)
  %partial = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 23
  %80 = ptrtoint ptr %partial to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %partial, align 1
  br label %out_exit

out_exit:                                         ; preds = %repaper_write_val.exit243, %if.then72.critedge, %if.then63, %if.end45, %if.then29, %if.then24
  %81 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %82) #8
  br label %cleanup

cleanup:                                          ; preds = %out_exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @repaper_pipe_disable(ptr nocapture noundef readonly %pipe) #2 align 64 {
entry:
  %reg.addr.i.i61 = alloca i8, align 1
  %val.addr.i62 = alloca i8, align 1
  %reg.addr.i.i54 = alloca i8, align 1
  %val.addr.i55 = alloca i8, align 1
  %reg.addr.i.i47 = alloca i8, align 1
  %val.addr.i48 = alloca i8, align 1
  %reg.addr.i.i40 = alloca i8, align 1
  %val.addr.i41 = alloca i8, align 1
  %reg.addr.i.i33 = alloca i8, align 1
  %val.addr.i34 = alloca i8, align 1
  %reg.addr.i.i26 = alloca i8, align 1
  %val.addr.i27 = alloca i8, align 1
  %reg.addr.i.i = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %spi1 = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #8
  %height = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp68.not = icmp eq i32 %5, 0
  br i1 %cmp68.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %line.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @repaper_one_line(ptr noundef %1, i32 noundef 32767, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  %inc = add nuw i32 %line.069, 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %border = getelementptr inbounds %struct.repaper_epd, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %border to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %border, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @repaper_one_line(ptr noundef %1, i32 noundef 32767, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  tail call void @msleep(i32 noundef 25) #8
  %10 = ptrtoint ptr %border to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %border, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 200) #8
  %12 = ptrtoint ptr %border to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %border, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 1) #8
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @repaper_one_line(ptr noundef %1, i32 noundef 32767, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, i32 noundef 3)
  tail call void @msleep(i32 noundef 200) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %14 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %15 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 11, ptr %reg.addr.i.i, align 1
  %call.i.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.repaper_write_val.exit_crit_edge

if.end.repaper_write_val.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit

repaper_write_val.exit:                           ; preds = %if.end.i.i, %if.end.repaper_write_val.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i27)
  %16 = ptrtoint ptr %val.addr.i27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %val.addr.i27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i26) #8
  %17 = ptrtoint ptr %reg.addr.i.i26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %reg.addr.i.i26, align 1
  %call.i.i28 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i26, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %call.i.i28, 0
  br i1 %tobool.not.i.i29, label %if.end.i.i31, label %repaper_write_val.exit.repaper_write_val.exit32_crit_edge

repaper_write_val.exit.repaper_write_val.exit32_crit_edge: ; preds = %repaper_write_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit32

if.end.i.i31:                                     ; preds = %repaper_write_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i30 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i27, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit32

repaper_write_val.exit32:                         ; preds = %if.end.i.i31, %repaper_write_val.exit.repaper_write_val.exit32_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i26) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i27)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i34)
  %18 = ptrtoint ptr %val.addr.i34 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %val.addr.i34, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i33) #8
  %19 = ptrtoint ptr %reg.addr.i.i33 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %reg.addr.i.i33, align 1
  %call.i.i35 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i33, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool.not.i.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %tobool.not.i.i36, label %if.end.i.i38, label %repaper_write_val.exit32.repaper_write_val.exit39_crit_edge

repaper_write_val.exit32.repaper_write_val.exit39_crit_edge: ; preds = %repaper_write_val.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit39

if.end.i.i38:                                     ; preds = %repaper_write_val.exit32
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i37 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i34, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit39

repaper_write_val.exit39:                         ; preds = %if.end.i.i38, %repaper_write_val.exit32.repaper_write_val.exit39_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i33) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i34)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i41)
  %20 = ptrtoint ptr %val.addr.i41 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %val.addr.i41, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i40) #8
  %21 = ptrtoint ptr %reg.addr.i.i40 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 5, ptr %reg.addr.i.i40, align 1
  %call.i.i42 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i40, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %tobool.not.i.i43 = icmp eq i32 %call.i.i42, 0
  br i1 %tobool.not.i.i43, label %if.end.i.i45, label %repaper_write_val.exit39.repaper_write_val.exit46_crit_edge

repaper_write_val.exit39.repaper_write_val.exit46_crit_edge: ; preds = %repaper_write_val.exit39
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit46

if.end.i.i45:                                     ; preds = %repaper_write_val.exit39
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i44 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i41, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit46

repaper_write_val.exit46:                         ; preds = %if.end.i.i45, %repaper_write_val.exit39.repaper_write_val.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i40) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i41)
  call void @msleep(i32 noundef 120) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i48)
  %22 = ptrtoint ptr %val.addr.i48 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -128, ptr %val.addr.i48, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i47) #8
  %23 = ptrtoint ptr %reg.addr.i.i47 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %reg.addr.i.i47, align 1
  %call.i.i49 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i47, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %tobool.not.i.i50, label %if.end.i.i52, label %repaper_write_val.exit46.repaper_write_val.exit53_crit_edge

repaper_write_val.exit46.repaper_write_val.exit53_crit_edge: ; preds = %repaper_write_val.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit53

if.end.i.i52:                                     ; preds = %repaper_write_val.exit46
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i51 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i48, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit53

repaper_write_val.exit53:                         ; preds = %if.end.i.i52, %repaper_write_val.exit46.repaper_write_val.exit53_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i47) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i48)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i55)
  %24 = ptrtoint ptr %val.addr.i55 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %val.addr.i55, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i54) #8
  %25 = ptrtoint ptr %reg.addr.i.i54 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %reg.addr.i.i54, align 1
  %call.i.i56 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i54, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool.not.i.i57, label %if.end.i.i59, label %repaper_write_val.exit53.repaper_write_val.exit60_crit_edge

repaper_write_val.exit53.repaper_write_val.exit60_crit_edge: ; preds = %repaper_write_val.exit53
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit60

if.end.i.i59:                                     ; preds = %repaper_write_val.exit53
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i58 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i55, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit60

repaper_write_val.exit60:                         ; preds = %if.end.i.i59, %repaper_write_val.exit53.repaper_write_val.exit60_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i54) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i55)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i62)
  %26 = ptrtoint ptr %val.addr.i62 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %val.addr.i62, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i61) #8
  %27 = ptrtoint ptr %reg.addr.i.i61 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %reg.addr.i.i61, align 1
  %call.i.i63 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i61, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %call.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i66, label %repaper_write_val.exit60.repaper_write_val.exit67_crit_edge

repaper_write_val.exit60.repaper_write_val.exit67_crit_edge: ; preds = %repaper_write_val.exit60
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit67

if.end.i.i66:                                     ; preds = %repaper_write_val.exit60
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i65 = call fastcc i32 @repaper_spi_transfer(ptr noundef %3, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i62, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit67

repaper_write_val.exit67:                         ; preds = %if.end.i.i66, %repaper_write_val.exit60.repaper_write_val.exit67_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i61) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i62)
  call void @msleep(i32 noundef 50) #8
  call fastcc void @power_off(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @repaper_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_state) #2 align 64 {
entry:
  %temperature.i.i = alloca i32, align 4
  %clip.i = alloca %struct.drm_rect, align 4
  %idx.i = alloca i32, align 4
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #8
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %2 = call ptr @memset(ptr %rect, i32 255, i32 16)
  %3 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state2, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %1, ptr noundef nonnull %rect) #8
  br i1 %call, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 4
  %call.i = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %8, i32 noundef 0) #8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #8
  %11 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %idx.i, align 4, !annotation !121
  %call3.i = call zeroext i1 @drm_dev_enter(ptr noundef %10, ptr noundef nonnull %idx.i) #8
  br i1 %call3.i, label %if.end.i, label %if.then3.repaper_fb_dirty.exit_crit_edge

if.then3.repaper_fb_dirty.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_fb_dirty.exit

if.end.i:                                         ; preds = %if.then3
  %12 = getelementptr inbounds %struct.drm_rect, ptr %clip.i, i32 0, i32 3
  %13 = getelementptr inbounds %struct.drm_rect, ptr %clip.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.drm_rect, ptr %clip.i, i32 0, i32 1
  %15 = ptrtoint ptr %clip.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %clip.i, align 4
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 9
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i, align 8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %13, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %14, align 4
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 10
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature.i.i) #8
  %23 = ptrtoint ptr %temperature.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %temperature.i.i, align 4
  %thermal.i.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 10
  %24 = ptrtoint ptr %thermal.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %thermal.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.repaper_get_temperature.exit.i_crit_edge, label %if.end.i.i

if.end.i.repaper_get_temperature.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_get_temperature.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call.i.i = call i32 @thermal_zone_get_temp(ptr noundef nonnull %25, ptr noundef nonnull %temperature.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %spi.i.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 4
  %26 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #8
  br label %repaper_get_temperature.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %28 = ptrtoint ptr %temperature.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temperature.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9999, i32 %29)
  %cmp.i.i = icmp slt i32 %29, -9999
  br i1 %cmp.i.i, label %if.end4.i.i.if.end30.i.i_crit_edge, label %if.else.i.i

if.end4.i.i.if.end30.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.else.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4999, i32 %29)
  %cmp6.i.i = icmp slt i32 %29, -4999
  br i1 %cmp6.i.i, label %if.else.i.i.if.end30.i.i_crit_edge, label %if.else8.i.i

if.else.i.i.if.end30.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %29)
  %cmp9.i.i = icmp slt i32 %29, 6000
  br i1 %cmp9.i.i, label %if.else8.i.i.if.end30.i.i_crit_edge, label %if.else11.i.i

if.else8.i.i.if.end30.i.i_crit_edge:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.else11.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11000, i32 %29)
  %cmp12.i.i = icmp ult i32 %29, 11000
  br i1 %cmp12.i.i, label %if.else11.i.i.if.end30.i.i_crit_edge, label %if.else14.i.i

if.else11.i.i.if.end30.i.i_crit_edge:             ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.else14.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %29)
  %cmp15.i.i = icmp ult i32 %29, 16000
  br i1 %cmp15.i.i, label %if.else14.i.i.if.end30.i.i_crit_edge, label %if.else17.i.i

if.else14.i.i.if.end30.i.i_crit_edge:             ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.else17.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21000, i32 %29)
  %cmp18.i.i = icmp ult i32 %29, 21000
  br i1 %cmp18.i.i, label %if.else17.i.i.if.end30.i.i_crit_edge, label %if.else20.i.i

if.else17.i.i.if.end30.i.i_crit_edge:             ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i.i

if.else20.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 41000, i32 %29)
  %cmp21.i.i = icmp ult i32 %29, 41000
  %..i.i = select i1 %cmp21.i.i, i32 10, i32 7
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.else20.i.i, %if.else17.i.i.if.end30.i.i_crit_edge, %if.else14.i.i.if.end30.i.i_crit_edge, %if.else11.i.i.if.end30.i.i_crit_edge, %if.else8.i.i.if.end30.i.i_crit_edge, %if.else.i.i.if.end30.i.i_crit_edge, %if.end4.i.i.if.end30.i.i_crit_edge
  %factor10x.0.i.i = phi i32 [ 170, %if.end4.i.i.if.end30.i.i_crit_edge ], [ 120, %if.else.i.i.if.end30.i.i_crit_edge ], [ 80, %if.else8.i.i.if.end30.i.i_crit_edge ], [ 40, %if.else11.i.i.if.end30.i.i_crit_edge ], [ 30, %if.else14.i.i.if.end30.i.i_crit_edge ], [ 20, %if.else17.i.i.if.end30.i.i_crit_edge ], [ %..i.i, %if.else20.i.i ]
  %stage_time.i.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 15
  %30 = ptrtoint ptr %stage_time.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stage_time.i.i, align 4
  %mul.i.i = mul i32 %31, %factor10x.0.i.i
  %div31.i.i = udiv i32 %mul.i.i, 10
  %factored_stage_time.i.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 16
  %32 = ptrtoint ptr %factored_stage_time.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div31.i.i, ptr %factored_stage_time.i.i, align 8
  br label %repaper_get_temperature.exit.i

repaper_get_temperature.exit.i:                   ; preds = %if.end30.i.i, %if.then3.i.i, %if.end.i.repaper_get_temperature.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature.i.i) #8
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 2
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base.i, align 4
  %factored_stage_time.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 16
  %35 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %factored_stage_time.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef %34, i32 noundef %36) #8
  %37 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width.i, align 8
  %39 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height.i, align 4
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 %40) #8
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %repaper_get_temperature.exit.i.out_exit.i_crit_edge, label %if.end7.i.i, !prof !123

repaper_get_temperature.exit.i.out_exit.i_crit_edge: ; preds = %repaper_get_temperature.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_exit.i

if.end7.i.i:                                      ; preds = %repaper_get_temperature.exit.i
  %43 = extractvalue { i32, i1 } %41, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.out_exit.i_crit_edge, label %if.end8.i

if.end7.i.i.out_exit.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_exit.i

if.end8.i:                                        ; preds = %if.end7.i.i
  %call9.i = call i32 @drm_gem_fb_begin_cpu_access(ptr noundef %8, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.out_free.i_crit_edge

if.end8.i.out_free.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

if.end12.i:                                       ; preds = %if.end8.i
  %vaddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vaddr.i, align 8
  call void @drm_fb_xrgb8888_to_gray8(ptr noundef nonnull %call8.i.i, i32 noundef 0, ptr noundef %45, ptr noundef %8, ptr noundef nonnull %clip.i) #8
  call void @drm_gem_fb_end_cpu_access(ptr noundef %8, i32 noundef 2) #8
  %46 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width.i, align 8
  %48 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp37.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp37.not.i.i, label %if.end12.i.repaper_gray8_to_mono_reversed.exit.i_crit_edge, label %for.cond1.preheader.lr.ph.i.i

if.end12.i.repaper_gray8_to_mono_reversed.exit.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_gray8_to_mono_reversed.exit.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %if.end12.i
  %div30.i.i = lshr i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp234.not.i.i = icmp ult i32 %47, 8
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div30.i.i, i32 1) #8
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc17.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i
  %y.039.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %inc18.i.i, %for.inc17.i.i.for.cond1.preheader.i.i_crit_edge ]
  %mono.038.i.i = phi ptr [ %call8.i.i, %for.cond1.preheader.lr.ph.i.i ], [ %mono.1.lcssa.i.i, %for.inc17.i.i.for.cond1.preheader.i.i_crit_edge ]
  br i1 %cmp234.not.i.i, label %for.cond1.preheader.i.i.for.inc17.i.i_crit_edge, label %for.cond4.preheader.lr.ph.i.i

for.cond1.preheader.i.i.for.inc17.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.i.i

for.cond4.preheader.lr.ph.i.i:                    ; preds = %for.cond1.preheader.i.i
  %mul8.i.i = mul i32 %y.039.i.i, %47
  br label %for.cond4.preheader.i.i

for.cond4.preheader.i.i:                          ; preds = %for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge, %for.cond4.preheader.lr.ph.i.i
  %xb.036.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i ], [ %inc15.i.i, %for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge ]
  %mono.135.i.i = phi ptr [ %mono.038.i.i, %for.cond4.preheader.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge ]
  %mul.i5.i = shl i32 %xb.036.i.i, 3
  %add.i.i = add i32 %mul.i5.i, %mul8.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call8.i.i, i32 %add.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i, align 1
  %52 = lshr i8 %51, 7
  %add9.1.i.i = add i32 %add.i.i, 1
  %arrayidx.1.i.i = getelementptr i8, ptr %call8.i.i, i32 %add9.1.i.i
  %53 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not31.1.i.i = icmp slt i8 %54, 0
  %add9.2.i.i = add i32 %add.i.i, 2
  %arrayidx.2.i.i = getelementptr i8, ptr %call8.i.i, i32 %add9.2.i.i
  %55 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not31.2.i.i = icmp slt i8 %56, 0
  %add9.3.i.i = add i32 %add.i.i, 3
  %arrayidx.3.i.i = getelementptr i8, ptr %call8.i.i, i32 %add9.3.i.i
  %57 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not31.3.i.i = icmp slt i8 %58, 0
  %add9.4.i.i = add i32 %add.i.i, 4
  %arrayidx.4.i.i = getelementptr i8, ptr %call8.i.i, i32 %add9.4.i.i
  %59 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not31.4.i.i = icmp slt i8 %60, 0
  %add9.5.i.i = add i32 %add.i.i, 5
  %arrayidx.5.i.i = getelementptr i8, ptr %call8.i.i, i32 %add9.5.i.i
  %61 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not31.5.i.i = icmp slt i8 %62, 0
  %add9.6.i.i = add i32 %add.i.i, 6
  %arrayidx.6.i.i = getelementptr i8, ptr %call8.i.i, i32 %add9.6.i.i
  %63 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not31.6.i.i = icmp slt i8 %64, 0
  %65 = or i8 %52, 2
  %66 = select i1 %tobool.not31.1.i.i, i8 %65, i8 %52
  %67 = or i8 %66, 4
  %68 = select i1 %tobool.not31.2.i.i, i8 %67, i8 %66
  %69 = or i8 %68, 8
  %70 = select i1 %tobool.not31.3.i.i, i8 %69, i8 %68
  %71 = or i8 %70, 16
  %72 = select i1 %tobool.not31.4.i.i, i8 %71, i8 %70
  %73 = or i8 %72, 32
  %74 = select i1 %tobool.not31.5.i.i, i8 %73, i8 %72
  %75 = or i8 %74, 64
  %76 = select i1 %tobool.not31.6.i.i, i8 %75, i8 %74
  %add9.7.i.i = add i32 %add.i.i, 7
  %arrayidx.7.i.i = getelementptr i8, ptr %call8.i.i, i32 %add9.7.i.i
  %77 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.7.i.i, align 1
  %79 = or i8 %76, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not31.7.i.i = icmp slt i8 %78, 0
  %spec.select.7.i.i = select i1 %tobool.not31.7.i.i, i8 %79, i8 %76
  %incdec.ptr.i.i = getelementptr i8, ptr %mono.135.i.i, i32 1
  %80 = ptrtoint ptr %mono.135.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %spec.select.7.i.i, ptr %mono.135.i.i, align 1
  %inc15.i.i = add nuw nsw i32 %xb.036.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc15.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.cond4.preheader.i.i.for.inc17.i.i_crit_edge, label %for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge

for.cond4.preheader.i.i.for.cond4.preheader.i.i_crit_edge: ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader.i.i

for.cond4.preheader.i.i.for.inc17.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.i.i

for.inc17.i.i:                                    ; preds = %for.cond4.preheader.i.i.for.inc17.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc17.i.i_crit_edge
  %mono.1.lcssa.i.i = phi ptr [ %mono.038.i.i, %for.cond1.preheader.i.i.for.inc17.i.i_crit_edge ], [ %incdec.ptr.i.i, %for.cond4.preheader.i.i.for.inc17.i.i_crit_edge ]
  %inc18.i.i = add nuw i32 %y.039.i.i, 1
  %exitcond41.not.i.i = icmp eq i32 %inc18.i.i, %49
  br i1 %exitcond41.not.i.i, label %for.inc17.i.i.repaper_gray8_to_mono_reversed.exit.i_crit_edge, label %for.inc17.i.i.for.cond1.preheader.i.i_crit_edge

for.inc17.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.i

for.inc17.i.i.repaper_gray8_to_mono_reversed.exit.i_crit_edge: ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_gray8_to_mono_reversed.exit.i

repaper_gray8_to_mono_reversed.exit.i:            ; preds = %for.inc17.i.i.repaper_gray8_to_mono_reversed.exit.i_crit_edge, %if.end12.i.repaper_gray8_to_mono_reversed.exit.i_crit_edge
  %partial.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 23
  %81 = ptrtoint ptr %partial.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %partial.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool15.not.i = icmp eq i8 %82, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %repaper_gray8_to_mono_reversed.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %current_frame.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 21
  %83 = ptrtoint ptr %current_frame.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %current_frame.i, align 8
  call fastcc void @repaper_frame_data_repeat(ptr noundef %10, ptr noundef nonnull %call8.i.i, ptr noundef %84, i32 noundef 3) #8
  br label %if.end26.i

if.else.i:                                        ; preds = %repaper_gray8_to_mono_reversed.exit.i
  %cleared.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 22
  %85 = ptrtoint ptr %cleared.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %cleared.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool17.not.i = icmp eq i8 %86, 0
  br i1 %tobool17.not.i, label %if.else22.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else.i
  %current_frame19.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 21
  %87 = ptrtoint ptr %current_frame19.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %current_frame19.i, align 8
  %call.i.i.i = call i64 @sched_clock() #8
  %89 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i.i = mul i32 %90, 1000000
  %conv.i.i = zext i32 %mul1.i.i to i64
  %add.i7.i = add i64 %call.i.i.i, %conv.i.i
  %height.i.i.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 11
  %width5.i.i.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %repaper_frame_data.exit.i.i.do.body.i.i_crit_edge, %if.then18.i
  %91 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp34.not.i.i.i = icmp eq i32 %92, 0
  br i1 %cmp34.not.i.i.i, label %do.body.i.i.repaper_frame_data.exit.i.i_crit_edge, label %do.body.i.i.for.body.i.i.i_crit_edge

do.body.i.i.for.body.i.i.i_crit_edge:             ; preds = %do.body.i.i
  br label %for.body.i.i.i

do.body.i.i.repaper_frame_data.exit.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.body.i.i.for.body.i.i.i_crit_edge
  %line.035.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.body.i.i.for.body.i.i.i_crit_edge ]
  %93 = ptrtoint ptr %width5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %width5.i.i.i, align 8
  %div29.i.i.i = lshr i32 %94, 3
  %mul.i.i.i = mul i32 %div29.i.i.i, %line.035.i.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %88, i32 %mul.i.i.i
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.035.i.i.i, ptr noundef %arrayidx.i.i.i, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #8
  %inc.i.i.i = add nuw i32 %line.035.i.i.i, 1
  %95 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %height.i.i.i, align 4
  %cmp.i.i8.i = icmp ult i32 %inc.i.i.i, %96
  br i1 %cmp.i.i8.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.repaper_frame_data.exit.i.i_crit_edge

for.body.i.i.i.repaper_frame_data.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

repaper_frame_data.exit.i.i:                      ; preds = %for.body.i.i.i.repaper_frame_data.exit.i.i_crit_edge, %do.body.i.i.repaper_frame_data.exit.i.i_crit_edge
  %call.i5.i.i = call i64 @sched_clock() #8
  %cmp.i9.i = icmp ult i64 %call.i5.i.i, %add.i7.i
  br i1 %cmp.i9.i, label %repaper_frame_data.exit.i.i.do.body.i.i_crit_edge, label %repaper_frame_data_repeat.exit.i

repaper_frame_data.exit.i.i.do.body.i.i_crit_edge: ; preds = %repaper_frame_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

repaper_frame_data_repeat.exit.i:                 ; preds = %repaper_frame_data.exit.i.i
  %97 = ptrtoint ptr %current_frame19.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %current_frame19.i, align 8
  %call.i.i10.i = call i64 @sched_clock() #8
  %99 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i12.i = mul i32 %100, 1000000
  %conv.i13.i = zext i32 %mul1.i12.i to i64
  %add.i14.i = add i64 %call.i.i10.i, %conv.i13.i
  br label %do.body.i18.i

do.body.i18.i:                                    ; preds = %repaper_frame_data.exit.i28.i.do.body.i18.i_crit_edge, %repaper_frame_data_repeat.exit.i
  %101 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp34.not.i.i17.i = icmp eq i32 %102, 0
  br i1 %cmp34.not.i.i17.i, label %do.body.i18.i.repaper_frame_data.exit.i28.i_crit_edge, label %do.body.i18.i.for.body.i.i25.i_crit_edge

do.body.i18.i.for.body.i.i25.i_crit_edge:         ; preds = %do.body.i18.i
  br label %for.body.i.i25.i

do.body.i18.i.repaper_frame_data.exit.i28.i_crit_edge: ; preds = %do.body.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i28.i

for.body.i.i25.i:                                 ; preds = %for.body.i.i25.i.for.body.i.i25.i_crit_edge, %do.body.i18.i.for.body.i.i25.i_crit_edge
  %line.035.i.i19.i = phi i32 [ %inc.i.i23.i, %for.body.i.i25.i.for.body.i.i25.i_crit_edge ], [ 0, %do.body.i18.i.for.body.i.i25.i_crit_edge ]
  %103 = ptrtoint ptr %width5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %width5.i.i.i, align 8
  %div29.i.i20.i = lshr i32 %104, 3
  %mul.i.i21.i = mul i32 %div29.i.i20.i, %line.035.i.i19.i
  %arrayidx.i.i22.i = getelementptr i8, ptr %98, i32 %mul.i.i21.i
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.035.i.i19.i, ptr noundef %arrayidx.i.i22.i, i8 noundef zeroext 0, ptr noundef null, i32 noundef 1) #8
  %inc.i.i23.i = add nuw i32 %line.035.i.i19.i, 1
  %105 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %height.i.i.i, align 4
  %cmp.i.i24.i = icmp ult i32 %inc.i.i23.i, %106
  br i1 %cmp.i.i24.i, label %for.body.i.i25.i.for.body.i.i25.i_crit_edge, label %for.body.i.i25.i.repaper_frame_data.exit.i28.i_crit_edge

for.body.i.i25.i.repaper_frame_data.exit.i28.i_crit_edge: ; preds = %for.body.i.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i28.i

for.body.i.i25.i.for.body.i.i25.i_crit_edge:      ; preds = %for.body.i.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i25.i

repaper_frame_data.exit.i28.i:                    ; preds = %for.body.i.i25.i.repaper_frame_data.exit.i28.i_crit_edge, %do.body.i18.i.repaper_frame_data.exit.i28.i_crit_edge
  %call.i5.i26.i = call i64 @sched_clock() #8
  %cmp.i27.i = icmp ult i64 %call.i5.i26.i, %add.i14.i
  br i1 %cmp.i27.i, label %repaper_frame_data.exit.i28.i.do.body.i18.i_crit_edge, label %repaper_frame_data_repeat.exit29.i

repaper_frame_data.exit.i28.i.do.body.i18.i_crit_edge: ; preds = %repaper_frame_data.exit.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i18.i

repaper_frame_data_repeat.exit29.i:               ; preds = %repaper_frame_data.exit.i28.i
  %call.i.i30.i = call i64 @sched_clock() #8
  %107 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i32.i = mul i32 %108, 1000000
  %conv.i33.i = zext i32 %mul1.i32.i to i64
  %add.i34.i = add i64 %call.i.i30.i, %conv.i33.i
  br label %do.body.i38.i

do.body.i38.i:                                    ; preds = %repaper_frame_data.exit.i48.i.do.body.i38.i_crit_edge, %repaper_frame_data_repeat.exit29.i
  %109 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp34.not.i.i37.i = icmp eq i32 %110, 0
  br i1 %cmp34.not.i.i37.i, label %do.body.i38.i.repaper_frame_data.exit.i48.i_crit_edge, label %do.body.i38.i.for.body.i.i45.i_crit_edge

do.body.i38.i.for.body.i.i45.i_crit_edge:         ; preds = %do.body.i38.i
  br label %for.body.i.i45.i

do.body.i38.i.repaper_frame_data.exit.i48.i_crit_edge: ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i48.i

for.body.i.i45.i:                                 ; preds = %for.body.i.i45.i.for.body.i.i45.i_crit_edge, %do.body.i38.i.for.body.i.i45.i_crit_edge
  %line.035.i.i39.i = phi i32 [ %inc.i.i43.i, %for.body.i.i45.i.for.body.i.i45.i_crit_edge ], [ 0, %do.body.i38.i.for.body.i.i45.i_crit_edge ]
  %111 = ptrtoint ptr %width5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %width5.i.i.i, align 8
  %div29.i.i40.i = lshr i32 %112, 3
  %mul.i.i41.i = mul i32 %div29.i.i40.i, %line.035.i.i39.i
  %arrayidx.i.i42.i = getelementptr i8, ptr %call8.i.i, i32 %mul.i.i41.i
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.035.i.i39.i, ptr noundef %arrayidx.i.i42.i, i8 noundef zeroext 0, ptr noundef null, i32 noundef 2) #8
  %inc.i.i43.i = add nuw i32 %line.035.i.i39.i, 1
  %113 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %height.i.i.i, align 4
  %cmp.i.i44.i = icmp ult i32 %inc.i.i43.i, %114
  br i1 %cmp.i.i44.i, label %for.body.i.i45.i.for.body.i.i45.i_crit_edge, label %for.body.i.i45.i.repaper_frame_data.exit.i48.i_crit_edge

for.body.i.i45.i.repaper_frame_data.exit.i48.i_crit_edge: ; preds = %for.body.i.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i48.i

for.body.i.i45.i.for.body.i.i45.i_crit_edge:      ; preds = %for.body.i.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i45.i

repaper_frame_data.exit.i48.i:                    ; preds = %for.body.i.i45.i.repaper_frame_data.exit.i48.i_crit_edge, %do.body.i38.i.repaper_frame_data.exit.i48.i_crit_edge
  %call.i5.i46.i = call i64 @sched_clock() #8
  %cmp.i47.i = icmp ult i64 %call.i5.i46.i, %add.i34.i
  br i1 %cmp.i47.i, label %repaper_frame_data.exit.i48.i.do.body.i38.i_crit_edge, label %repaper_frame_data_repeat.exit49.i

repaper_frame_data.exit.i48.i.do.body.i38.i_crit_edge: ; preds = %repaper_frame_data.exit.i48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i38.i

repaper_frame_data_repeat.exit49.i:               ; preds = %repaper_frame_data.exit.i48.i
  %call.i.i50.i = call i64 @sched_clock() #8
  %115 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i52.i = mul i32 %116, 1000000
  %conv.i53.i = zext i32 %mul1.i52.i to i64
  %add.i54.i = add i64 %call.i.i50.i, %conv.i53.i
  br label %do.body.i58.i

do.body.i58.i:                                    ; preds = %repaper_frame_data.exit.i68.i.do.body.i58.i_crit_edge, %repaper_frame_data_repeat.exit49.i
  %117 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %height.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp34.not.i.i57.i = icmp eq i32 %118, 0
  br i1 %cmp34.not.i.i57.i, label %do.body.i58.i.repaper_frame_data.exit.i68.i_crit_edge, label %do.body.i58.i.for.body.i.i65.i_crit_edge

do.body.i58.i.for.body.i.i65.i_crit_edge:         ; preds = %do.body.i58.i
  br label %for.body.i.i65.i

do.body.i58.i.repaper_frame_data.exit.i68.i_crit_edge: ; preds = %do.body.i58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i68.i

for.body.i.i65.i:                                 ; preds = %for.body.i.i65.i.for.body.i.i65.i_crit_edge, %do.body.i58.i.for.body.i.i65.i_crit_edge
  %line.035.i.i59.i = phi i32 [ %inc.i.i63.i, %for.body.i.i65.i.for.body.i.i65.i_crit_edge ], [ 0, %do.body.i58.i.for.body.i.i65.i_crit_edge ]
  %119 = ptrtoint ptr %width5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %width5.i.i.i, align 8
  %div29.i.i60.i = lshr i32 %120, 3
  %mul.i.i61.i = mul i32 %div29.i.i60.i, %line.035.i.i59.i
  %arrayidx.i.i62.i = getelementptr i8, ptr %call8.i.i, i32 %mul.i.i61.i
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.035.i.i59.i, ptr noundef %arrayidx.i.i62.i, i8 noundef zeroext 0, ptr noundef null, i32 noundef 3) #8
  %inc.i.i63.i = add nuw i32 %line.035.i.i59.i, 1
  %121 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %height.i.i.i, align 4
  %cmp.i.i64.i = icmp ult i32 %inc.i.i63.i, %122
  br i1 %cmp.i.i64.i, label %for.body.i.i65.i.for.body.i.i65.i_crit_edge, label %for.body.i.i65.i.repaper_frame_data.exit.i68.i_crit_edge

for.body.i.i65.i.repaper_frame_data.exit.i68.i_crit_edge: ; preds = %for.body.i.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i68.i

for.body.i.i65.i.for.body.i.i65.i_crit_edge:      ; preds = %for.body.i.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i65.i

repaper_frame_data.exit.i68.i:                    ; preds = %for.body.i.i65.i.repaper_frame_data.exit.i68.i_crit_edge, %do.body.i58.i.repaper_frame_data.exit.i68.i_crit_edge
  %call.i5.i66.i = call i64 @sched_clock() #8
  %cmp.i67.i = icmp ult i64 %call.i5.i66.i, %add.i54.i
  br i1 %cmp.i67.i, label %repaper_frame_data.exit.i68.i.do.body.i58.i_crit_edge, label %repaper_frame_data_repeat.exit69.i

repaper_frame_data.exit.i68.i.do.body.i58.i_crit_edge: ; preds = %repaper_frame_data.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i58.i

repaper_frame_data_repeat.exit69.i:               ; preds = %repaper_frame_data.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %partial.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %partial.i, align 1
  br label %if.end26.i

if.else22.i:                                      ; preds = %if.else.i
  %call.i.i111 = call i64 @sched_clock() #8
  %124 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i113 = mul i32 %125, 1000000
  %conv.i114 = zext i32 %mul1.i113 to i64
  %add.i115 = add i64 %call.i.i111, %conv.i114
  %height.i.i116 = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 11
  br label %do.body.i118

do.body.i118:                                     ; preds = %repaper_frame_fixed.exit.i125.do.body.i118_crit_edge, %if.else22.i
  %126 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp4.not.i.i117 = icmp eq i32 %127, 0
  br i1 %cmp4.not.i.i117, label %do.body.i118.repaper_frame_fixed.exit.i125_crit_edge, label %do.body.i118.for.body.i.i122_crit_edge

do.body.i118.for.body.i.i122_crit_edge:           ; preds = %do.body.i118
  br label %for.body.i.i122

do.body.i118.repaper_frame_fixed.exit.i125_crit_edge: ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i125

for.body.i.i122:                                  ; preds = %for.body.i.i122.for.body.i.i122_crit_edge, %do.body.i118.for.body.i.i122_crit_edge
  %line.05.i.i119 = phi i32 [ %inc.i.i120, %for.body.i.i122.for.body.i.i122_crit_edge ], [ 0, %do.body.i118.for.body.i.i122_crit_edge ]
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.05.i.i119, ptr noundef null, i8 noundef zeroext -1, ptr noundef null, i32 noundef 0) #8
  %inc.i.i120 = add nuw i32 %line.05.i.i119, 1
  %128 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i121 = icmp ult i32 %inc.i.i120, %129
  br i1 %cmp.i.i121, label %for.body.i.i122.for.body.i.i122_crit_edge, label %for.body.i.i122.repaper_frame_fixed.exit.i125_crit_edge

for.body.i.i122.repaper_frame_fixed.exit.i125_crit_edge: ; preds = %for.body.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i125

for.body.i.i122.for.body.i.i122_crit_edge:        ; preds = %for.body.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i122

repaper_frame_fixed.exit.i125:                    ; preds = %for.body.i.i122.repaper_frame_fixed.exit.i125_crit_edge, %do.body.i118.repaper_frame_fixed.exit.i125_crit_edge
  %call.i5.i123 = call i64 @sched_clock() #8
  %cmp.i124 = icmp ult i64 %call.i5.i123, %add.i115
  br i1 %cmp.i124, label %repaper_frame_fixed.exit.i125.do.body.i118_crit_edge, label %repaper_frame_fixed_repeat.exit126

repaper_frame_fixed.exit.i125.do.body.i118_crit_edge: ; preds = %repaper_frame_fixed.exit.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i118

repaper_frame_fixed_repeat.exit126:               ; preds = %repaper_frame_fixed.exit.i125
  %call.i.i95 = call i64 @sched_clock() #8
  %130 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i97 = mul i32 %131, 1000000
  %conv.i98 = zext i32 %mul1.i97 to i64
  %add.i99 = add i64 %call.i.i95, %conv.i98
  br label %do.body.i102

do.body.i102:                                     ; preds = %repaper_frame_fixed.exit.i109.do.body.i102_crit_edge, %repaper_frame_fixed_repeat.exit126
  %132 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp4.not.i.i101 = icmp eq i32 %133, 0
  br i1 %cmp4.not.i.i101, label %do.body.i102.repaper_frame_fixed.exit.i109_crit_edge, label %do.body.i102.for.body.i.i106_crit_edge

do.body.i102.for.body.i.i106_crit_edge:           ; preds = %do.body.i102
  br label %for.body.i.i106

do.body.i102.repaper_frame_fixed.exit.i109_crit_edge: ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i109

for.body.i.i106:                                  ; preds = %for.body.i.i106.for.body.i.i106_crit_edge, %do.body.i102.for.body.i.i106_crit_edge
  %line.05.i.i103 = phi i32 [ %inc.i.i104, %for.body.i.i106.for.body.i.i106_crit_edge ], [ 0, %do.body.i102.for.body.i.i106_crit_edge ]
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.05.i.i103, ptr noundef null, i8 noundef zeroext -1, ptr noundef null, i32 noundef 1) #8
  %inc.i.i104 = add nuw i32 %line.05.i.i103, 1
  %134 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i105 = icmp ult i32 %inc.i.i104, %135
  br i1 %cmp.i.i105, label %for.body.i.i106.for.body.i.i106_crit_edge, label %for.body.i.i106.repaper_frame_fixed.exit.i109_crit_edge

for.body.i.i106.repaper_frame_fixed.exit.i109_crit_edge: ; preds = %for.body.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i109

for.body.i.i106.for.body.i.i106_crit_edge:        ; preds = %for.body.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i106

repaper_frame_fixed.exit.i109:                    ; preds = %for.body.i.i106.repaper_frame_fixed.exit.i109_crit_edge, %do.body.i102.repaper_frame_fixed.exit.i109_crit_edge
  %call.i5.i107 = call i64 @sched_clock() #8
  %cmp.i108 = icmp ult i64 %call.i5.i107, %add.i99
  br i1 %cmp.i108, label %repaper_frame_fixed.exit.i109.do.body.i102_crit_edge, label %repaper_frame_fixed_repeat.exit110

repaper_frame_fixed.exit.i109.do.body.i102_crit_edge: ; preds = %repaper_frame_fixed.exit.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i102

repaper_frame_fixed_repeat.exit110:               ; preds = %repaper_frame_fixed.exit.i109
  %call.i.i79 = call i64 @sched_clock() #8
  %136 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i81 = mul i32 %137, 1000000
  %conv.i82 = zext i32 %mul1.i81 to i64
  %add.i83 = add i64 %call.i.i79, %conv.i82
  br label %do.body.i86

do.body.i86:                                      ; preds = %repaper_frame_fixed.exit.i93.do.body.i86_crit_edge, %repaper_frame_fixed_repeat.exit110
  %138 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp4.not.i.i85 = icmp eq i32 %139, 0
  br i1 %cmp4.not.i.i85, label %do.body.i86.repaper_frame_fixed.exit.i93_crit_edge, label %do.body.i86.for.body.i.i90_crit_edge

do.body.i86.for.body.i.i90_crit_edge:             ; preds = %do.body.i86
  br label %for.body.i.i90

do.body.i86.repaper_frame_fixed.exit.i93_crit_edge: ; preds = %do.body.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i93

for.body.i.i90:                                   ; preds = %for.body.i.i90.for.body.i.i90_crit_edge, %do.body.i86.for.body.i.i90_crit_edge
  %line.05.i.i87 = phi i32 [ %inc.i.i88, %for.body.i.i90.for.body.i.i90_crit_edge ], [ 0, %do.body.i86.for.body.i.i90_crit_edge ]
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.05.i.i87, ptr noundef null, i8 noundef zeroext -86, ptr noundef null, i32 noundef 2) #8
  %inc.i.i88 = add nuw i32 %line.05.i.i87, 1
  %140 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i89 = icmp ult i32 %inc.i.i88, %141
  br i1 %cmp.i.i89, label %for.body.i.i90.for.body.i.i90_crit_edge, label %for.body.i.i90.repaper_frame_fixed.exit.i93_crit_edge

for.body.i.i90.repaper_frame_fixed.exit.i93_crit_edge: ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i93

for.body.i.i90.for.body.i.i90_crit_edge:          ; preds = %for.body.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i90

repaper_frame_fixed.exit.i93:                     ; preds = %for.body.i.i90.repaper_frame_fixed.exit.i93_crit_edge, %do.body.i86.repaper_frame_fixed.exit.i93_crit_edge
  %call.i5.i91 = call i64 @sched_clock() #8
  %cmp.i92 = icmp ult i64 %call.i5.i91, %add.i83
  br i1 %cmp.i92, label %repaper_frame_fixed.exit.i93.do.body.i86_crit_edge, label %repaper_frame_fixed_repeat.exit94

repaper_frame_fixed.exit.i93.do.body.i86_crit_edge: ; preds = %repaper_frame_fixed.exit.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i86

repaper_frame_fixed_repeat.exit94:                ; preds = %repaper_frame_fixed.exit.i93
  %call.i.i63 = call i64 @sched_clock() #8
  %142 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i65 = mul i32 %143, 1000000
  %conv.i66 = zext i32 %mul1.i65 to i64
  %add.i67 = add i64 %call.i.i63, %conv.i66
  br label %do.body.i70

do.body.i70:                                      ; preds = %repaper_frame_fixed.exit.i77.do.body.i70_crit_edge, %repaper_frame_fixed_repeat.exit94
  %144 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp4.not.i.i69 = icmp eq i32 %145, 0
  br i1 %cmp4.not.i.i69, label %do.body.i70.repaper_frame_fixed.exit.i77_crit_edge, label %do.body.i70.for.body.i.i74_crit_edge

do.body.i70.for.body.i.i74_crit_edge:             ; preds = %do.body.i70
  br label %for.body.i.i74

do.body.i70.repaper_frame_fixed.exit.i77_crit_edge: ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i77

for.body.i.i74:                                   ; preds = %for.body.i.i74.for.body.i.i74_crit_edge, %do.body.i70.for.body.i.i74_crit_edge
  %line.05.i.i71 = phi i32 [ %inc.i.i72, %for.body.i.i74.for.body.i.i74_crit_edge ], [ 0, %do.body.i70.for.body.i.i74_crit_edge ]
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.05.i.i71, ptr noundef null, i8 noundef zeroext -86, ptr noundef null, i32 noundef 3) #8
  %inc.i.i72 = add nuw i32 %line.05.i.i71, 1
  %146 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i73 = icmp ult i32 %inc.i.i72, %147
  br i1 %cmp.i.i73, label %for.body.i.i74.for.body.i.i74_crit_edge, label %for.body.i.i74.repaper_frame_fixed.exit.i77_crit_edge

for.body.i.i74.repaper_frame_fixed.exit.i77_crit_edge: ; preds = %for.body.i.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i77

for.body.i.i74.for.body.i.i74_crit_edge:          ; preds = %for.body.i.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i74

repaper_frame_fixed.exit.i77:                     ; preds = %for.body.i.i74.repaper_frame_fixed.exit.i77_crit_edge, %do.body.i70.repaper_frame_fixed.exit.i77_crit_edge
  %call.i5.i75 = call i64 @sched_clock() #8
  %cmp.i76 = icmp ult i64 %call.i5.i75, %add.i67
  br i1 %cmp.i76, label %repaper_frame_fixed.exit.i77.do.body.i70_crit_edge, label %repaper_frame_fixed_repeat.exit78

repaper_frame_fixed.exit.i77.do.body.i70_crit_edge: ; preds = %repaper_frame_fixed.exit.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i70

repaper_frame_fixed_repeat.exit78:                ; preds = %repaper_frame_fixed.exit.i77
  %call.i.i47 = call i64 @sched_clock() #8
  %148 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i49 = mul i32 %149, 1000000
  %conv.i50 = zext i32 %mul1.i49 to i64
  %add.i51 = add i64 %call.i.i47, %conv.i50
  br label %do.body.i54

do.body.i54:                                      ; preds = %repaper_frame_fixed.exit.i61.do.body.i54_crit_edge, %repaper_frame_fixed_repeat.exit78
  %150 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp4.not.i.i53 = icmp eq i32 %151, 0
  br i1 %cmp4.not.i.i53, label %do.body.i54.repaper_frame_fixed.exit.i61_crit_edge, label %do.body.i54.for.body.i.i58_crit_edge

do.body.i54.for.body.i.i58_crit_edge:             ; preds = %do.body.i54
  br label %for.body.i.i58

do.body.i54.repaper_frame_fixed.exit.i61_crit_edge: ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i61

for.body.i.i58:                                   ; preds = %for.body.i.i58.for.body.i.i58_crit_edge, %do.body.i54.for.body.i.i58_crit_edge
  %line.05.i.i55 = phi i32 [ %inc.i.i56, %for.body.i.i58.for.body.i.i58_crit_edge ], [ 0, %do.body.i54.for.body.i.i58_crit_edge ]
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.05.i.i55, ptr noundef null, i8 noundef zeroext -86, ptr noundef null, i32 noundef 0) #8
  %inc.i.i56 = add nuw i32 %line.05.i.i55, 1
  %152 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i57 = icmp ult i32 %inc.i.i56, %153
  br i1 %cmp.i.i57, label %for.body.i.i58.for.body.i.i58_crit_edge, label %for.body.i.i58.repaper_frame_fixed.exit.i61_crit_edge

for.body.i.i58.repaper_frame_fixed.exit.i61_crit_edge: ; preds = %for.body.i.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i61

for.body.i.i58.for.body.i.i58_crit_edge:          ; preds = %for.body.i.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i58

repaper_frame_fixed.exit.i61:                     ; preds = %for.body.i.i58.repaper_frame_fixed.exit.i61_crit_edge, %do.body.i54.repaper_frame_fixed.exit.i61_crit_edge
  %call.i5.i59 = call i64 @sched_clock() #8
  %cmp.i60 = icmp ult i64 %call.i5.i59, %add.i51
  br i1 %cmp.i60, label %repaper_frame_fixed.exit.i61.do.body.i54_crit_edge, label %repaper_frame_fixed_repeat.exit62

repaper_frame_fixed.exit.i61.do.body.i54_crit_edge: ; preds = %repaper_frame_fixed.exit.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i54

repaper_frame_fixed_repeat.exit62:                ; preds = %repaper_frame_fixed.exit.i61
  %call.i.i35 = call i64 @sched_clock() #8
  %154 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i37 = mul i32 %155, 1000000
  %conv.i38 = zext i32 %mul1.i37 to i64
  %add.i39 = add i64 %call.i.i35, %conv.i38
  br label %do.body.i41

do.body.i41:                                      ; preds = %repaper_frame_fixed.exit.i.do.body.i41_crit_edge, %repaper_frame_fixed_repeat.exit62
  %156 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp4.not.i.i = icmp eq i32 %157, 0
  br i1 %cmp4.not.i.i, label %do.body.i41.repaper_frame_fixed.exit.i_crit_edge, label %do.body.i41.for.body.i.i44_crit_edge

do.body.i41.for.body.i.i44_crit_edge:             ; preds = %do.body.i41
  br label %for.body.i.i44

do.body.i41.repaper_frame_fixed.exit.i_crit_edge: ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i

for.body.i.i44:                                   ; preds = %for.body.i.i44.for.body.i.i44_crit_edge, %do.body.i41.for.body.i.i44_crit_edge
  %line.05.i.i = phi i32 [ %inc.i.i42, %for.body.i.i44.for.body.i.i44_crit_edge ], [ 0, %do.body.i41.for.body.i.i44_crit_edge ]
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.05.i.i, ptr noundef null, i8 noundef zeroext -86, ptr noundef null, i32 noundef 1) #8
  %inc.i.i42 = add nuw i32 %line.05.i.i, 1
  %158 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i43 = icmp ult i32 %inc.i.i42, %159
  br i1 %cmp.i.i43, label %for.body.i.i44.for.body.i.i44_crit_edge, label %for.body.i.i44.repaper_frame_fixed.exit.i_crit_edge

for.body.i.i44.repaper_frame_fixed.exit.i_crit_edge: ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_fixed.exit.i

for.body.i.i44.for.body.i.i44_crit_edge:          ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i44

repaper_frame_fixed.exit.i:                       ; preds = %for.body.i.i44.repaper_frame_fixed.exit.i_crit_edge, %do.body.i41.repaper_frame_fixed.exit.i_crit_edge
  %call.i5.i45 = call i64 @sched_clock() #8
  %cmp.i46 = icmp ult i64 %call.i5.i45, %add.i39
  br i1 %cmp.i46, label %repaper_frame_fixed.exit.i.do.body.i41_crit_edge, label %repaper_frame_fixed_repeat.exit

repaper_frame_fixed.exit.i.do.body.i41_crit_edge: ; preds = %repaper_frame_fixed.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i41

repaper_frame_fixed_repeat.exit:                  ; preds = %repaper_frame_fixed.exit.i
  %call.i.i15 = call i64 @sched_clock() #8
  %160 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i17 = mul i32 %161, 1000000
  %conv.i18 = zext i32 %mul1.i17 to i64
  %add.i19 = add i64 %call.i.i15, %conv.i18
  %width5.i.i21 = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 12
  br label %do.body.i23

do.body.i23:                                      ; preds = %repaper_frame_data.exit.i33.do.body.i23_crit_edge, %repaper_frame_fixed_repeat.exit
  %162 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp34.not.i.i22 = icmp eq i32 %163, 0
  br i1 %cmp34.not.i.i22, label %do.body.i23.repaper_frame_data.exit.i33_crit_edge, label %do.body.i23.for.body.i.i30_crit_edge

do.body.i23.for.body.i.i30_crit_edge:             ; preds = %do.body.i23
  br label %for.body.i.i30

do.body.i23.repaper_frame_data.exit.i33_crit_edge: ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i33

for.body.i.i30:                                   ; preds = %for.body.i.i30.for.body.i.i30_crit_edge, %do.body.i23.for.body.i.i30_crit_edge
  %line.035.i.i24 = phi i32 [ %inc.i.i28, %for.body.i.i30.for.body.i.i30_crit_edge ], [ 0, %do.body.i23.for.body.i.i30_crit_edge ]
  %164 = ptrtoint ptr %width5.i.i21 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %width5.i.i21, align 8
  %div29.i.i25 = lshr i32 %165, 3
  %mul.i.i26 = mul i32 %div29.i.i25, %line.035.i.i24
  %arrayidx.i.i27 = getelementptr i8, ptr %call8.i.i, i32 %mul.i.i26
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.035.i.i24, ptr noundef %arrayidx.i.i27, i8 noundef zeroext 0, ptr noundef null, i32 noundef 2) #8
  %inc.i.i28 = add nuw i32 %line.035.i.i24, 1
  %166 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i29 = icmp ult i32 %inc.i.i28, %167
  br i1 %cmp.i.i29, label %for.body.i.i30.for.body.i.i30_crit_edge, label %for.body.i.i30.repaper_frame_data.exit.i33_crit_edge

for.body.i.i30.repaper_frame_data.exit.i33_crit_edge: ; preds = %for.body.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i33

for.body.i.i30.for.body.i.i30_crit_edge:          ; preds = %for.body.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i30

repaper_frame_data.exit.i33:                      ; preds = %for.body.i.i30.repaper_frame_data.exit.i33_crit_edge, %do.body.i23.repaper_frame_data.exit.i33_crit_edge
  %call.i5.i31 = call i64 @sched_clock() #8
  %cmp.i32 = icmp ult i64 %call.i5.i31, %add.i19
  br i1 %cmp.i32, label %repaper_frame_data.exit.i33.do.body.i23_crit_edge, label %repaper_frame_data_repeat.exit34

repaper_frame_data.exit.i33.do.body.i23_crit_edge: ; preds = %repaper_frame_data.exit.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i23

repaper_frame_data_repeat.exit34:                 ; preds = %repaper_frame_data.exit.i33
  %call.i.i9 = call i64 @sched_clock() #8
  %168 = ptrtoint ptr %factored_stage_time.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %factored_stage_time.i, align 8
  %mul1.i = mul i32 %169, 1000000
  %conv.i = zext i32 %mul1.i to i64
  %add.i11 = add i64 %call.i.i9, %conv.i
  br label %do.body.i

do.body.i:                                        ; preds = %repaper_frame_data.exit.i.do.body.i_crit_edge, %repaper_frame_data_repeat.exit34
  %170 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %height.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp34.not.i.i = icmp eq i32 %171, 0
  br i1 %cmp34.not.i.i, label %do.body.i.repaper_frame_data.exit.i_crit_edge, label %do.body.i.for.body.i.i_crit_edge

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

do.body.i.repaper_frame_data.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %line.035.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.i.for.body.i.i_crit_edge ]
  %172 = ptrtoint ptr %width5.i.i21 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %width5.i.i21, align 8
  %div29.i.i = lshr i32 %173, 3
  %mul.i.i12 = mul i32 %div29.i.i, %line.035.i.i
  %arrayidx.i.i13 = getelementptr i8, ptr %call8.i.i, i32 %mul.i.i12
  call fastcc void @repaper_one_line(ptr noundef %10, i32 noundef %line.035.i.i, ptr noundef %arrayidx.i.i13, i8 noundef zeroext 0, ptr noundef null, i32 noundef 3) #8
  %inc.i.i = add nuw i32 %line.035.i.i, 1
  %174 = ptrtoint ptr %height.i.i116 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %height.i.i116, align 4
  %cmp.i.i14 = icmp ult i32 %inc.i.i, %175
  br i1 %cmp.i.i14, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.repaper_frame_data.exit.i_crit_edge

for.body.i.i.repaper_frame_data.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

repaper_frame_data.exit.i:                        ; preds = %for.body.i.i.repaper_frame_data.exit.i_crit_edge, %do.body.i.repaper_frame_data.exit.i_crit_edge
  %call.i5.i = call i64 @sched_clock() #8
  %cmp.i = icmp ult i64 %call.i5.i, %add.i11
  br i1 %cmp.i, label %repaper_frame_data.exit.i.do.body.i_crit_edge, label %repaper_frame_data_repeat.exit

repaper_frame_data.exit.i.do.body.i_crit_edge:    ; preds = %repaper_frame_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

repaper_frame_data_repeat.exit:                   ; preds = %repaper_frame_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %cleared.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %cleared.i, align 4
  %177 = ptrtoint ptr %partial.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %partial.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %repaper_frame_data_repeat.exit, %repaper_frame_data_repeat.exit69.i, %if.then16.i
  %current_frame27.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 21
  %178 = ptrtoint ptr %current_frame27.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %current_frame27.i, align 8
  %180 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %width.i, align 8
  %182 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %183, %181
  %div1.i = lshr i32 %mul.i, 3
  %184 = call ptr @memcpy(ptr %179, ptr %call8.i.i, i32 %div1.i)
  %pre_border_byte.i = getelementptr inbounds %struct.repaper_epd, ptr %10, i32 0, i32 18
  %185 = ptrtoint ptr %pre_border_byte.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %pre_border_byte.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool30.not.i = icmp eq i8 %186, 0
  br i1 %tobool30.not.i, label %if.end26.i.out_free.i_crit_edge, label %for.cond.preheader.i

if.end26.i.out_free.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

for.cond.preheader.i:                             ; preds = %if.end26.i
  %187 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %188)
  %cmp78.not.i = icmp ult i32 %188, 8
  br i1 %cmp78.not.i, label %for.cond.preheader.i.out_free.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.out_free.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %div332.i = lshr i32 %188, 3
  %189 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %height.i, align 4
  %sub.i = add i32 %190, -1
  %mul36.i = mul i32 %sub.i, %188
  %div373.i = lshr i32 %mul36.i, 3
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %x.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div332.i
  br i1 %exitcond.not.i, label %for.cond.i.out_free.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.out_free.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %x.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %x.079.i, %div373.i
  %arrayidx.i = getelementptr i8, ptr %call8.i.i, i32 %add.i
  %191 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool38.not.i = icmp eq i8 %192, 0
  br i1 %tobool38.not.i, label %for.cond.i, label %if.then39.i

if.then39.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %current_frame27.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %current_frame27.i, align 8
  call fastcc void @repaper_frame_data_repeat(ptr noundef %10, ptr noundef nonnull %call8.i.i, ptr noundef %194, i32 noundef 3) #8
  br label %out_free.i

out_free.i:                                       ; preds = %if.then39.i, %for.cond.i.out_free.i_crit_edge, %for.cond.preheader.i.out_free.i_crit_edge, %if.end26.i.out_free.i_crit_edge, %if.end8.i.out_free.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %out_exit.i

out_exit.i:                                       ; preds = %out_free.i, %if.end7.i.i.out_exit.i_crit_edge, %repaper_get_temperature.exit.i.out_exit.i_crit_edge
  %195 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %196) #8
  br label %repaper_fb_dirty.exit

repaper_fb_dirty.exit:                            ; preds = %out_exit.i, %if.then3.repaper_fb_dirty.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip.i) #8
  br label %cleanup

cleanup:                                          ; preds = %repaper_fb_dirty.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @power_off(ptr nocapture noundef readonly %epd) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 8
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #8
  %panel_on = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 5
  %2 = ptrtoint ptr %panel_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_on, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  %border = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 6
  %4 = ptrtoint ptr %border to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %border, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spi = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 4
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.repaper_spi_mosi_low.exit_crit_edge

if.end.repaper_spi_mosi_low.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_spi_mosi_low.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %repaper_spi_mosi_low.exit

repaper_spi_mosi_low.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.end.repaper_spi_mosi_low.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  %discharge = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 7
  %23 = ptrtoint ptr %discharge to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %discharge, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %24, i32 noundef 1) #8
  call void @msleep(i32 noundef 150) #8
  %25 = ptrtoint ptr %discharge to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %discharge, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %26, i32 noundef 0) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @repaper_spi_transfer(ptr noundef %spi, i8 noundef zeroext %header, ptr noundef %tx, ptr noundef writeonly %rx, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %tr = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %tr) #8
  %0 = getelementptr inbounds i8, ptr %tr, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %header, ptr %call7.i, align 8
  %4 = ptrtoint ptr %tr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %tr, align 4
  %len3 = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 2
  %5 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len3, align 4
  %tobool4.not = icmp ne ptr %tx, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %len)
  %cmp = icmp ult i32 %len, 33
  %or.cond = and i1 %tobool4.not, %cmp
  br i1 %or.cond, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @kmemdup(ptr noundef nonnull %tx, i32 noundef %len, i32 noundef 3264) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.out_free_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5.out_free_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %txbuf.0 = phi ptr [ %call6, %if.then5.if.end10_crit_edge ], [ null, %if.end.if.end10_crit_edge ]
  %tobool11.not = icmp eq ptr %rx, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.end8.i

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end8.i:                                        ; preds = %if.end10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #12
  %tobool14.not = icmp eq ptr %call9.i, null
  br i1 %tobool14.not, label %if.end8.i.out_free_crit_edge, label %if.end8.i.if.end17_crit_edge

if.end8.i.if.end17_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end8.i.out_free_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end17:                                         ; preds = %if.end8.i.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %rxbuf.0 = phi ptr [ %call9.i, %if.end8.i.if.end17_crit_edge ], [ null, %if.end10.if.end17_crit_edge ]
  %tobool18.not = icmp eq ptr %txbuf.0, null
  %tx.txbuf.0 = select i1 %tobool18.not, ptr %tx, ptr %txbuf.0
  %arrayidx19 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tr, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx.txbuf.0, ptr %arrayidx19, align 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tr, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rxbuf.0, ptr %rx_buf, align 4
  %len23 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tr, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %len23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %len23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end17.spi_message_add_tail.exit.i.i_crit_edge

if.end17.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end17.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %21, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %tr, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i.i.i.1, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.1, ptr %21, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  %tobool11.not.not = xor i1 %tobool11.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  %or.cond52 = select i1 %tobool11.not.not, i1 %tobool27.not, i1 false
  br i1 %or.cond52, label %if.then28, label %spi_message_add_tail.exit.i.i.1.out_free_crit_edge

spi_message_add_tail.exit.i.i.1.out_free_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then28:                                        ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %26 = call ptr @memcpy(ptr %rx, ptr %rxbuf.0, i32 %len)
  br label %out_free

out_free:                                         ; preds = %if.then28, %spi_message_add_tail.exit.i.i.1.out_free_crit_edge, %if.end8.i.out_free_crit_edge, %if.then5.out_free_crit_edge
  %txbuf.1 = phi ptr [ %txbuf.0, %if.then28 ], [ %txbuf.0, %spi_message_add_tail.exit.i.i.1.out_free_crit_edge ], [ null, %if.then5.out_free_crit_edge ], [ %txbuf.0, %if.end8.i.out_free_crit_edge ]
  %rxbuf.1 = phi ptr [ %rxbuf.0, %if.then28 ], [ %rxbuf.0, %spi_message_add_tail.exit.i.i.1.out_free_crit_edge ], [ null, %if.then5.out_free_crit_edge ], [ null, %if.end8.i.out_free_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.then28 ], [ %call.i, %spi_message_add_tail.exit.i.i.1.out_free_crit_edge ], [ -12, %if.then5.out_free_crit_edge ], [ -12, %if.end8.i.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @kfree(ptr noundef %txbuf.1) #8
  call void @kfree(ptr noundef %rxbuf.1) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %tr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @repaper_one_line(ptr nocapture noundef readonly %epd, i32 noundef %line, ptr noundef readonly %data, i8 noundef zeroext %fixed_value, ptr noundef readonly %mask, i32 noundef %stage) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i162 = alloca %struct.spi_message, align 4
  %t.i.i163 = alloca %struct.spi_transfer, align 4
  %buf.i164 = alloca [1 x i8], align 1
  %reg.addr.i.i = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %reg.addr.i = alloca i8, align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %line_buffer = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 20
  %0 = ptrtoint ptr %line_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line_buffer, align 4
  %spi = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 4
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.repaper_spi_mosi_low.exit_crit_edge

entry.repaper_spi_mosi_low.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_spi_mosi_low.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %repaper_spi_mosi_low.exit

repaper_spi_mosi_low.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %entry.repaper_spi_mosi_low.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  %pre_border_byte = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 18
  %19 = ptrtoint ptr %pre_border_byte to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pre_border_byte, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %repaper_spi_mosi_low.exit.if.end_crit_edge, label %if.then

repaper_spi_mosi_low.exit.if.end_crit_edge:       ; preds = %repaper_spi_mosi_low.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %repaper_spi_mosi_low.exit
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %repaper_spi_mosi_low.exit.if.end_crit_edge
  %p.0 = phi ptr [ %1, %repaper_spi_mosi_low.exit.if.end_crit_edge ], [ %incdec.ptr, %if.then ]
  %middle_scan = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 17
  %22 = ptrtoint ptr %middle_scan to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %middle_scan, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not = icmp eq i8 %23, 0
  br i1 %tobool1.not, label %for.cond9.preheader, label %if.then2

for.cond9.preheader:                              ; preds = %if.end
  %bytes_per_scan10 = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 13
  %24 = ptrtoint ptr %bytes_per_scan10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes_per_scan10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp11200.not = icmp eq i32 %25, 0
  br i1 %cmp11200.not, label %for.cond9.preheader.for.end28_crit_edge, label %for.body13.lr.ph

for.cond9.preheader.for.end28_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.body13.lr.ph:                                 ; preds = %for.cond9.preheader
  %and14 = and i32 %line, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15.not = icmp ne i32 %and14, 0
  %div17107 = lshr i32 %line, 3
  %and21 = and i32 %line, 6
  %shr = lshr i32 192, %and21
  %conv22 = trunc i32 %shr to i8
  br label %for.body13

if.then2:                                         ; preds = %if.end
  %width.i = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 12
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp.not57.i = icmp ult i32 %27, 8
  br i1 %cmp.not57.i, label %if.then2.repaper_odd_pixels.exit_crit_edge, label %for.body.lr.ph.i

if.then2.repaper_odd_pixels.exit_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_odd_pixels.exit

for.body.lr.ph.i:                                 ; preds = %if.then2
  %div55.i = lshr i32 %27, 3
  %tobool.not.i = icmp eq ptr %data, null
  %tobool2.not.i = icmp eq ptr %mask, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.1 = phi ptr [ %p.0, %for.body.lr.ph.i ], [ %p.2, %for.inc.i.for.body.i_crit_edge ]
  %b.058.i = phi i32 [ %div55.i, %for.body.lr.ph.i ], [ %dec.pre-phi.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %sub.i = add nsw i32 %b.058.i, -1
  %arrayidx.i = getelementptr i8, ptr %data, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = and i8 %29, 85
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i = getelementptr i8, ptr %mask, i32 %sub.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx5.i, align 1
  %xor56.i = xor i8 %32, %29
  %33 = and i8 %xor56.i, 85
  %narrow60.i = mul nuw i8 %33, 3
  %or.i = zext i8 %narrow60.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %pixel_mask.0.i = phi i32 [ %or.i, %if.then3.i ], [ 255, %if.then.i.if.end.i_crit_edge ]
  %34 = zext i32 %stage to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %stage, label %if.end.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb17.i
    i32 2, label %sw.bb21.i
    i32 3, label %sw.bb27.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = xor i8 %29, -1
  %36 = or i8 %35, -86
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = xor i8 %30, 85
  %narrow.i = add nuw i8 %37, 85
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = shl nuw i8 %30, 1
  %39 = xor i8 %38, -1
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = or i8 %29, -86
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb27.i, %sw.bb21.i, %sw.bb17.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %pixels.0.i = phi i8 [ %30, %if.end.i.sw.epilog.i_crit_edge ], [ %40, %sw.bb27.i ], [ %39, %sw.bb21.i ], [ %narrow.i, %sw.bb17.i ], [ %36, %sw.bb.i ]
  %conv31.i = zext i8 %pixels.0.i to i32
  %and33.i = and i32 %pixel_mask.0.i, %conv31.i
  %neg.i = and i32 %pixel_mask.0.i, 85
  %and35.i = xor i32 %neg.i, 85
  %or36.i = or i32 %and33.i, %and35.i
  %conv37.i = trunc i32 %or36.i to i8
  %41 = ptrtoint ptr %p.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv37.i, ptr %p.1, align 1
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %p.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %fixed_value, ptr %p.1, align 1
  %.pre.i = add nsw i32 %b.058.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %sw.epilog.i
  %dec.pre-phi.i = phi i32 [ %sub.i, %sw.epilog.i ], [ %.pre.i, %if.else.i ]
  %p.2 = getelementptr i8, ptr %p.1, i32 1
  %cmp.not.i = icmp eq i32 %dec.pre-phi.i, 0
  br i1 %cmp.not.i, label %for.inc.i.repaper_odd_pixels.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.repaper_odd_pixels.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_odd_pixels.exit

repaper_odd_pixels.exit:                          ; preds = %for.inc.i.repaper_odd_pixels.exit_crit_edge, %if.then2.repaper_odd_pixels.exit_crit_edge
  %p.3 = phi ptr [ %p.0, %if.then2.repaper_odd_pixels.exit_crit_edge ], [ %p.2, %for.inc.i.repaper_odd_pixels.exit_crit_edge ]
  %bytes_per_scan = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 13
  %43 = ptrtoint ptr %bytes_per_scan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytes_per_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not197 = icmp eq i32 %44, 0
  br i1 %cmp.not197, label %repaper_odd_pixels.exit.for.end_crit_edge, label %for.body.lr.ph

repaper_odd_pixels.exit.for.end_crit_edge:        ; preds = %repaper_odd_pixels.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %repaper_odd_pixels.exit
  %div108 = lshr i32 %line, 2
  %and = shl i32 %line, 1
  %mul = and i32 %and, 6
  %shl = shl nuw nsw i32 3, %mul
  %conv = trunc i32 %shl to i8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %b.0199 = phi i32 [ %44, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %p.4198 = phi ptr [ %p.3, %for.body.lr.ph ], [ %p.5, %for.body.for.body_crit_edge ]
  %sub = add i32 %b.0199, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div108, i32 %sub)
  %cmp3 = icmp eq i32 %div108, %sub
  %storemerge = select i1 %cmp3, i8 %conv, i8 0
  %p.5 = getelementptr i8, ptr %p.4198, i32 1
  %45 = ptrtoint ptr %p.4198 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge, ptr %p.4198, align 1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %repaper_odd_pixels.exit.for.end_crit_edge
  %p.4.lcssa = phi ptr [ %p.3, %repaper_odd_pixels.exit.for.end_crit_edge ], [ %p.5, %for.body.for.end_crit_edge ]
  %46 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp90.not.i = icmp ult i32 %47, 8
  br i1 %cmp90.not.i, label %for.end.if.end53_crit_edge, label %for.body.lr.ph.i113

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

for.body.lr.ph.i113:                              ; preds = %for.end
  %tobool.not.i111 = icmp eq ptr %data, null
  %tobool2.not.i112 = icmp eq ptr %mask, null
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc.i130.for.body.i114_crit_edge, %for.body.lr.ph.i113
  %p.6 = phi ptr [ %p.4.lcssa, %for.body.lr.ph.i113 ], [ %p.7, %for.inc.i130.for.body.i114_crit_edge ]
  %b.091.i = phi i32 [ 0, %for.body.lr.ph.i113 ], [ %inc.i, %for.inc.i130.for.body.i114_crit_edge ]
  br i1 %tobool.not.i111, label %for.body.i114.for.inc.i130_crit_edge, label %if.then.i116

for.body.i114.for.inc.i130_crit_edge:             ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i130

if.then.i116:                                     ; preds = %for.body.i114
  %arrayidx.i115 = getelementptr i8, ptr %data, i32 %b.091.i
  %48 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i115, align 1
  %50 = and i8 %49, -86
  br i1 %tobool2.not.i112, label %if.then.i116.if.end.i120_crit_edge, label %if.then3.i118

if.then.i116.if.end.i120_crit_edge:               ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i120

if.then3.i118:                                    ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4.i = getelementptr i8, ptr %mask, i32 %b.091.i
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx4.i, align 1
  %xor88.i = xor i8 %52, %49
  %53 = and i8 %xor88.i, -86
  %conv9.i = zext i8 %53 to i32
  %54 = lshr exact i32 %conv9.i, 1
  %or.i117 = or i32 %54, %conv9.i
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.then3.i118, %if.then.i116.if.end.i120_crit_edge
  %pixel_mask.0.i119 = phi i32 [ %or.i117, %if.then3.i118 ], [ 255, %if.then.i116.if.end.i120_crit_edge ]
  %55 = zext i32 %stage to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %stage, label %if.end.i120.sw.epilog.i128_crit_edge [
    i32 0, label %sw.bb.i121
    i32 1, label %sw.bb17.i123
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb27.i124
  ]

if.end.i120.sw.epilog.i128_crit_edge:             ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i128

sw.bb.i121:                                       ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  %56 = lshr exact i8 %50, 1
  %57 = xor i8 %56, -1
  br label %sw.epilog.i128

sw.bb17.i123:                                     ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  %58 = lshr exact i8 %50, 1
  %59 = xor i8 %58, 85
  %narrow.i122 = add nuw i8 %59, 85
  br label %sw.epilog.i128

sw.bb22.i:                                        ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  %60 = xor i8 %49, -1
  %61 = or i8 %60, 85
  br label %sw.epilog.i128

sw.bb27.i124:                                     ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  %62 = lshr exact i8 %50, 1
  %63 = or i8 %62, -86
  br label %sw.epilog.i128

sw.epilog.i128:                                   ; preds = %sw.bb27.i124, %sw.bb22.i, %sw.bb17.i123, %sw.bb.i121, %if.end.i120.sw.epilog.i128_crit_edge
  %pixels.0.i125 = phi i8 [ %50, %if.end.i120.sw.epilog.i128_crit_edge ], [ %63, %sw.bb27.i124 ], [ %61, %sw.bb22.i ], [ %narrow.i122, %sw.bb17.i123 ], [ %57, %sw.bb.i121 ]
  %conv32.i = zext i8 %pixels.0.i125 to i32
  %and34.i = and i32 %pixel_mask.0.i119, %conv32.i
  %neg.i126 = and i32 %pixel_mask.0.i119, 85
  %and36.i = xor i32 %neg.i126, 85
  %or37.i = or i32 %and34.i, %and36.i
  %64 = lshr i32 %or37.i, 6
  %65 = lshr i32 %or37.i, 2
  %shl57.i = and i32 %65, 12
  %66 = shl nuw nsw i32 %or37.i, 2
  %shl60.i = and i32 %66, 48
  %conv54.i = shl nuw nsw i32 %or37.i, 6
  %or61.i = or i32 %conv54.i, %64
  %or58.i = or i32 %or61.i, %shl57.i
  %or64.i = or i32 %or58.i, %shl60.i
  %conv65.i = trunc i32 %or64.i to i8
  br label %for.inc.i130

for.inc.i130:                                     ; preds = %sw.epilog.i128, %for.body.i114.for.inc.i130_crit_edge
  %storemerge193 = phi i8 [ %conv65.i, %sw.epilog.i128 ], [ %fixed_value, %for.body.i114.for.inc.i130_crit_edge ]
  %p.7 = getelementptr i8, ptr %p.6, i32 1
  %67 = ptrtoint ptr %p.6 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %storemerge193, ptr %p.6, align 1
  %inc.i = add nuw nsw i32 %b.091.i, 1
  %68 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %width.i, align 8
  %div87.i = lshr i32 %69, 3
  %cmp.i = icmp ult i32 %inc.i, %div87.i
  br i1 %cmp.i, label %for.inc.i130.for.body.i114_crit_edge, label %for.inc.i130.if.end53_crit_edge

for.inc.i130.if.end53_crit_edge:                  ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

for.inc.i130.for.body.i114_crit_edge:             ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i114

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %b.1202 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc, %for.body13.for.body13_crit_edge ]
  %p.9201 = phi ptr [ %p.0, %for.body13.lr.ph ], [ %p.10, %for.body13.for.body13_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div17107, i32 %b.1202)
  %cmp18 = icmp eq i32 %div17107, %b.1202
  %or.cond = select i1 %cmp15.not, i1 %cmp18, i1 false
  %storemerge195 = select i1 %or.cond, i8 %conv22, i8 0
  %p.10 = getelementptr i8, ptr %p.9201, i32 1
  %70 = ptrtoint ptr %p.9201 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %storemerge195, ptr %p.9201, align 1
  %inc = add nuw i32 %b.1202, 1
  %71 = ptrtoint ptr %bytes_per_scan10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bytes_per_scan10, align 4
  %cmp11 = icmp ult i32 %inc, %72
  br i1 %cmp11, label %for.body13.for.body13_crit_edge, label %for.body13.for.end28_crit_edge

for.body13.for.end28_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.end28:                                        ; preds = %for.body13.for.end28_crit_edge, %for.cond9.preheader.for.end28_crit_edge
  %p.9.lcssa = phi ptr [ %p.0, %for.cond9.preheader.for.end28_crit_edge ], [ %p.10, %for.body13.for.end28_crit_edge ]
  %width.i131 = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 12
  %73 = ptrtoint ptr %width.i131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %width.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %74)
  %cmp.not76.i = icmp ult i32 %74, 8
  br i1 %cmp.not76.i, label %for.end28.repaper_all_pixels.exit_crit_edge, label %for.body.lr.ph.i133

for.end28.repaper_all_pixels.exit_crit_edge:      ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_all_pixels.exit

for.body.lr.ph.i133:                              ; preds = %for.end28
  %div65.i = lshr i32 %74, 3
  %tobool.not.i132 = icmp eq ptr %data, null
  %tobool1.not.i = icmp eq ptr %mask, null
  br label %for.body.i134

for.body.i134:                                    ; preds = %for.inc.i159.for.body.i134_crit_edge, %for.body.lr.ph.i133
  %p.11 = phi ptr [ %p.9.lcssa, %for.body.lr.ph.i133 ], [ %p.12, %for.inc.i159.for.body.i134_crit_edge ]
  %b.077.i = phi i32 [ %div65.i, %for.body.lr.ph.i133 ], [ %dec.pre-phi.i157, %for.inc.i159.for.body.i134_crit_edge ]
  br i1 %tobool.not.i132, label %if.else.i156, label %if.then.i137

if.then.i137:                                     ; preds = %for.body.i134
  %sub.i135 = add nsw i32 %b.077.i, -1
  %arrayidx.i136 = getelementptr i8, ptr %data, i32 %sub.i135
  %75 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i136, align 1
  %conv.i = zext i8 %76 to i16
  %shl.i.i = shl nuw nsw i16 %conv.i, 4
  %or.i.i = or i16 %shl.i.i, %conv.i
  %and.i.i = and i16 %or.i.i, 3855
  %shl5.i.i = shl nuw nsw i16 %and.i.i, 2
  %or6.i.i = or i16 %shl5.i.i, %and.i.i
  %and7.i.i = and i16 %or6.i.i, 13107
  %shl11.i.i = shl nuw nsw i16 %and7.i.i, 1
  %or12.i.i = or i16 %shl11.i.i, %and7.i.i
  %and13.i.i = and i16 %or12.i.i, 21845
  br i1 %tobool1.not.i, label %if.then.i137.if.end.i142_crit_edge, label %if.then2.i

if.then.i137.if.end.i142_crit_edge:               ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i142

if.then2.i:                                       ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4.i138 = getelementptr i8, ptr %mask, i32 %sub.i135
  %77 = ptrtoint ptr %arrayidx4.i138 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx4.i138, align 1
  %conv5.i = zext i8 %78 to i16
  %shl.i67.i = shl nuw nsw i16 %conv5.i, 4
  %or.i68.i = or i16 %shl.i67.i, %conv5.i
  %and.i69.i = and i16 %or.i68.i, 3855
  %shl5.i70.i = shl nuw nsw i16 %and.i69.i, 2
  %or6.i71.i = or i16 %shl5.i70.i, %and.i69.i
  %and7.i72.i = and i16 %or6.i71.i, 13107
  %shl11.i73.i = shl nuw nsw i16 %and7.i72.i, 1
  %or12.i74.i = or i16 %shl11.i73.i, %and7.i72.i
  %and13.i75.i = and i16 %or12.i74.i, 21845
  %xor66.i = xor i16 %and13.i75.i, %and13.i.i
  %narrow.i139 = mul nuw i16 %xor66.i, 3
  %or.i140 = zext i16 %narrow.i139 to i32
  br label %if.end.i142

if.end.i142:                                      ; preds = %if.then2.i, %if.then.i137.if.end.i142_crit_edge
  %pixel_mask.0.i141 = phi i32 [ %or.i140, %if.then2.i ], [ 65535, %if.then.i137.if.end.i142_crit_edge ]
  %79 = zext i32 %stage to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %stage, label %if.end.i142.sw.epilog.i154_crit_edge [
    i32 0, label %sw.bb.i143
    i32 1, label %sw.bb17.i144
    i32 2, label %sw.bb21.i145
    i32 3, label %sw.bb27.i146
  ]

if.end.i142.sw.epilog.i154_crit_edge:             ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i154

sw.bb.i143:                                       ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  %80 = xor i16 %or12.i.i, -1
  %81 = or i16 %80, -21846
  br label %sw.epilog.i154

sw.bb17.i144:                                     ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  %82 = xor i16 %and13.i.i, 21845
  %add.i = add nuw i16 %82, 21845
  br label %sw.epilog.i154

sw.bb21.i145:                                     ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  %83 = shl nuw i16 %and13.i.i, 1
  %shl24.i = xor i16 %83, -1
  br label %sw.epilog.i154

sw.bb27.i146:                                     ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  %84 = or i16 %or12.i.i, -21846
  br label %sw.epilog.i154

sw.epilog.i154:                                   ; preds = %sw.bb27.i146, %sw.bb21.i145, %sw.bb17.i144, %sw.bb.i143, %if.end.i142.sw.epilog.i154_crit_edge
  %pixels.0.i147 = phi i16 [ %and13.i.i, %if.end.i142.sw.epilog.i154_crit_edge ], [ %84, %sw.bb27.i146 ], [ %shl24.i, %sw.bb21.i145 ], [ %add.i, %sw.bb17.i144 ], [ %81, %sw.bb.i143 ]
  %conv31.i148 = zext i16 %pixels.0.i147 to i32
  %and33.i149 = and i32 %pixel_mask.0.i141, %conv31.i148
  %neg.i150 = and i32 %pixel_mask.0.i141, 21845
  %and35.i151 = xor i32 %neg.i150, 21845
  %or36.i152 = or i32 %and33.i149, %and35.i151
  %85 = lshr i32 %or36.i152, 8
  %conv39.i = trunc i32 %85 to i8
  %incdec.ptr.i153 = getelementptr i8, ptr %p.11, i32 1
  %86 = ptrtoint ptr %p.11 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv39.i, ptr %p.11, align 1
  %conv40.i = trunc i32 %or36.i152 to i8
  %87 = ptrtoint ptr %incdec.ptr.i153 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv40.i, ptr %incdec.ptr.i153, align 1
  br label %for.inc.i159

if.else.i156:                                     ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr42.i = getelementptr i8, ptr %p.11, i32 1
  %88 = ptrtoint ptr %p.11 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %fixed_value, ptr %p.11, align 1
  %89 = ptrtoint ptr %incdec.ptr42.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %fixed_value, ptr %incdec.ptr42.i, align 1
  %.pre.i155 = add nsw i32 %b.077.i, -1
  br label %for.inc.i159

for.inc.i159:                                     ; preds = %if.else.i156, %sw.epilog.i154
  %dec.pre-phi.i157 = phi i32 [ %.pre.i155, %if.else.i156 ], [ %sub.i135, %sw.epilog.i154 ]
  %p.12 = getelementptr i8, ptr %p.11, i32 2
  %cmp.not.i158 = icmp eq i32 %dec.pre-phi.i157, 0
  br i1 %cmp.not.i158, label %for.inc.i159.repaper_all_pixels.exit_crit_edge, label %for.inc.i159.for.body.i134_crit_edge

for.inc.i159.for.body.i134_crit_edge:             ; preds = %for.inc.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i134

for.inc.i159.repaper_all_pixels.exit_crit_edge:   ; preds = %for.inc.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_all_pixels.exit

repaper_all_pixels.exit:                          ; preds = %for.inc.i159.repaper_all_pixels.exit_crit_edge, %for.end28.repaper_all_pixels.exit_crit_edge
  %p.13 = phi ptr [ %p.9.lcssa, %for.end28.repaper_all_pixels.exit_crit_edge ], [ %p.12, %for.inc.i159.repaper_all_pixels.exit_crit_edge ]
  %90 = ptrtoint ptr %bytes_per_scan10 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bytes_per_scan10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp31.not205 = icmp eq i32 %91, 0
  br i1 %cmp31.not205, label %repaper_all_pixels.exit.if.end53_crit_edge, label %for.body33.lr.ph

repaper_all_pixels.exit.if.end53_crit_edge:       ; preds = %repaper_all_pixels.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

for.body33.lr.ph:                                 ; preds = %repaper_all_pixels.exit
  %and34 = and i32 %line, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 0
  %div38106 = lshr i32 %line, 3
  %and43 = and i32 %line, 6
  %shl44 = shl nuw nsw i32 3, %and43
  %conv45 = trunc i32 %shl44 to i8
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.lr.ph
  %b.2207 = phi i32 [ %91, %for.body33.lr.ph ], [ %sub39, %for.body33.for.body33_crit_edge ]
  %p.14206 = phi ptr [ %p.13, %for.body33.lr.ph ], [ %p.15, %for.body33.for.body33_crit_edge ]
  %sub39 = add i32 %b.2207, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div38106, i32 %sub39)
  %cmp40 = icmp eq i32 %div38106, %sub39
  %or.cond109 = select i1 %cmp35, i1 %cmp40, i1 false
  %storemerge194 = select i1 %or.cond109, i8 %conv45, i8 0
  %p.15 = getelementptr i8, ptr %p.14206, i32 1
  %92 = ptrtoint ptr %p.14206 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %storemerge194, ptr %p.14206, align 1
  %cmp31.not = icmp eq i32 %sub39, 0
  br i1 %cmp31.not, label %for.body33.if.end53_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.body33.if.end53_crit_edge:                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end53:                                         ; preds = %for.body33.if.end53_crit_edge, %repaper_all_pixels.exit.if.end53_crit_edge, %for.inc.i130.if.end53_crit_edge, %for.end.if.end53_crit_edge
  %p.16 = phi ptr [ %p.4.lcssa, %for.end.if.end53_crit_edge ], [ %p.13, %repaper_all_pixels.exit.if.end53_crit_edge ], [ %p.15, %for.body33.if.end53_crit_edge ], [ %p.7, %for.inc.i130.if.end53_crit_edge ]
  %border_byte = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 19
  %93 = ptrtoint ptr %border_byte to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %border_byte, align 8
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %94, label %if.end53.sw.epilog60_crit_edge [
    i32 2, label %sw.bb55
    i32 1, label %if.end53.sw.epilog60.sink.split_crit_edge
  ]

if.end53.sw.epilog60.sink.split_crit_edge:        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog60.sink.split

if.end53.sw.epilog60_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog60

sw.bb55:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %stage)
  %96 = icmp ult i32 %stage, 4
  br i1 %96, label %switch.lookup, label %sw.bb55.sw.epilog60_crit_edge

sw.bb55.sw.epilog60_crit_edge:                    ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog60

switch.lookup:                                    ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %switch.shiftamt = shl i32 %stage, 3
  %switch.downshift = lshr i32 -1442840576, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %sw.epilog60.sink.split

sw.epilog60.sink.split:                           ; preds = %switch.lookup, %if.end53.sw.epilog60.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.end53.sw.epilog60.sink.split_crit_edge ], [ %switch.masked, %switch.lookup ]
  %incdec.ptr57 = getelementptr i8, ptr %p.16, i32 1
  %97 = ptrtoint ptr %p.16 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %.sink, ptr %p.16, align 1
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.epilog60.sink.split, %sw.bb55.sw.epilog60_crit_edge, %if.end53.sw.epilog60_crit_edge
  %p.17 = phi ptr [ %p.16, %if.end53.sw.epilog60_crit_edge ], [ %p.16, %sw.bb55.sw.epilog60_crit_edge ], [ %incdec.ptr57, %sw.epilog60.sink.split ]
  %98 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %spi, align 8
  %100 = ptrtoint ptr %line_buffer to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %line_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %102 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 10, ptr %reg.addr.i, align 1
  %call.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %99, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i160 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i160, label %if.end.i161, label %sw.epilog60.repaper_write_buf.exit_crit_edge

sw.epilog60.repaper_write_buf.exit_crit_edge:     ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_buf.exit

if.end.i161:                                      ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast = ptrtoint ptr %p.17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %101 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %99, i8 noundef zeroext 114, ptr noundef %101, ptr noundef null, i32 noundef %sub.ptr.sub) #8
  br label %repaper_write_buf.exit

repaper_write_buf.exit:                           ; preds = %if.end.i161, %sw.epilog60.repaper_write_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %103 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %spi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %105 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 7, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %106 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %reg.addr.i.i, align 1
  %call.i.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %104, i8 noundef zeroext 112, ptr noundef nonnull %reg.addr.i.i, ptr noundef null, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %repaper_write_buf.exit.repaper_write_val.exit_crit_edge

repaper_write_buf.exit.repaper_write_val.exit_crit_edge: ; preds = %repaper_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_write_val.exit

if.end.i.i:                                       ; preds = %repaper_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call fastcc i32 @repaper_spi_transfer(ptr noundef %104, i8 noundef zeroext 114, ptr noundef nonnull %val.addr.i, ptr noundef null, i32 noundef 1) #8
  br label %repaper_write_val.exit

repaper_write_val.exit:                           ; preds = %if.end.i.i, %repaper_write_buf.exit.repaper_write_val.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %107 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i164) #8
  %109 = ptrtoint ptr %buf.i164 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %buf.i164, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i163) #8
  %110 = getelementptr inbounds i8, ptr %t.i.i163, i32 4
  %111 = call ptr @memset(ptr %110, i32 0, i32 92)
  %112 = ptrtoint ptr %t.i.i163 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %buf.i164, ptr %t.i.i163, align 4
  %len1.i.i165 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i163, i32 0, i32 2
  %113 = ptrtoint ptr %len1.i.i165 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %len1.i.i165, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i162) #8
  %114 = getelementptr inbounds i8, ptr %msg.i.i.i162, i32 8
  %115 = call ptr @memset(ptr %114, i32 0, i32 40)
  %116 = ptrtoint ptr %msg.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %msg.i.i.i162, ptr %msg.i.i.i162, align 4
  %prev.i.i.i.i.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i162, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i.i.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msg.i.i.i162, ptr %prev.i.i.i.i.i.i.i166, align 4
  %resources.i.i.i.i.i.i167 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i162, i32 0, i32 10
  %118 = ptrtoint ptr %resources.i.i.i.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %resources.i.i.i.i.i.i167, ptr %resources.i.i.i.i.i.i167, align 4
  %prev.i2.i.i.i.i.i.i168 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i162, i32 0, i32 10, i32 1
  %119 = ptrtoint ptr %prev.i2.i.i.i.i.i.i168 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %resources.i.i.i.i.i.i167, ptr %prev.i2.i.i.i.i.i.i168, align 4
  %transfer_list.i.i.i.i.i169 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i163, i32 0, i32 18
  %call.i.i.i.i.i.i.i170 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i169, ptr noundef nonnull %msg.i.i.i162, ptr noundef nonnull %msg.i.i.i162) #8
  br i1 %call.i.i.i.i.i.i.i170, label %if.end.i.i.i.i.i.i.i172, label %repaper_write_val.exit.repaper_spi_mosi_low.exit174_crit_edge

repaper_write_val.exit.repaper_spi_mosi_low.exit174_crit_edge: ; preds = %repaper_write_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_spi_mosi_low.exit174

if.end.i.i.i.i.i.i.i172:                          ; preds = %repaper_write_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %prev.i.i.i.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %transfer_list.i.i.i.i.i169, ptr %prev.i.i.i.i.i.i.i166, align 4
  %121 = ptrtoint ptr %transfer_list.i.i.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %msg.i.i.i162, ptr %transfer_list.i.i.i.i.i169, align 4
  %prev3.i.i.i.i.i.i.i171 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i163, i32 0, i32 18, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i.i.i.i.i171 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %msg.i.i.i162, ptr %prev3.i.i.i.i.i.i.i171, align 4
  %123 = ptrtoint ptr %msg.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %transfer_list.i.i.i.i.i169, ptr %msg.i.i.i162, align 4
  br label %repaper_spi_mosi_low.exit174

repaper_spi_mosi_low.exit174:                     ; preds = %if.end.i.i.i.i.i.i.i172, %repaper_write_val.exit.repaper_spi_mosi_low.exit174_crit_edge
  %call.i.i.i173 = call i32 @spi_sync(ptr noundef %108, ptr noundef nonnull %msg.i.i.i162) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i162) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i163) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i164) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_begin_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_gray8(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_end_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @repaper_frame_data_repeat(ptr nocapture noundef readonly %epd, ptr noundef %image, ptr noundef %mask, i32 noundef %stage) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #8
  %factored_stage_time = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 16
  %0 = ptrtoint ptr %factored_stage_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %factored_stage_time, align 8
  %mul1 = mul i32 %1, 1000000
  %conv = zext i32 %mul1 to i64
  %add = add i64 %call.i, %conv
  %tobool.not.i = icmp eq ptr %mask, null
  %height.i = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 11
  %width5.i = getelementptr inbounds %struct.repaper_epd, ptr %epd, i32 0, i32 12
  br label %do.body

do.body:                                          ; preds = %repaper_frame_data.exit.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %do.body
  br i1 %cmp34.not.i, label %for.cond1.preheader.i.repaper_frame_data.exit_crit_edge, label %for.cond1.preheader.i.for.body4.i_crit_edge

for.cond1.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body4.i

for.cond1.preheader.i.repaper_frame_data.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit

for.cond.preheader.i:                             ; preds = %do.body
  br i1 %cmp34.not.i, label %for.cond.preheader.i.repaper_frame_data.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.repaper_frame_data.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %line.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %width5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width5.i, align 8
  %div29.i = lshr i32 %5, 3
  %mul.i = mul i32 %div29.i, %line.035.i
  %arrayidx.i = getelementptr i8, ptr %image, i32 %mul.i
  tail call fastcc void @repaper_one_line(ptr noundef %epd, i32 noundef %line.035.i, ptr noundef %arrayidx.i, i8 noundef zeroext 0, ptr noundef null, i32 noundef %stage) #8
  %inc.i = add nuw i32 %line.035.i, 1
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.repaper_frame_data.exit_crit_edge

for.body.i.repaper_frame_data.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond1.preheader.i.for.body4.i_crit_edge
  %line.133.i = phi i32 [ %inc11.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body4.i_crit_edge ]
  %8 = ptrtoint ptr %width5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width5.i, align 8
  %mul6.i = mul i32 %9, %line.133.i
  %div730.i = lshr i32 %mul6.i, 3
  %arrayidx8.i = getelementptr i8, ptr %image, i32 %div730.i
  %arrayidx9.i = getelementptr i8, ptr %mask, i32 %div730.i
  tail call fastcc void @repaper_one_line(ptr noundef %epd, i32 noundef %line.133.i, ptr noundef %arrayidx8.i, i8 noundef zeroext 0, ptr noundef %arrayidx9.i, i32 noundef %stage) #8
  %inc11.i = add nuw i32 %line.133.i, 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %cmp3.i = icmp ult i32 %inc11.i, %11
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.repaper_frame_data.exit_crit_edge

for.body4.i.repaper_frame_data.exit_crit_edge:    ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repaper_frame_data.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

repaper_frame_data.exit:                          ; preds = %for.body4.i.repaper_frame_data.exit_crit_edge, %for.body.i.repaper_frame_data.exit_crit_edge, %for.cond.preheader.i.repaper_frame_data.exit_crit_edge, %for.cond1.preheader.i.repaper_frame_data.exit_crit_edge
  %call.i5 = tail call i64 @sched_clock() #8
  %cmp = icmp ult i64 %call.i5, %add
  br i1 %cmp, label %repaper_frame_data.exit.do.body_crit_edge, label %do.end

repaper_frame_data.exit.do.body_crit_edge:        ; preds = %repaper_frame_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %repaper_frame_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_repaper__320_1168_repaper_spi_driver_init6, !1, !"__initcall__kmod_repaper__320_1168_repaper_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1168, i32 1}
!2 = !{ptr @__exitcall_repaper_spi_driver_exit, !1, !"__exitcall_repaper_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1170, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1171, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1172, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1160, i32 11}
!12 = !{ptr @repaper_spi_driver, !13, !"repaper_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1158, i32 26}
!14 = !{ptr @repaper_id, !15, !"repaper_id", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 949, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 983, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @repaper_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @repaper_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1002, i32 38}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1006, i32 4}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1010, i32 39}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1014, i32 4}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1018, i32 35}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1022, i32 4}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1026, i32 34}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1030, i32 4}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1034, i32 40}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1038, i32 4}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1075, i32 37}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1079, i32 5}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 1136, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 934, i32 12}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 935, i32 12}
!55 = !{ptr @repaper_driver, !56, !"repaper_driver", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 929, i32 32}
!57 = !{ptr @repaper_fops, !58, !"repaper_fops", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 927, i32 1}
!59 = !{ptr @repaper_mode_config_funcs, !60, !"repaper_mode_config_funcs", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 889, i32 43}
!61 = !{ptr @repaper_e1144cs021_mode, !62, !"repaper_e1144cs021_mode", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 899, i32 38}
!63 = !{ptr @repaper_e1144cs021_cs, !64, !"repaper_e1144cs021_cs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 903, i32 17}
!65 = !{ptr @repaper_e1190cs021_mode, !66, !"repaper_e1190cs021_mode", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 906, i32 38}
!67 = !{ptr @repaper_e1190cs021_cs, !68, !"repaper_e1190cs021_cs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 910, i32 17}
!69 = !{ptr @repaper_e2200cs021_mode, !70, !"repaper_e2200cs021_mode", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 913, i32 38}
!71 = !{ptr @repaper_e2200cs021_cs, !72, !"repaper_e2200cs021_cs", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 917, i32 17}
!73 = !{ptr @repaper_e2271cs021_mode, !74, !"repaper_e2271cs021_mode", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 920, i32 38}
!75 = !{ptr @repaper_e2271cs021_cs, !76, !"repaper_e2271cs021_cs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 924, i32 17}
!77 = !{ptr @repaper_connector_hfuncs, !78, !"repaper_connector_hfuncs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 877, i32 48}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 863, i32 3}
!81 = !{ptr @repaper_connector_funcs, !82, !"repaper_connector_funcs", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 881, i32 41}
!83 = !{ptr @repaper_pipe_funcs, !84, !"repaper_pipe_funcs", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 850, i32 51}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 654, i32 2}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 689, i32 3}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 698, i32 4}
!91 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @repaper_pipe_enable._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @repaper_pipe_enable._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 700, i32 4}
!96 = !{ptr @repaper_pipe_enable._entry.27, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @repaper_pipe_enable._entry_ptr.29, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 711, i32 4}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 713, i32 4}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 765, i32 3}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 550, i32 2}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 485, i32 3}
!108 = !{ptr @repaper_formats, !109, !"repaper_formats", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 895, i32 23}
!110 = !{ptr @repaper_of_match, !111, !"repaper_of_match", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/tiny/repaper.c", i32 940, i32 34}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i8 0, i8 2}
!123 = !{!"branch_weights", i32 1, i32 2000}
