; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/ili9341.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/ili9341.c"
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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

@__initcall__kmod_ili9341__318_253_ili9341_spi_driver_init6 = internal global ptr @ili9341_spi_driver_init, section ".initcall6.init", align 4
@ili9341_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ili9341_id, ptr @ili9341_probe, ptr @ili9341_remove, ptr @ili9341_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ili9341_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ili9341_spi_driver_exit = internal global ptr @ili9341_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [46 x i8] c"ili9341.description=Ilitek ILI9341 DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [52 x i8] c"ili9341.author=David Lechner <david@lechnology.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [42 x i8] c"ili9341.file=drivers/gpu/drm/tiny/ili9341\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [20 x i8] c"ili9341.license=GPL\00", section ".modinfo", align 1
@ili9341_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"yx240qv29\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ili9341\00", [24 x i8] zeroinitializer }, align 32
@ili9341_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adafruit,yx240qv29\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ili9341_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_dbi_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.6, ptr @.str.7, i32 19, ptr null, i32 0, ptr @ili9341_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get GPIO 'reset'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dc\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get GPIO 'dc'\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@ili9341_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @yx240qv29_enable, ptr @mipi_dbi_pipe_disable, ptr null, ptr @mipi_dbi_pipe_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@yx240qv29_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 240, i16 240, i16 240, i16 240, i16 0, i16 320, i16 320, i16 320, i16 320, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 37, i16 49, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ilitek ILI9341\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20180514\00", [23 x i8] zeroinitializer }, align 32
@ili9341_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@yx240qv29_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.yx240qv29_enable = private unnamed_addr constant [17 x i8] c"yx240qv29_enable\00", align 1
@yx240qv29_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 73, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tiny/ili9341.c\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr = internal global ptr @yx240qv29_enable._entry, section ".printk_index", align 4
@__const.yx240qv29_enable.d = private unnamed_addr constant [3 x i8] c"\00\C10", align 1
@yx240qv29_enable._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 75, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.16 = internal global ptr @yx240qv29_enable._entry.15, section ".printk_index", align 4
@yx240qv29_enable._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 76, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.20 = internal global ptr @yx240qv29_enable._entry.19, section ".printk_index", align 4
@__const.yx240qv29_enable.d.21 = private unnamed_addr constant [3 x i8] c"\85\00x", align 1
@yx240qv29_enable._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 77, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.24 = internal global ptr @yx240qv29_enable._entry.23, section ".printk_index", align 4
@__const.yx240qv29_enable.d.25 = private unnamed_addr constant [5 x i8] c"9,\004\02", align 1
@yx240qv29_enable._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 78, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.28 = internal global ptr @yx240qv29_enable._entry.27, section ".printk_index", align 4
@yx240qv29_enable._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 79, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.32 = internal global ptr @yx240qv29_enable._entry.31, section ".printk_index", align 4
@yx240qv29_enable._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 80, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.35 = internal global ptr @yx240qv29_enable._entry.34, section ".printk_index", align 4
@yx240qv29_enable._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 83, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.39 = internal global ptr @yx240qv29_enable._entry.38, section ".printk_index", align 4
@yx240qv29_enable._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 84, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.43 = internal global ptr @yx240qv29_enable._entry.42, section ".printk_index", align 4
@yx240qv29_enable._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 86, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.47 = internal global ptr @yx240qv29_enable._entry.46, section ".printk_index", align 4
@yx240qv29_enable._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 87, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.51 = internal global ptr @yx240qv29_enable._entry.50, section ".printk_index", align 4
@yx240qv29_enable._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 90, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.55 = internal global ptr @yx240qv29_enable._entry.54, section ".printk_index", align 4
@yx240qv29_enable._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 93, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.59 = internal global ptr @yx240qv29_enable._entry.58, section ".printk_index", align 4
@yx240qv29_enable._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 96, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.62 = internal global ptr @yx240qv29_enable._entry.61, section ".printk_index", align 4
@yx240qv29_enable._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 97, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.66 = internal global ptr @yx240qv29_enable._entry.65, section ".printk_index", align 4
@__const.yx240qv29_enable.d.67 = private unnamed_addr constant [15 x i8] c"\0F1+\0C\0E\08N\F17\07\10\03\0E\09\00", align 1
@yx240qv29_enable._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 100, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.70 = internal global ptr @yx240qv29_enable._entry.69, section ".printk_index", align 4
@__const.yx240qv29_enable.d.71 = private unnamed_addr constant [15 x i8] c"\00\0E\14\03\11\071\C1H\08\0F\0C16\0F", align 1
@yx240qv29_enable._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 103, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.74 = internal global ptr @yx240qv29_enable._entry.73, section ".printk_index", align 4
@yx240qv29_enable._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 106, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.78 = internal global ptr @yx240qv29_enable._entry.77, section ".printk_index", align 4
@yx240qv29_enable._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 109, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.82 = internal global ptr @yx240qv29_enable._entry.81, section ".printk_index", align 4
@yx240qv29_enable._rs.83 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 110, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.85 = internal global ptr @yx240qv29_enable._entry.84, section ".printk_index", align 4
@yx240qv29_enable._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 113, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.88 = internal global ptr @yx240qv29_enable._entry.87, section ".printk_index", align 4
@yx240qv29_enable._rs.89 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.yx240qv29_enable, ptr @.str.11, i32 133, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.91 = internal global ptr @yx240qv29_enable._entry.90, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"ili9341_spi_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 243, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"ili9341_id\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 169, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 245, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"ili9341_of_match\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 163, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"ili9341_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 151, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 193, i32 44 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 195, i32 50 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 197, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 199, i32 42 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 205, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"ili9341_pipe_funcs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 139, i32 51 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"yx240qv29_mode\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 145, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 157, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 158, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"ili9341_fops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 149, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 65, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 73, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 75, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 76, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 77, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 78, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 79, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 80, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 83, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 84, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 86, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 87, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 90, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 93, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 96, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 97, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 98, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 101, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 106, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 109, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 110, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 113, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.285 = private constant [34 x i8] c"../drivers/gpu/drm/tiny/ili9341.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 133, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_ili9341_spi_driver_exit, ptr @__initcall__kmod_ili9341__318_253_ili9341_spi_driver_init6, ptr @ili9341_spi_driver_exit, ptr @yx240qv29_enable._entry, ptr @yx240qv29_enable._entry.15, ptr @yx240qv29_enable._entry.19, ptr @yx240qv29_enable._entry.23, ptr @yx240qv29_enable._entry.27, ptr @yx240qv29_enable._entry.31, ptr @yx240qv29_enable._entry.34, ptr @yx240qv29_enable._entry.38, ptr @yx240qv29_enable._entry.42, ptr @yx240qv29_enable._entry.46, ptr @yx240qv29_enable._entry.50, ptr @yx240qv29_enable._entry.54, ptr @yx240qv29_enable._entry.58, ptr @yx240qv29_enable._entry.61, ptr @yx240qv29_enable._entry.65, ptr @yx240qv29_enable._entry.69, ptr @yx240qv29_enable._entry.73, ptr @yx240qv29_enable._entry.77, ptr @yx240qv29_enable._entry.81, ptr @yx240qv29_enable._entry.84, ptr @yx240qv29_enable._entry.87, ptr @yx240qv29_enable._entry.90, ptr @yx240qv29_enable._entry_ptr, ptr @yx240qv29_enable._entry_ptr.16, ptr @yx240qv29_enable._entry_ptr.20, ptr @yx240qv29_enable._entry_ptr.24, ptr @yx240qv29_enable._entry_ptr.28, ptr @yx240qv29_enable._entry_ptr.32, ptr @yx240qv29_enable._entry_ptr.35, ptr @yx240qv29_enable._entry_ptr.39, ptr @yx240qv29_enable._entry_ptr.43, ptr @yx240qv29_enable._entry_ptr.47, ptr @yx240qv29_enable._entry_ptr.51, ptr @yx240qv29_enable._entry_ptr.55, ptr @yx240qv29_enable._entry_ptr.59, ptr @yx240qv29_enable._entry_ptr.62, ptr @yx240qv29_enable._entry_ptr.66, ptr @yx240qv29_enable._entry_ptr.70, ptr @yx240qv29_enable._entry_ptr.74, ptr @yx240qv29_enable._entry_ptr.78, ptr @yx240qv29_enable._entry_ptr.82, ptr @yx240qv29_enable._entry_ptr.85, ptr @yx240qv29_enable._entry_ptr.88, ptr @yx240qv29_enable._entry_ptr.91, ptr @ili9341_spi_driver, ptr @ili9341_id, ptr @.str, ptr @ili9341_of_match, ptr @ili9341_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ili9341_pipe_funcs, ptr @yx240qv29_mode, ptr @.str.6, ptr @.str.7, ptr @ili9341_fops, ptr @.str.8, ptr @yx240qv29_enable._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @yx240qv29_enable._rs.14, ptr @yx240qv29_enable._rs.18, ptr @yx240qv29_enable._rs.22, ptr @yx240qv29_enable._rs.26, ptr @yx240qv29_enable._rs.30, ptr @yx240qv29_enable._rs.33, ptr @yx240qv29_enable._rs.37, ptr @yx240qv29_enable._rs.41, ptr @yx240qv29_enable._rs.45, ptr @yx240qv29_enable._rs.49, ptr @yx240qv29_enable._rs.53, ptr @yx240qv29_enable._rs.57, ptr @yx240qv29_enable._rs.60, ptr @yx240qv29_enable._rs.64, ptr @yx240qv29_enable._rs.68, ptr @yx240qv29_enable._rs.72, ptr @yx240qv29_enable._rs.76, ptr @yx240qv29_enable._rs.80, ptr @yx240qv29_enable._rs.83, ptr @yx240qv29_enable._rs.86, ptr @yx240qv29_enable._rs.89], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ili9341_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ili9341_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ili9341_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #5
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rotation, align 4
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %spi, ptr noundef nonnull @ili9341_driver, i32 noundef 5240, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dbi4 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10
  %call6 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 7) #5
  %reset = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %reset, align 4
  %cmp.i73 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call6 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %3, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %cmp.i74 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call14 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %4, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call20 = tail call ptr @devm_of_find_backlight(ptr noundef %spi) #5
  %backlight = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %backlight, align 8
  %cmp.i75 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.5, ptr noundef nonnull %rotation, i32 noundef 1) #5
  %call28 = call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi4, ptr noundef %call14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %7 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rotation, align 4
  %call31 = call i32 @mipi_dbi_dev_init(ptr noundef %call, ptr noundef nonnull @ili9341_pipe_funcs, ptr noundef nonnull @yx240qv29_mode, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @drm_mode_config_reset(ptr noundef %call) #5
  %call35 = call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %driver_data.i.i, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then23, %if.then16, %if.then9, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call12, %if.then9 ], [ %call18, %if.then16 ], [ %6, %if.then23 ], [ 0, %if.end38 ], [ %call28, %if.end26.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
define internal void @ili9341_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
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
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_find_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_spi_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @mipi_dbi_debugfs_init(ptr noundef) #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yx240qv29_enable(ptr nocapture noundef readonly %pipe, ptr noundef %crtc_state, ptr noundef %plane_state) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  %idx = alloca i32, align 4
  %d24 = alloca [3 x i8], align 1
  %d45 = alloca [4 x i8], align 4
  %d66 = alloca [3 x i8], align 1
  %d87 = alloca [5 x i8], align 1
  %d108 = alloca [1 x i8], align 1
  %d129 = alloca [2 x i8], align 2
  %d150 = alloca [1 x i8], align 1
  %d171 = alloca [1 x i8], align 1
  %d192 = alloca [2 x i8], align 2
  %d213 = alloca [1 x i8], align 1
  %d234 = alloca [1 x i8], align 1
  %d255 = alloca [2 x i8], align 2
  %d276 = alloca [1 x i8], align 1
  %d297 = alloca [1 x i8], align 1
  %d318 = alloca [15 x i8], align 1
  %d339 = alloca [15 x i8], align 1
  %d360 = alloca [1 x i8], align 1
  %d381 = alloca [4 x i8], align 4
  %d447 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dbi1 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !145
  %call4 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #5
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #5
  %call5 = call i32 @mipi_dbi_poweron_conditional_reset(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.out_exit_crit_edge, label %if.end7

if.end.out_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_exit

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp8 = icmp eq i32 %call5, 1
  br i1 %cmp8, label %if.end7.out_enable_crit_edge, label %if.end10

if.end7.out_enable_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_enable

if.end10:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %spi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %call14 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 40, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end10.if.end23_crit_edge, label %do.body

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.body:                                          ; preds = %if.end10
  %call16 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body.if.end23_crit_edge, label %do.end

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %call14, i32 noundef 40) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end, %do.body.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d24) #5
  %5 = call ptr @memcpy(ptr %d24, ptr @__const.yx240qv29_enable.d, i32 3)
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %call30 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -49, ptr noundef nonnull %d24, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end23.if.end43_crit_edge, label %do.body33

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.body33:                                        ; preds = %if.end23
  %call34 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.14, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.if.end43_crit_edge, label %do.end39

