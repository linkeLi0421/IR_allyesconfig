; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/gm12u320.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/gm12u320.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.92 }
%union.anon.92 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.96 = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.detailed_non_pixel = type { i8, i8, i8, %union.anon.93 }
%union.anon.93 = type { %struct.detailed_data_string }
%struct.detailed_data_string = type { [13 x i8] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.gm12u320_device = type { %struct.drm_device, ptr, %struct.drm_simple_display_pipe, %struct.drm_connector, ptr, [20 x ptr], %struct.anon.91 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.anon.91 = type { %struct.delayed_work, %struct.mutex, ptr, %struct.drm_rect, i32, i32, %struct.dma_buf_map }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }

@__param_str_eco_mode = internal constant [18 x i8] c"gm12u320.eco_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@eco_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_eco_mode = internal constant %struct.kernel_param { ptr @__param_str_eco_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @eco_mode } }, section "__param", align 4
@__UNIQUE_ID_eco_modetype323 = internal constant [32 x i8] c"gm12u320.parmtype=eco_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_eco_mode324 = internal constant [67 x i8] c"gm12u320.parm=eco_mode:Turn on Eco mode (less bright, more silent)\00", section ".modinfo", align 1
@__initcall__kmod_gm12u320__333_754_gm12u320_usb_driver_init6 = internal global ptr @gm12u320_usb_driver_init, section ".initcall6.init", align 4
@gm12u320_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @gm12u320_usb_probe, ptr @gm12u320_usb_disconnect, ptr null, ptr @gm12u320_suspend, ptr @gm12u320_resume, ptr @gm12u320_resume, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_gm12u320_usb_driver_exit = internal global ptr @gm12u320_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author334 = internal constant [52 x i8] c"gm12u320.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file335 = internal constant [44 x i8] c"gm12u320.file=drivers/gpu/drm/tiny/gm12u320\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [21 x i8] c"gm12u320.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gm12u320\00", [23 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7649, i16 -16126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gm12u320_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @gm12u320_gem_prime_import, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_shmem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.11, ptr @.str.12, i32 19, ptr null, i32 0, ptr @gm12u320_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gm12u320_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[drm] buffer sharing not supported\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gm12u320_usb_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/tiny/gm12u320.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gm12u320_usb_probe._entry_ptr = internal global ptr @gm12u320_usb_probe._entry, section ".printk_index", align 4
@gm12u320_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&gm12u320->fb_update.work)->work)\00", [42 x i8] zeroinitializer }, align 32
@gm12u320_usb_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&gm12u320->fb_update.work)->timer\00", [60 x i8] zeroinitializer }, align 32
@gm12u320_usb_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&gm12u320->fb_update.lock\00", [38 x i8] zeroinitializer }, align 32
@gm12u320_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create_with_dirty, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@gm12u320_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @gm12u320_pipe_enable, ptr @gm12u320_pipe_disable, ptr null, ptr @gm12u320_pipe_update, ptr @drm_gem_simple_kms_prepare_shadow_fb, ptr @drm_gem_simple_kms_cleanup_shadow_fb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_simple_kms_reset_shadow_plane, ptr @drm_gem_simple_kms_duplicate_shadow_plane_state, ptr @drm_gem_simple_kms_destroy_shadow_plane_state }, [36 x i8] zeroinitializer }, align 32
@gm12u320_pipe_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713112], [28 x i8] zeroinitializer }, align 32
@gm12u320_pipe_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Grain Media GM12U320 USB projector display\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2019\00", [27 x i8] zeroinitializer }, align 32
@gm12u320_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cmd_draw = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"USBC\00\00\00\00\00\00\00\00\00\00\10\FE\00\00\00\C0\D1\05\00@\00\01\00\00\00\00\00", [33 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* Frame update error: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* drm_gem_fb_begin_cpu_access err: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cmd_data = internal constant { <{ [23 x i8], [8 x i8] }>, [33 x i8] } { <{ [23 x i8], [8 x i8] }> <{ [23 x i8] c"USBC\00\00\00\00h\FC\00\00\00\00\10\FF\00\00\00\00\FC\00\80", [8 x i8] zeroinitializer }>, [33 x i8] zeroinitializer }, align 32
@data_last_block_header = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FB\14\00\00\00\00\00\00*\00 \00\C0\0F\00\00\01\00\00\D7", [44 x i8] zeroinitializer }, align 32
@data_block_header = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FB\14\00\00\00\00\00\00\00\04\15\00\00\FC\00\00\01\00\00\DB", [44 x i8] zeroinitializer }, align 32
@data_block_footer = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\FB\14\02 \00\00\00\00\00\00\00\00\00\00\00\00\80\00\00O", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* Misc. req. error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* Misc. value error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* Misc. status error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cmd_misc = internal constant { <{ [20 x i8], [11 x i8] }>, [33 x i8] } { <{ [20 x i8], [11 x i8] }> <{ [20 x i8] c"USBC\00\00\00\00\04\00\00\00\80\01\10\FD\00\00\00\C0", [11 x i8] zeroinitializer }>, [33 x i8] zeroinitializer }, align 32
@gm12u320_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @gm12u320_conn_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gm12u320_conn_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gm12u320_edid = internal global { { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], <{ %struct.detailed_timing, { i16, { { i8, i8, i8, { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } } } } }, { i16, { %struct.detailed_non_pixel } }, { i16, { %struct.detailed_non_pixel } } }>, i8, i8 }, [32 x i8] } { { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], <{ %struct.detailed_timing, { i16, { { i8, i8, i8, { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } } } } }, { i16, { %struct.detailed_non_pixel } }, { i16, { %struct.detailed_non_pixel } } }>, i8, i8 } { [8 x i8] c"\00\FF\FF\FF\FF\FF\FF\00", [2 x i8] c"\04r", [2 x i8] c" \C1", i32 -1437226411, i8 1, i8 16, i8 1, i8 3, i8 8, i8 0, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.est_timings zeroinitializer, [8 x %struct.std_timing] [%struct.std_timing { i8 1, i8 1 }, %struct.std_timing { i8 1, i8 1 }, %struct.std_timing { i8 1, i8 1 }, %struct.std_timing { i8 1, i8 1 }, %struct.std_timing { i8 1, i8 1 }, %struct.std_timing { i8 1, i8 1 }, %struct.std_timing { i8 1, i8 1 }, %struct.std_timing { i8 1, i8 1 }], <{ %struct.detailed_timing, { i16, { { i8, i8, i8, { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } } } } }, { i16, { %struct.detailed_non_pixel } }, { i16, { %struct.detailed_non_pixel } } }> <{ %struct.detailed_timing { i16 3383, %union.anon.92 { %struct.detailed_pixel_timing { i8 80, i8 0, i8 49, i8 -32, i8 28, i8 16, i8 40, i8 -128, i8 20, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 30 } } }, { i16, { { i8, i8, i8, { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } } } } } { i16 0, { { i8, i8, i8, { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } } } } { { i8, i8, i8, { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } } } { i8 0, i8 -3, i8 0, { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } } { { i8, i8, i8, i8, i8, i8, { %struct.anon.96 } } { i8 59, i8 61, i8 29, i8 32, i8 4, i8 0, { %struct.anon.96 } { %struct.anon.96 { i8 -96, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32 } } } } } } }, { i16, { %struct.detailed_non_pixel } } { i16 0, { %struct.detailed_non_pixel } { %struct.detailed_non_pixel { i8 0, i8 -4, i8 0, %union.anon.93 { %struct.detailed_data_string { [13 x i8] c"Projector\0A   " } } } } }, { i16, { %struct.detailed_non_pixel } } { i16 0, { %struct.detailed_non_pixel } { %struct.detailed_non_pixel { i8 0, i8 -2, i8 0, %union.anon.93 { %struct.detailed_data_string { [13 x i8] c"\0A            " } } } } } }>, i8 0, i8 19 }, [32 x i8] zeroinitializer }, align 32
@__const.gm12u320_pipe_enable.rect = private unnamed_addr constant %struct.drm_rect { i32 0, i32 0, i32 848, i32 480 }, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 4294967188, i64 4294967192, i64 4294967277]
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"eco_mode\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 27, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"gm12u320_usb_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 742, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 754, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 736, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"gm12u320_drm_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 612, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 654, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 656, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 657, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"gm12u320_mode_config_funcs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 626, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"gm12u320_pipe_funcs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 578, i32 51 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"gm12u320_pipe_formats\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 585, i32 23 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"gm12u320_pipe_modifiers\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 589, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 616, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 617, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"gm12u320_fops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 610, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"cmd_draw\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 111, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 395, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 272, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"cmd_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 104, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"data_last_block_header\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 139, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"data_block_header\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 125, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"data_block_footer\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 153, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 215, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 224, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 234, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"cmd_misc\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 118, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant [27 x i8] c"gm12u320_conn_helper_funcs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 526, i32 48 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"gm12u320_conn_funcs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 530, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"gm12u320_edid\00", align 1
@___asan_gen_.138 = private constant [35 x i8] c"../drivers/gpu/drm/tiny/gm12u320.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 463, i32 20 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_eco_mode324, ptr @__UNIQUE_ID_eco_modetype323, ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__exitcall_gm12u320_usb_driver_exit, ptr @__initcall__kmod_gm12u320__333_754_gm12u320_usb_driver_init6, ptr @__param_eco_mode, ptr @gm12u320_usb_driver_exit, ptr @gm12u320_usb_probe._entry, ptr @gm12u320_usb_probe._entry_ptr, ptr @eco_mode, ptr @gm12u320_usb_driver, ptr @.str, ptr @id_table, ptr @gm12u320_drm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gm12u320_usb_probe.__key, ptr @.str.6, ptr @gm12u320_usb_probe.__key.7, ptr @.str.8, ptr @gm12u320_usb_probe.__key.9, ptr @.str.10, ptr @gm12u320_mode_config_funcs, ptr @gm12u320_pipe_funcs, ptr @gm12u320_pipe_formats, ptr @gm12u320_pipe_modifiers, ptr @.str.11, ptr @.str.12, ptr @gm12u320_fops, ptr @cmd_draw, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cmd_data, ptr @data_last_block_header, ptr @data_block_header, ptr @data_block_footer, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @cmd_misc, ptr @gm12u320_conn_helper_funcs, ptr @gm12u320_conn_funcs, ptr @gm12u320_edid], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eco_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_usb_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_usb_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_pipe_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_pipe_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_draw to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_data to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_last_block_header to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_block_header to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_block_footer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_misc to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_conn_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm12u320_edid to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gm12u320_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @gm12u320_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gm12u320_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @gm12u320_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm12u320_usb_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev2, ptr noundef nonnull @gm12u320_drm_driver, i32 noundef 5288, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -32
  %call9 = tail call ptr @usb_intf_get_dma_device(ptr noundef %add.ptr) #6
  %dmadev = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %dmadev, align 4
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %do.end, label %if.end6.do.body15_crit_edge

