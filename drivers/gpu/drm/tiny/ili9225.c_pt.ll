; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/ili9225.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/ili9225.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dbi_dev = type { %struct.drm_device, %struct.drm_simple_display_pipe, %struct.drm_connector, %struct.drm_display_mode, ptr, i32, i32, i32, ptr, ptr, %struct.mipi_dbi }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.90 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.mipi_dbi = type { %struct.mutex, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32 }
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
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
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

@__initcall__kmod_ili9225__320_440_ili9225_spi_driver_init6 = internal global ptr @ili9225_spi_driver_init, section ".initcall6.init", align 4
@ili9225_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ili9225_id, ptr @ili9225_probe, ptr @ili9225_remove, ptr @ili9225_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ili9225_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ili9225_spi_driver_exit = internal global ptr @ili9225_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [46 x i8] c"ili9225.description=Ilitek ILI9225 DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [52 x i8] c"ili9225.author=David Lechner <david@lechnology.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [42 x i8] c"ili9225.file=drivers/gpu/drm/tiny/ili9225\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [20 x i8] c"ili9225.license=GPL\00", section ".modinfo", align 1
@ili9225_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"v220hf01a-t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ili9225\00", [24 x i8] zeroinitializer }, align 32
@ili9225_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vot,v220hf01a-t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ili9225_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.6, ptr @.str.7, i32 19, ptr null, i32 0, ptr @ili9225_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get GPIO 'reset'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rs\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get GPIO 'rs'\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@ili9225_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @ili9225_pipe_enable, ptr @ili9225_pipe_disable, ptr null, ptr @ili9225_pipe_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ili9225_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 176, i16 176, i16 176, i16 176, i16 0, i16 220, i16 220, i16 220, i16 220, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 35, i16 44, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ilitek ILI9225\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20171106\00", [23 x i8] zeroinitializer }, align 32
@ili9225_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* Error sending command %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Flushing [FB:%d] %dx%d%+d%+d\0A\00", [34 x i8] zeroinitializer }, align 32
@ili9225_fb_dirty.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ili9225_fb_dirty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 156, ptr @.str.9, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to update display %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ili9225_fb_dirty\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tiny/ili9225.c\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ili9225_fb_dirty._entry_ptr = internal global ptr @ili9225_fb_dirty._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"ili9225_spi_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 429, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"ili9225_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 356, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 431, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"ili9225_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 350, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"ili9225_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 339, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 380, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 382, i32 50 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 384, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 386, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 388, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"ili9225_pipe_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 327, i32 51 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"ili9225_mode\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 333, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 344, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 345, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"ili9225_fops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 337, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 194, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 206, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 97, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [34 x i8] c"../drivers/gpu/drm/tiny/ili9225.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 156, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ili9225_spi_driver_exit, ptr @__initcall__kmod_ili9225__320_440_ili9225_spi_driver_init6, ptr @ili9225_fb_dirty._entry, ptr @ili9225_fb_dirty._entry_ptr, ptr @ili9225_spi_driver_exit, ptr @ili9225_spi_driver, ptr @ili9225_id, ptr @.str, ptr @ili9225_of_match, ptr @ili9225_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ili9225_pipe_funcs, ptr @ili9225_mode, ptr @.str.6, ptr @.str.7, ptr @ili9225_fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9225_fb_dirty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9225_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ili9225_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ili9225_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ili9225_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9225_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #5
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rotation, align 4
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %spi, ptr noundef nonnull @ili9225_driver, i32 noundef 5240, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dbi4 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10
  %call6 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 7) #5
  %reset = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %reset, align 4
  %cmp.i63 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call6 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %3, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %cmp.i64 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call14 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %4, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.5, ptr noundef nonnull %rotation, i32 noundef 1) #5
  %call21 = call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi4, ptr noundef %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %command = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ili9225_dbi_command, ptr %command, align 4
  %6 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rotation, align 4
  %call24 = call i32 @mipi_dbi_dev_init(ptr noundef %call, ptr noundef nonnull @ili9225_pipe_funcs, ptr noundef nonnull @ili9225_mode, i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @drm_mode_config_reset(ptr noundef %call) #5
  %call28 = call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %driver_data.i.i, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16, %if.then9, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call12, %if.then9 ], [ %call18, %if.then16 ], [ 0, %if.end31 ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9225_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #5
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ili9225_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_spi_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9225_dbi_command(ptr nocapture noundef readonly %dbi, ptr noundef %cmd, ptr noundef %par, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.mipi_dbi, ptr %dbi, i32 0, i32 5
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %dc = getelementptr inbounds %struct.mipi_dbi, ptr %dbi, i32 0, i32 6
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #5
  %call = tail call i32 @mipi_dbi_spi_cmd_max_speed(ptr noundef %1, i32 noundef 1) #5
  %call2 = tail call i32 @mipi_dbi_spi_transfer(ptr noundef %1, i32 noundef %call, i8 noundef zeroext 8, ptr noundef %cmd, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp ne i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool3.not = icmp eq i32 %num, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %5)
  %cmp = icmp eq i8 %5, 34
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %swap_bytes = getelementptr inbounds %struct.mipi_dbi, ptr %dbi, i32 0, i32 3
  %6 = ptrtoint ptr %swap_bytes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %swap_bytes, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool5.not, i8 16, i8 8
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end.if.end7_crit_edge
  %bpw.0 = phi i8 [ 8, %if.end.if.end7_crit_edge ], [ %spec.select, %land.lhs.true ]
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #5
  %call9 = tail call i32 @mipi_dbi_spi_cmd_max_speed(ptr noundef %1, i32 noundef %num) #5
  %call11 = tail call i32 @mipi_dbi_spi_transfer(ptr noundef %1, i32 noundef %call9, i8 noundef zeroext %bpw.0, ptr noundef %par, i32 noundef %num) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_dev_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_spi_cmd_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_spi_transfer(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ili9225_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readonly %plane_state) #2 align 64 {
entry:
  %par.i184 = alloca [2 x i8], align 1
  %par.i182 = alloca [2 x i8], align 1
  %par.i180 = alloca [2 x i8], align 1
  %par.i178 = alloca [2 x i8], align 1
  %par.i176 = alloca [2 x i8], align 1
  %par.i174 = alloca [2 x i8], align 1
  %par.i172 = alloca [2 x i8], align 1
  %par.i170 = alloca [2 x i8], align 1
  %par.i168 = alloca [2 x i8], align 1
  %par.i166 = alloca [2 x i8], align 1
  %par.i164 = alloca [2 x i8], align 1
  %par.i162 = alloca [2 x i8], align 1
  %par.i160 = alloca [2 x i8], align 1
  %par.i158 = alloca [2 x i8], align 1
  %par.i156 = alloca [2 x i8], align 1
  %par.i154 = alloca [2 x i8], align 1
  %par.i152 = alloca [2 x i8], align 1
  %par.i150 = alloca [2 x i8], align 1
  %par.i148 = alloca [2 x i8], align 1
  %par.i146 = alloca [2 x i8], align 1
  %par.i144 = alloca [2 x i8], align 1
  %par.i142 = alloca [2 x i8], align 1
  %par.i140 = alloca [2 x i8], align 1
  %par.i138 = alloca [2 x i8], align 1
  %par.i136 = alloca [2 x i8], align 1
  %par.i134 = alloca [2 x i8], align 1
  %par.i132 = alloca [2 x i8], align 1
  %par.i130 = alloca [2 x i8], align 1
  %par.i128 = alloca [2 x i8], align 1
  %par.i126 = alloca [2 x i8], align 1
  %par.i124 = alloca [2 x i8], align 1
  %par.i122 = alloca [2 x i8], align 1
  %par.i120 = alloca [2 x i8], align 1
  %par.i118 = alloca [2 x i8], align 1
  %par.i116 = alloca [2 x i8], align 1
  %par.i114 = alloca [2 x i8], align 1
  %par.i112 = alloca [2 x i8], align 1
  %par.i110 = alloca [2 x i8], align 1
  %par.i108 = alloca [2 x i8], align 1
  %par.i = alloca [2 x i8], align 1
  %rect = alloca %struct.drm_rect, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb1, align 4
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %dbi6 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #5
  %6 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %9 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rect, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %6, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 8
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %7, align 4
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #5
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %idx, align 4, !annotation !65
  %call9 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #5
  br i1 %call9, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #5
  call void @mipi_dbi_hw_reset(ptr noundef %dbi6) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i) #5
  %18 = getelementptr inbounds [2 x i8], ptr %par.i, i32 0, i32 1
  %19 = ptrtoint ptr %par.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %par.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %18, align 1
  %call.i = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 16, ptr noundef nonnull %par.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call.i) #5
  br label %out_exit

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i108) #5
  %21 = getelementptr inbounds [2 x i8], ptr %par.i108, i32 0, i32 1
  %22 = ptrtoint ptr %par.i108 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %par.i108, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %21, align 1
  %call.i109 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 17, ptr noundef nonnull %par.i108, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i108) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i110) #5
  %24 = getelementptr inbounds [2 x i8], ptr %par.i110, i32 0, i32 1
  %25 = ptrtoint ptr %par.i110 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %par.i110, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %24, align 1
  %call.i111 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 18, ptr noundef nonnull %par.i110, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i110) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i112) #5
  %27 = getelementptr inbounds [2 x i8], ptr %par.i112, i32 0, i32 1
  %28 = ptrtoint ptr %par.i112 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %par.i112, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %27, align 1
  %call.i113 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 19, ptr noundef nonnull %par.i112, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i112) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i114) #5
  %30 = getelementptr inbounds [2 x i8], ptr %par.i114, i32 0, i32 1
  %31 = ptrtoint ptr %par.i114 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %par.i114, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %30, align 1
  %call.i115 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 20, ptr noundef nonnull %par.i114, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i114) #5
  call void @msleep(i32 noundef 40) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i116) #5
  %33 = getelementptr inbounds [2 x i8], ptr %par.i116, i32 0, i32 1
  %34 = ptrtoint ptr %par.i116 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %par.i116, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 24, ptr %33, align 1
  %call.i117 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 17, ptr noundef nonnull %par.i116, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i116) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i118) #5
  %36 = getelementptr inbounds [2 x i8], ptr %par.i118, i32 0, i32 1
  %37 = ptrtoint ptr %par.i118 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 97, ptr %par.i118, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 33, ptr %36, align 1
  %call.i119 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 18, ptr noundef nonnull %par.i118, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i118) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i120) #5
  %39 = getelementptr inbounds [2 x i8], ptr %par.i120, i32 0, i32 1
  %40 = ptrtoint ptr %par.i120 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %par.i120, align 1
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 111, ptr %39, align 1
  %call.i121 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 19, ptr noundef nonnull %par.i120, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i120) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i122) #5
  %42 = getelementptr inbounds [2 x i8], ptr %par.i122, i32 0, i32 1
  %43 = ptrtoint ptr %par.i122 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 73, ptr %par.i122, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 95, ptr %42, align 1
  %call.i123 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 20, ptr noundef nonnull %par.i122, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i122) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i124) #5
  %45 = getelementptr inbounds [2 x i8], ptr %par.i124, i32 0, i32 1
  %46 = ptrtoint ptr %par.i124 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 8, ptr %par.i124, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %45, align 1
  %call.i125 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 16, ptr noundef nonnull %par.i124, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i124) #5
  call void @msleep(i32 noundef 10) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i126) #5
  %48 = getelementptr inbounds [2 x i8], ptr %par.i126, i32 0, i32 1
  %49 = ptrtoint ptr %par.i126 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %par.i126, align 1
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 59, ptr %48, align 1
  %call.i127 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 17, ptr noundef nonnull %par.i126, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i126) #5
  call void @msleep(i32 noundef 50) #5
  %rotation = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rotation, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %52, label %if.end12.sw.epilog_crit_edge [
    i32 90, label %sw.bb
    i32 180, label %sw.bb23
    i32 270, label %sw.bb24
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb23, %sw.bb, %if.end12.sw.epilog_crit_edge
  %am_id.0.off0 = phi i8 [ 40, %sw.bb24 ], [ 0, %sw.bb23 ], [ 24, %sw.bb ], [ 48, %if.end12.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i128) #5
  %54 = getelementptr inbounds [2 x i8], ptr %par.i128, i32 0, i32 1
  %55 = ptrtoint ptr %par.i128 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %par.i128, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 28, ptr %54, align 1
  %call.i129 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 1, ptr noundef nonnull %par.i128, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i128) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i130) #5
  %57 = getelementptr inbounds [2 x i8], ptr %par.i130, i32 0, i32 1
  %58 = ptrtoint ptr %par.i130 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %par.i130, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %57, align 1
  %call.i131 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 2, ptr noundef nonnull %par.i130, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i130) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i132) #5
  %60 = getelementptr inbounds [2 x i8], ptr %par.i132, i32 0, i32 1
  %61 = ptrtoint ptr %par.i132 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 16, ptr %par.i132, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %am_id.0.off0, ptr %60, align 1
  %call.i133 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 3, ptr noundef nonnull %par.i132, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i132) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i134) #5
  %63 = getelementptr inbounds [2 x i8], ptr %par.i134, i32 0, i32 1
  %64 = ptrtoint ptr %par.i134 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %par.i134, align 1
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %63, align 1
  %call.i135 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 7, ptr noundef nonnull %par.i134, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i134) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i136) #5
  %66 = getelementptr inbounds [2 x i8], ptr %par.i136, i32 0, i32 1
  %67 = ptrtoint ptr %par.i136 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 8, ptr %par.i136, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 8, ptr %66, align 1
  %call.i137 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 8, ptr noundef nonnull %par.i136, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i136) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i138) #5
  %69 = getelementptr inbounds [2 x i8], ptr %par.i138, i32 0, i32 1
  %70 = ptrtoint ptr %par.i138 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 17, ptr %par.i138, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %69, align 1
  %call.i139 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 11, ptr noundef nonnull %par.i138, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i138) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i140) #5
  %72 = getelementptr inbounds [2 x i8], ptr %par.i140, i32 0, i32 1
  %73 = ptrtoint ptr %par.i140 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %par.i140, align 1
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %72, align 1
  %call.i141 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 12, ptr noundef nonnull %par.i140, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i140) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i142) #5
  %75 = getelementptr inbounds [2 x i8], ptr %par.i142, i32 0, i32 1
  %76 = ptrtoint ptr %par.i142 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 13, ptr %par.i142, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %75, align 1
  %call.i143 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 15, ptr noundef nonnull %par.i142, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i142) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i144) #5
  %78 = getelementptr inbounds [2 x i8], ptr %par.i144, i32 0, i32 1
  %79 = ptrtoint ptr %par.i144 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %par.i144, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 32, ptr %78, align 1
  %call.i145 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 21, ptr noundef nonnull %par.i144, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i144) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i146) #5
  %81 = getelementptr inbounds [2 x i8], ptr %par.i146, i32 0, i32 1
  %82 = ptrtoint ptr %par.i146 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %par.i146, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %81, align 1
  %call.i147 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 32, ptr noundef nonnull %par.i146, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i146) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i148) #5
  %84 = getelementptr inbounds [2 x i8], ptr %par.i148, i32 0, i32 1
  %85 = ptrtoint ptr %par.i148 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %par.i148, align 1
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %84, align 1
  %call.i149 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 33, ptr noundef nonnull %par.i148, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i148) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i150) #5
  %87 = getelementptr inbounds [2 x i8], ptr %par.i150, i32 0, i32 1
  %88 = ptrtoint ptr %par.i150 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %par.i150, align 1
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %87, align 1
  %call.i151 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 48, ptr noundef nonnull %par.i150, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i150) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i152) #5
  %90 = getelementptr inbounds [2 x i8], ptr %par.i152, i32 0, i32 1
  %91 = ptrtoint ptr %par.i152 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %par.i152, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -37, ptr %90, align 1
  %call.i153 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 49, ptr noundef nonnull %par.i152, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i152) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i154) #5
  %93 = getelementptr inbounds [2 x i8], ptr %par.i154, i32 0, i32 1
  %94 = ptrtoint ptr %par.i154 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %par.i154, align 1
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %93, align 1
  %call.i155 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 50, ptr noundef nonnull %par.i154, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i154) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i156) #5
  %96 = getelementptr inbounds [2 x i8], ptr %par.i156, i32 0, i32 1
  %97 = ptrtoint ptr %par.i156 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %par.i156, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %96, align 1
  %call.i157 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 51, ptr noundef nonnull %par.i156, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i156) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i158) #5
  %99 = getelementptr inbounds [2 x i8], ptr %par.i158, i32 0, i32 1
  %100 = ptrtoint ptr %par.i158 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %par.i158, align 1
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -37, ptr %99, align 1
  %call.i159 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 52, ptr noundef nonnull %par.i158, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i158) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i160) #5
  %102 = getelementptr inbounds [2 x i8], ptr %par.i160, i32 0, i32 1
  %103 = ptrtoint ptr %par.i160 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %par.i160, align 1
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %102, align 1
  %call.i161 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 53, ptr noundef nonnull %par.i160, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i160) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i162) #5
  %105 = getelementptr inbounds [2 x i8], ptr %par.i162, i32 0, i32 1
  %106 = ptrtoint ptr %par.i162 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %par.i162, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %105, align 1
  %call.i163 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 80, ptr noundef nonnull %par.i162, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i162) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i164) #5
  %108 = getelementptr inbounds [2 x i8], ptr %par.i164, i32 0, i32 1
  %109 = ptrtoint ptr %par.i164 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 8, ptr %par.i164, align 1
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 8, ptr %108, align 1
  %call.i165 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 81, ptr noundef nonnull %par.i164, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i164) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i166) #5
  %111 = getelementptr inbounds [2 x i8], ptr %par.i166, i32 0, i32 1
  %112 = ptrtoint ptr %par.i166 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 8, ptr %par.i166, align 1
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 10, ptr %111, align 1
  %call.i167 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 82, ptr noundef nonnull %par.i166, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i166) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i168) #5
  %114 = getelementptr inbounds [2 x i8], ptr %par.i168, i32 0, i32 1
  %115 = ptrtoint ptr %par.i168 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %par.i168, align 1
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 10, ptr %114, align 1
  %call.i169 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 83, ptr noundef nonnull %par.i168, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i168) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i170) #5
  %117 = getelementptr inbounds [2 x i8], ptr %par.i170, i32 0, i32 1
  %118 = ptrtoint ptr %par.i170 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 10, ptr %par.i170, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 8, ptr %117, align 1
  %call.i171 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 84, ptr noundef nonnull %par.i170, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i170) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i172) #5
  %120 = getelementptr inbounds [2 x i8], ptr %par.i172, i32 0, i32 1
  %121 = ptrtoint ptr %par.i172 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 8, ptr %par.i172, align 1
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 8, ptr %120, align 1
  %call.i173 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 85, ptr noundef nonnull %par.i172, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i172) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i174) #5
  %123 = getelementptr inbounds [2 x i8], ptr %par.i174, i32 0, i32 1
  %124 = ptrtoint ptr %par.i174 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %par.i174, align 1
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %123, align 1
  %call.i175 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 86, ptr noundef nonnull %par.i174, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i174) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i176) #5
  %126 = getelementptr inbounds [2 x i8], ptr %par.i176, i32 0, i32 1
  %127 = ptrtoint ptr %par.i176 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 10, ptr %par.i176, align 1
  %128 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %126, align 1
  %call.i177 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 87, ptr noundef nonnull %par.i176, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i176) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i178) #5
  %129 = getelementptr inbounds [2 x i8], ptr %par.i178, i32 0, i32 1
  %130 = ptrtoint ptr %par.i178 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 7, ptr %par.i178, align 1
  %131 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 16, ptr %129, align 1
  %call.i179 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 88, ptr noundef nonnull %par.i178, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i178) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i180) #5
  %132 = getelementptr inbounds [2 x i8], ptr %par.i180, i32 0, i32 1
  %133 = ptrtoint ptr %par.i180 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 7, ptr %par.i180, align 1
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 16, ptr %132, align 1
  %call.i181 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 89, ptr noundef nonnull %par.i180, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i180) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i182) #5
  %135 = getelementptr inbounds [2 x i8], ptr %par.i182, i32 0, i32 1
  %136 = ptrtoint ptr %par.i182 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %par.i182, align 1
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 18, ptr %135, align 1
  %call.i183 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 7, ptr noundef nonnull %par.i182, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i182) #5
  call void @msleep(i32 noundef 50) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i184) #5
  %138 = getelementptr inbounds [2 x i8], ptr %par.i184, i32 0, i32 1
  %139 = ptrtoint ptr %par.i184 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 16, ptr %par.i184, align 1
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 23, ptr %138, align 1
  %call.i185 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi6, i8 noundef zeroext 7, ptr noundef nonnull %par.i184, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i184) #5
  call fastcc void @ili9225_fb_dirty(ptr noundef %3, ptr noundef nonnull %rect)
  br label %out_exit

