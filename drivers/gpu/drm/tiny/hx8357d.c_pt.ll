; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/hx8357d.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/hx8357d.c"
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

@__initcall__kmod_hx8357d__318_291_hx8357d_spi_driver_init6 = internal global ptr @hx8357d_spi_driver_init, section ".initcall6.init", align 4
@hx8357d_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @hx8357d_id, ptr @hx8357d_probe, ptr @hx8357d_remove, ptr @hx8357d_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hx8357d_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hx8357d_spi_driver_exit = internal global ptr @hx8357d_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [39 x i8] c"hx8357d.description=HX8357D DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [45 x i8] c"hx8357d.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [42 x i8] c"hx8357d.file=drivers/gpu/drm/tiny/hx8357d\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [20 x i8] c"hx8357d.license=GPL\00", section ".modinfo", align 1
@hx8357d_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"yx350hv15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hx8357d\00", [24 x i8] zeroinitializer }, align 32
@hx8357d_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adafruit,yx350hv15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hx8357d_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_dbi_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.4, ptr @.str.5, i32 19, ptr null, i32 0, ptr @hx8357d_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dc\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get GPIO 'dc'\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@hx8357d_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @yx240qv29_enable, ptr @mipi_dbi_pipe_disable, ptr null, ptr @mipi_dbi_pipe_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@yx350hv15_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 320, i16 320, i16 320, i16 320, i16 0, i16 480, i16 480, i16 480, i16 480, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 60, i16 75, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HX8357D\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20181023\00", [23 x i8] zeroinitializer }, align 32
@hx8357d_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__const.yx240qv29_enable.d = private unnamed_addr constant [3 x i8] c"\FF\83W", align 1
@yx240qv29_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.yx240qv29_enable = private unnamed_addr constant [17 x i8] c"yx240qv29_enable\00", align 1
@yx240qv29_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 68, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tiny/hx8357d.c\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr = internal global ptr @yx240qv29_enable._entry, section ".printk_index", align 4
@yx240qv29_enable._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 72, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.15 = internal global ptr @yx240qv29_enable._entry.14, section ".printk_index", align 4
@yx240qv29_enable._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 75, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.19 = internal global ptr @yx240qv29_enable._entry.18, section ".printk_index", align 4
@yx240qv29_enable._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 78, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.23 = internal global ptr @yx240qv29_enable._entry.22, section ".printk_index", align 4
@yx240qv29_enable._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 81, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.27 = internal global ptr @yx240qv29_enable._entry.26, section ".printk_index", align 4
@__const.yx240qv29_enable.d.28 = private unnamed_addr constant [6 x i8] c"\00\15\1C\1C\83\AA", align 1
@yx240qv29_enable._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 89, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.31 = internal global ptr @yx240qv29_enable._entry.30, section ".printk_index", align 4
@__const.yx240qv29_enable.d.32 = private unnamed_addr constant [6 x i8] c"PP\01<\1E\08", align 1
@yx240qv29_enable._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 97, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.35 = internal global ptr @yx240qv29_enable._entry.34, section ".printk_index", align 4
@__const.yx240qv29_enable.d.36 = private unnamed_addr constant [7 x i8] c"\02@\00**\0Dx", align 1
@yx240qv29_enable._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 106, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.39 = internal global ptr @yx240qv29_enable._entry.38, section ".printk_index", align 4
@__const.yx240qv29_enable.d.40 = private unnamed_addr constant [34 x i8] c"\02\0A\11\1D#5AKKB:'\1B\08\09\03\02\0A\11\1D#5AKKB:'\1B\08\09\03\00\01", align 1
@yx240qv29_enable._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 142, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.43 = internal global ptr @yx240qv29_enable._entry.42, section ".printk_index", align 4
@yx240qv29_enable._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 146, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.47 = internal global ptr @yx240qv29_enable._entry.46, section ".printk_index", align 4
@yx240qv29_enable._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 149, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.50 = internal global ptr @yx240qv29_enable._entry.49, section ".printk_index", align 4
@yx240qv29_enable._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 152, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.54 = internal global ptr @yx240qv29_enable._entry.53, section ".printk_index", align 4
@yx240qv29_enable._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 155, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.57 = internal global ptr @yx240qv29_enable._entry.56, section ".printk_index", align 4
@yx240qv29_enable._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 159, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.60 = internal global ptr @yx240qv29_enable._entry.59, section ".printk_index", align 4
@yx240qv29_enable._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.yx240qv29_enable, ptr @.str.9, i32 177, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@yx240qv29_enable._entry_ptr.63 = internal global ptr @yx240qv29_enable._entry.62, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"hx8357d_spi_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 281, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"hx8357d_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 213, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 283, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"hx8357d_of_match\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 207, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"hx8357d_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 195, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 235, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 237, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 243, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"hx8357d_pipe_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 183, i32 51 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"yx350hv15_mode\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 189, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 201, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 202, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"hx8357d_fops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 193, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 59, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 68, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 72, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 75, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 78, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 81, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 83, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 91, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 99, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 108, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 145, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 149, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 152, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 155, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 159, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private constant [34 x i8] c"../drivers/gpu/drm/tiny/hx8357d.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 177, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_hx8357d_spi_driver_exit, ptr @__initcall__kmod_hx8357d__318_291_hx8357d_spi_driver_init6, ptr @hx8357d_spi_driver_exit, ptr @yx240qv29_enable._entry, ptr @yx240qv29_enable._entry.14, ptr @yx240qv29_enable._entry.18, ptr @yx240qv29_enable._entry.22, ptr @yx240qv29_enable._entry.26, ptr @yx240qv29_enable._entry.30, ptr @yx240qv29_enable._entry.34, ptr @yx240qv29_enable._entry.38, ptr @yx240qv29_enable._entry.42, ptr @yx240qv29_enable._entry.46, ptr @yx240qv29_enable._entry.49, ptr @yx240qv29_enable._entry.53, ptr @yx240qv29_enable._entry.56, ptr @yx240qv29_enable._entry.59, ptr @yx240qv29_enable._entry.62, ptr @yx240qv29_enable._entry_ptr, ptr @yx240qv29_enable._entry_ptr.15, ptr @yx240qv29_enable._entry_ptr.19, ptr @yx240qv29_enable._entry_ptr.23, ptr @yx240qv29_enable._entry_ptr.27, ptr @yx240qv29_enable._entry_ptr.31, ptr @yx240qv29_enable._entry_ptr.35, ptr @yx240qv29_enable._entry_ptr.39, ptr @yx240qv29_enable._entry_ptr.43, ptr @yx240qv29_enable._entry_ptr.47, ptr @yx240qv29_enable._entry_ptr.50, ptr @yx240qv29_enable._entry_ptr.54, ptr @yx240qv29_enable._entry_ptr.57, ptr @yx240qv29_enable._entry_ptr.60, ptr @yx240qv29_enable._entry_ptr.63, ptr @hx8357d_spi_driver, ptr @hx8357d_id, ptr @.str, ptr @hx8357d_of_match, ptr @hx8357d_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hx8357d_pipe_funcs, ptr @yx350hv15_mode, ptr @.str.4, ptr @.str.5, ptr @hx8357d_fops, ptr @.str.6, ptr @yx240qv29_enable._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @yx240qv29_enable._rs.13, ptr @yx240qv29_enable._rs.17, ptr @yx240qv29_enable._rs.21, ptr @yx240qv29_enable._rs.25, ptr @yx240qv29_enable._rs.29, ptr @yx240qv29_enable._rs.33, ptr @yx240qv29_enable._rs.37, ptr @yx240qv29_enable._rs.41, ptr @yx240qv29_enable._rs.45, ptr @yx240qv29_enable._rs.48, ptr @yx240qv29_enable._rs.52, ptr @yx240qv29_enable._rs.55, ptr @yx240qv29_enable._rs.58, ptr @yx240qv29_enable._rs.61], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357d_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357d_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357d_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357d_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357d_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx350hv15_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx8357d_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yx240qv29_enable._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8357d_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @hx8357d_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hx8357d_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @hx8357d_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8357d_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #5
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rotation, align 4
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %spi, ptr noundef nonnull @hx8357d_driver, i32 noundef 5240, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %cmp.i58 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call5 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %2, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_of_find_backlight(ptr noundef %spi) #5
  %backlight = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %backlight, align 8
  %cmp.i59 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.3, ptr noundef nonnull %rotation, i32 noundef 1) #5
  %dbi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10
  %call19 = call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi, ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %5 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rotation, align 4
  %call22 = call i32 @mipi_dbi_dev_init(ptr noundef %call, ptr noundef nonnull @hx8357d_pipe_funcs, ptr noundef nonnull @yx350hv15_mode, i32 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @drm_mode_config_reset(ptr noundef %call) #5
  %call26 = call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %driver_data.i.i, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then14, %if.then7, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call9, %if.then7 ], [ %4, %if.then14 ], [ 0, %if.end29 ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx8357d_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
define internal void @hx8357d_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %d255 = alloca [0 x i8], align 1
  %idx = alloca i32, align 4
  %d = alloca [3 x i8], align 1
  %d24 = alloca [4 x i8], align 4
  %d45 = alloca [1 x i8], align 1
  %d66 = alloca [1 x i8], align 1
  %d87 = alloca [1 x i8], align 1
  %d108 = alloca [6 x i8], align 1
  %d129 = alloca [6 x i8], align 1
  %d150 = alloca [7 x i8], align 1
  %d171 = alloca [34 x i8], align 1
  %d192 = alloca [1 x i8], align 1
  %d213 = alloca [1 x i8], align 1
  %d234 = alloca [2 x i8], align 2
  %d299 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dbi1 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !113
  %call4 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #5
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #5
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
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d) #5
  %3 = call ptr @memcpy(ptr %d, ptr @__const.yx240qv29_enable.d, i32 3)
  %spi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  %call14 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -71, ptr noundef nonnull %d, i32 noundef 3) #5
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %call14, i32 noundef 185) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end, %do.body.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d) #5
  call void @msleep(i32 noundef 150) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d24) #5
  %6 = ptrtoint ptr %d24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1542, ptr %d24, align 4
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  %call30 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -77, ptr noundef nonnull %d24, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end23.if.end43_crit_edge, label %do.body33

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.body33:                                        ; preds = %if.end23
  %call34 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.13, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.if.end43_crit_edge, label %do.end39