if.end6.do.body15_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.1) #9
  br label %do.body15

do.body15:                                        ; preds = %do.end, %if.end6.do.body15_crit_edge
  %fb_update = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 6
  tail call void @__init_work(ptr noundef %fb_update, i32 noundef 0) #6
  %10 = ptrtoint ptr %fb_update to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %fb_update, align 4
  %lockdep_map = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 6, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @gm12u320_usb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry26 = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 6, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 6, i32 0, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 6, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gm12u320_fb_update_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 6, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @gm12u320_usb_probe.__key.7) #6
  %lock = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 6, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @gm12u320_usb_probe.__key.9) #6
  %call43 = tail call i32 @drmm_mode_config_init(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %do.body15.err_put_device_crit_edge

do.body15.err_put_device_crit_edge:               ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end46:                                         ; preds = %do.body15
  %min_width = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 23
  %14 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 848, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 25
  %15 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 848, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 24
  %16 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 480, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 26
  %17 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 480, ptr %max_height, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 27
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gm12u320_mode_config_funcs, ptr %funcs, align 4
  %call.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %call, i32 noundef 31, i32 noundef 3264) #6
  %cmd_buf.i = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %cmd_buf.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end46.err_put_device_crit_edge, label %if.end46.for.body.i_crit_edge

if.end46.for.body.i_crit_edge:                    ; preds = %if.end46
  br label %for.body.i

