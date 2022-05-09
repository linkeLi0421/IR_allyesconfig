; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/st7586.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/st7586.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_st7586__320_389_st7586_spi_driver_init6 = internal global ptr @st7586_spi_driver_init, section ".initcall6.init", align 4
@st7586_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @st7586_id, ptr @st7586_probe, ptr @st7586_remove, ptr @st7586_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st7586_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_st7586_spi_driver_exit = internal global ptr @st7586_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [46 x i8] c"st7586.description=Sitronix ST7586 DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [51 x i8] c"st7586.author=David Lechner <david@lechnology.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [40 x i8] c"st7586.file=drivers/gpu/drm/tiny/st7586\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [19 x i8] c"st7586.license=GPL\00", section ".modinfo", align 1
@st7586_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ev3-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st7586\00", [25 x i8] zeroinitializer }, align 32
@st7586_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lego,ev3-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st7586_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_dbi_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.6, ptr @.str.7, i32 19, ptr null, i32 0, ptr @st7586_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 178, i16 178, i16 178, i16 178, i16 0, i16 128, i16 128, i16 128, i16 128, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 37, i16 27, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get GPIO 'reset'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"a0\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get GPIO 'a0'\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@st7586_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @st7586_pipe_enable, ptr @st7586_pipe_disable, ptr null, ptr @st7586_pipe_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st7586_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713112], [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sitronix ST7586\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20170801\00", [23 x i8] zeroinitializer }, align 32
@st7586_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.st7586_pipe_enable = private unnamed_addr constant [19 x i8] c"st7586_pipe_enable\00", align 1
@st7586_pipe_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 187, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tiny/st7586.c\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr = internal global ptr @st7586_pipe_enable._entry, section ".printk_index", align 4
@st7586_pipe_enable._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 188, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.16 = internal global ptr @st7586_pipe_enable._entry.15, section ".printk_index", align 4
@st7586_pipe_enable._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 192, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.19 = internal global ptr @st7586_pipe_enable._entry.18, section ".printk_index", align 4
@st7586_pipe_enable._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 196, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.22 = internal global ptr @st7586_pipe_enable._entry.21, section ".printk_index", align 4
@st7586_pipe_enable._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 197, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.25 = internal global ptr @st7586_pipe_enable._entry.24, section ".printk_index", align 4
@st7586_pipe_enable._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 198, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.28 = internal global ptr @st7586_pipe_enable._entry.27, section ".printk_index", align 4
@st7586_pipe_enable._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 202, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.31 = internal global ptr @st7586_pipe_enable._entry.30, section ".printk_index", align 4
@st7586_pipe_enable._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 203, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.35 = internal global ptr @st7586_pipe_enable._entry.34, section ".printk_index", align 4
@st7586_pipe_enable._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 204, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.39 = internal global ptr @st7586_pipe_enable._entry.38, section ".printk_index", align 4
@st7586_pipe_enable._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 205, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.43 = internal global ptr @st7586_pipe_enable._entry.42, section ".printk_index", align 4
@st7586_pipe_enable._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 206, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.47 = internal global ptr @st7586_pipe_enable._entry.46, section ".printk_index", align 4
@st7586_pipe_enable._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 207, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.50 = internal global ptr @st7586_pipe_enable._entry.49, section ".printk_index", align 4
@st7586_pipe_enable._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 208, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.53 = internal global ptr @st7586_pipe_enable._entry.52, section ".printk_index", align 4
@st7586_pipe_enable._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 209, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.57 = internal global ptr @st7586_pipe_enable._entry.56, section ".printk_index", align 4
@st7586_pipe_enable._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 225, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.60 = internal global ptr @st7586_pipe_enable._entry.59, section ".printk_index", align 4
@st7586_pipe_enable._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 227, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.64 = internal global ptr @st7586_pipe_enable._entry.63, section ".printk_index", align 4
@st7586_pipe_enable._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 228, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.68 = internal global ptr @st7586_pipe_enable._entry.67, section ".printk_index", align 4
@st7586_pipe_enable._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 229, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.72 = internal global ptr @st7586_pipe_enable._entry.71, section ".printk_index", align 4
@st7586_pipe_enable._rs.73 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 230, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.75 = internal global ptr @st7586_pipe_enable._entry.74, section ".printk_index", align 4
@st7586_pipe_enable._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_enable, ptr @.str.11, i32 236, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_enable._entry_ptr.78 = internal global ptr @st7586_pipe_enable._entry.77, section ".printk_index", align 4
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Flushing [FB:%d] %dx%d%+d%+d\0A\00", [34 x i8] zeroinitializer }, align 32
@st7586_fb_dirty._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.st7586_fb_dirty = private unnamed_addr constant [16 x i8] c"st7586_fb_dirty\00", align 1
@st7586_fb_dirty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_fb_dirty, ptr @.str.11, i32 134, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_fb_dirty._entry_ptr = internal global ptr @st7586_fb_dirty._entry, section ".printk_index", align 4
@st7586_fb_dirty._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@st7586_fb_dirty._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_fb_dirty, ptr @.str.11, i32 137, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_fb_dirty._entry_ptr.82 = internal global ptr @st7586_fb_dirty._entry.81, section ".printk_index", align 4
@st7586_fb_dirty.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@st7586_fb_dirty._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @__func__.st7586_fb_dirty, ptr @.str.11, i32 144, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to update display %d\0A\00", [35 x i8] zeroinitializer }, align 32
@st7586_fb_dirty._entry_ptr.85 = internal global ptr @st7586_fb_dirty._entry.83, section ".printk_index", align 4
@st7586_lookup = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\07\04\02\00", [28 x i8] zeroinitializer }, align 32
@st7586_pipe_disable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.st7586_pipe_disable = private unnamed_addr constant [20 x i8] c"st7586_pipe_disable\00", align 1
@st7586_pipe_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.st7586_pipe_disable, ptr @.str.11, i32 254, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@st7586_pipe_disable._entry_ptr = internal global ptr @st7586_pipe_disable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"st7586_spi_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 378, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"st7586_id\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 291, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 380, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"st7586_of_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 285, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [14 x i8] c"st7586_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 273, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"st7586_mode\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 267, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 318, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 320, i32 50 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 322, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 324, i32 42 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 326, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"st7586_pipe_funcs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 261, i32 51 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"st7586_formats\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 257, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 279, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 280, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"st7586_fops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 271, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 181, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 187, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 188, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 192, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 196, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 197, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 198, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 202, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 203, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 204, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 205, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 206, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 207, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 208, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 209, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 225, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 227, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 228, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 229, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 230, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 236, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 122, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 132, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 135, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 144, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [14 x i8] c"st7586_lookup\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 62, i32 17 }
@___asan_gen_.296 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private constant [33 x i8] c"../drivers/gpu/drm/tiny/st7586.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 254, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_st7586_spi_driver_exit, ptr @__initcall__kmod_st7586__320_389_st7586_spi_driver_init6, ptr @st7586_fb_dirty._entry, ptr @st7586_fb_dirty._entry.81, ptr @st7586_fb_dirty._entry.83, ptr @st7586_fb_dirty._entry_ptr, ptr @st7586_fb_dirty._entry_ptr.82, ptr @st7586_fb_dirty._entry_ptr.85, ptr @st7586_pipe_disable._entry, ptr @st7586_pipe_disable._entry_ptr, ptr @st7586_pipe_enable._entry, ptr @st7586_pipe_enable._entry.15, ptr @st7586_pipe_enable._entry.18, ptr @st7586_pipe_enable._entry.21, ptr @st7586_pipe_enable._entry.24, ptr @st7586_pipe_enable._entry.27, ptr @st7586_pipe_enable._entry.30, ptr @st7586_pipe_enable._entry.34, ptr @st7586_pipe_enable._entry.38, ptr @st7586_pipe_enable._entry.42, ptr @st7586_pipe_enable._entry.46, ptr @st7586_pipe_enable._entry.49, ptr @st7586_pipe_enable._entry.52, ptr @st7586_pipe_enable._entry.56, ptr @st7586_pipe_enable._entry.59, ptr @st7586_pipe_enable._entry.63, ptr @st7586_pipe_enable._entry.67, ptr @st7586_pipe_enable._entry.71, ptr @st7586_pipe_enable._entry.74, ptr @st7586_pipe_enable._entry.77, ptr @st7586_pipe_enable._entry_ptr, ptr @st7586_pipe_enable._entry_ptr.16, ptr @st7586_pipe_enable._entry_ptr.19, ptr @st7586_pipe_enable._entry_ptr.22, ptr @st7586_pipe_enable._entry_ptr.25, ptr @st7586_pipe_enable._entry_ptr.28, ptr @st7586_pipe_enable._entry_ptr.31, ptr @st7586_pipe_enable._entry_ptr.35, ptr @st7586_pipe_enable._entry_ptr.39, ptr @st7586_pipe_enable._entry_ptr.43, ptr @st7586_pipe_enable._entry_ptr.47, ptr @st7586_pipe_enable._entry_ptr.50, ptr @st7586_pipe_enable._entry_ptr.53, ptr @st7586_pipe_enable._entry_ptr.57, ptr @st7586_pipe_enable._entry_ptr.60, ptr @st7586_pipe_enable._entry_ptr.64, ptr @st7586_pipe_enable._entry_ptr.68, ptr @st7586_pipe_enable._entry_ptr.72, ptr @st7586_pipe_enable._entry_ptr.75, ptr @st7586_pipe_enable._entry_ptr.78, ptr @st7586_spi_driver_exit, ptr @st7586_spi_driver, ptr @st7586_id, ptr @.str, ptr @st7586_of_match, ptr @st7586_driver, ptr @st7586_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @st7586_pipe_funcs, ptr @st7586_formats, ptr @.str.6, ptr @.str.7, ptr @st7586_fops, ptr @.str.8, ptr @st7586_pipe_enable._rs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @st7586_pipe_enable._rs.14, ptr @st7586_pipe_enable._rs.17, ptr @st7586_pipe_enable._rs.20, ptr @st7586_pipe_enable._rs.23, ptr @st7586_pipe_enable._rs.26, ptr @st7586_pipe_enable._rs.29, ptr @st7586_pipe_enable._rs.33, ptr @st7586_pipe_enable._rs.37, ptr @st7586_pipe_enable._rs.41, ptr @st7586_pipe_enable._rs.45, ptr @st7586_pipe_enable._rs.48, ptr @st7586_pipe_enable._rs.51, ptr @st7586_pipe_enable._rs.55, ptr @st7586_pipe_enable._rs.58, ptr @st7586_pipe_enable._rs.62, ptr @st7586_pipe_enable._rs.66, ptr @st7586_pipe_enable._rs.70, ptr @st7586_pipe_enable._rs.73, ptr @st7586_pipe_enable._rs.76, ptr @.str.79, ptr @st7586_fb_dirty._rs, ptr @st7586_fb_dirty._rs.80, ptr @.str.84, ptr @st7586_lookup, ptr @st7586_pipe_disable._rs], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_enable._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_fb_dirty._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_fb_dirty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_fb_dirty._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_fb_dirty._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_fb_dirty._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_lookup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_disable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7586_pipe_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st7586_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @st7586_spi_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st7586_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @st7586_spi_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7586_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rotation = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation) #6
  %0 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rotation, align 4
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %spi, ptr noundef nonnull @st7586_driver, i32 noundef 5240, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dbi4 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10
  %call7 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %reset = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %reset, align 4
  %cmp.i66 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %3, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 3) #6
  %cmp.i67 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call15 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %4, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.5, ptr noundef nonnull %rotation, i32 noundef 1) #6
  %call22 = call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi4, ptr noundef %call15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %read_commands = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %read_commands to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %read_commands, align 4
  %6 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rotation, align 4
  %call25 = call i32 @mipi_dbi_dev_init_with_formats(ptr noundef %call, ptr noundef nonnull @st7586_pipe_funcs, ptr noundef nonnull @st7586_formats, i32 noundef 1, ptr noundef nonnull @st7586_mode, i32 noundef %7, i32 noundef 7654) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %swap_bytes = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %swap_bytes to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %swap_bytes, align 4
  call void @drm_mode_config_reset(ptr noundef %call) #6
  %call29 = call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %driver_data.i.i, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then17, %if.then10, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call13, %if.then10 ], [ %call19, %if.then17 ], [ 0, %if.end32 ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7586_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st7586_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_dev_init_with_formats(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal void @st7586_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readonly %plane_state) #2 align 64 {
entry:
  %d44 = alloca [0 x i8], align 1
  %rect = alloca %struct.drm_rect, align 4
  %idx = alloca i32, align 4
  %d = alloca [1 x i8], align 1
  %d23 = alloca [1 x i8], align 1
  %d128 = alloca [1 x i8], align 1
  %d149 = alloca [2 x i8], align 2
  %d170 = alloca [1 x i8], align 1
  %d191 = alloca [1 x i8], align 1
  %d212 = alloca [1 x i8], align 1
  %d233 = alloca [1 x i8], align 1
  %d275 = alloca [1 x i8], align 1
  %d298 = alloca [1 x i8], align 1
  %d319 = alloca [1 x i8], align 1
  %d340 = alloca [1 x i8], align 1
  %d361 = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb1, align 4
  %dbi2 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #6
  %4 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %7 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rect, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %4, align 4
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %5, align 4
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #6
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %idx, align 4, !annotation !162
  %call5 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #6
  br i1 %call5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #6
  %call6 = call i32 @mipi_dbi_poweron_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_exit_crit_edge

if.end.out_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_exit

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #6
  %16 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -97, ptr %d, align 1
  %spi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi, align 4
  %call12 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -41, ptr noundef nonnull %d, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end8.if.end22_crit_edge, label %do.body

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body:                                          ; preds = %if.end8
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body.if.end22_crit_edge, label %do.end

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10, i32 noundef %call12, i32 noundef 215) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end, %do.body.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d23) #6
  %19 = ptrtoint ptr %d23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %d23, align 1
  %20 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi, align 4
  %call29 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -32, ptr noundef nonnull %d23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end22.if.end42_crit_edge, label %do.body32

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.body32:                                        ; preds = %if.end22
  %call33 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.14, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body32.if.end42_crit_edge, label %do.end38

