; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/st7735r.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/st7735r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st7735r_cfg = type { %struct.drm_display_mode, i32, i32, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.st7735r_priv = type { %struct.mipi_dbi_dev, ptr }
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

@__initcall__kmod_st7735r__320_275_st7735r_spi_driver_init6 = internal global ptr @st7735r_spi_driver_init, section ".initcall6.init", align 4
@st7735r_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @st7735r_id, ptr @st7735r_probe, ptr @st7735r_remove, ptr @st7735r_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st7735r_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_st7735r_spi_driver_exit = internal global ptr @st7735r_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [48 x i8] c"st7735r.description=Sitronix ST7735R DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [52 x i8] c"st7735r.author=David Lechner <david@lechnology.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [42 x i8] c"st7735r.file=drivers/gpu/drm/tiny/st7735r\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [20 x i8] c"st7735r.license=GPL\00", section ".modinfo", align 1
@st7735r_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"jd-t18003-t01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @jd_t18003_t01_cfg to i32) }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st7735r\00", [24 x i8] zeroinitializer }, align 32
@st7735r_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jianda,jd-t18003-t01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jd_t18003_t01_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"okaya,rh128128t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rh128128t_cfg }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@jd_t18003_t01_cfg = internal constant { %struct.st7735r_cfg, [36 x i8] } { %struct.st7735r_cfg { %struct.drm_display_mode { i32 1, i16 128, i16 128, i16 128, i16 128, i16 0, i16 160, i16 160, i16 160, i16 160, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 28, i16 35, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i32 0, i32 0, i8 -128 }, [36 x i8] zeroinitializer }, align 32
@st7735r_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_dbi_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.6, ptr @.str.7, i32 19, ptr null, i32 0, ptr @st7735r_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get GPIO 'reset'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dc\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get GPIO 'dc'\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@st7735r_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @st7735r_pipe_enable, ptr @mipi_dbi_pipe_disable, ptr null, ptr @mipi_dbi_pipe_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sitronix ST7735R\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20171128\00", [23 x i8] zeroinitializer }, align 32
@st7735r_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.st7735r_pipe_enable = private unnamed_addr constant [20 x i8] c"st7735r_pipe_enable\00", align 1
@st7735r_pipe_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 80, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/tiny/st7735r.c\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr = internal global ptr @st7735r_pipe_enable._entry, section ".printk_index", align 4
@st7735r_pipe_enable._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 83, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.16 = internal global ptr @st7735r_pipe_enable._entry.15, section ".printk_index", align 4
@__const.st7735r_pipe_enable.d.17 = private unnamed_addr constant [3 x i8] c"\01,-", align 1
@st7735r_pipe_enable._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 84, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.20 = internal global ptr @st7735r_pipe_enable._entry.19, section ".printk_index", align 4
@__const.st7735r_pipe_enable.d.21 = private unnamed_addr constant [6 x i8] c"\01,-\01,-", align 1
@st7735r_pipe_enable._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 86, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.24 = internal global ptr @st7735r_pipe_enable._entry.23, section ".printk_index", align 4
@st7735r_pipe_enable._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 87, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.28 = internal global ptr @st7735r_pipe_enable._entry.27, section ".printk_index", align 4
@__const.st7735r_pipe_enable.d.29 = private unnamed_addr constant [3 x i8] c"\A2\02\84", align 1
@st7735r_pipe_enable._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 88, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.32 = internal global ptr @st7735r_pipe_enable._entry.31, section ".printk_index", align 4
@st7735r_pipe_enable._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 89, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.36 = internal global ptr @st7735r_pipe_enable._entry.35, section ".printk_index", align 4
@st7735r_pipe_enable._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 90, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.40 = internal global ptr @st7735r_pipe_enable._entry.39, section ".printk_index", align 4
@st7735r_pipe_enable._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 91, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.44 = internal global ptr @st7735r_pipe_enable._entry.43, section ".printk_index", align 4
@st7735r_pipe_enable._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 92, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.48 = internal global ptr @st7735r_pipe_enable._entry.47, section ".printk_index", align 4
@st7735r_pipe_enable._rs.50 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 93, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.52 = internal global ptr @st7735r_pipe_enable._entry.51, section ".printk_index", align 4
@st7735r_pipe_enable._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 94, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.55 = internal global ptr @st7735r_pipe_enable._entry.54, section ".printk_index", align 4
@st7735r_pipe_enable._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 113, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.58 = internal global ptr @st7735r_pipe_enable._entry.57, section ".printk_index", align 4
@st7735r_pipe_enable._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 115, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.62 = internal global ptr @st7735r_pipe_enable._entry.61, section ".printk_index", align 4
@__const.st7735r_pipe_enable.d.63 = private unnamed_addr constant [16 x i8] c"\02\1C\07\1272)-)%+9\00\01\03\10", align 1
@st7735r_pipe_enable._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 118, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.66 = internal global ptr @st7735r_pipe_enable._entry.65, section ".printk_index", align 4
@__const.st7735r_pipe_enable.d.67 = private unnamed_addr constant [16 x i8] c"\03\1D\07\06.,)-..7?\00\00\02\10", align 1
@st7735r_pipe_enable._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 121, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.70 = internal global ptr @st7735r_pipe_enable._entry.69, section ".printk_index", align 4
@st7735r_pipe_enable._rs.71 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 122, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.73 = internal global ptr @st7735r_pipe_enable._entry.72, section ".printk_index", align 4
@st7735r_pipe_enable._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7735r_pipe_enable, ptr @.str.11, i32 126, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7735r_pipe_enable._entry_ptr.76 = internal global ptr @st7735r_pipe_enable._entry.75, section ".printk_index", align 4
@rh128128t_cfg = internal constant { %struct.st7735r_cfg, [36 x i8] } { %struct.st7735r_cfg { %struct.drm_display_mode { i32 1, i16 128, i16 128, i16 128, i16 128, i16 0, i16 128, i16 128, i16 128, i16 128, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i32 2, i32 3, i8 64 }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"st7735r_spi_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 265, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"st7735r_id\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 175, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 267, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"st7735r_of_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 168, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"jd_t18003_t01_cfg\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 141, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"st7735r_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 156, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 208, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 210, i32 50 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 212, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 214, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 220, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"st7735r_pipe_funcs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 135, i32 51 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 162, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 163, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"st7735r_fops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 154, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 72, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 80, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 83, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 84, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 85, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 87, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 88, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 89, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 90, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 91, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 92, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 93, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 94, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 113, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 114, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 116, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 119, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 122, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 126, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"rh128128t_cfg\00", align 1
@___asan_gen_.249 = private constant [34 x i8] c"../drivers/gpu/drm/tiny/st7735r.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 147, i32 33 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_st7735r_spi_driver_exit, ptr @__initcall__kmod_st7735r__320_275_st7735r_spi_driver_init6, ptr @st7735r_pipe_enable._entry, ptr @st7735r_pipe_enable._entry.15, ptr @st7735r_pipe_enable._entry.19, ptr @st7735r_pipe_enable._entry.23, ptr @st7735r_pipe_enable._entry.27, ptr @st7735r_pipe_enable._entry.31, ptr @st7735r_pipe_enable._entry.35, ptr @st7735r_pipe_enable._entry.39, ptr @st7735r_pipe_enable._entry.43, ptr @st7735r_pipe_enable._entry.47, ptr @st7735r_pipe_enable._entry.51, ptr @st7735r_pipe_enable._entry.54, ptr @st7735r_pipe_enable._entry.57, ptr @st7735r_pipe_enable._entry.61, ptr @st7735r_pipe_enable._entry.65, ptr @st7735r_pipe_enable._entry.69, ptr @st7735r_pipe_enable._entry.72, ptr @st7735r_pipe_enable._entry.75, ptr @st7735r_pipe_enable._entry_ptr, ptr @st7735r_pipe_enable._entry_ptr.16, ptr @st7735r_pipe_enable._entry_ptr.20, ptr @st7735r_pipe_enable._entry_ptr.24, ptr @st7735r_pipe_enable._entry_ptr.28, ptr @st7735r_pipe_enable._entry_ptr.32, ptr @st7735r_pipe_enable._entry_ptr.36, ptr @st7735r_pipe_enable._entry_ptr.40, ptr @st7735r_pipe_enable._entry_ptr.44, ptr @st7735r_pipe_enable._entry_ptr.48, ptr @st7735r_pipe_enable._entry_ptr.52, ptr @st7735r_pipe_enable._entry_ptr.55, ptr @st7735r_pipe_enable._entry_ptr.58, ptr @st7735r_pipe_enable._entry_ptr.62, ptr @st7735r_pipe_enable._entry_ptr.66, ptr @st7735r_pipe_enable._entry_ptr.70, ptr @st7735r_pipe_enable._entry_ptr.73, ptr @st7735r_pipe_enable._entry_ptr.76, ptr @st7735r_spi_driver_exit, ptr @st7735r_spi_driver, ptr @st7735r_id, ptr @.str, ptr @st7735r_of_match, ptr @jd_t18003_t01_cfg, ptr @st7735r_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @st7735r_pipe_funcs, ptr @.str.6, ptr @.str.7, ptr @st7735r_fops, ptr @.str.8, ptr @st7735r_pipe_enable._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @st7735r_pipe_enable._rs.14, ptr @st7735r_pipe_enable._rs.18, ptr @st7735r_pipe_enable._rs.22, ptr @st7735r_pipe_enable._rs.26, ptr @st7735r_pipe_enable._rs.30, ptr @st7735r_pipe_enable._rs.34, ptr @st7735r_pipe_enable._rs.38, ptr @st7735r_pipe_enable._rs.42, ptr @st7735r_pipe_enable._rs.46, ptr @st7735r_pipe_enable._rs.50, ptr @st7735r_pipe_enable._rs.53, ptr @st7735r_pipe_enable._rs.56, ptr @st7735r_pipe_enable._rs.60, ptr @st7735r_pipe_enable._rs.64, ptr @st7735r_pipe_enable._rs.68, ptr @st7735r_pipe_enable._rs.71, ptr @st7735r_pipe_enable._rs.74, ptr @rh128128t_cfg], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jd_t18003_t01_cfg to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7735r_pipe_enable._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rh128128t_cfg to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st7735r_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @st7735r_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st7735r_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @st7735r_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7735r_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #5
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rotation, align 4
  %call = tail call ptr @device_get_match_data(ptr noundef %spi) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = inttoptr i32 %2 to ptr
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cfg.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %3, %if.then ]
  %call4 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %spi, ptr noundef nonnull @st7735r_driver, i32 noundef 5248, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cfg10 = getelementptr inbounds %struct.st7735r_priv, ptr %call4, i32 0, i32 1
  %5 = ptrtoint ptr %cfg10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cfg.0, ptr %cfg10, align 8
  %dbi11 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call4, i32 0, i32 10
  %call13 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 7) #5
  %reset = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call4, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %reset, align 4
  %cmp.i99 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call13 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %7, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %call21 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %cmp.i100 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call21 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %8, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call27 = tail call ptr @devm_of_find_backlight(ptr noundef %spi) #5
  %backlight = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call4, i32 0, i32 8
  %9 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %backlight, align 8
  %cmp.i101 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.5, ptr noundef nonnull %rotation, i32 noundef 1) #5
  %call35 = call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi11, ptr noundef %call21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %write_only = getelementptr inbounds %struct.st7735r_cfg, ptr %cfg.0, i32 0, i32 3
  %11 = ptrtoint ptr %write_only to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %write_only, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool39.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool39.not, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %read_commands = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call4, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %read_commands to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %read_commands, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %left_offset = getelementptr inbounds %struct.st7735r_cfg, ptr %cfg.0, i32 0, i32 1
  %13 = ptrtoint ptr %left_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %left_offset, align 4
  %left_offset42 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call4, i32 0, i32 6
  %15 = ptrtoint ptr %left_offset42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %left_offset42, align 8
  %top_offset = getelementptr inbounds %struct.st7735r_cfg, ptr %cfg.0, i32 0, i32 2
  %16 = ptrtoint ptr %top_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top_offset, align 4
  %top_offset43 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call4, i32 0, i32 7
  %18 = ptrtoint ptr %top_offset43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %top_offset43, align 4
  %19 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rotation, align 4
  %call44 = call i32 @mipi_dbi_dev_init(ptr noundef %call4, ptr noundef nonnull @st7735r_pipe_funcs, ptr noundef %cfg.0, i32 noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  call void @drm_mode_config_reset(ptr noundef %call4) #5
  %call48 = call i32 @drm_dev_register(ptr noundef %call4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4, ptr %driver_data.i.i, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %call4, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then30, %if.then23, %if.then16, %if.then6
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %call19, %if.then16 ], [ %call25, %if.then23 ], [ %10, %if.then30 ], [ 0, %if.end51 ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call44, %if.end41.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7735r_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
define internal void @st7735r_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
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
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

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
define internal void @st7735r_pipe_enable(ptr nocapture noundef readonly %pipe, ptr noundef %crtc_state, ptr noundef %plane_state) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  %idx = alloca i32, align 4
  %d23 = alloca [3 x i8], align 1
  %d44 = alloca [3 x i8], align 1
  %d65 = alloca [6 x i8], align 1
  %d86 = alloca [1 x i8], align 1
  %d107 = alloca [3 x i8], align 1
  %d128 = alloca [1 x i8], align 1
  %d149 = alloca [2 x i8], align 2
  %d170 = alloca [2 x i8], align 2
  %d191 = alloca [2 x i8], align 2
  %d212 = alloca [1 x i8], align 1
  %d260 = alloca [1 x i8], align 1
  %d281 = alloca [1 x i8], align 1
  %d302 = alloca [16 x i8], align 1
  %d323 = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dbi1 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #5
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !131
  %call4 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #5
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #5
  %call5 = call i32 @mipi_dbi_poweron_reset(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_exit_crit_edge

if.end.out_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_exit

if.end7:                                          ; preds = %if.end
  call void @msleep(i32 noundef 150) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %spi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %call11 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end7.if.end21_crit_edge, label %do.body

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body:                                          ; preds = %if.end7
  %call14 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.if.end21_crit_edge, label %do.end

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %call11, i32 noundef 17) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end, %do.body.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 500) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d23) #5
  %5 = call ptr @memcpy(ptr %d23, ptr @__const.st7735r_pipe_enable.d.17, i32 3)
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %call29 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -79, ptr noundef nonnull %d23, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end21.if.end42_crit_edge, label %do.body32

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.body32:                                        ; preds = %if.end21
  %call33 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.14, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body32.if.end42_crit_edge, label %do.end38