out_exit:                                         ; preds = %sw.epilog, %if.then11
  %141 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %142) #5
  br label %cleanup

cleanup:                                          ; preds = %out_exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ili9225_pipe_disable(ptr nocapture noundef readonly %pipe) #2 align 64 {
entry:
  %par.i9 = alloca [2 x i8], align 1
  %par.i7 = alloca [2 x i8], align 1
  %par.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dbi1 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i) #5
  %2 = getelementptr inbounds [2 x i8], ptr %par.i, i32 0, i32 1
  %3 = ptrtoint ptr %par.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %par.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  %call.i = call i32 @mipi_dbi_command_buf(ptr noundef %dbi1, i8 noundef zeroext 7, ptr noundef nonnull %par.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i) #5
  call void @msleep(i32 noundef 50) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i7) #5
  %5 = getelementptr inbounds [2 x i8], ptr %par.i7, i32 0, i32 1
  %6 = ptrtoint ptr %par.i7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %par.i7, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %5, align 1
  %call.i8 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %par.i7, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i7) #5
  call void @msleep(i32 noundef 50) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i9) #5
  %8 = getelementptr inbounds [2 x i8], ptr %par.i9, i32 0, i32 1
  %9 = ptrtoint ptr %par.i9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %par.i9, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %8, align 1
  %call.i10 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi1, i8 noundef zeroext 16, ptr noundef nonnull %par.i9, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ili9225_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_state) #2 align 64 {