do.body32.if.end42_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %call29, i32 noundef 224) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %do.body32.if.end42_crit_edge, %if.end22.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d23) #6
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d44) #6
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi, align 4
  %call50 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -29, ptr noundef nonnull %d44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end42.if.end63_crit_edge, label %do.body53

if.end42.if.end63_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.body53:                                        ; preds = %if.end42
  %call54 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.17, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body53.if.end63_crit_edge, label %do.end59

do.body53.if.end63_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %call50, i32 noundef 227) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end59, %do.body53.if.end63_crit_edge, %if.end42.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d44) #6
  call void @msleep(i32 noundef 20) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d44) #6
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  %call71 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -31, ptr noundef nonnull %d44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end63.if.end84_crit_edge, label %do.body74

if.end63.if.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

do.body74:                                        ; preds = %if.end63
  %call75 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.20, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body74.if.end84_crit_edge, label %do.end80

do.body74.if.end84_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef %call71, i32 noundef 225) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end80, %do.body74.if.end84_crit_edge, %if.end63.if.end84_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d44) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d44) #6
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 4
  %call92 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 17, ptr noundef nonnull %d44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end84.if.end105_crit_edge, label %do.body95

if.end84.if.end105_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

do.body95:                                        ; preds = %if.end84
  %call96 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.23, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %do.body95.if.end105_crit_edge, label %do.end101