do.body33.if.end43_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %call30, i32 noundef 179) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %do.body33.if.end43_crit_edge, %if.end23.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d24) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d45) #5
  %9 = ptrtoint ptr %d45 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 37, ptr %d45, align 1
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  %call51 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -74, ptr noundef nonnull %d45, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end43.if.end64_crit_edge, label %do.body54

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.body54:                                        ; preds = %if.end43
  %call55 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.17, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body54.if.end64_crit_edge, label %do.end60

do.body54.if.end64_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %call51, i32 noundef 182) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end60, %do.body54.if.end64_crit_edge, %if.end43.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d45) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d66) #5
  %12 = ptrtoint ptr %d66 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 104, ptr %d66, align 1
  %13 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi, align 4
  %call72 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -80, ptr noundef nonnull %d66, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end64.if.end85_crit_edge, label %do.body75

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.body75:                                        ; preds = %if.end64
  %call76 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.21, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.body75.if.end85_crit_edge, label %do.end81

do.body75.if.end85_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end81:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %call72, i32 noundef 176) #8
  br label %if.end85

if.end85:                                         ; preds = %do.end81, %do.body75.if.end85_crit_edge, %if.end64.if.end85_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d66) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d87) #5
  %15 = ptrtoint ptr %d87 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %d87, align 1
  %16 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi, align 4
  %call93 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -52, ptr noundef nonnull %d87, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end85.if.end106_crit_edge, label %do.body96