do.body32.if.end42_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %call29, i32 noundef 177) #8
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %do.body32.if.end42_crit_edge, %if.end21.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d23) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d44) #5
  %8 = call ptr @memcpy(ptr %d44, ptr @__const.st7735r_pipe_enable.d.17, i32 3)
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  %call50 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -78, ptr noundef nonnull %d44, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end42.if.end63_crit_edge, label %do.body53

if.end42.if.end63_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

do.body53:                                        ; preds = %if.end42
  %call54 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.18, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body53.if.end63_crit_edge, label %do.end59

do.body53.if.end63_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %call50, i32 noundef 178) #8
  br label %if.end63

if.end63:                                         ; preds = %do.end59, %do.body53.if.end63_crit_edge, %if.end42.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d44) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d65) #5
  %11 = call ptr @memcpy(ptr %d65, ptr @__const.st7735r_pipe_enable.d.21, i32 6)
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  %call71 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -77, ptr noundef nonnull %d65, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end63.if.end84_crit_edge, label %do.body74

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.body74:                                        ; preds = %if.end63
  %call75 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.22, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body74.if.end84_crit_edge, label %do.end80

do.body74.if.end84_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %call71, i32 noundef 179) #8
  br label %if.end84

if.end84:                                         ; preds = %do.end80, %do.body74.if.end84_crit_edge, %if.end63.if.end84_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d65) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d86) #5
  %14 = ptrtoint ptr %d86 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %d86, align 1
  %15 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi, align 4
  %call92 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -76, ptr noundef nonnull %d86, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end84.if.end105_crit_edge, label %do.body95