do.body95.if.end105_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.10, i32 noundef %call92, i32 noundef 17) #9
  br label %if.end105

if.end105:                                        ; preds = %do.end101, %do.body95.if.end105_crit_edge, %if.end84.if.end105_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d44) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d44) #6
  %28 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi, align 4
  %call113 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 40, ptr noundef nonnull %d44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end105.if.end126_crit_edge, label %do.body116

if.end105.if.end126_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

do.body116:                                       ; preds = %if.end105
  %call117 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.26, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.body116.if.end126_crit_edge, label %do.end122

do.body116.if.end126_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10, i32 noundef %call113, i32 noundef 40) #9
  br label %if.end126

if.end126:                                        ; preds = %do.end122, %do.body116.if.end126_crit_edge, %if.end105.if.end126_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d44) #6
  call void @msleep(i32 noundef 50) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d128) #6
  %30 = ptrtoint ptr %d128 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %d128, align 1
  %31 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi, align 4
  %call134 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -57, ptr noundef nonnull %d128, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end126.if.end147_crit_edge, label %do.body137

if.end126.if.end147_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.body137:                                       ; preds = %if.end126
  %call138 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.29, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %do.body137.if.end147_crit_edge, label %do.end143

do.body137.if.end147_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.10, i32 noundef %call134, i32 noundef 199) #9
  br label %if.end147