if.end85.if.end106_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

do.body96:                                        ; preds = %if.end85
  %call97 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.25, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body96.if.end106_crit_edge, label %do.end102

do.body96.if.end106_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %call93, i32 noundef 204) #8
  br label %if.end106

if.end106:                                        ; preds = %do.end102, %do.body96.if.end106_crit_edge, %if.end85.if.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d87) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d108) #5
  %18 = call ptr @memcpy(ptr %d108, ptr @__const.yx240qv29_enable.d.28, i32 6)
  %19 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi, align 4
  %call114 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -79, ptr noundef nonnull %d108, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end106.if.end127_crit_edge, label %do.body117

if.end106.if.end127_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

do.body117:                                       ; preds = %if.end106
  %call118 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.29, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.body117.if.end127_crit_edge, label %do.end123

do.body117.if.end127_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

do.end123:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef %call114, i32 noundef 177) #8
  br label %if.end127

if.end127:                                        ; preds = %do.end123, %do.body117.if.end127_crit_edge, %if.end106.if.end127_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d108) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d129) #5
  %21 = call ptr @memcpy(ptr %d129, ptr @__const.yx240qv29_enable.d.32, i32 6)
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi, align 4
  %call135 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -64, ptr noundef nonnull %d129, i32 noundef 6) #5
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef %call135, i32 noundef 192) #8
  br label %if.end148