if.end46.err_put_device_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %if.end46.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %if.end11.i.for.body.i_crit_edge ], [ 0, %if.end46.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.032.i)
  %cmp2.i = icmp eq i32 %i.032.i, 19
  %..i = select i1 %cmp2.i, i32 4136, i32 64616
  %call.i.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %call, i32 noundef %..i, i32 noundef 3520) #6
  %arrayidx.i = getelementptr %struct.gm12u320_device, ptr %call, i32 0, i32 5, i32 %i.032.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %for.body.i.err_put_device_crit_edge, label %if.end11.i

for.body.i.err_put_device_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end11.i:                                       ; preds = %for.body.i
  %data_last_block_header.data_block_header.i = select i1 %cmp2.i, ptr @data_last_block_header, ptr @data_block_header
  %21 = call ptr @memcpy(ptr %call.i.i, ptr %data_last_block_header.data_block_header.i, i32 84)
  %sub.i = add nsw i32 %..i, -20
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %sub.i
  %22 = call ptr @memcpy(ptr %add.ptr.i, ptr @data_block_footer, i32 20)
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %if.end54, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end54:                                         ; preds = %if.end11.i
  %call55 = tail call fastcc i32 @gm12u320_set_ecomode(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.err_put_device_crit_edge

if.end54.err_put_device_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end58:                                         ; preds = %if.end54
  %conn.i = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 3
  %helper_private.i.i = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 3, i32 35
  %23 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gm12u320_conn_helper_funcs, ptr %helper_private.i.i, align 4
  %call.i112 = tail call i32 @drm_connector_init(ptr noundef %call, ptr noundef %conn.i, ptr noundef nonnull @gm12u320_conn_funcs, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool60.not = icmp eq i32 %call.i112, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.err_put_device_crit_edge

if.end58.err_put_device_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end62:                                         ; preds = %if.end58
  %pipe = getelementptr inbounds %struct.gm12u320_device, ptr %call, i32 0, i32 2
  %call64 = tail call i32 @drm_simple_display_pipe_init(ptr noundef %call, ptr noundef %pipe, ptr noundef nonnull @gm12u320_pipe_funcs, ptr noundef nonnull @gm12u320_pipe_formats, i32 noundef 1, ptr noundef nonnull @gm12u320_pipe_modifiers, ptr noundef %conn.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.err_put_device_crit_edge

if.end62.err_put_device_crit_edge:                ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end67:                                         ; preds = %if.end62
  tail call void @drm_mode_config_reset(ptr noundef %call) #6
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call68 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.err_put_device_crit_edge

if.end67.err_put_device_crit_edge:                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_device

if.end71:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 0) #6
  br label %cleanup

err_put_device:                                   ; preds = %if.end67.err_put_device_crit_edge, %if.end62.err_put_device_crit_edge, %if.end58.err_put_device_crit_edge, %if.end54.err_put_device_crit_edge, %for.body.i.err_put_device_crit_edge, %if.end46.err_put_device_crit_edge, %do.body15.err_put_device_crit_edge
  %ret.0 = phi i32 [ %call43, %do.body15.err_put_device_crit_edge ], [ %call55, %if.end54.err_put_device_crit_edge ], [ %call.i112, %if.end58.err_put_device_crit_edge ], [ %call64, %if.end62.err_put_device_crit_edge ], [ %call68, %if.end67.err_put_device_crit_edge ], [ -12, %if.end46.err_put_device_crit_edge ], [ -12, %for.body.i.err_put_device_crit_edge ]
  %25 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmadev, align 4
  tail call void @put_device(ptr noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %err_put_device, %if.end71, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %ret.0, %err_put_device ], [ 0, %if.end71 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm12u320_usb_disconnect(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dmadev = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmadev, align 4
  tail call void @put_device(ptr noundef %3) #6
  %4 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dmadev, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm12u320_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm12u320_resume(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @gm12u320_set_ecomode(ptr noundef %1)
  %call2 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #6
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_intf_get_dma_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm12u320_fb_update_work(ptr noundef %work) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5060
  %dev1.i = getelementptr i8, ptr %work, i32 -5052
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 8
  %parent.i.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !91
  %lock.i = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %fb2.i = getelementptr i8, ptr %work, i32 192
  %5 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fb2.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.gm12u320_copy_fb_to_blocks.exit_crit_edge, label %if.end.i

entry.gm12u320_copy_fb_to_blocks.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gm12u320_copy_fb_to_blocks.exit

if.end.i:                                         ; preds = %entry
  %rect.i = getelementptr i8, ptr %work, i32 196
  %7 = ptrtoint ptr %rect.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rect.i, align 4
  %x29.i = getelementptr i8, ptr %work, i32 204
  %9 = ptrtoint ptr %x29.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %x29.i, align 4
  %y112.i = getelementptr i8, ptr %work, i32 200
  %11 = ptrtoint ptr %y112.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %y112.i, align 4
  %y215.i = getelementptr i8, ptr %work, i32 208
  %13 = ptrtoint ptr %y215.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %y215.i, align 4
  %src_map.i = getelementptr i8, ptr %work, i32 220
  %15 = ptrtoint ptr %src_map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src_map.i, align 4
  %call.i = tail call i32 @drm_gem_fb_begin_cpu_access(ptr noundef nonnull %6, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %call.i) #6
  br label %put_fb.i

if.end20.i:                                       ; preds = %if.end.i
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 6
  %add.i = add i32 %8, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp110.i = icmp slt i32 %12, %14
  br i1 %cmp110.i, label %for.body.lr.ph.i, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end20.i
  %19 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pitches.i, align 8
  %mul.i = mul i32 %20, %12
  %add.ptr.i = getelementptr i8, ptr %16, i32 %mul.i
  %mul21.i = shl i32 %8, 2
  %add.ptr22.i = getelementptr i8, ptr %add.ptr.i, i32 %mul21.i
  %21 = sub i32 %10, %8
  %mul24.i = mul i32 %21, 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end47.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %src.0112.i = phi ptr [ %add.ptr22.i, %for.body.lr.ph.i ], [ %add.ptr50.i, %if.end47.i.for.body.i_crit_edge ]
  %y1.0111.i = phi i32 [ %12, %for.body.lr.ph.i ], [ %inc51.i, %if.end47.i.for.body.i_crit_edge ]
  %mul25.i = mul i32 %y1.0111.i, 854
  %add26.i = add i32 %add.i, %mul25.i
  %mul27.i = mul i32 %add26.i, 3
  %mul27.i.frozen = freeze i32 %mul27.i
  %div.i = sdiv i32 %mul27.i.frozen, 64512
  %22 = mul i32 %div.i, 64512
  %rem.i.decomposed = sub i32 %mul27.i.frozen, %22
  %add28.i = add i32 %rem.i.decomposed, %mul24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64512, i32 %add28.i)
  %cmp29.i = icmp sgt i32 %add28.i, 64512
  %sub32.i = add i32 %add28.i, -64512
  %sub33.i = sub nsw i32 64512, %rem.i.decomposed
  %len.0.i = select i1 %cmp29.i, i32 %sub33.i, i32 %mul24.i
  %remain.0.i = select i1 %cmp29.i, i32 %sub32.i, i32 0
  %div36.i = sdiv i32 %len.0.i, 3
  %len.0.off.i = add i32 %len.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len.0.off.i)
  %23 = icmp ult i32 %len.0.off.i, 5
  br i1 %23, label %for.body.i.gm12u320_32bpp_to_24bpp_packed.exit.i_crit_edge, label %while.body.i.preheader.i

for.body.i.gm12u320_32bpp_to_24bpp_packed.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gm12u320_32bpp_to_24bpp_packed.exit.i

while.body.i.preheader.i:                         ; preds = %for.body.i
  %arrayidx37.i = getelementptr %struct.gm12u320_device, ptr %add.ptr, i32 0, i32 5, i32 %div.i
  %24 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx37.i, align 4
  %add35.i = add nsw i32 %rem.i.decomposed, 84
  %add.ptr38.i = getelementptr i8, ptr %25, i32 %add35.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %len.addr.015.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div36.i, %while.body.i.preheader.i ]
  %src.addr.014.i.i = phi ptr [ %incdec.ptr6.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %src.0112.i, %while.body.i.preheader.i ]
  %dst.addr.013.i.i = phi ptr [ %incdec.ptr5.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr38.i, %while.body.i.preheader.i ]
  %dec.i.i = add i32 %len.addr.015.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %src.addr.014.i.i, i32 1
  %26 = ptrtoint ptr %src.addr.014.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %src.addr.014.i.i, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %dst.addr.013.i.i, i32 1
  %28 = ptrtoint ptr %dst.addr.013.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %dst.addr.013.i.i, align 1
  %incdec.ptr2.i.i = getelementptr i8, ptr %src.addr.014.i.i, i32 2
  %29 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr3.i.i = getelementptr i8, ptr %dst.addr.013.i.i, i32 2
  %31 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %incdec.ptr1.i.i, align 1
  %32 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr2.i.i, align 1
  %incdec.ptr5.i.i = getelementptr i8, ptr %dst.addr.013.i.i, i32 3
  %34 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %incdec.ptr3.i.i, align 1
  %incdec.ptr6.i.i = getelementptr i8, ptr %src.addr.014.i.i, i32 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.gm12u320_32bpp_to_24bpp_packed.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.gm12u320_32bpp_to_24bpp_packed.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gm12u320_32bpp_to_24bpp_packed.exit.i

gm12u320_32bpp_to_24bpp_packed.exit.i:            ; preds = %while.body.i.i.gm12u320_32bpp_to_24bpp_packed.exit.i_crit_edge, %for.body.i.gm12u320_32bpp_to_24bpp_packed.exit.i_crit_edge
  %35 = zext i32 %remain.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %remain.0.i, label %while.body.i108.preheader.i [
    i32 -1, label %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge
    i32 -2, label %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge152
    i32 2, label %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge153
    i32 1, label %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge154
    i32 0, label %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge155
  ]

gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge155: ; preds = %gm12u320_32bpp_to_24bpp_packed.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge154: ; preds = %gm12u320_32bpp_to_24bpp_packed.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge153: ; preds = %gm12u320_32bpp_to_24bpp_packed.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge152: ; preds = %gm12u320_32bpp_to_24bpp_packed.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge: ; preds = %gm12u320_32bpp_to_24bpp_packed.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

while.body.i108.preheader.i:                      ; preds = %gm12u320_32bpp_to_24bpp_packed.exit.i
  %div46.i = sdiv i32 %remain.0.i, 3
  %mul44.i = shl i32 %div36.i, 2
  %add.ptr45.i = getelementptr i8, ptr %src.0112.i, i32 %mul44.i
  %inc.i = add nsw i32 %div.i, 1
  %arrayidx42.i = getelementptr %struct.gm12u320_device, ptr %add.ptr, i32 0, i32 5, i32 %inc.i
  %36 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx42.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %37, i32 84
  br label %while.body.i108.i

while.body.i108.i:                                ; preds = %while.body.i108.i.while.body.i108.i_crit_edge, %while.body.i108.preheader.i
  %len.addr.015.i97.i = phi i32 [ %dec.i100.i, %while.body.i108.i.while.body.i108.i_crit_edge ], [ %div46.i, %while.body.i108.preheader.i ]
  %src.addr.014.i98.i = phi ptr [ %incdec.ptr6.i106.i, %while.body.i108.i.while.body.i108.i_crit_edge ], [ %add.ptr45.i, %while.body.i108.preheader.i ]
  %dst.addr.013.i99.i = phi ptr [ %incdec.ptr5.i105.i, %while.body.i108.i.while.body.i108.i_crit_edge ], [ %add.ptr43.i, %while.body.i108.preheader.i ]
  %dec.i100.i = add i32 %len.addr.015.i97.i, -1
  %incdec.ptr.i101.i = getelementptr i8, ptr %src.addr.014.i98.i, i32 1
  %38 = ptrtoint ptr %src.addr.014.i98.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %src.addr.014.i98.i, align 1
  %incdec.ptr1.i102.i = getelementptr i8, ptr %dst.addr.013.i99.i, i32 1
  %40 = ptrtoint ptr %dst.addr.013.i99.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %dst.addr.013.i99.i, align 1
  %incdec.ptr2.i103.i = getelementptr i8, ptr %src.addr.014.i98.i, i32 2
  %41 = ptrtoint ptr %incdec.ptr.i101.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.i101.i, align 1
  %incdec.ptr3.i104.i = getelementptr i8, ptr %dst.addr.013.i99.i, i32 2
  %43 = ptrtoint ptr %incdec.ptr1.i102.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %incdec.ptr1.i102.i, align 1
  %44 = ptrtoint ptr %incdec.ptr2.i103.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr2.i103.i, align 1
  %incdec.ptr5.i105.i = getelementptr i8, ptr %dst.addr.013.i99.i, i32 3
  %46 = ptrtoint ptr %incdec.ptr3.i104.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %incdec.ptr3.i104.i, align 1
  %incdec.ptr6.i106.i = getelementptr i8, ptr %src.addr.014.i98.i, i32 4
  %tobool.not.i107.i = icmp eq i32 %dec.i100.i, 0
  br i1 %tobool.not.i107.i, label %while.body.i108.i.if.end47.i_crit_edge, label %while.body.i108.i.while.body.i108.i_crit_edge

while.body.i108.i.while.body.i108.i_crit_edge:    ; preds = %while.body.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i108.i

while.body.i108.i.if.end47.i_crit_edge:           ; preds = %while.body.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.end47.i:                                       ; preds = %while.body.i108.i.if.end47.i_crit_edge, %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge, %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge152, %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge153, %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge154, %gm12u320_32bpp_to_24bpp_packed.exit.i.if.end47.i_crit_edge155
  %47 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pitches.i, align 8
  %add.ptr50.i = getelementptr i8, ptr %src.0112.i, i32 %48
  %inc51.i = add nsw i32 %y1.0111.i, 1
  %exitcond.not.i = icmp eq i32 %inc51.i, %14
  br i1 %exitcond.not.i, label %if.end47.i.for.end.i_crit_edge, label %if.end47.i.for.body.i_crit_edge

if.end47.i.for.body.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end47.i.for.end.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end47.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  tail call void @drm_gem_fb_end_cpu_access(ptr noundef nonnull %6, i32 noundef 2) #6
  br label %put_fb.i

put_fb.i:                                         ; preds = %for.end.i, %if.then18.i
  %base.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i.i) #6
  %49 = ptrtoint ptr %fb2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %fb2.i, align 4
  br label %gm12u320_copy_fb_to_blocks.exit

gm12u320_copy_fb_to_blocks.exit:                  ; preds = %put_fb.i, %entry.gm12u320_copy_fb_to_blocks.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %cmd_buf = getelementptr i8, ptr %work, i32 -84
  %frame = getelementptr inbounds %struct.anon.91, ptr %work, i32 0, i32 4
  %data_buf = getelementptr i8, ptr %work, i32 -80
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false40
  %inc = add nuw nsw i32 %block.0151, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %gm12u320_copy_fb_to_blocks.exit
  %block.0151 = phi i32 [ 0, %gm12u320_copy_fb_to_blocks.exit ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %block.0151)
  %cmp2 = icmp eq i32 %block.0151, 19
  %. = select i1 %cmp2, i32 4136, i32 64616
  %50 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd_buf, align 8
  %52 = call ptr @memcpy(ptr %51, ptr @cmd_data, i32 31)
  %conv = trunc i32 %. to i8
  %53 = load ptr, ptr %cmd_buf, align 8
  %arrayidx = getelementptr i8, ptr %53, i32 8
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %arrayidx, align 1
  %55 = lshr i32 %., 8
  %conv4 = trunc i32 %55 to i8
  %56 = load ptr, ptr %cmd_buf, align 8
  %arrayidx6 = getelementptr i8, ptr %56, i32 9
  %57 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv4, ptr %arrayidx6, align 1
  %58 = trunc i32 %block.0151 to i8
  %59 = mul i8 %58, -4
  %conv7 = add i8 %59, -4
  %60 = load ptr, ptr %cmd_buf, align 8
  %arrayidx9 = getelementptr i8, ptr %60, i32 20
  %61 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv7, ptr %arrayidx9, align 1
  %62 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %frame, align 4
  %shl = shl i32 %63, 7
  %or = or i32 %shl, %block.0151
  %conv10 = trunc i32 %or to i8
  %64 = load ptr, ptr %cmd_buf, align 8
  %arrayidx12 = getelementptr i8, ptr %64, i32 21
  %65 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv10, ptr %arrayidx12, align 1
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %67, 8
  %or14 = or i32 %shl.i, -1073643520
  %68 = load ptr, ptr %cmd_buf, align 8
  %call17 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or14, ptr noundef %68, i32 noundef 31, ptr noundef nonnull %len, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.err_crit_edge

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false:                                    ; preds = %for.body
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %70)
  %cmp18.not = icmp eq i32 %70, 31
  br i1 %cmp18.not, label %if.end21, label %lor.lhs.false.if.then88_crit_edge