if.end84.if.end105_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.body95:                                        ; preds = %if.end84
  %call96 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.26, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %do.body95.if.end105_crit_edge, label %do.end101

do.body95.if.end105_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef %call92, i32 noundef 180) #8
  br label %if.end105

if.end105:                                        ; preds = %do.end101, %do.body95.if.end105_crit_edge, %if.end84.if.end105_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d86) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d107) #5
  %17 = call ptr @memcpy(ptr %d107, ptr @__const.st7735r_pipe_enable.d.29, i32 3)
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %call113 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -64, ptr noundef nonnull %d107, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end105.if.end126_crit_edge, label %do.body116

if.end105.if.end126_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

do.body116:                                       ; preds = %if.end105
  %call117 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.30, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.body116.if.end126_crit_edge, label %do.end122

do.body116.if.end126_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %call113, i32 noundef 192) #8
  br label %if.end126

if.end126:                                        ; preds = %do.end122, %do.body116.if.end126_crit_edge, %if.end105.if.end126_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d107) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d128) #5
  %20 = ptrtoint ptr %d128 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -59, ptr %d128, align 1
  %21 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi, align 4
  %call134 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -63, ptr noundef nonnull %d128, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end126.if.end147_crit_edge, label %do.body137

if.end126.if.end147_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