if.end147:                                        ; preds = %do.end143, %do.body137.if.end147_crit_edge, %if.end126.if.end147_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d128) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d149) #6
  %33 = ptrtoint ptr %d149 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -7424, ptr %d149, align 2
  %34 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi, align 4
  %call155 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -64, ptr noundef nonnull %d149, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end147.if.end168_crit_edge, label %do.body158

if.end147.if.end168_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

do.body158:                                       ; preds = %if.end147
  %call159 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.33, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %do.body158.if.end168_crit_edge, label %do.end164

do.body158.if.end168_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %call155, i32 noundef 192) #9
  br label %if.end168

if.end168:                                        ; preds = %do.end164, %do.body158.if.end168_crit_edge, %if.end147.if.end168_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d149) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d170) #6
  %36 = ptrtoint ptr %d170 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %d170, align 1
  %37 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi, align 4
  %call176 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -61, ptr noundef nonnull %d170, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end168.if.end189_crit_edge, label %do.body179

if.end168.if.end189_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

do.body179:                                       ; preds = %if.end168
  %call180 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.37, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %do.body179.if.end189_crit_edge, label %do.end185

do.body179.if.end189_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

do.end185:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %call176, i32 noundef 195) #9
  br label %if.end189

if.end189:                                        ; preds = %do.end185, %do.body179.if.end189_crit_edge, %if.end168.if.end189_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d170) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d191) #6
  %39 = ptrtoint ptr %d191 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %d191, align 1
  %40 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi, align 4
  %call197 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -60, ptr noundef nonnull %d191, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end189.if.end210_crit_edge, label %do.body200

if.end189.if.end210_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end210

do.body200:                                       ; preds = %if.end189
  %call201 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.41, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.body200.if.end210_crit_edge, label %do.end206

do.body200.if.end210_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end210

do.end206:                                        ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.10, i32 noundef %call197, i32 noundef 196) #9
  br label %if.end210

if.end210:                                        ; preds = %do.end206, %do.body200.if.end210_crit_edge, %if.end189.if.end210_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d191) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d212) #6
  %42 = ptrtoint ptr %d212 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 29, ptr %d212, align 1
  %43 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spi, align 4
  %call218 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -48, ptr noundef nonnull %d212, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end210.if.end231_crit_edge, label %do.body221

if.end210.if.end231_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

do.body221:                                       ; preds = %if.end210
  %call222 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.45, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %do.body221.if.end231_crit_edge, label %do.end227

do.body221.if.end231_crit_edge:                   ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

do.end227:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.10, i32 noundef %call218, i32 noundef 208) #9
  br label %if.end231

if.end231:                                        ; preds = %do.end227, %do.body221.if.end231_crit_edge, %if.end210.if.end231_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d212) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d233) #6
  %45 = ptrtoint ptr %d233 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %d233, align 1
  %46 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spi, align 4
  %call239 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -75, ptr noundef nonnull %d233, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.end231.if.end252_crit_edge, label %do.body242

if.end231.if.end252_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

do.body242:                                       ; preds = %if.end231
  %call243 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.48, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %do.body242.if.end252_crit_edge, label %do.end248

do.body242.if.end252_crit_edge:                   ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

do.end248:                                        ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.10, i32 noundef %call239, i32 noundef 181) #9
  br label %if.end252

if.end252:                                        ; preds = %do.end248, %do.body242.if.end252_crit_edge, %if.end231.if.end252_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d233) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d44) #6
  %48 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi, align 4
  %call260 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 56, ptr noundef nonnull %d44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.end252.if.end273_crit_edge, label %do.body263

if.end252.if.end273_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end273

do.body263:                                       ; preds = %if.end252
  %call264 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.51, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %do.body263.if.end273_crit_edge, label %do.end269

do.body263.if.end273_crit_edge:                   ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end273

do.end269:                                        ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.10, i32 noundef %call260, i32 noundef 56) #9
  br label %if.end273

if.end273:                                        ; preds = %do.end269, %do.body263.if.end273_crit_edge, %if.end252.if.end273_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d44) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d275) #6
  %50 = ptrtoint ptr %d275 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %d275, align 1
  %51 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi, align 4
  %call281 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 58, ptr noundef nonnull %d275, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.end273.if.end294_crit_edge, label %do.body284

if.end273.if.end294_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end294

do.body284:                                       ; preds = %if.end273
  %call285 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.55, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %do.body284.if.end294_crit_edge, label %do.end290

do.body284.if.end294_crit_edge:                   ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end294

do.end290:                                        ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.10, i32 noundef %call281, i32 noundef 58) #9
  br label %if.end294

if.end294:                                        ; preds = %do.end290, %do.body284.if.end294_crit_edge, %if.end273.if.end294_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d275) #6
  %rotation = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rotation, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %if.end294.sw.epilog_crit_edge [
    i32 90, label %sw.bb
    i32 180, label %sw.bb296
    i32 270, label %sw.bb297
  ]

if.end294.sw.epilog_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb296:                                         ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb297:                                         ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb297, %sw.bb296, %sw.bb, %if.end294.sw.epilog_crit_edge
  %addr_mode.0 = phi i8 [ 64, %sw.bb297 ], [ -64, %sw.bb296 ], [ -128, %sw.bb ], [ 0, %if.end294.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d298) #6
  %56 = ptrtoint ptr %d298 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %addr_mode.0, ptr %d298, align 1
  %57 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi, align 4
  %call304 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 54, ptr noundef nonnull %d298, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304)
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %sw.epilog.if.end317_crit_edge, label %do.body307

sw.epilog.if.end317_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end317

do.body307:                                       ; preds = %sw.epilog
  %call308 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.58, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %do.body307.if.end317_crit_edge, label %do.end313