lor.lhs.false.if.then88_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end21:                                         ; preds = %lor.lhs.false
  %71 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i140 = shl i32 %72, 8
  %or23 = or i32 %shl.i140, -1073643520
  %arrayidx24 = getelementptr [20 x ptr], ptr %data_buf, i32 0, i32 %block.0151
  %73 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx24, align 4
  %call26 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or23, ptr noundef %74, i32 noundef %., ptr noundef nonnull %len, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.end21.err_crit_edge

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false28:                                  ; preds = %if.end21
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %.)
  %cmp29.not = icmp eq i32 %76, %.
  br i1 %cmp29.not, label %if.end32, label %lor.lhs.false28.if.then88_crit_edge

lor.lhs.false28.if.then88_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end32:                                         ; preds = %lor.lhs.false28
  %77 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i142 = shl i32 %78, 8
  %or35 = or i32 %shl.i142, -1073676160
  %79 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmd_buf, align 8
  %call38 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or35, ptr noundef %80, i32 noundef 13, ptr noundef nonnull %len, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end32.err_crit_edge

if.end32.err_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false40:                                  ; preds = %if.end32
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %82)
  %cmp41.not = icmp eq i32 %82, 13
  br i1 %cmp41.not, label %for.cond, label %lor.lhs.false40.if.then88_crit_edge