entry:
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #5
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %2 = call ptr @memset(ptr %rect, i32 255, i32 16)
  %3 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state2, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %1, ptr noundef nonnull %rect) #5
  br i1 %call, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 4
  call fastcc void @ili9225_fb_dirty(ptr noundef %8, ptr noundef nonnull %rect)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ili9225_fb_dirty(ptr noundef %fb, ptr noundef %rect) unnamed_addr #2 align 64 {
entry:
  %par.i207 = alloca [2 x i8], align 1
  %par.i203 = alloca [2 x i8], align 1
  %par.i199 = alloca [2 x i8], align 1
  %par.i195 = alloca [2 x i8], align 1
  %par.i191 = alloca [2 x i8], align 1
  %par.i = alloca [2 x i8], align 1
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef 0) #5
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %2 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y2, align 4
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %4 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y1, align 4
  %sub = sub i32 %3, %5
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %6 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x2, align 4
  %8 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rect, align 4
  %sub2 = sub i32 %7, %9
  %dbi3 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  %swap_bytes = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %swap_bytes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %swap_bytes, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool = icmp ne i8 %11, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #5
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %idx, align 4, !annotation !65
  %call9 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #5
  br i1 %call9, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %width10 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %13 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2, i32 %14)
  %cmp = icmp eq i32 %sub2, %14
  br i1 %cmp, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %height11 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %15 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %16)
  %cmp12 = icmp ne i32 %sub, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %17 = phi i1 [ true, %if.end.land.end_crit_edge ], [ %cmp12, %land.rhs ]
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %20 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x2, align 4
  %22 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rect, align 4
  %sub.i = sub i32 %21, %23
  %24 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %y2, align 4
  %26 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %y1, align 4
  %sub.i190 = sub i32 %25, %27
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %19, i32 noundef %sub.i, i32 noundef %sub.i190, i32 noundef %23, i32 noundef %27) #5
  %dc = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 6
  %28 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dc, align 4
  %tobool18.not = icmp eq ptr %29, null
  %brmerge = select i1 %tobool18.not, i1 true, i1 %17
  %brmerge189 = select i1 %brmerge, i1 true, i1 %tobool
  br i1 %brmerge189, label %land.end.if.then25_crit_edge, label %lor.lhs.false22