do.body307.if.end317_crit_edge:                   ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end317

do.end313:                                        ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.10, i32 noundef %call304, i32 noundef 54) #9
  br label %if.end317

if.end317:                                        ; preds = %do.end313, %do.body307.if.end317_crit_edge, %sw.epilog.if.end317_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d298) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d319) #6
  %59 = ptrtoint ptr %d319 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 127, ptr %d319, align 1
  %60 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spi, align 4
  %call325 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -80, ptr noundef nonnull %d319, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.end317.if.end338_crit_edge, label %do.body328

if.end317.if.end338_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338

do.body328:                                       ; preds = %if.end317
  %call329 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.62, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %do.body328.if.end338_crit_edge, label %do.end334

do.body328.if.end338_crit_edge:                   ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338

do.end334:                                        ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.10, i32 noundef %call325, i32 noundef 176) #9
  br label %if.end338

if.end338:                                        ; preds = %do.end334, %do.body328.if.end338_crit_edge, %if.end317.if.end338_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d319) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d340) #6
  %62 = ptrtoint ptr %d340 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -96, ptr %d340, align 1
  %63 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spi, align 4
  %call346 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext -76, ptr noundef nonnull %d340, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %if.end338.if.end359_crit_edge, label %do.body349

if.end338.if.end359_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end359

do.body349:                                       ; preds = %if.end338
  %call350 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.66, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %do.body349.if.end359_crit_edge, label %do.end355

do.body349.if.end359_crit_edge:                   ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end359

do.end355:                                        ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.10, i32 noundef %call346, i32 noundef 180) #9
  br label %if.end359

if.end359:                                        ; preds = %do.end355, %do.body349.if.end359_crit_edge, %if.end338.if.end359_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d340) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d361) #6
  %65 = ptrtoint ptr %d361 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 119, ptr %d361, align 4
  %66 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi, align 4
  %call367 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 48, ptr noundef nonnull %d361, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %tobool368.not = icmp eq i32 %call367, 0
  br i1 %tobool368.not, label %if.end359.if.end380_crit_edge, label %do.body370

if.end359.if.end380_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end380

do.body370:                                       ; preds = %if.end359
  %call371 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.70, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %do.body370.if.end380_crit_edge, label %do.end376

do.body370.if.end380_crit_edge:                   ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end380

do.end376:                                        ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.10, i32 noundef %call367, i32 noundef 48) #9
  br label %if.end380

if.end380:                                        ; preds = %do.end376, %do.body370.if.end380_crit_edge, %if.end359.if.end380_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d361) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d44) #6
  %68 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %spi, align 4
  %call388 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 32, ptr noundef nonnull %d44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call388)
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %if.end380.if.end401_crit_edge, label %do.body391

if.end380.if.end401_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end401

do.body391:                                       ; preds = %if.end380
  %call392 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.73, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %do.body391.if.end401_crit_edge, label %do.end397

do.body391.if.end401_crit_edge:                   ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end401

do.end397:                                        ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.10, i32 noundef %call388, i32 noundef 32) #9
  br label %if.end401

if.end401:                                        ; preds = %do.end397, %do.body391.if.end401_crit_edge, %if.end380.if.end401_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d44) #6
  call void @msleep(i32 noundef 100) #6
  call fastcc void @st7586_fb_dirty(ptr noundef %3, ptr noundef nonnull %rect)
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d44) #6
  %70 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spi, align 4
  %call409 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi2, i8 noundef zeroext 41, ptr noundef nonnull %d44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %if.end401.if.end422_crit_edge, label %do.body412

if.end401.if.end422_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end422

do.body412:                                       ; preds = %if.end401
  %call413 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_enable._rs.76, ptr noundef nonnull @__func__.st7586_pipe_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call413)
  %tobool414.not = icmp eq i32 %call413, 0
  br i1 %tobool414.not, label %do.body412.if.end422_crit_edge, label %do.end418

do.body412.if.end422_crit_edge:                   ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end422

do.end418:                                        ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.10, i32 noundef %call409, i32 noundef 41) #9
  br label %if.end422

if.end422:                                        ; preds = %do.end418, %do.body412.if.end422_crit_edge, %if.end401.if.end422_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d44) #6
  br label %out_exit

out_exit:                                         ; preds = %if.end422, %if.end.out_exit_crit_edge
  %72 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %73) #6
  br label %cleanup

cleanup:                                          ; preds = %out_exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st7586_pipe_disable(ptr nocapture noundef readonly %pipe) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #6
  %dbi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  %spi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call4 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi, i8 noundef zeroext 40, ptr noundef nonnull %d, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body:                                          ; preds = %entry
  %call5 = call i32 @___ratelimit(ptr noundef nonnull @st7586_pipe_disable._rs, ptr noundef nonnull @__func__.st7586_pipe_disable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %call4, i32 noundef 40) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st7586_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_state) #2 align 64 {
entry:
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #6
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %2 = call ptr @memset(ptr %rect, i32 255, i32 16)
  %3 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state2, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %1, ptr noundef nonnull %rect) #6
  br i1 %call, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 4
  call fastcc void @st7586_fb_dirty(ptr noundef %8, ptr noundef nonnull %rect)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_poweron_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_stackbuf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st7586_fb_dirty(ptr noundef %fb, ptr noundef %rect) unnamed_addr #2 align 64 {