do.body137:                                       ; preds = %if.end126
  %call138 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.34, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %do.body137.if.end147_crit_edge, label %do.end143

do.body137.if.end147_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef %call134, i32 noundef 193) #8
  br label %if.end147

if.end147:                                        ; preds = %do.end143, %do.body137.if.end147_crit_edge, %if.end126.if.end147_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d128) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d149) #5
  %23 = ptrtoint ptr %d149 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2560, ptr %d149, align 2
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  %call155 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -62, ptr noundef nonnull %d149, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end147.if.end168_crit_edge, label %do.body158

if.end147.if.end168_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

do.body158:                                       ; preds = %if.end147
  %call159 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.38, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %do.body158.if.end168_crit_edge, label %do.end164

do.body158.if.end168_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef %call155, i32 noundef 194) #8
  br label %if.end168

if.end168:                                        ; preds = %do.end164, %do.body158.if.end168_crit_edge, %if.end147.if.end168_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d149) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d170) #5
  %26 = ptrtoint ptr %d170 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -30166, ptr %d170, align 2
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %call176 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -61, ptr noundef nonnull %d170, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end168.if.end189_crit_edge, label %do.body179

if.end168.if.end189_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end189

do.body179:                                       ; preds = %if.end168
  %call180 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.42, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %do.body179.if.end189_crit_edge, label %do.end185