land.end.if.then25_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

lor.lhs.false22:                                  ; preds = %land.end
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %30 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %format, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713112, i32 %33)
  %cmp24 = icmp eq i32 %33, 875713112
  br i1 %cmp24, label %lor.lhs.false22.if.then25_crit_edge, label %if.else

lor.lhs.false22.if.then25_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false22.if.then25_crit_edge, %land.end.if.then25_crit_edge
  %tx_buf = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_buf, align 8
  %call28 = call i32 @mipi_dbi_buf_copy(ptr noundef %35, ptr noundef %fb, ptr noundef %rect, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then25.if.end32_crit_edge, label %if.then25.do.body_crit_edge

if.then25.do.body_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.else:                                          ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  %vaddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call, i32 0, i32 3
  %36 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vaddr, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25.if.end32_crit_edge
  %tr.0 = phi ptr [ %35, %if.then25.if.end32_crit_edge ], [ %37, %if.else ]
  %rotation = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rotation, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %39, label %sw.default [
    i32 90, label %sw.bb
    i32 180, label %sw.bb56
    i32 270, label %sw.bb75
  ]

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rect, align 4
  %43 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %x2, align 4
  %45 = trunc i32 %44 to i16
  %conv36 = add i16 %45, -1
  %46 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %y1, align 4
  %48 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %y2, align 4
  %50 = trunc i32 %49 to i16
  %conv41 = add i16 %50, -1
  %extract.t = trunc i16 %conv36 to i8
  %extract = lshr i16 %conv36, 8
  %extract.t245 = trunc i16 %extract to i8
  %extract.t254 = trunc i16 %conv41 to i8
  %extract258 = lshr i16 %conv41, 8
  %extract.t259 = trunc i16 %extract258 to i8
  br label %err_msg

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %y1, align 4
  %53 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %y2, align 4
  %55 = trunc i32 %54 to i16
  %conv46 = add i16 %55, -1
  %56 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width10, align 8
  %58 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %x2, align 4
  %sub49 = sub i32 %57, %59
  %60 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rect, align 4
  %62 = xor i32 %61, -1
  %sub54 = add i32 %57, %62
  %extract.t244 = trunc i16 %conv46 to i8
  %extract250 = lshr i16 %conv46, 8
  %extract.t251 = trunc i16 %extract250 to i8
  %extract.t257 = trunc i32 %sub54 to i8
  %extract264267 = lshr i32 %sub54, 8
  %extract.t265 = trunc i32 %extract264267 to i8
  br label %err_msg

sw.bb56:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %width10, align 8
  %65 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %x2, align 4
  %sub59 = sub i32 %64, %66
  %67 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rect, align 4
  %69 = xor i32 %68, -1
  %sub64 = add i32 %64, %69
  %height66 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %70 = ptrtoint ptr %height66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height66, align 4
  %72 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %y2, align 4
  %sub68 = sub i32 %71, %73
  %74 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %y1, align 4
  %76 = xor i32 %75, -1
  %sub73 = add i32 %71, %76
  %extract.t243 = trunc i32 %sub64 to i8
  %extract248253 = lshr i32 %sub64, 8
  %extract.t249 = trunc i32 %extract248253 to i8
  %extract.t256 = trunc i32 %sub73 to i8
  %extract262266 = lshr i32 %sub73, 8
  %extract.t263 = trunc i32 %extract262266 to i8
  br label %err_msg

sw.bb75:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %height76 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %77 = ptrtoint ptr %height76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height76, align 4
  %79 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %y2, align 4
  %sub78 = sub i32 %78, %80
  %81 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %y1, align 4
  %83 = xor i32 %82, -1
  %sub83 = add i32 %78, %83
  %84 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rect, align 4
  %86 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %x2, align 4
  %88 = trunc i32 %87 to i16
  %conv89 = add i16 %88, -1
  %extract.t242 = trunc i32 %sub83 to i8
  %extract246252 = lshr i32 %sub83, 8
  %extract.t247 = trunc i32 %extract246252 to i8
  %extract.t255 = trunc i16 %conv89 to i8
  %extract260 = lshr i16 %conv89, 8
  %extract.t261 = trunc i16 %extract260 to i8
  br label %err_msg

err_msg:                                          ; preds = %sw.bb75, %sw.bb56, %sw.bb, %sw.default
  %x_start.0.off0.in = phi i32 [ %42, %sw.default ], [ %sub83, %sw.bb75 ], [ %sub64, %sw.bb56 ], [ %52, %sw.bb ]
  %y_start.0.off0.in = phi i32 [ %47, %sw.default ], [ %85, %sw.bb75 ], [ %sub73, %sw.bb56 ], [ %sub54, %sw.bb ]
  %x14.0.in = phi i32 [ %42, %sw.default ], [ %sub78, %sw.bb75 ], [ %sub59, %sw.bb56 ], [ %52, %sw.bb ]
  %x25.0.off0 = phi i8 [ %extract.t, %sw.default ], [ %extract.t242, %sw.bb75 ], [ %extract.t243, %sw.bb56 ], [ %extract.t244, %sw.bb ]
  %x25.0.off8 = phi i8 [ %extract.t245, %sw.default ], [ %extract.t247, %sw.bb75 ], [ %extract.t249, %sw.bb56 ], [ %extract.t251, %sw.bb ]
  %y16.0.in = phi i32 [ %47, %sw.default ], [ %85, %sw.bb75 ], [ %sub68, %sw.bb56 ], [ %sub49, %sw.bb ]
  %y27.0.off0 = phi i8 [ %extract.t254, %sw.default ], [ %extract.t255, %sw.bb75 ], [ %extract.t256, %sw.bb56 ], [ %extract.t257, %sw.bb ]
  %y27.0.off8 = phi i8 [ %extract.t259, %sw.default ], [ %extract.t261, %sw.bb75 ], [ %extract.t263, %sw.bb56 ], [ %extract.t265, %sw.bb ]
  %y_start.0.off8.in = lshr i32 %y_start.0.off0.in, 8
  %y_start.0.off8 = trunc i32 %y_start.0.off8.in to i8
  %y_start.0.off0 = trunc i32 %y_start.0.off0.in to i8
  %x_start.0.off8.in = lshr i32 %x_start.0.off0.in, 8
  %x_start.0.off8 = trunc i32 %x_start.0.off8.in to i8
  %x_start.0.off0 = trunc i32 %x_start.0.off0.in to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i) #5
  %89 = getelementptr inbounds [2 x i8], ptr %par.i, i32 0, i32 1
  %90 = ptrtoint ptr %par.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %x25.0.off8, ptr %par.i, align 1
  %91 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %x25.0.off0, ptr %89, align 1
  %call.i = call i32 @mipi_dbi_command_buf(ptr noundef %dbi3, i8 noundef zeroext 54, ptr noundef nonnull %par.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i191) #5
  %92 = getelementptr inbounds [2 x i8], ptr %par.i191, i32 0, i32 1
  %93 = lshr i32 %x14.0.in, 8
  %conv1.i192 = trunc i32 %93 to i8
  %94 = ptrtoint ptr %par.i191 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv1.i192, ptr %par.i191, align 1
  %conv3.i193 = trunc i32 %x14.0.in to i8
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv3.i193, ptr %92, align 1
  %call.i194 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi3, i8 noundef zeroext 55, ptr noundef nonnull %par.i191, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i191) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i195) #5
  %96 = getelementptr inbounds [2 x i8], ptr %par.i195, i32 0, i32 1
  %97 = ptrtoint ptr %par.i195 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %y27.0.off8, ptr %par.i195, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %y27.0.off0, ptr %96, align 1
  %call.i198 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi3, i8 noundef zeroext 56, ptr noundef nonnull %par.i195, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i195) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i199) #5
  %99 = getelementptr inbounds [2 x i8], ptr %par.i199, i32 0, i32 1
  %100 = lshr i32 %y16.0.in, 8
  %conv1.i200 = trunc i32 %100 to i8
  %101 = ptrtoint ptr %par.i199 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv1.i200, ptr %par.i199, align 1
  %conv3.i201 = trunc i32 %y16.0.in to i8
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv3.i201, ptr %99, align 1
  %call.i202 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi3, i8 noundef zeroext 57, ptr noundef nonnull %par.i199, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i199) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i203) #5
  %103 = getelementptr inbounds [2 x i8], ptr %par.i203, i32 0, i32 1
  %104 = ptrtoint ptr %par.i203 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %x_start.0.off8, ptr %par.i203, align 1
  %105 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %x_start.0.off0, ptr %103, align 1
  %call.i206 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi3, i8 noundef zeroext 32, ptr noundef nonnull %par.i203, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i203) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %par.i207) #5
  %106 = getelementptr inbounds [2 x i8], ptr %par.i207, i32 0, i32 1
  %107 = ptrtoint ptr %par.i207 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %y_start.0.off8, ptr %par.i207, align 1
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %y_start.0.off0, ptr %106, align 1
  %call.i210 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi3, i8 noundef zeroext 33, ptr noundef nonnull %par.i207, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %par.i207) #5
  %mul = shl i32 %sub, 1
  %mul96 = mul i32 %mul, %sub2
  %call97 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi3, i8 noundef zeroext 34, ptr noundef %tr.0, i32 noundef %mul96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err_msg.if.end108_crit_edge, label %err_msg.do.body_crit_edge