entry:
  %idx = alloca i32, align 4
  %d = alloca [4 x i8], align 1
  %d43 = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  %dbi1 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #6
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !162
  %call3 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #6
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rect, align 4
  %rem = srem i32 %4, 3
  %sub = sub i32 %4, %rem
  store i32 %sub, ptr %rect, align 4
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %5 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %x2, align 4
  %add = add i32 %6, 2
  %7 = srem i32 %add, 3
  %mul = sub i32 %add, %7
  store i32 %mul, ptr %x2, align 4
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  %sub.i = sub i32 %mul, %sub
  %y2.i = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %10 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %12 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y1.i, align 4
  %sub.i148 = sub i32 %11, %13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.79, i32 noundef %9, i32 noundef %sub.i, i32 noundef %sub.i148, i32 noundef %sub, i32 noundef %13) #6
  %tx_buf = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_buf, align 8
  %call.i = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef 0) #6
  %vaddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr.i, align 8
  %call1.i = call i32 @drm_gem_fb_begin_cpu_access(ptr noundef %fb, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end8.i.i.i, label %if.end.do.body91_crit_edge

if.end.do.body91_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body91

if.end8.i.i.i:                                    ; preds = %if.end
  %18 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y2.i, align 4
  %20 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y1.i, align 4
  %sub1.i.i = sub i32 %19, %21
  %22 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %x2, align 4
  %24 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rect, align 4
  %sub.i.i = sub i32 %23, %25
  %mul.i.i = mul i32 %sub1.i.i, %sub.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3264) #10
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.if.end13_crit_edge, label %if.end.i.i

if.end8.i.i.i.if.end13_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end.i.i:                                       ; preds = %if.end8.i.i.i
  call void @drm_fb_xrgb8888_to_gray8(ptr noundef nonnull %call9.i.i.i, i32 noundef 0, ptr noundef %17, ptr noundef %fb, ptr noundef %rect) #6
  %26 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %y1.i, align 4
  %28 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %y2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp62.i.i = icmp ult i32 %27, %29
  br i1 %cmp62.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.for.end30.i.i_crit_edge