do.body33.if.end43_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %call30, i32 noundef 207) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %do.body33.if.end43_crit_edge, %if.end23.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d24) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d45) #5
  %8 = ptrtoint ptr %d45 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1677922945, ptr %d45, align 4
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  %call51 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -19, ptr noundef nonnull %d45, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end43.if.end64_crit_edge, label %do.body54

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.body54:                                        ; preds = %if.end43
  %call55 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.18, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body54.if.end64_crit_edge, label %do.end60

do.body54.if.end64_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %call51, i32 noundef 237) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end60, %do.body54.if.end64_crit_edge, %if.end43.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d45) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d66) #5
  %11 = call ptr @memcpy(ptr %d66, ptr @__const.yx240qv29_enable.d.21, i32 3)
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  %call72 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -24, ptr noundef nonnull %d66, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end64.if.end85_crit_edge, label %do.body75

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.body75:                                        ; preds = %if.end64
  %call76 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.22, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.body75.if.end85_crit_edge, label %do.end81

do.body75.if.end85_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end81:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %call72, i32 noundef 232) #8
  br label %if.end85

if.end85:                                         ; preds = %do.end81, %do.body75.if.end85_crit_edge, %if.end64.if.end85_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d66) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %d87) #5
  %14 = call ptr @memcpy(ptr %d87, ptr @__const.yx240qv29_enable.d.25, i32 5)
  %15 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi, align 4
  %call93 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -53, ptr noundef nonnull %d87, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end85.if.end106_crit_edge, label %do.body96