lor.lhs.false40.if.then88_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

for.end:                                          ; preds = %for.cond
  %83 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cmd_buf, align 8
  %85 = call ptr @memcpy(ptr %84, ptr @cmd_draw, i32 31)
  %86 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i144 = shl i32 %87, 8
  %or47 = or i32 %shl.i144, -1073643520
  %88 = load ptr, ptr %cmd_buf, align 8
  %call50 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or47, ptr noundef %88, i32 noundef 31, ptr noundef nonnull %len, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false52:                                  ; preds = %for.end
  %89 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %90)
  %cmp53.not = icmp eq i32 %90, 31
  br i1 %cmp53.not, label %if.end56, label %lor.lhs.false52.if.then88_crit_edge

lor.lhs.false52.if.then88_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end56:                                         ; preds = %lor.lhs.false52
  %91 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i146 = shl i32 %92, 8
  %or59 = or i32 %shl.i146, -1073676160
  %93 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cmd_buf, align 8
  %draw_status_timeout = getelementptr inbounds %struct.anon.91, ptr %work, i32 0, i32 5
  %95 = ptrtoint ptr %draw_status_timeout to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %draw_status_timeout, align 4
  %call62 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or59, ptr noundef %94, i32 noundef 13, ptr noundef nonnull %len, i32 noundef %96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %if.end56.err_crit_edge