if.end.i.i.for.end30.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc29.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %src.065.i.i = phi ptr [ %src.1.lcssa.i.i, %for.inc29.i.i.for.body.i.i_crit_edge ], [ %call9.i.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %y.064.i.i = phi i32 [ %inc.i.i, %for.inc29.i.i.for.body.i.i_crit_edge ], [ %27, %if.end.i.i.for.body.i.i_crit_edge ]
  %dst.addr.063.i.i = phi ptr [ %dst.addr.1.lcssa.i.i, %for.inc29.i.i.for.body.i.i_crit_edge ], [ %15, %if.end.i.i.for.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rect, align 4
  %32 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %x2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp757.i.i = icmp ult i32 %31, %33
  br i1 %cmp757.i.i, label %for.body.i.i.for.body8.i.i_crit_edge, label %for.body.i.i.for.inc29.i.i_crit_edge

for.body.i.i.for.inc29.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.i.i

for.body.i.i.for.body8.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body8.i.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.body.i.i.for.body8.i.i_crit_edge
  %src.160.i.i = phi ptr [ %incdec.ptr19.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %src.065.i.i, %for.body.i.i.for.body8.i.i_crit_edge ]
  %x.059.i.i = phi i32 [ %add.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %31, %for.body.i.i.for.body8.i.i_crit_edge ]
  %dst.addr.158.i.i = phi ptr [ %incdec.ptr28.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %dst.addr.063.i.i, %for.body.i.i.for.body8.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %src.160.i.i, i32 1
  %34 = ptrtoint ptr %src.160.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %src.160.i.i, align 1
  %36 = lshr i8 %35, 6
  %37 = zext i8 %36 to i32
  %arrayidx.i.i = getelementptr [4 x i8], ptr @st7586_lookup, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1
  %shl.i.i = shl i8 %39, 5
  %incdec.ptr11.i.i = getelementptr i8, ptr %src.160.i.i, i32 2
  %40 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.i.i, align 1
  %42 = lshr i8 %41, 6
  %43 = zext i8 %42 to i32
  %arrayidx14.i.i = getelementptr [4 x i8], ptr @st7586_lookup, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx14.i.i, align 1
  %shl16.i.i = shl i8 %45, 2
  %or.i.i = or i8 %shl16.i.i, %shl.i.i
  %incdec.ptr19.i.i = getelementptr i8, ptr %src.160.i.i, i32 3
  %46 = ptrtoint ptr %incdec.ptr11.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr11.i.i, align 1
  %48 = lshr i8 %47, 6
  %49 = zext i8 %48 to i32
  %arrayidx22.i.i = getelementptr [4 x i8], ptr @st7586_lookup, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx22.i.i, align 1
  %52 = lshr i8 %51, 1
  %or2653.i.i = or i8 %or.i.i, %52
  %incdec.ptr28.i.i = getelementptr i8, ptr %dst.addr.158.i.i, i32 1
  %53 = ptrtoint ptr %dst.addr.158.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or2653.i.i, ptr %dst.addr.158.i.i, align 1
  %add.i.i = add i32 %x.059.i.i, 3
  %54 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %x2, align 4
  %cmp7.i.i = icmp ult i32 %add.i.i, %55
  br i1 %cmp7.i.i, label %for.body8.i.i.for.body8.i.i_crit_edge, label %for.body8.i.i.for.inc29.i.i_crit_edge

for.body8.i.i.for.inc29.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.i.i

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i.i

for.inc29.i.i:                                    ; preds = %for.body8.i.i.for.inc29.i.i_crit_edge, %for.body.i.i.for.inc29.i.i_crit_edge
  %dst.addr.1.lcssa.i.i = phi ptr [ %dst.addr.063.i.i, %for.body.i.i.for.inc29.i.i_crit_edge ], [ %incdec.ptr28.i.i, %for.body8.i.i.for.inc29.i.i_crit_edge ]
  %src.1.lcssa.i.i = phi ptr [ %src.065.i.i, %for.body.i.i.for.inc29.i.i_crit_edge ], [ %incdec.ptr19.i.i, %for.body8.i.i.for.inc29.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %y.064.i.i, 1
  %56 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %y2.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %57
  br i1 %cmp.i.i, label %for.inc29.i.i.for.body.i.i_crit_edge, label %for.inc29.i.i.for.end30.i.i_crit_edge

for.inc29.i.i.for.end30.i.i_crit_edge:            ; preds = %for.inc29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30.i.i

for.inc29.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end30.i.i:                                    ; preds = %for.inc29.i.i.for.end30.i.i_crit_edge, %if.end.i.i.for.end30.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %if.end13

if.end13:                                         ; preds = %for.end30.i.i, %if.end8.i.i.i.if.end13_crit_edge
  call void @drm_gem_fb_end_cpu_access(ptr noundef %fb, i32 noundef 2) #6
  %58 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rect, align 4
  %div15 = sdiv i32 %59, 3
  %60 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %x2, align 4
  %div17 = sdiv i32 %61, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #6
  %62 = getelementptr inbounds [4 x i8], ptr %d, i32 0, i32 1
  %63 = getelementptr inbounds [4 x i8], ptr %d, i32 0, i32 2
  %64 = getelementptr inbounds [4 x i8], ptr %d, i32 0, i32 3
  %65 = lshr i32 %div15, 8
  %conv = trunc i32 %65 to i8
  %66 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv, ptr %d, align 1
  %conv19 = trunc i32 %div15 to i8
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv19, ptr %62, align 1
  %68 = lshr i32 %div17, 8
  %conv23 = trunc i32 %68 to i8
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv23, ptr %63, align 1
  %70 = trunc i32 %div17 to i8
  %conv27 = add i8 %70, -1
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv27, ptr %64, align 1
  %spi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %72 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %spi, align 4
  %call31 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 42, ptr noundef nonnull %d, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end13.if.end41_crit_edge, label %do.body

if.end13.if.end41_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.body:                                          ; preds = %if.end13
  %call34 = call i32 @___ratelimit(ptr noundef nonnull @st7586_fb_dirty._rs, ptr noundef nonnull @__func__.st7586_fb_dirty) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body.if.end41_crit_edge, label %do.end

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.10, i32 noundef %call31, i32 noundef 42) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end, %do.body.if.end41_crit_edge, %if.end13.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d43) #6
  %74 = getelementptr inbounds [4 x i8], ptr %d43, i32 0, i32 1
  %75 = getelementptr inbounds [4 x i8], ptr %d43, i32 0, i32 2
  %76 = getelementptr inbounds [4 x i8], ptr %d43, i32 0, i32 3
  %77 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %y1.i, align 4
  %79 = lshr i32 %78, 8
  %conv48 = trunc i32 %79 to i8
  %80 = ptrtoint ptr %d43 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv48, ptr %d43, align 1
  %conv52 = trunc i32 %78 to i8
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv52, ptr %74, align 1
  %82 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %y2.i, align 4
  %84 = lshr i32 %83, 8
  %conv56 = trunc i32 %84 to i8
  %85 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv56, ptr %75, align 1
  %86 = trunc i32 %83 to i8
  %conv61 = add i8 %86, -1
  %87 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv61, ptr %76, align 1
  %88 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi, align 4
  %call67 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 43, ptr noundef nonnull %d43, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end41.err_msg_crit_edge, label %do.body70

if.end41.err_msg_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_msg

do.body70:                                        ; preds = %if.end41
  %call71 = call i32 @___ratelimit(ptr noundef nonnull @st7586_fb_dirty._rs.80, ptr noundef nonnull @__func__.st7586_fb_dirty) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body70.err_msg_crit_edge, label %do.end76

do.body70.err_msg_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_msg

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.10, i32 noundef %call67, i32 noundef 43) #9
  br label %err_msg

err_msg:                                          ; preds = %do.end76, %do.body70.err_msg_crit_edge, %if.end41.err_msg_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d43) #6
  %90 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_buf, align 8
  %sub83 = sub nsw i32 %div17, %div15
  %92 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %y2.i, align 4
  %94 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %y1.i, align 4
  %sub86 = sub i32 %93, %95
  %mul87 = mul i32 %sub86, %sub83
  %call88 = call i32 @mipi_dbi_command_buf(ptr noundef %dbi1, i8 noundef zeroext 44, ptr noundef %91, i32 noundef %mul87) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err_msg.if.end102_crit_edge, label %err_msg.do.body91_crit_edge

err_msg.do.body91_crit_edge:                      ; preds = %err_msg
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body91

err_msg.if.end102_crit_edge:                      ; preds = %err_msg
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

do.body91:                                        ; preds = %err_msg.do.body91_crit_edge, %if.end.do.body91_crit_edge
  %ret.0153 = phi i32 [ %call88, %err_msg.do.body91_crit_edge ], [ %call1.i, %if.end.do.body91_crit_edge ]
  %.b147 = load i1, ptr @st7586_fb_dirty.__print_once, align 1
  br i1 %.b147, label %do.body91.if.end102_crit_edge, label %if.then93

do.body91.if.end102_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then93:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @st7586_fb_dirty.__print_once, align 1
  %96 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fb, align 8
  %dev98 = getelementptr inbounds %struct.drm_device, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev98, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.84, i32 noundef %ret.0153) #9
  br label %if.end102