if.end85.if.end106_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

do.body96:                                        ; preds = %if.end85
  %call97 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.26, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body96.if.end106_crit_edge, label %do.end102

do.body96.if.end106_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef %call93, i32 noundef 203) #8
  br label %if.end106

if.end106:                                        ; preds = %do.end102, %do.body96.if.end106_crit_edge, %if.end85.if.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %d87) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d108) #5
  %17 = ptrtoint ptr %d108 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %d108, align 1
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %call114 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -9, ptr noundef nonnull %d108, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end106.if.end127_crit_edge, label %do.body117

if.end106.if.end127_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

do.body117:                                       ; preds = %if.end106
  %call118 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.30, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.body117.if.end127_crit_edge, label %do.end123

do.body117.if.end127_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

do.end123:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %call114, i32 noundef 247) #8
  br label %if.end127

if.end127:                                        ; preds = %do.end123, %do.body117.if.end127_crit_edge, %if.end106.if.end127_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d108) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d129) #5
  %20 = ptrtoint ptr %d129 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %d129, align 2
  %21 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi, align 4
  %call135 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -22, ptr noundef nonnull %d129, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end127.if.end148_crit_edge, label %do.body138

if.end127.if.end148_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

do.body138:                                       ; preds = %if.end127
  %call139 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.33, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %do.body138.if.end148_crit_edge, label %do.end144