if.end148:                                        ; preds = %do.end144, %do.body138.if.end148_crit_edge, %if.end127.if.end148_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d129) #5
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %d150) #5
  %24 = call ptr @memcpy(ptr %d150, ptr @__const.yx240qv29_enable.d.36, i32 7)
  %25 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi, align 4
  %call156 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -77, ptr noundef nonnull %d150, i32 noundef 7) #5
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef %call156, i32 noundef 179) #8
  br label %if.end169

if.end169:                                        ; preds = %do.end165, %do.body159.if.end169_crit_edge, %if.end148.if.end169_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %d150) #5
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %d171) #5
  %27 = call ptr @memcpy(ptr %d171, ptr @__const.yx240qv29_enable.d.40, i32 34)
  %28 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi, align 4
  %call177 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -32, ptr noundef nonnull %d171, i32 noundef 34) #5
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef %call177, i32 noundef 224) #8
  br label %if.end190

if.end190:                                        ; preds = %do.end186, %do.body180.if.end190_crit_edge, %if.end169.if.end190_crit_edge
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %d171) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d192) #5
  %30 = ptrtoint ptr %d192 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %d192, align 1
  %31 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi, align 4
  %call198 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 58, ptr noundef nonnull %d192, i32 noundef 1) #5
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef %call198, i32 noundef 58) #8
  br label %if.end211

if.end211:                                        ; preds = %do.end207, %do.body201.if.end211_crit_edge, %if.end190.if.end211_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d192) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d213) #5
  %33 = ptrtoint ptr %d213 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %d213, align 1
  %34 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi, align 4
  %call219 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 53, ptr noundef nonnull %d213, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end211.if.end232_crit_edge, label %do.body222

if.end211.if.end232_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end232

do.body222:                                       ; preds = %if.end211
  %call223 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.48, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %do.body222.if.end232_crit_edge, label %do.end228

do.body222.if.end232_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end232

do.end228:                                        ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %call219, i32 noundef 53) #8
  br label %if.end232

if.end232:                                        ; preds = %do.end228, %do.body222.if.end232_crit_edge, %if.end211.if.end232_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d213) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d234) #5
  %36 = ptrtoint ptr %d234 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %d234, align 2
  %37 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi, align 4
  %call240 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 68, ptr noundef nonnull %d234, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end232.if.end253_crit_edge, label %do.body243