if.end56.err_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false64:                                  ; preds = %if.end56
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %98)
  %cmp65.not = icmp eq i32 %98, 13
  br i1 %cmp65.not, label %if.end68, label %lor.lhs.false64.if.then88_crit_edge

lor.lhs.false64.if.then88_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.end68:                                         ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %draw_status_timeout to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 20, ptr %draw_status_timeout, align 4
  %100 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool74.not = icmp eq i32 %101, 0
  %lnot.ext = zext i1 %tobool74.not to i32
  %102 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %lnot.ext, ptr %frame, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %103 = load ptr, ptr @system_long_wq, align 4
  %call.i148 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %103, ptr noundef %work, i32 noundef 200) #6
  br label %cleanup

err:                                              ; preds = %if.end56.err_crit_edge, %for.end.err_crit_edge, %if.end32.err_crit_edge, %if.end21.err_crit_edge, %for.body.err_crit_edge
  %ret.0 = phi i32 [ %call50, %for.end.err_crit_edge ], [ %call62, %if.end56.err_crit_edge ], [ %call38, %if.end32.err_crit_edge ], [ %call26, %if.end21.err_crit_edge ], [ %call17, %for.body.err_crit_edge ]
  %104 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %ret.0, label %err.if.then88_crit_edge [
    i32 -19, label %err.cleanup_crit_edge
    i32 -104, label %err.cleanup_crit_edge156
    i32 -108, label %err.cleanup_crit_edge157
  ]

err.cleanup_crit_edge157:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err.cleanup_crit_edge156:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err.if.then88_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.then88:                                        ; preds = %err.if.then88_crit_edge, %lor.lhs.false64.if.then88_crit_edge, %lor.lhs.false52.if.then88_crit_edge, %lor.lhs.false40.if.then88_crit_edge, %lor.lhs.false28.if.then88_crit_edge, %lor.lhs.false.if.then88_crit_edge
  %ret.0150 = phi i32 [ %ret.0, %err.if.then88_crit_edge ], [ 0, %lor.lhs.false52.if.then88_crit_edge ], [ 0, %lor.lhs.false64.if.then88_crit_edge ], [ 0, %lor.lhs.false.if.then88_crit_edge ], [ 0, %lor.lhs.false28.if.then88_crit_edge ], [ 0, %lor.lhs.false40.if.then88_crit_edge ]
  %105 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev1.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %106, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %ret.0150) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %err.cleanup_crit_edge, %err.cleanup_crit_edge156, %err.cleanup_crit_edge157, %if.end68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gm12u320_set_ecomode(ptr nocapture noundef readonly %gm12u320) unnamed_addr #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @eco_mode, align 1, !range !92
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %gm12u320, i32 0, i32 2
  %1 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i.i, align 8
  %parent.i.i.i = getelementptr i8, ptr %2, i32 136
  %3 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len.i, align 4, !annotation !91
  %cmd_buf.i = getelementptr inbounds %struct.gm12u320_device, ptr %gm12u320, i32 0, i32 4
  %6 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_buf.i, align 8
  %8 = call ptr @memcpy(ptr %7, ptr @cmd_misc, i32 31)
  %9 = load ptr, ptr %cmd_buf.i, align 8
  %arrayidx.i = getelementptr i8, ptr %9, i32 20
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %arrayidx.i, align 1
  %11 = load ptr, ptr %cmd_buf.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %11, i32 21
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 53, ptr %arrayidx3.i, align 1
  %13 = load ptr, ptr %cmd_buf.i, align 8
  %arrayidx5.i = getelementptr i8, ptr %13, i32 22
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx5.i, align 1
  %15 = load ptr, ptr %cmd_buf.i, align 8
  %arrayidx7.i = getelementptr i8, ptr %15, i32 23
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %0, ptr %arrayidx7.i, align 1
  %17 = load ptr, ptr %cmd_buf.i, align 8
  %arrayidx9.i = getelementptr i8, ptr %17, i32 24
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx9.i, align 1
  %19 = load ptr, ptr %cmd_buf.i, align 8
  %arrayidx11.i = getelementptr i8, ptr %19, i32 25
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx11.i, align 1
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i.i = shl i32 %22, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %23 = load ptr, ptr %cmd_buf.i, align 8
  %call15.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i.i, i32 noundef %or.i, ptr noundef %23, i32 noundef 31, ptr noundef nonnull %len.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 31
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %26 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, i32 noundef %call15.i) #6
  br label %gm12u320_misc_request.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i1.i = shl i32 %29, 8
  %or19.i = or i32 %shl.i1.i, -1073708928
  %30 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_buf.i, align 8
  %call22.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i.i, i32 noundef %or19.i, ptr noundef %31, i32 noundef 4, ptr noundef nonnull %len.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %if.end.i.if.then26.i_crit_edge

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