do.body138.if.end148_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

do.end144:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef %call135, i32 noundef 234) #8
  br label %if.end148

if.end148:                                        ; preds = %do.end144, %do.body138.if.end148_crit_edge, %if.end127.if.end148_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d129) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d150) #5
  %23 = ptrtoint ptr %d150 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 35, ptr %d150, align 1
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  %call156 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -64, ptr noundef nonnull %d150, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end148.if.end169_crit_edge, label %do.body159

if.end148.if.end169_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end169

do.body159:                                       ; preds = %if.end148
  %call160 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.37, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %do.body159.if.end169_crit_edge, label %do.end165

do.body159.if.end169_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end169

do.end165:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef %call156, i32 noundef 192) #8
  br label %if.end169

if.end169:                                        ; preds = %do.end165, %do.body159.if.end169_crit_edge, %if.end148.if.end169_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d150) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d171) #5
  %26 = ptrtoint ptr %d171 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %d171, align 1
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %call177 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -63, ptr noundef nonnull %d171, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end169.if.end190_crit_edge, label %do.body180

if.end169.if.end190_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190

do.body180:                                       ; preds = %if.end169
  %call181 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.41, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %do.body180.if.end190_crit_edge, label %do.end186

do.body180.if.end190_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190

do.end186:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.10, i32 noundef %call177, i32 noundef 193) #8
  br label %if.end190