if.end232.if.end253_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end253

do.body243:                                       ; preds = %if.end232
  %call244 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.52, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %do.body243.if.end253_crit_edge, label %do.end249

do.body243.if.end253_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end253

do.end249:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.8, i32 noundef %call240, i32 noundef 68) #8
  br label %if.end253

if.end253:                                        ; preds = %do.end249, %do.body243.if.end253_crit_edge, %if.end232.if.end253_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d234) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d255) #5
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi, align 4
  %call261 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %d255, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end253.if.end274_crit_edge, label %do.body264

if.end253.if.end274_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end274

do.body264:                                       ; preds = %if.end253
  %call265 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.55, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %do.body264.if.end274_crit_edge, label %do.end270

do.body264.if.end274_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end274

do.end270:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.8, i32 noundef %call261, i32 noundef 17) #8
  br label %if.end274

if.end274:                                        ; preds = %do.end270, %do.body264.if.end274_crit_edge, %if.end253.if.end274_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d255) #5
  call void @msleep(i32 noundef 150) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d255) #5
  %41 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spi, align 4
  %call282 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 41, ptr noundef nonnull %d255, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %if.end274.if.end295_crit_edge, label %do.body285

if.end274.if.end295_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

do.body285:                                       ; preds = %if.end274
  %call286 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.58, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %do.body285.if.end295_crit_edge, label %do.end291

do.body285.if.end295_crit_edge:                   ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

do.end291:                                        ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.8, i32 noundef %call282, i32 noundef 41) #8
  br label %if.end295

if.end295:                                        ; preds = %do.end291, %do.body285.if.end295_crit_edge, %if.end274.if.end295_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d255) #5
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #5
  br label %out_enable

out_enable:                                       ; preds = %if.end295, %if.end7.out_enable_crit_edge
  %rotation = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rotation, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %out_enable.sw.epilog_crit_edge [
    i32 90, label %sw.bb
    i32 180, label %sw.bb297
    i32 270, label %sw.bb298
  ]

out_enable.sw.epilog_crit_edge:                   ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb297:                                         ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb298:                                         ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb298, %sw.bb297, %sw.bb, %out_enable.sw.epilog_crit_edge
  %addr_mode.0 = phi i8 [ 96, %sw.bb298 ], [ 0, %sw.bb297 ], [ -96, %sw.bb ], [ -64, %out_enable.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d299) #5
  %46 = ptrtoint ptr %d299 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %addr_mode.0, ptr %d299, align 1
  %spi301 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %47 = ptrtoint ptr %spi301 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi301, align 4
  %call305 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 54, ptr noundef nonnull %d299, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %sw.epilog.if.end318_crit_edge, label %do.body308

sw.epilog.if.end318_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end318

do.body308:                                       ; preds = %sw.epilog
  %call309 = call i32 @___ratelimit(ptr noundef nonnull @yx240qv29_enable._rs.61, ptr noundef nonnull @__func__.yx240qv29_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %do.body308.if.end318_crit_edge, label %do.end314

do.body308.if.end318_crit_edge:                   ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end318

do.end314:                                        ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.8, i32 noundef %call305, i32 noundef 54) #8
  br label %if.end318

if.end318:                                        ; preds = %do.end314, %do.body308.if.end318_crit_edge, %sw.epilog.if.end318_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d299) #5
  call void @mipi_dbi_enable_flush(ptr noundef %1, ptr noundef %crtc_state, ptr noundef %plane_state) #5
  br label %out_exit