lor.lhs.false24.i:                                ; preds = %if.end.i
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp25.not.i = icmp eq i32 %33, 4
  br i1 %cmp25.not.i, label %if.end29.i, label %lor.lhs.false24.i.if.then26.i_crit_edge

lor.lhs.false24.i.if.then26.i_crit_edge:          ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.then26.i:                                      ; preds = %lor.lhs.false24.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  %34 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef %call22.i) #6
  br label %gm12u320_misc_request.exit

if.end29.i:                                       ; preds = %lor.lhs.false24.i
  %36 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i.i, align 8
  %shl.i3.i = shl i32 %37, 8
  %or32.i = or i32 %shl.i3.i, -1073708928
  %38 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd_buf.i, align 8
  %call35.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i.i, i32 noundef %or32.i, ptr noundef %39, i32 noundef 13, ptr noundef nonnull %len.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %lor.lhs.false37.i, label %if.end29.i.if.then39.i_crit_edge

if.end29.i.if.then39.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i

lor.lhs.false37.i:                                ; preds = %if.end29.i
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %41)
  %cmp38.not.i = icmp eq i32 %41, 13
  br i1 %cmp38.not.i, label %lor.lhs.false37.i.gm12u320_misc_request.exit_crit_edge, label %lor.lhs.false37.i.if.then39.i_crit_edge

lor.lhs.false37.i.if.then39.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39.i

lor.lhs.false37.i.gm12u320_misc_request.exit_crit_edge: ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gm12u320_misc_request.exit

if.then39.i:                                      ; preds = %lor.lhs.false37.i.if.then39.i_crit_edge, %if.end29.i.if.then39.i_crit_edge
  %42 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %43, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.19, i32 noundef %call35.i) #6
  br label %gm12u320_misc_request.exit

gm12u320_misc_request.exit:                       ; preds = %if.then39.i, %lor.lhs.false37.i.gm12u320_misc_request.exit_crit_edge, %if.then26.i, %if.then.i
  %retval.0.i = phi i32 [ -5, %if.then.i ], [ -5, %if.then26.i ], [ -5, %if.then39.i ], [ 0, %lor.lhs.false37.i.gm12u320_misc_request.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gm12u320_gem_prime_import(ptr noundef %dev, ptr noundef %dma_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dmadev = getelementptr inbounds %struct.gm12u320_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @drm_gem_prime_import_dev(ptr noundef %dev, ptr noundef %dma_buf, ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_prime_import_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_begin_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_end_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gm12u320_conn_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull @gm12u320_edid) #6
  %call1 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull @gm12u320_edid) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal void @gm12u320_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readonly %plane_state) #2 align 64 {
entry:
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #6
  %0 = call ptr @memcpy(ptr %rect, ptr @__const.gm12u320_pipe_enable.rect, i32 16)
  %1 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pipe, align 8
  %draw_status_timeout = getelementptr inbounds %struct.gm12u320_device, ptr %2, i32 0, i32 6, i32 5
  %3 = ptrtoint ptr %draw_status_timeout to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 200, ptr %draw_status_timeout, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %plane_state, i32 0, i32 2
  call fastcc void @gm12u320_fb_mark_dirty(ptr noundef %5, ptr noundef %data, ptr noundef nonnull %rect)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm12u320_pipe_disable(ptr nocapture noundef readonly %pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %fb_update.i = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fb_update.i) #6
  %lock.i = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %fb.i = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb.i, align 4
  store ptr null, ptr %fb.i, align 4
  %src_map.i = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 6
  %is_iomem.i.i = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 6, i32 1
  %4 = ptrtoint ptr %is_iomem.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_iomem.i.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %src_map.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %src_map.i, align 4
  br i1 %tobool.not.i.i, label %entry.gm12u320_stop_fb_update.exit_crit_edge, label %if.then.i.i

entry.gm12u320_stop_fb_update.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gm12u320_stop_fb_update.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %is_iomem.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_iomem.i.i, align 4
  br label %gm12u320_stop_fb_update.exit