if.end190:                                        ; preds = %do.end186, %do.body180.if.end190_crit_edge, %if.end169.if.end190_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d171) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d192) #5
  %29 = ptrtoint ptr %d192 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 15912, ptr %d192, align 2
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi, align 4
  %call198 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -59, ptr noundef nonnull %d192, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end190.if.end211_crit_edge, label %do.body201

if.end190.if.end211_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end211

do.body201:                                       ; preds = %if.end190
  %call202 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.45, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %do.body201.if.end211_crit_edge, label %do.end207

do.body201.if.end211_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end211

do.end207:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, i32 noundef %call198, i32 noundef 197) #8
  br label %if.end211

if.end211:                                        ; preds = %do.end207, %do.body201.if.end211_crit_edge, %if.end190.if.end211_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d192) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d213) #5
  %32 = ptrtoint ptr %d213 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -122, ptr %d213, align 1
  %33 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi, align 4
  %call219 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -57, ptr noundef nonnull %d213, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end211.if.end232_crit_edge, label %do.body222

if.end211.if.end232_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end232

do.body222:                                       ; preds = %if.end211
  %call223 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.49, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %do.body222.if.end232_crit_edge, label %do.end228

do.body222.if.end232_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end232

do.end228:                                        ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.10, i32 noundef %call219, i32 noundef 199) #8
  br label %if.end232

if.end232:                                        ; preds = %do.end228, %do.body222.if.end232_crit_edge, %if.end211.if.end232_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d213) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d234) #5
  %35 = ptrtoint ptr %d234 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %d234, align 1
  %36 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi, align 4
  %call240 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 58, ptr noundef nonnull %d234, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end232.if.end253_crit_edge, label %do.body243

if.end232.if.end253_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end253

do.body243:                                       ; preds = %if.end232
  %call244 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.53, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %do.body243.if.end253_crit_edge, label %do.end249

do.body243.if.end253_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end253

do.end249:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10, i32 noundef %call240, i32 noundef 58) #8
  br label %if.end253

if.end253:                                        ; preds = %do.end249, %do.body243.if.end253_crit_edge, %if.end232.if.end253_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d234) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d255) #5
  %38 = ptrtoint ptr %d255 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 27, ptr %d255, align 2
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi, align 4
  %call261 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -79, ptr noundef nonnull %d255, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end253.if.end274_crit_edge, label %do.body264

if.end253.if.end274_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end274

do.body264:                                       ; preds = %if.end253
  %call265 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.57, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %do.body264.if.end274_crit_edge, label %do.end270

do.body264.if.end274_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end274

do.end270:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.10, i32 noundef %call261, i32 noundef 177) #8
  br label %if.end274

if.end274:                                        ; preds = %do.end270, %do.body264.if.end274_crit_edge, %if.end253.if.end274_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d255) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d276) #5
  %41 = ptrtoint ptr %d276 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %d276, align 1
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 4
  %call282 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -14, ptr noundef nonnull %d276, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %if.end274.if.end295_crit_edge, label %do.body285

if.end274.if.end295_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

do.body285:                                       ; preds = %if.end274
  %call286 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.60, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %do.body285.if.end295_crit_edge, label %do.end291

do.body285.if.end295_crit_edge:                   ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

do.end291:                                        ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.10, i32 noundef %call282, i32 noundef 242) #8
  br label %if.end295