if.end102:                                        ; preds = %if.then93, %do.body91.if.end102_crit_edge, %err_msg.if.end102_crit_edge
  %100 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %101) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_buf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_begin_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_end_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_gray8(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !146, !147, !148, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_st7586__320_389_st7586_spi_driver_init6, !1, !"__initcall__kmod_st7586__320_389_st7586_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 389, i32 1}
!2 = !{ptr @__exitcall_st7586_spi_driver_exit, !1, !"__exitcall_st7586_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 391, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 392, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 393, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 380, i32 11}
!12 = !{ptr @st7586_spi_driver, !13, !"st7586_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 378, i32 26}
!14 = !{ptr @st7586_id, !15, !"st7586_id", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 291, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 318, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 320, i32 50}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 322, i32 27}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 324, i32 42}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 326, i32 32}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 279, i32 12}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 280, i32 12}
!30 = !{ptr @st7586_driver, !31, !"st7586_driver", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 273, i32 32}
!32 = !{ptr @st7586_fops, !33, !"st7586_fops", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 271, i32 1}
!34 = !{ptr @st7586_mode, !35, !"st7586_mode", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 267, i32 38}
!36 = !{ptr @st7586_pipe_funcs, !37, !"st7586_pipe_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 261, i32 51}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 181, i32 2}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 187, i32 2}
!42 = !{ptr @st7586_pipe_enable._rs, !41, !"_rs", i1 false, i1 false}
!43 = !{ptr @__func__.st7586_pipe_enable, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @st7586_pipe_enable._entry, !41, !"_entry", i1 false, i1 false}
!49 = !{ptr @st7586_pipe_enable._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @st7586_pipe_enable._rs.14, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 188, i32 2}
!52 = !{ptr @st7586_pipe_enable._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @st7586_pipe_enable._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @st7586_pipe_enable._rs.17, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 192, i32 2}
!56 = !{ptr @st7586_pipe_enable._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @st7586_pipe_enable._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @st7586_pipe_enable._rs.20, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 196, i32 2}
!60 = !{ptr @st7586_pipe_enable._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @st7586_pipe_enable._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @st7586_pipe_enable._rs.23, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 197, i32 2}
!64 = !{ptr @st7586_pipe_enable._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @st7586_pipe_enable._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @st7586_pipe_enable._rs.26, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 198, i32 2}
!68 = !{ptr @st7586_pipe_enable._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @st7586_pipe_enable._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @st7586_pipe_enable._rs.29, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 202, i32 2}
!72 = !{ptr @st7586_pipe_enable._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @st7586_pipe_enable._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @st7586_pipe_enable._rs.33, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 203, i32 2}
!76 = !{ptr @st7586_pipe_enable._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @st7586_pipe_enable._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @st7586_pipe_enable._rs.37, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 204, i32 2}
!80 = !{ptr @st7586_pipe_enable._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @st7586_pipe_enable._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @st7586_pipe_enable._rs.41, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 205, i32 2}
!84 = !{ptr @st7586_pipe_enable._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @st7586_pipe_enable._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @st7586_pipe_enable._rs.45, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 206, i32 2}
!88 = !{ptr @st7586_pipe_enable._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @st7586_pipe_enable._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @st7586_pipe_enable._rs.48, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 207, i32 2}
!92 = !{ptr @st7586_pipe_enable._entry.49, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @st7586_pipe_enable._entry_ptr.50, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @st7586_pipe_enable._rs.51, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 208, i32 2}
!96 = !{ptr @st7586_pipe_enable._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @st7586_pipe_enable._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @st7586_pipe_enable._rs.55, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 209, i32 2}
!100 = !{ptr @st7586_pipe_enable._entry.56, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @st7586_pipe_enable._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @st7586_pipe_enable._rs.58, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 225, i32 2}
!104 = !{ptr @st7586_pipe_enable._entry.59, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @st7586_pipe_enable._entry_ptr.60, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @st7586_pipe_enable._rs.62, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 227, i32 2}
!108 = !{ptr @st7586_pipe_enable._entry.63, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @st7586_pipe_enable._entry_ptr.64, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @st7586_pipe_enable._rs.66, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 228, i32 2}
!112 = !{ptr @st7586_pipe_enable._entry.67, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @st7586_pipe_enable._entry_ptr.68, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @st7586_pipe_enable._rs.70, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 229, i32 2}
!116 = !{ptr @st7586_pipe_enable._entry.71, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @st7586_pipe_enable._entry_ptr.72, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @st7586_pipe_enable._rs.73, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 230, i32 2}
!120 = !{ptr @st7586_pipe_enable._entry.74, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @st7586_pipe_enable._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @st7586_pipe_enable._rs.76, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 236, i32 2}
!124 = !{ptr @st7586_pipe_enable._entry.77, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @st7586_pipe_enable._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.79, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 122, i32 2}
!128 = !{ptr @st7586_fb_dirty._rs, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 132, i32 2}
!130 = !{ptr @__func__.st7586_fb_dirty, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @st7586_fb_dirty._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @st7586_fb_dirty._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @st7586_fb_dirty._rs.80, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 135, i32 2}
!135 = !{ptr @st7586_fb_dirty._entry.81, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @st7586_fb_dirty._entry_ptr.82, !134, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !138, !"__print_once", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 144, i32 3}
!139 = !{ptr @.str.84, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @st7586_fb_dirty._entry.83, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @st7586_fb_dirty._entry_ptr.85, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @st7586_lookup, !143, !"st7586_lookup", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 62, i32 17}
!144 = !{ptr @st7586_pipe_disable._rs, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 254, i32 2}
!146 = !{ptr @__func__.st7586_pipe_disable, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @st7586_pipe_disable._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @st7586_pipe_disable._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @st7586_formats, !150, !"st7586_formats", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 257, i32 18}
!151 = !{ptr @st7586_of_match, !152, !"st7586_of_match", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/tiny/st7586.c", i32 285, i32 34}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
!163 = !{i8 0, i8 2}