out_exit:                                         ; preds = %if.end318, %if.end.out_exit_crit_edge
  %49 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %50) #5
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
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_hx8357d__318_291_hx8357d_spi_driver_init6, !1, !"__initcall__kmod_hx8357d__318_291_hx8357d_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 291, i32 1}
!2 = !{ptr @__exitcall_hx8357d_spi_driver_exit, !1, !"__exitcall_hx8357d_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description319, !4, !"__UNIQUE_ID_description319", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 293, i32 1}
!5 = !{ptr @__UNIQUE_ID_author320, !6, !"__UNIQUE_ID_author320", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 294, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 295, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 283, i32 11}
!12 = !{ptr @hx8357d_spi_driver, !13, !"hx8357d_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 281, i32 26}
!14 = !{ptr @hx8357d_id, !15, !"hx8357d_id", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 213, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 235, i32 27}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 237, i32 42}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 243, i32 32}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 201, i32 12}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 202, i32 12}
!26 = !{ptr @hx8357d_driver, !27, !"hx8357d_driver", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 195, i32 32}
!28 = !{ptr @hx8357d_fops, !29, !"hx8357d_fops", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 193, i32 1}
!30 = !{ptr @hx8357d_pipe_funcs, !31, !"hx8357d_pipe_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 183, i32 51}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 59, i32 2}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 68, i32 2}
!36 = !{ptr @yx240qv29_enable._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @__func__.yx240qv29_enable, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @yx240qv29_enable._entry, !35, !"_entry", i1 false, i1 false}
!43 = !{ptr @yx240qv29_enable._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @yx240qv29_enable._rs.13, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 72, i32 2}
!46 = !{ptr @yx240qv29_enable._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @yx240qv29_enable._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @yx240qv29_enable._rs.17, !49, !"_rs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 75, i32 2}
!50 = !{ptr @yx240qv29_enable._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @yx240qv29_enable._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @yx240qv29_enable._rs.21, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 78, i32 2}
!54 = !{ptr @yx240qv29_enable._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @yx240qv29_enable._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @yx240qv29_enable._rs.25, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 81, i32 2}
!58 = !{ptr @yx240qv29_enable._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @yx240qv29_enable._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @yx240qv29_enable._rs.29, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 83, i32 2}
!62 = !{ptr @yx240qv29_enable._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @yx240qv29_enable._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @yx240qv29_enable._rs.33, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 91, i32 2}
!66 = !{ptr @yx240qv29_enable._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @yx240qv29_enable._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @yx240qv29_enable._rs.37, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 99, i32 2}
!70 = !{ptr @yx240qv29_enable._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @yx240qv29_enable._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @yx240qv29_enable._rs.41, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 108, i32 2}
!74 = !{ptr @yx240qv29_enable._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @yx240qv29_enable._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @yx240qv29_enable._rs.45, !77, !"_rs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 145, i32 2}
!78 = !{ptr @yx240qv29_enable._entry.46, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @yx240qv29_enable._entry_ptr.47, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @yx240qv29_enable._rs.48, !81, !"_rs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 149, i32 2}
!82 = !{ptr @yx240qv29_enable._entry.49, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @yx240qv29_enable._entry_ptr.50, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @yx240qv29_enable._rs.52, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 152, i32 2}
!86 = !{ptr @yx240qv29_enable._entry.53, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @yx240qv29_enable._entry_ptr.54, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @yx240qv29_enable._rs.55, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 155, i32 2}
!90 = !{ptr @yx240qv29_enable._entry.56, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @yx240qv29_enable._entry_ptr.57, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @yx240qv29_enable._rs.58, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 159, i32 2}
!94 = !{ptr @yx240qv29_enable._entry.59, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @yx240qv29_enable._entry_ptr.60, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @yx240qv29_enable._rs.61, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 177, i32 2}
!98 = !{ptr @yx240qv29_enable._entry.62, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @yx240qv29_enable._entry_ptr.63, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @yx350hv15_mode, !101, !"yx350hv15_mode", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 189, i32 38}
!102 = !{ptr @hx8357d_of_match, !103, !"hx8357d_of_match", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tiny/hx8357d.c", i32 207, i32 34}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