if.end295:                                        ; preds = %do.end291, %do.body285.if.end295_crit_edge, %if.end274.if.end295_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d276) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d297) #5
  %44 = ptrtoint ptr %d297 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %d297, align 1
  %45 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi, align 4
  %call303 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 38, ptr noundef nonnull %d297, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end295.if.end316_crit_edge, label %do.body306

if.end295.if.end316_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end316

do.body306:                                       ; preds = %if.end295
  %call307 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.64, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %do.body306.if.end316_crit_edge, label %do.end312

do.body306.if.end316_crit_edge:                   ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end316

do.end312:                                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.10, i32 noundef %call303, i32 noundef 38) #8
  br label %if.end316

if.end316:                                        ; preds = %do.end312, %do.body306.if.end316_crit_edge, %if.end295.if.end316_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d297) #5
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %d318) #5
  %47 = call ptr @memcpy(ptr %d318, ptr @__const.yx240qv29_enable.d.67, i32 15)
  %48 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi, align 4
  %call324 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -32, ptr noundef nonnull %d318, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.end316.if.end337_crit_edge, label %do.body327

if.end316.if.end337_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end337

do.body327:                                       ; preds = %if.end316
  %call328 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.68, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %do.body327.if.end337_crit_edge, label %do.end333

do.body327.if.end337_crit_edge:                   ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end337

do.end333:                                        ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.10, i32 noundef %call324, i32 noundef 224) #8
  br label %if.end337

if.end337:                                        ; preds = %do.end333, %do.body327.if.end337_crit_edge, %if.end316.if.end337_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %d318) #5
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %d339) #5
  %50 = call ptr @memcpy(ptr %d339, ptr @__const.yx240qv29_enable.d.71, i32 15)
  %51 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi, align 4
  %call345 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -31, ptr noundef nonnull %d339, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %tobool346.not = icmp eq i32 %call345, 0
  br i1 %tobool346.not, label %if.end337.if.end358_crit_edge, label %do.body348

if.end337.if.end358_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end358

do.body348:                                       ; preds = %if.end337
  %call349 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.72, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349)
  %tobool350.not = icmp eq i32 %call349, 0
  br i1 %tobool350.not, label %do.body348.if.end358_crit_edge, label %do.end354

do.body348.if.end358_crit_edge:                   ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end358

do.end354:                                        ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.10, i32 noundef %call345, i32 noundef 225) #8
  br label %if.end358

if.end358:                                        ; preds = %do.end354, %do.body348.if.end358_crit_edge, %if.end337.if.end358_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %d339) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d360) #5
  %53 = ptrtoint ptr %d360 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %d360, align 1
  %54 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %spi, align 4
  %call366 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -73, ptr noundef nonnull %d360, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %if.end358.if.end379_crit_edge, label %do.body369

if.end358.if.end379_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end379

do.body369:                                       ; preds = %if.end358
  %call370 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.76, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call370)
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %do.body369.if.end379_crit_edge, label %do.end375

do.body369.if.end379_crit_edge:                   ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end379

do.end375:                                        ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.10, i32 noundef %call366, i32 noundef 183) #8
  br label %if.end379

if.end379:                                        ; preds = %do.end375, %do.body369.if.end379_crit_edge, %if.end358.if.end379_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d360) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d381) #5
  %56 = ptrtoint ptr %d381 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 142747392, ptr %d381, align 4
  %57 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi, align 4
  %call387 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -74, ptr noundef nonnull %d381, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.end379.if.end400_crit_edge, label %do.body390

if.end379.if.end400_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end400

do.body390:                                       ; preds = %if.end379
  %call391 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.80, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %do.body390.if.end400_crit_edge, label %do.end396

do.body390.if.end400_crit_edge:                   ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end400

do.end396:                                        ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.10, i32 noundef %call387, i32 noundef 182) #8
  br label %if.end400

if.end400:                                        ; preds = %do.end396, %do.body390.if.end400_crit_edge, %if.end379.if.end400_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d381) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %59 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %spi, align 4
  %call408 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %if.end400.if.end421_crit_edge, label %do.body411

if.end400.if.end421_crit_edge:                    ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end421

do.body411:                                       ; preds = %if.end400
  %call412 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.83, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %do.body411.if.end421_crit_edge, label %do.end417

do.body411.if.end421_crit_edge:                   ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end421