do.body179.if.end189_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end189

do.end185:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.10, i32 noundef %call176, i32 noundef 195) #8
  br label %if.end189

if.end189:                                        ; preds = %do.end185, %do.body179.if.end189_crit_edge, %if.end168.if.end189_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d170) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d191) #5
  %29 = ptrtoint ptr %d191 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -29970, ptr %d191, align 2
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi, align 4
  %call197 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -60, ptr noundef nonnull %d191, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end189.if.end210_crit_edge, label %do.body200

if.end189.if.end210_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

do.body200:                                       ; preds = %if.end189
  %call201 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.46, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.body200.if.end210_crit_edge, label %do.end206

do.body200.if.end210_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

do.end206:                                        ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, i32 noundef %call197, i32 noundef 196) #8
  br label %if.end210

if.end210:                                        ; preds = %do.end206, %do.body200.if.end210_crit_edge, %if.end189.if.end210_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d191) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d212) #5
  %32 = ptrtoint ptr %d212 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 14, ptr %d212, align 1
  %33 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi, align 4
  %call218 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -59, ptr noundef nonnull %d212, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end210.if.end231_crit_edge, label %do.body221

if.end210.if.end231_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end231

do.body221:                                       ; preds = %if.end210
  %call222 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.50, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %do.body221.if.end231_crit_edge, label %do.end227