err_msg.do.body_crit_edge:                        ; preds = %err_msg
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

err_msg.if.end108_crit_edge:                      ; preds = %err_msg
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.body:                                          ; preds = %err_msg.do.body_crit_edge, %if.then25.do.body_crit_edge
  %ret.0213 = phi i32 [ %call97, %err_msg.do.body_crit_edge ], [ %call28, %if.then25.do.body_crit_edge ]
  %.b188 = load i1, ptr @ili9225_fb_dirty.__print_once, align 1
  br i1 %.b188, label %do.body.if.end108_crit_edge, label %if.then101

do.body.if.end108_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then101:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ili9225_fb_dirty.__print_once, align 1
  %109 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fb, align 8
  %dev104 = getelementptr inbounds %struct.drm_device, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev104, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.12, i32 noundef %ret.0213) #8
  br label %if.end108

if.end108:                                        ; preds = %if.then101, %do.body.if.end108_crit_edge, %err_msg.if.end108_crit_edge
  %113 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %114) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_buf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_buf_copy(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_ili9225__320_440_ili9225_spi_driver_init6, !1, !"__initcall__kmod_ili9225__320_440_ili9225_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 440, i32 1}
!2 = !{ptr @__exitcall_ili9225_spi_driver_exit, !1, !"__exitcall_ili9225_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 442, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 443, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 444, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 431, i32 11}
!12 = !{ptr @ili9225_spi_driver, !13, !"ili9225_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 429, i32 26}
!14 = !{ptr @ili9225_id, !15, !"ili9225_id", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 356, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 380, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 382, i32 50}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 384, i32 27}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 386, i32 42}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 388, i32 32}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 344, i32 12}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 345, i32 12}
!30 = !{ptr @ili9225_driver, !31, !"ili9225_driver", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 339, i32 32}
!32 = !{ptr @ili9225_fops, !33, !"ili9225_fops", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 337, i32 1}
!34 = !{ptr @ili9225_pipe_funcs, !35, !"ili9225_pipe_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 327, i32 51}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 194, i32 2}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 206, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 97, i32 2}
!43 = distinct !{null, !44, !"__print_once", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 156, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ili9225_fb_dirty._entry, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @ili9225_fb_dirty._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ili9225_mode, !52, !"ili9225_mode", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 333, i32 38}
!53 = !{ptr @ili9225_of_match, !54, !"ili9225_of_match", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tiny/ili9225.c", i32 350, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
!65 = !{!"auto-init"}