do.end417:                                        ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.10, i32 noundef %call408, i32 noundef 17) #8
  br label %if.end421

if.end421:                                        ; preds = %do.end417, %do.body411.if.end421_crit_edge, %if.end400.if.end421_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %61 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi, align 4
  %call429 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 41, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call429)
  %tobool430.not = icmp eq i32 %call429, 0
  br i1 %tobool430.not, label %if.end421.if.end442_crit_edge, label %do.body432

if.end421.if.end442_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end442

do.body432:                                       ; preds = %if.end421
  %call433 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.86, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call433)
  %tobool434.not = icmp eq i32 %call433, 0
  br i1 %tobool434.not, label %do.body432.if.end442_crit_edge, label %do.end438

do.body432.if.end442_crit_edge:                   ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end442

do.end438:                                        ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.10, i32 noundef %call429, i32 noundef 41) #8
  br label %if.end442

if.end442:                                        ; preds = %do.end438, %do.body432.if.end442_crit_edge, %if.end421.if.end442_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 100) #5
  br label %out_enable

out_enable:                                       ; preds = %if.end442, %if.end7.out_enable_crit_edge
  %rotation = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rotation, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %out_enable.sw.epilog_crit_edge [
    i32 90, label %sw.bb
    i32 180, label %sw.bb444
    i32 270, label %sw.bb445
  ]

out_enable.sw.epilog_crit_edge:                   ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb444:                                         ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb445:                                         ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb445, %sw.bb444, %sw.bb, %out_enable.sw.epilog_crit_edge
  %addr_mode.0 = phi i8 [ -24, %sw.bb445 ], [ -120, %sw.bb444 ], [ 40, %sw.bb ], [ 72, %out_enable.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d447) #5
  %66 = ptrtoint ptr %d447 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %addr_mode.0, ptr %d447, align 1
  %spi449 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %67 = ptrtoint ptr %spi449 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi449, align 4
  %call453 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 54, ptr noundef nonnull %d447, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call453)
  %tobool454.not = icmp eq i32 %call453, 0
  br i1 %tobool454.not, label %sw.epilog.if.end466_crit_edge, label %do.body456

sw.epilog.if.end466_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end466

do.body456:                                       ; preds = %sw.epilog
  %call457 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.89, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457)
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %do.body456.if.end466_crit_edge, label %do.end462

do.body456.if.end466_crit_edge:                   ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end466

do.end462:                                        ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.10, i32 noundef %call453, i32 noundef 54) #8
  br label %if.end466

if.end466:                                        ; preds = %do.end462, %do.body456.if.end466_crit_edge, %sw.epilog.if.end466_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d447) #5
  call void @mipi_dbi_enable_flush(ptr noundef %1, ptr noundef %crtc_state, ptr noundef %plane_state) #5
  br label %out_exit

out_exit:                                         ; preds = %if.end466, %if.end.out_exit_crit_edge
  %69 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %70) #5
  br label %cleanup