do.body221.if.end231_crit_edge:                   ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end231

do.end227:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.10, i32 noundef %call218, i32 noundef 197) #8
  br label %if.end231

if.end231:                                        ; preds = %do.end227, %do.body221.if.end231_crit_edge, %if.end210.if.end231_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d212) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 4
  %call239 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 32, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.end231.if.end252_crit_edge, label %do.body242

if.end231.if.end252_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end252

do.body242:                                       ; preds = %if.end231
  %call243 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.53, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %do.body242.if.end252_crit_edge, label %do.end248

do.body242.if.end252_crit_edge:                   ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end252

do.end248:                                        ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %call239, i32 noundef 32) #8
  br label %if.end252

if.end252:                                        ; preds = %do.end248, %do.body242.if.end252_crit_edge, %if.end231.if.end252_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  %rotation = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rotation, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.end252.sw.epilog_crit_edge [
    i32 90, label %sw.bb
    i32 180, label %sw.bb254
    i32 270, label %sw.bb255
  ]

if.end252.sw.epilog_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb254:                                         ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb255:                                         ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb255, %sw.bb254, %sw.bb, %if.end252.sw.epilog_crit_edge
  %addr_mode.0 = phi i8 [ -96, %sw.bb255 ], [ 0, %sw.bb254 ], [ 96, %sw.bb ], [ -64, %if.end252.sw.epilog_crit_edge ]
  %cfg = getelementptr inbounds %struct.st7735r_priv, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg, align 8
  %rgb = getelementptr inbounds %struct.st7735r_cfg, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %rgb to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %rgb, align 4
  %43 = lshr i8 %bf.load, 3
  %44 = and i8 %43, 8
  %45 = or i8 %44, %addr_mode.0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d260) #5
  %46 = ptrtoint ptr %d260 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %d260, align 1
  %47 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi, align 4
  %call266 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 54, ptr noundef nonnull %d260, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %sw.epilog.if.end279_crit_edge, label %do.body269

sw.epilog.if.end279_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end279

do.body269:                                       ; preds = %sw.epilog
  %call270 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.56, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %do.body269.if.end279_crit_edge, label %do.end275

do.body269.if.end279_crit_edge:                   ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end279

do.end275:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.10, i32 noundef %call266, i32 noundef 54) #8
  br label %if.end279

if.end279:                                        ; preds = %do.end275, %do.body269.if.end279_crit_edge, %sw.epilog.if.end279_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d260) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d281) #5
  %49 = ptrtoint ptr %d281 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 5, ptr %d281, align 1
  %50 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi, align 4
  %call287 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 58, ptr noundef nonnull %d281, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %if.end279.if.end300_crit_edge, label %do.body290

if.end279.if.end300_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end300

do.body290:                                       ; preds = %if.end279
  %call291 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.60, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %do.body290.if.end300_crit_edge, label %do.end296

do.body290.if.end300_crit_edge:                   ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end300

do.end296:                                        ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.10, i32 noundef %call287, i32 noundef 58) #8
  br label %if.end300

if.end300:                                        ; preds = %do.end296, %do.body290.if.end300_crit_edge, %if.end279.if.end300_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d281) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %d302) #5
  %52 = call ptr @memcpy(ptr %d302, ptr @__const.st7735r_pipe_enable.d.63, i32 16)
  %53 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spi, align 4
  %call308 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -32, ptr noundef nonnull %d302, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.end300.if.end321_crit_edge, label %do.body311