gm12u320_stop_fb_update.exit:                     ; preds = %if.then.i.i, %entry.gm12u320_stop_fb_update.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %base.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm12u320_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_state) #2 align 64 {
entry:
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #6
  %2 = call ptr @memset(ptr %rect, i32 255, i32 16)
  %call2 = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %1, ptr noundef nonnull %rect) #6
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb, align 4
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %1, i32 0, i32 2
  call fastcc void @gm12u320_fb_mark_dirty(ptr noundef %4, ptr noundef %data, ptr noundef nonnull %rect)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_simple_kms_prepare_shadow_fb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_cleanup_shadow_fb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_reset_shadow_plane(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_simple_kms_duplicate_shadow_plane_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_destroy_shadow_plane_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gm12u320_fb_mark_dirty(ptr noundef %fb, ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %dirty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  %lock = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %fb2 = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 4
  %cmp.not = icmp eq ptr %3, %fb
  br i1 %cmp.not, label %if.end44.thread, label %if.end44

if.end44.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rect11 = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %rect11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rect11, align 4
  %6 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dirty, align 4
  %8 = tail call i32 @llvm.smin.i32(i32 %5, i32 %7)
  %9 = ptrtoint ptr %rect11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rect11, align 4
  %y1 = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 3, i32 1
  %10 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y1, align 4
  %y116 = getelementptr inbounds %struct.drm_rect, ptr %dirty, i32 0, i32 1
  %12 = ptrtoint ptr %y116 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y116, align 4
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 %13)
  %15 = ptrtoint ptr %y1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %y1, align 4
  %x2 = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 3, i32 2
  %16 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %x2, align 4
  %x224 = getelementptr inbounds %struct.drm_rect, ptr %dirty, i32 0, i32 2
  %18 = ptrtoint ptr %x224 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %x224, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %19)
  %21 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %x2, align 4
  %y2 = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 3, i32 3
  %22 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y2, align 4
  %y232 = getelementptr inbounds %struct.drm_rect, ptr %dirty, i32 0, i32 3
  %24 = ptrtoint ptr %y232 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %y232, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %23, i32 %25)
  %27 = ptrtoint ptr %y2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %y2, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end47

if.end44:                                         ; preds = %entry
  %fb_update = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i) #6
  %28 = ptrtoint ptr %fb2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fb, ptr %fb2, align 4
  %rect = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 3
  %29 = call ptr @memcpy(ptr %rect, ptr %dirty, i32 16)
  %src_map = getelementptr inbounds %struct.gm12u320_device, ptr %1, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %map to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %map, align 4
  %32 = ptrtoint ptr %src_map to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %src_map, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %33 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %fb_update, i32 noundef 0) #6
  %tobool45.not = icmp eq ptr %3, null
  br i1 %tobool45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %base.i87 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i87) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge, %if.end44.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__param_eco_mode, !1, !"__param_eco_mode", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_eco_modetype323, !1, !"__UNIQUE_ID_eco_modetype323", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_eco_mode324, !4, !"__UNIQUE_ID_eco_mode324", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 29, i32 1}
!5 = !{ptr @__initcall__kmod_gm12u320__333_754_gm12u320_usb_driver_init6, !6, !"__initcall__kmod_gm12u320__333_754_gm12u320_usb_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 754, i32 1}
!7 = !{ptr @__exitcall_gm12u320_usb_driver_exit, !6, !"__exitcall_gm12u320_usb_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author334, !9, !"__UNIQUE_ID_author334", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 755, i32 1}
!10 = !{ptr @__UNIQUE_ID_file335, !11, !"__UNIQUE_ID_file335", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 756, i32 1}
!12 = !{ptr @__UNIQUE_ID_license336, !11, !"__UNIQUE_ID_license336", i1 false, i1 false}
!13 = !{ptr @eco_mode, !14, !"eco_mode", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 27, i32 13}
!15 = !{ptr @__param_str_eco_mode, !1, !"__param_str_eco_mode", i1 false, i1 false}
!16 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gm12u320_usb_driver, !18, !"gm12u320_usb_driver", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 742, i32 26}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 654, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gm12u320_usb_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @gm12u320_usb_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @gm12u320_usb_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 656, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gm12u320_usb_probe.__key.7, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gm12u320_usb_probe.__key.9, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 657, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 616, i32 12}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 617, i32 12}
!39 = !{ptr @gm12u320_drm_driver, !40, !"gm12u320_drm_driver", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 612, i32 32}
!41 = !{ptr @gm12u320_fops, !42, !"gm12u320_fops", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 610, i32 1}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 395, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 272, i32 3}
!48 = !{ptr @cmd_data, !49, !"cmd_data", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 104, i32 19}
!50 = !{ptr @cmd_draw, !51, !"cmd_draw", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 111, i32 19}
!52 = !{ptr @gm12u320_mode_config_funcs, !53, !"gm12u320_mode_config_funcs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 626, i32 43}
!54 = !{ptr @data_last_block_header, !55, !"data_last_block_header", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 139, i32 19}
!56 = !{ptr @data_block_header, !57, !"data_block_header", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 125, i32 19}
!58 = !{ptr @data_block_footer, !59, !"data_block_footer", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 153, i32 19}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 215, i32 3}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 224, i32 3}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 234, i32 3}
!66 = !{ptr @cmd_misc, !67, !"cmd_misc", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 118, i32 19}
!68 = !{ptr @gm12u320_conn_helper_funcs, !69, !"gm12u320_conn_helper_funcs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 526, i32 48}
!70 = !{ptr @gm12u320_edid, !71, !"gm12u320_edid", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 463, i32 20}
!72 = !{ptr @gm12u320_conn_funcs, !73, !"gm12u320_conn_funcs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 530, i32 41}
!74 = !{ptr @gm12u320_pipe_funcs, !75, !"gm12u320_pipe_funcs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 578, i32 51}
!76 = !{ptr @gm12u320_pipe_formats, !77, !"gm12u320_pipe_formats", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 585, i32 23}
!78 = !{ptr @gm12u320_pipe_modifiers, !79, !"gm12u320_pipe_modifiers", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 589, i32 23}
!80 = !{ptr @id_table, !81, !"id_table", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/tiny/gm12u320.c", i32 736, i32 35}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i8 0, i8 2}