cleanup:                                          ; preds = %out_exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_pipe_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_pipe_update(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_poweron_conditional_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_stackbuf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_enable_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_ili9341__318_253_ili9341_spi_driver_init6, !1, !"__initcall__kmod_ili9341__318_253_ili9341_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 253, i32 1}
!2 = !{ptr @__exitcall_ili9341_spi_driver_exit, !1, !"__exitcall_ili9341_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description319, !4, !"__UNIQUE_ID_description319", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 255, i32 1}
!5 = !{ptr @__UNIQUE_ID_author320, !6, !"__UNIQUE_ID_author320", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 256, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 257, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 245, i32 11}
!12 = !{ptr @ili9341_spi_driver, !13, !"ili9341_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 243, i32 26}
!14 = !{ptr @ili9341_id, !15, !"ili9341_id", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 169, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 193, i32 44}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 195, i32 50}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 197, i32 36}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 199, i32 42}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 205, i32 32}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 157, i32 12}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 158, i32 12}
!30 = !{ptr @ili9341_driver, !31, !"ili9341_driver", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 151, i32 32}
!32 = !{ptr @ili9341_fops, !33, !"ili9341_fops", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 149, i32 1}
!34 = !{ptr @ili9341_pipe_funcs, !35, !"ili9341_pipe_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 139, i32 51}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 65, i32 2}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 73, i32 2}
!40 = !{ptr @yx240qv29_enable._rs, !39, !"_rs", i1 false, i1 false}
!41 = !{ptr @__func__.yx240qv29_enable, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @yx240qv29_enable._entry, !39, !"_entry", i1 false, i1 false}
!47 = !{ptr @yx240qv29_enable._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @yx240qv29_enable._rs.14, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 75, i32 2}
!50 = !{ptr @yx240qv29_enable._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @yx240qv29_enable._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @yx240qv29_enable._rs.18, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 76, i32 2}
!54 = !{ptr @yx240qv29_enable._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @yx240qv29_enable._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @yx240qv29_enable._rs.22, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 77, i32 2}
!58 = !{ptr @yx240qv29_enable._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @yx240qv29_enable._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @yx240qv29_enable._rs.26, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 78, i32 2}
!62 = !{ptr @yx240qv29_enable._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @yx240qv29_enable._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @yx240qv29_enable._rs.30, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 79, i32 2}
!66 = !{ptr @yx240qv29_enable._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @yx240qv29_enable._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @yx240qv29_enable._rs.33, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 80, i32 2}
!70 = !{ptr @yx240qv29_enable._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @yx240qv29_enable._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @yx240qv29_enable._rs.37, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 83, i32 2}
!74 = !{ptr @yx240qv29_enable._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @yx240qv29_enable._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @yx240qv29_enable._rs.41, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 84, i32 2}
!78 = !{ptr @yx240qv29_enable._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @yx240qv29_enable._entry_ptr.43, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @yx240qv29_enable._rs.45, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 86, i32 2}
!82 = !{ptr @yx240qv29_enable._entry.46, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @yx240qv29_enable._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @yx240qv29_enable._rs.49, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 87, i32 2}
!86 = !{ptr @yx240qv29_enable._entry.50, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @yx240qv29_enable._entry_ptr.51, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @yx240qv29_enable._rs.53, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 90, i32 2}
!90 = !{ptr @yx240qv29_enable._entry.54, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @yx240qv29_enable._entry_ptr.55, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @yx240qv29_enable._rs.57, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 93, i32 2}
!94 = !{ptr @yx240qv29_enable._entry.58, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @yx240qv29_enable._entry_ptr.59, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @yx240qv29_enable._rs.60, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 96, i32 2}
!98 = !{ptr @yx240qv29_enable._entry.61, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @yx240qv29_enable._entry_ptr.62, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @yx240qv29_enable._rs.64, !101, !"_rs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 97, i32 2}
!102 = !{ptr @yx240qv29_enable._entry.65, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @yx240qv29_enable._entry_ptr.66, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @yx240qv29_enable._rs.68, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 98, i32 2}
!106 = !{ptr @yx240qv29_enable._entry.69, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @yx240qv29_enable._entry_ptr.70, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @yx240qv29_enable._rs.72, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 101, i32 2}
!110 = !{ptr @yx240qv29_enable._entry.73, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @yx240qv29_enable._entry_ptr.74, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @yx240qv29_enable._rs.76, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 106, i32 2}
!114 = !{ptr @yx240qv29_enable._entry.77, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @yx240qv29_enable._entry_ptr.78, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @yx240qv29_enable._rs.80, !117, !"_rs", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 109, i32 2}
!118 = !{ptr @yx240qv29_enable._entry.81, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @yx240qv29_enable._entry_ptr.82, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @yx240qv29_enable._rs.83, !121, !"_rs", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 110, i32 2}
!122 = !{ptr @yx240qv29_enable._entry.84, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @yx240qv29_enable._entry_ptr.85, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @yx240qv29_enable._rs.86, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 113, i32 2}
!126 = !{ptr @yx240qv29_enable._entry.87, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @yx240qv29_enable._entry_ptr.88, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @yx240qv29_enable._rs.89, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 133, i32 2}
!130 = !{ptr @yx240qv29_enable._entry.90, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @yx240qv29_enable._entry_ptr.91, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @yx240qv29_mode, !133, !"yx240qv29_mode", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 145, i32 38}
!134 = !{ptr @ili9341_of_match, !135, !"ili9341_of_match", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/tiny/ili9341.c", i32 163, i32 34}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