if.end300.if.end321_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end321

do.body311:                                       ; preds = %if.end300
  %call312 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.64, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %do.body311.if.end321_crit_edge, label %do.end317

do.body311.if.end321_crit_edge:                   ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end321

do.end317:                                        ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.10, i32 noundef %call308, i32 noundef 224) #8
  br label %if.end321

if.end321:                                        ; preds = %do.end317, %do.body311.if.end321_crit_edge, %if.end300.if.end321_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %d302) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %d323) #5
  %55 = call ptr @memcpy(ptr %d323, ptr @__const.st7735r_pipe_enable.d.67, i32 16)
  %56 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spi, align 4
  %call329 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -31, ptr noundef nonnull %d323, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %if.end321.if.end342_crit_edge, label %do.body332

if.end321.if.end342_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end342

do.body332:                                       ; preds = %if.end321
  %call333 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.68, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %do.body332.if.end342_crit_edge, label %do.end338

do.body332.if.end342_crit_edge:                   ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end342

do.end338:                                        ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.10, i32 noundef %call329, i32 noundef 225) #8
  br label %if.end342

if.end342:                                        ; preds = %do.end338, %do.body332.if.end342_crit_edge, %if.end321.if.end342_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %d323) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %58 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spi, align 4
  %call350 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 41, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %if.end342.if.end363_crit_edge, label %do.body353

if.end342.if.end363_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end363

do.body353:                                       ; preds = %if.end342
  %call354 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.71, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %do.body353.if.end363_crit_edge, label %do.end359

do.body353.if.end363_crit_edge:                   ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end363

do.end359:                                        ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.10, i32 noundef %call350, i32 noundef 41) #8
  br label %if.end363

if.end363:                                        ; preds = %do.end359, %do.body353.if.end363_crit_edge, %if.end342.if.end363_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %60 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spi, align 4
  %call371 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 19, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %if.end363.if.end384_crit_edge, label %do.body374

if.end363.if.end384_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end384

do.body374:                                       ; preds = %if.end363
  %call375 = call i32 @___ratelimit(ptr noundef nonnull @st7735r_pipe_enable._rs.74, ptr noundef nonnull @__func__.st7735r_pipe_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call375)
  %tobool376.not = icmp eq i32 %call375, 0
  br i1 %tobool376.not, label %do.body374.if.end384_crit_edge, label %do.end380

do.body374.if.end384_crit_edge:                   ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end384

do.end380:                                        ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.10, i32 noundef %call371, i32 noundef 19) #8
  br label %if.end384

if.end384:                                        ; preds = %do.end380, %do.body374.if.end384_crit_edge, %if.end363.if.end384_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 20) #5
  call void @mipi_dbi_enable_flush(ptr noundef %1, ptr noundef %crtc_state, ptr noundef %plane_state) #5
  br label %out_exit

out_exit:                                         ; preds = %if.end384, %if.end.out_exit_crit_edge
  %62 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %63) #5
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
declare dso_local i32 @mipi_dbi_poweron_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_stackbuf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_st7735r__320_275_st7735r_spi_driver_init6, !1, !"__initcall__kmod_st7735r__320_275_st7735r_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 275, i32 1}
!2 = !{ptr @__exitcall_st7735r_spi_driver_exit, !1, !"__exitcall_st7735r_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 277, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 278, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 279, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 267, i32 11}
!12 = !{ptr @st7735r_spi_driver, !13, !"st7735r_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 265, i32 26}
!14 = !{ptr @st7735r_id, !15, !"st7735r_id", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 175, i32 35}
!16 = !{ptr @jd_t18003_t01_cfg, !17, !"jd_t18003_t01_cfg", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 141, i32 33}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 208, i32 35}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 210, i32 50}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 212, i32 27}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 214, i32 42}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 220, i32 32}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 162, i32 12}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 163, i32 12}
!32 = !{ptr @st7735r_driver, !33, !"st7735r_driver", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 156, i32 32}
!34 = !{ptr @st7735r_fops, !35, !"st7735r_fops", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 154, i32 1}
!36 = !{ptr @st7735r_pipe_funcs, !37, !"st7735r_pipe_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 135, i32 51}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 72, i32 2}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 80, i32 2}
!42 = !{ptr @st7735r_pipe_enable._rs, !41, !"_rs", i1 false, i1 false}
!43 = !{ptr @__func__.st7735r_pipe_enable, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @st7735r_pipe_enable._entry, !41, !"_entry", i1 false, i1 false}
!49 = !{ptr @st7735r_pipe_enable._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @st7735r_pipe_enable._rs.14, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 83, i32 2}
!52 = !{ptr @st7735r_pipe_enable._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @st7735r_pipe_enable._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @st7735r_pipe_enable._rs.18, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 84, i32 2}
!56 = !{ptr @st7735r_pipe_enable._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @st7735r_pipe_enable._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @st7735r_pipe_enable._rs.22, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 85, i32 2}
!60 = !{ptr @st7735r_pipe_enable._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @st7735r_pipe_enable._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @st7735r_pipe_enable._rs.26, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 87, i32 2}
!64 = !{ptr @st7735r_pipe_enable._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @st7735r_pipe_enable._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @st7735r_pipe_enable._rs.30, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 88, i32 2}
!68 = !{ptr @st7735r_pipe_enable._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @st7735r_pipe_enable._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @st7735r_pipe_enable._rs.34, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 89, i32 2}
!72 = !{ptr @st7735r_pipe_enable._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @st7735r_pipe_enable._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @st7735r_pipe_enable._rs.38, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 90, i32 2}
!76 = !{ptr @st7735r_pipe_enable._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @st7735r_pipe_enable._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @st7735r_pipe_enable._rs.42, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 91, i32 2}
!80 = !{ptr @st7735r_pipe_enable._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @st7735r_pipe_enable._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @st7735r_pipe_enable._rs.46, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 92, i32 2}
!84 = !{ptr @st7735r_pipe_enable._entry.47, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @st7735r_pipe_enable._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @st7735r_pipe_enable._rs.50, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 93, i32 2}
!88 = !{ptr @st7735r_pipe_enable._entry.51, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @st7735r_pipe_enable._entry_ptr.52, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @st7735r_pipe_enable._rs.53, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 94, i32 2}
!92 = !{ptr @st7735r_pipe_enable._entry.54, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @st7735r_pipe_enable._entry_ptr.55, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @st7735r_pipe_enable._rs.56, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 113, i32 2}
!96 = !{ptr @st7735r_pipe_enable._entry.57, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @st7735r_pipe_enable._entry_ptr.58, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @st7735r_pipe_enable._rs.60, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 114, i32 2}
!100 = !{ptr @st7735r_pipe_enable._entry.61, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @st7735r_pipe_enable._entry_ptr.62, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @st7735r_pipe_enable._rs.64, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 116, i32 2}
!104 = !{ptr @st7735r_pipe_enable._entry.65, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @st7735r_pipe_enable._entry_ptr.66, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @st7735r_pipe_enable._rs.68, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 119, i32 2}
!108 = !{ptr @st7735r_pipe_enable._entry.69, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @st7735r_pipe_enable._entry_ptr.70, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @st7735r_pipe_enable._rs.71, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 122, i32 2}
!112 = !{ptr @st7735r_pipe_enable._entry.72, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @st7735r_pipe_enable._entry_ptr.73, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @st7735r_pipe_enable._rs.74, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 126, i32 2}
!116 = !{ptr @st7735r_pipe_enable._entry.75, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @st7735r_pipe_enable._entry_ptr.76, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @st7735r_of_match, !119, !"st7735r_of_match", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 168, i32 34}
!120 = !{ptr @rh128128t_cfg, !121, !"rh128128t_cfg", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/tiny/st7735r.c", i32 147, i32 33}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
