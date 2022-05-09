; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/cirrus.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/cirrus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.cirrus_device = type { %struct.drm_device, %struct.drm_simple_display_pipe, %struct.drm_connector, i32, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.dma_buf_map = type { %union.anon.86, i8 }
%union.anon.86 = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.88, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.88 = type { [4 x i8] }

@cirrus_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pciidlist, ptr @cirrus_pci_probe, ptr @cirrus_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cirrus__320_649_cirrus_init6 = internal global ptr @cirrus_init, section ".initcall6.init", align 4
@__exitcall_cirrus_exit = internal global ptr @cirrus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file321 = internal constant [40 x i8] c"cirrus.file=drivers/gpu/drm/tiny/cirrus\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [19 x i8] c"cirrus.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cirrus\00", [25 x i8] zeroinitializer }, align 32
@pciidlist = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4115, i32 184, i32 6900, i32 4352, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4115, i32 184, i32 22611, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cirrus_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_shmem_dumb_create, ptr null, ptr null, i32 2, i32 0, i32 0, ptr @.str, ptr @.str.1, ptr @.str.2, i32 19, ptr null, i32 0, ptr @cirrus_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qemu cirrus vga\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2019\00", [27 x i8] zeroinitializer }, align 32
@cirrus_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cirrus_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @cirrus_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cirrus_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @cirrus_conn_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cirrus_conn_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cirrus_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr @cirrus_pipe_mode_valid, ptr @cirrus_pipe_enable, ptr null, ptr @cirrus_pipe_check, ptr @cirrus_pipe_update, ptr @drm_gem_simple_kms_prepare_shadow_fb, ptr @drm_gem_simple_kms_cleanup_shadow_fb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_simple_kms_reset_shadow_plane, ptr @drm_gem_simple_kms_duplicate_shadow_plane_state, ptr @drm_gem_simple_kms_destroy_shadow_plane_state }, [36 x i8] zeroinitializer }, align 32
@cirrus_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 909199186, i32 875710290, i32 875713112], [20 x i8] zeroinitializer }, align 32
@cirrus_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@cirrus_fb_blit_rect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tiny/cirrus.c\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 875710290, i64 875713112, i64 909199186]
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"cirrus_pci_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 629, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 630, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"pciidlist\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 613, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"cirrus_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 532, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 536, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 537, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"cirrus_fops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 530, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"cirrus_mode_config_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 502, i32 43 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"cirrus_conn_helper_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 387, i32 48 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"cirrus_conn_funcs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 391, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"cirrus_pipe_funcs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 456, i32 51 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"cirrus_formats\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 464, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"cirrus_modifiers\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 470, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [33 x i8] c"../drivers/gpu/drm/tiny/cirrus.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 339, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_cirrus_exit, ptr @__initcall__kmod_cirrus__320_649_cirrus_init6, ptr @cirrus_exit, ptr @cirrus_pci_driver, ptr @.str, ptr @pciidlist, ptr @cirrus_driver, ptr @.str.1, ptr @.str.2, ptr @cirrus_fops, ptr @cirrus_mode_config_funcs, ptr @cirrus_conn_helper_funcs, ptr @cirrus_conn_funcs, ptr @cirrus_pipe_funcs, ptr @cirrus_formats, ptr @cirrus_modifiers, ptr @.str.4], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciidlist to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_conn_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrus_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cirrus_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @cirrus_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrus_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #6
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @cirrus_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrus_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef nonnull @cirrus_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call10 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev9, ptr noundef nonnull @cirrus_driver, i32 noundef 4992, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %sub = sub i32 1, %2
  %add = add i32 %sub, %4
  %cond = select i1 %cmp, i32 0, i32 %add
  %call25 = tail call ptr @devm_ioremap(ptr noundef %dev9, i32 noundef %2, i32 noundef %cond) #6
  %vram = getelementptr inbounds %struct.cirrus_device, ptr %call10, i32 0, i32 5
  %5 = ptrtoint ptr %vram to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call25, ptr %vram, align 8
  %cmp27 = icmp eq ptr %call25, null
  br i1 %cmp27, label %if.end14.cleanup_crit_edge, label %if.end29

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end14
  %arrayidx32 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %6 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx32, align 8
  %end36 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %8 = ptrtoint ptr %end36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp37 = icmp eq i32 %9, 0
  %sub46 = sub i32 1, %7
  %add47 = add i32 %sub46, %9
  %cond49 = select i1 %cmp37, i32 0, i32 %add47
  %call50 = tail call ptr @devm_ioremap(ptr noundef %dev9, i32 noundef %7, i32 noundef %cond49) #6
  %mmio = getelementptr inbounds %struct.cirrus_device, ptr %call10, i32 0, i32 6
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call50, ptr %mmio, align 4
  %cmp52 = icmp eq ptr %call50, null
  br i1 %cmp52, label %if.end29.cleanup_crit_edge, label %if.end54

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end29
  %call55 = tail call fastcc i32 @cirrus_mode_config_init(ptr noundef %call10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  %conn.i = getelementptr inbounds %struct.cirrus_device, ptr %call10, i32 0, i32 2
  %helper_private.i.i = getelementptr inbounds %struct.cirrus_device, ptr %call10, i32 0, i32 2, i32 35
  %11 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cirrus_conn_helper_funcs, ptr %helper_private.i.i, align 4
  %call.i = tail call i32 @drm_connector_init(ptr noundef %call10, ptr noundef %conn.i, ptr noundef nonnull @cirrus_conn_funcs, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp60 = icmp slt i32 %call.i, 0
  br i1 %cmp60, label %if.end58.cleanup_crit_edge, label %if.end62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %pipe.i = getelementptr inbounds %struct.cirrus_device, ptr %call10, i32 0, i32 1
  %call.i115 = tail call i32 @drm_simple_display_pipe_init(ptr noundef %call10, ptr noundef %pipe.i, ptr noundef nonnull @cirrus_pipe_funcs, ptr noundef nonnull @cirrus_formats, i32 noundef 3, ptr noundef nonnull @cirrus_modifiers, ptr noundef %conn.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp64 = icmp slt i32 %call.i115, 0
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  tail call void @drm_mode_config_reset(ptr noundef %call10) #6
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %call67 = tail call i32 @drm_dev_register(ptr noundef %call10, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 30, i32 91
  %13 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %preferred_depth, align 4
  tail call void @drm_fbdev_generic_setup(ptr noundef %call10, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then12, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then12 ], [ 0, %if.end70 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ %call55, %if.end54.cleanup_crit_edge ], [ %call.i, %if.end58.cleanup_crit_edge ], [ %call.i115, %if.end62.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrus_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cirrus_mode_config_init(ptr noundef %cirrus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %cirrus) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %min_width = getelementptr inbounds %struct.drm_device, ptr %cirrus, i32 0, i32 30, i32 23
  %0 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %cirrus, i32 0, i32 30, i32 24
  %1 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %cirrus, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2044, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %cirrus, i32 0, i32 30, i32 26
  %3 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1024, ptr %max_height, align 4
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %cirrus, i32 0, i32 30, i32 91
  %4 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %preferred_depth, align 4
  %prefer_shadow = getelementptr inbounds %struct.drm_device, ptr %cirrus, i32 0, i32 30, i32 92
  %5 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %prefer_shadow, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %cirrus, i32 0, i32 30, i32 27
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cirrus_mode_config_funcs, ptr %funcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

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
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

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
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cirrus_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 909199186, label %entry.if.end_crit_edge
    i32 875710290, label %entry.if.end_crit_edge17
    i32 875713112, label %entry.if.end_crit_edge18
  ]

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge17, %entry.if.end_crit_edge18
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 8
  %mul.i = shl i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 4088
  %mul3.i = mul i32 %mul.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %mul3.i)
  %cmp4.i = icmp sgt i32 %mul3.i, 4194304
  %7 = or i1 %cmp.i, %cmp4.i
  br i1 %7, label %if.end.return_crit_edge, label %if.end10

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call ptr @drm_gem_fb_create_with_dirty(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #6
  br label %return

return:                                           ; preds = %if.end10, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call11, %if.end10 ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrus_conn_get_modes(ptr noundef %conn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 8
  %max_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 26
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_height, align 4
  %call = tail call i32 @drm_add_modes_noedid(ptr noundef %conn, i32 noundef %3, i32 noundef %5) #6
  tail call void @drm_set_preferred_mode(ptr noundef %conn, i32 noundef 1024, i32 noundef 768) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cirrus_pipe_mode_valid(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %1 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %2 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdisplay, align 2
  %conv1 = zext i16 %3 to i32
  %mul.i = shl nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2044, i16 %1)
  %cmp.i = icmp ugt i16 %1, 2044
  %mul3.i = mul i32 %mul.i, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %mul3.i)
  %cmp4.i = icmp sgt i32 %mul3.i, 4194304
  %4 = or i1 %cmp.i, %cmp4.i
  %. = select i1 %4, i32 -2, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrus_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readonly %plane_state) #2 align 64 {
entry:
  %fullscreen.i = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  tail call fastcc void @cirrus_mode_set(ptr noundef %1, ptr noundef %mode, ptr noundef %3)
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %plane_state, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fullscreen.i) #6
  %6 = getelementptr inbounds %struct.drm_rect, ptr %fullscreen.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_rect, ptr %fullscreen.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_rect, ptr %fullscreen.i, i32 0, i32 3
  %9 = ptrtoint ptr %fullscreen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fullscreen.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %6, align 4
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width.i, align 8
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %7, align 4
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %8, align 4
  call fastcc void @cirrus_fb_blit_rect(ptr noundef %5, ptr noundef %data, ptr noundef nonnull %fullscreen.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fullscreen.i) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cirrus_pipe_check(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %plane_state, ptr nocapture noundef readnone %crtc_state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %format.i.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format.i.i.i, align 8
  %8 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp.i.i.i = icmp eq i8 %10, 4
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %pitches.i.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %pitches.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pitches.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %12)
  %cmp3.i.i.i = icmp ugt i32 %12, 4088
  br i1 %cmp3.i.i.i, label %cirrus_convert_to.exit.i.i, label %land.lhs.true.i.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

cirrus_convert_to.exit.i.i:                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.i.i = mul i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %mul.i.i.i)
  %cmp5.i.i.i = icmp ult i32 %mul.i.i.i, 4089
  %..i.i.i = select i1 %cmp5.i.i.i, i32 3, i32 2
  %mul.i.i = mul i32 %..i.i.i, %3
  br label %cirrus_check_size.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %pitches.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %pitches.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pitches.i.i, align 8
  br label %cirrus_check_size.exit

cirrus_check_size.exit:                           ; preds = %if.end.i.i, %cirrus_convert_to.exit.i.i
  %pitch.0.i = phi i32 [ %mul.i.i, %cirrus_convert_to.exit.i.i ], [ %14, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %pitch.0.i)
  %cmp.i = icmp sgt i32 %pitch.0.i, 4088
  %mul3.i = mul i32 %pitch.0.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %mul3.i)
  %cmp4.i = icmp sgt i32 %mul3.i, 4194304
  %15 = or i1 %cmp.i, %cmp4.i
  %retval.0.i = select i1 %15, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %cirrus_check_size.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cirrus_check_size.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrus_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_state) #2 align 64 {
entry:
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %state1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #6
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %4 = call ptr @memset(ptr %rect, i32 255, i32 16)
  %5 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cpp = getelementptr inbounds %struct.cirrus_device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpp, align 8
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %format.i.i, align 8
  %11 = getelementptr inbounds %struct.drm_format_info, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i.i = icmp eq i8 %13, 4
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %land.lhs.true.if.end.i_crit_edge

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %pitches.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 6
  %14 = ptrtoint ptr %pitches.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pitches.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %15)
  %cmp3.i.i = icmp ugt i32 %15, 4088
  br i1 %cmp3.i.i, label %cirrus_convert_to.exit.i, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cirrus_convert_to.exit.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %width.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 9
  %16 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i.i, align 8
  %mul.i.i = mul i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %mul.i.i)
  %cmp5.i.i = icmp ult i32 %mul.i.i, 4089
  %..i.i = select i1 %cmp5.i.i, i32 3, i32 2
  br label %cirrus_cpp.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i.if.end.i_crit_edge, %land.lhs.true.if.end.i_crit_edge
  %conv.i = zext i8 %13 to i32
  br label %cirrus_cpp.exit

cirrus_cpp.exit:                                  ; preds = %if.end.i, %cirrus_convert_to.exit.i
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %..i.i, %cirrus_convert_to.exit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %8, %retval.0.i
  br i1 %cmp.not, label %cirrus_cpp.exit.if.end_crit_edge, label %if.then

cirrus_cpp.exit.if.end_crit_edge:                 ; preds = %cirrus_cpp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cirrus_cpp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 12
  tail call fastcc void @cirrus_mode_set(ptr noundef %1, ptr noundef %mode, ptr noundef nonnull %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %cirrus_cpp.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_state, ptr noundef %3, ptr noundef nonnull %rect) #6
  br i1 %call8, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb, align 4
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %3, i32 0, i32 2
  call fastcc void @cirrus_fb_blit_rect(ptr noundef %19, ptr noundef %data, ptr noundef nonnull %rect)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
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
define internal fastcc void @cirrus_mode_set(ptr noundef %cirrus, ptr nocapture noundef readonly %mode, ptr nocapture noundef readonly %fb) unnamed_addr #2 align 64 {
entry:
  %idx.i = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #6
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !46
  %call = call zeroext i1 @drm_dev_enter(ptr noundef %cirrus, ptr noundef nonnull %idx) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %htotal1 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %1 = ptrtoint ptr %htotal1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %htotal1, align 2
  %3 = lshr i16 %2, 3
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %4 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_end, align 4
  %6 = lshr i16 %5, 3
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %7 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hsync_start, align 2
  %9 = lshr i16 %8, 3
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %12 = lshr i16 %11, 3
  %div7 = trunc i16 %12 to i8
  %vtotal8 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %13 = ptrtoint ptr %vtotal8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vtotal8, align 4
  %conv9 = zext i16 %14 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %15 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay, align 2
  %conv10 = zext i16 %16 to i32
  %sub = add nsw i32 %conv10, -1
  %sub11 = add nsw i32 %conv9, -2
  %sub13 = add i8 %div7, -1
  %mmio.i = getelementptr inbounds %struct.cirrus_device, ptr %cirrus, i32 0, i32 6
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #6, !srcloc !48
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %20, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 32) #6, !srcloc !48
  %21 = trunc i16 %3 to i8
  %conv15 = add i8 %21, -5
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %23, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i4, i8 0) #6, !srcloc !48
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i5 = getelementptr i8, ptr %25, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i5, i8 %conv15) #6, !srcloc !48
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %27, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 1) #6, !srcloc !48
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i8 = getelementptr i8, ptr %29, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i8, i8 %sub13) #6, !srcloc !48
  %30 = trunc i16 %9 to i8
  %conv17 = add i8 %30, 1
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %32, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10, i8 4) #6, !srcloc !48
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i11 = getelementptr i8, ptr %34, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i11, i8 %conv17) #6, !srcloc !48
  %35 = trunc i16 %6 to i8
  %conv18 = add i8 %35, 1
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %37, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 5) #6, !srcloc !48
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i14 = getelementptr i8, ptr %39, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i14, i8 %conv18) #6, !srcloc !48
  %conv19 = trunc i32 %sub11 to i8
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %41, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i16, i8 6) #6, !srcloc !48
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i17 = getelementptr i8, ptr %43, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i17, i8 %conv19) #6, !srcloc !48
  %conv21 = trunc i32 %sub to i8
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %45, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 18) #6, !srcloc !48
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i20 = getelementptr i8, ptr %47, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i20, i8 %conv21) #6, !srcloc !48
  %and23 = and i32 %conv10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  %spec.select = select i1 %tobool.not, i8 64, i8 96
  %48 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %49, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22, i8 9) #6, !srcloc !48
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i23 = getelementptr i8, ptr %51, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i23, i8 %spec.select) #6, !srcloc !48
  %and27 = and i32 %sub11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %tmp.1 = select i1 %tobool28.not, i32 16, i32 17
  %and32 = lshr i32 %sub, 7
  %52 = and i32 %and32, 2
  %and38 = lshr i32 %conv10, 5
  %53 = and i32 %and38, 8
  %and43 = and i32 %sub11, 512
  %54 = lshr exact i32 %and43, 4
  %and48 = lshr i32 %sub, 3
  %55 = and i32 %and48, 64
  %56 = or i32 %54, %53
  %57 = or i32 %56, %tmp.1
  %58 = or i32 %57, %52
  %59 = or i32 %58, %55
  %conv53 = trunc i32 %59 to i8
  %60 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %61, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i25, i8 7) #6, !srcloc !48
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i26 = getelementptr i8, ptr %63, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i26, i8 %conv53) #6, !srcloc !48
  %64 = lshr i16 %2, 5
  %65 = and i16 %64, 48
  %66 = zext i16 %65 to i32
  %67 = lshr exact i32 %and27, 2
  %68 = or i32 %67, %66
  %69 = lshr exact i32 %and43, 2
  %70 = or i32 %68, %69
  %conv76 = trunc i32 %70 to i8
  %71 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %72, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28, i8 26) #6, !srcloc !48
  %73 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i29 = getelementptr i8, ptr %74, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i29, i8 %conv76) #6, !srcloc !48
  %75 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %76, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 23) #6, !srcloc !48
  %77 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i32 = getelementptr i8, ptr %78, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i32, i8 3) #6, !srcloc !48
  %79 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %80, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i34, i8 7) #6, !srcloc !48
  %81 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i35 = getelementptr i8, ptr %82, i32 5
  %83 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i35) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %84 = and i8 %83, -32
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %85 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %format.i.i, align 8
  %87 = getelementptr inbounds %struct.drm_format_info, ptr %86, i32 0, i32 3
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %89)
  %cmp.i.i = icmp eq i8 %89, 4
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %if.end
  %pitches.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %90 = ptrtoint ptr %pitches.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pitches.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %91)
  %cmp3.i.i = icmp ugt i32 %91, 4088
  br i1 %cmp3.i.i, label %cirrus_convert_to.exit.i, label %land.lhs.true.i.i.if.end.i_crit_edge

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cirrus_convert_to.exit.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %width.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %92 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %width.i.i, align 8
  %mul.i.i = mul i32 %93, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %mul.i.i)
  %cmp5.i.i = icmp ult i32 %mul.i.i, 4089
  %..i.i = select i1 %cmp5.i.i, i32 3, i32 2
  br label %cirrus_cpp.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %conv.i = zext i8 %89 to i32
  br label %cirrus_cpp.exit

cirrus_cpp.exit:                                  ; preds = %if.end.i, %cirrus_convert_to.exit.i
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %..i.i, %cirrus_convert_to.exit.i ]
  %cpp = getelementptr inbounds %struct.cirrus_device, ptr %cirrus, i32 0, i32 3
  %94 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i, ptr %cpp, align 8
  %95 = add nuw nsw i32 %retval.0.i, 536870911
  %96 = and i32 %95, 536870908
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %switch.lookup, label %cirrus_cpp.exit.cleanup.sink.split_crit_edge

cirrus_cpp.exit.cleanup.sink.split_crit_edge:     ; preds = %cirrus_cpp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %cirrus_cpp.exit
  %switch.shiftamt = shl i32 %95, 3
  %switch.downshift = lshr i32 420812561, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt68 = shl i32 %95, 3
  %switch.downshift69 = lshr i32 -976895744, %switch.shiftamt68
  %switch.masked70 = trunc i32 %switch.downshift69 to i8
  %or88 = or i8 %84, %switch.masked
  %98 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %99, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i37, i8 7) #6, !srcloc !48
  %100 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i38 = getelementptr i8, ptr %101, i32 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i38, i8 %or88) #6, !srcloc !48
  %102 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %format.i.i, align 8
  %104 = getelementptr inbounds %struct.drm_format_info, ptr %103, i32 0, i32 3
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %106)
  %cmp.i.i40 = icmp eq i8 %106, 4
  br i1 %cmp.i.i40, label %land.lhs.true.i.i43, label %switch.lookup.if.end.i49_crit_edge

switch.lookup.if.end.i49_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i49

land.lhs.true.i.i43:                              ; preds = %switch.lookup
  %pitches.i.i41 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %107 = ptrtoint ptr %pitches.i.i41 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pitches.i.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %108)
  %cmp3.i.i42 = icmp ugt i32 %108, 4088
  br i1 %cmp3.i.i42, label %cirrus_convert_to.exit.i48, label %land.lhs.true.i.i43.if.end.i49_crit_edge

land.lhs.true.i.i43.if.end.i49_crit_edge:         ; preds = %land.lhs.true.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i49

cirrus_convert_to.exit.i48:                       ; preds = %land.lhs.true.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  %width.i.i44 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %109 = ptrtoint ptr %width.i.i44 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %width.i.i44, align 8
  %mul.i.i45 = mul i32 %110, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %mul.i.i45)
  %cmp5.i.i46 = icmp ult i32 %mul.i.i45, 4089
  %..i.i47 = select i1 %cmp5.i.i46, i32 3, i32 2
  %mul.i = mul i32 %..i.i47, %110
  br label %cirrus_pitch.exit

if.end.i49:                                       ; preds = %land.lhs.true.i.i43.if.end.i49_crit_edge, %switch.lookup.if.end.i49_crit_edge
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %111 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pitches.i, align 8
  br label %cirrus_pitch.exit

cirrus_pitch.exit:                                ; preds = %if.end.i49, %cirrus_convert_to.exit.i48
  %retval.0.i50 = phi i32 [ %mul.i, %cirrus_convert_to.exit.i48 ], [ %112, %if.end.i49 ]
  %pitch = getelementptr inbounds %struct.cirrus_device, ptr %cirrus, i32 0, i32 4
  %113 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i50, ptr %pitch, align 4
  %div922 = lshr i32 %retval.0.i50, 3
  %conv93 = trunc i32 %div922 to i8
  %114 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %115, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i52, i8 19) #6, !srcloc !48
  %116 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i53 = getelementptr i8, ptr %117, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i53, i8 %conv93) #6, !srcloc !48
  %118 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pitch, align 4
  %shr = lshr i32 %119, 7
  %and95 = and i32 %shr, 16
  %shr98 = lshr i32 %119, 6
  %and99 = and i32 %shr98, 64
  %or96 = or i32 %and95, %and99
  %120 = trunc i32 %or96 to i8
  %conv101 = or i8 %120, 34
  %121 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %122, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i55, i8 27) #6, !srcloc !48
  %123 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i56 = getelementptr i8, ptr %124, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i56, i8 %conv101) #6, !srcloc !48
  %125 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %126, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 5) #6, !srcloc !48
  %127 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i59 = getelementptr i8, ptr %128, i32 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i59, i8 64) #6, !srcloc !48
  %129 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %130, i32 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i61, i8 6) #6, !srcloc !48
  %131 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i62 = getelementptr i8, ptr %132, i32 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i62, i8 1) #6, !srcloc !48
  %133 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %134, i32 6
  %135 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i64) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %136 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i65 = getelementptr i8, ptr %137, i32 6
  %138 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i65) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %139 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %140, i32 6
  %141 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %142 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %143, i32 6
  %144 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %145 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mmio.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %146, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %switch.masked70) #6, !srcloc !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #6
  %147 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -1, ptr %idx.i, align 4, !annotation !46
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %cirrus, ptr noundef nonnull %idx.i) #6
  br i1 %call.i, label %if.end.i66, label %cirrus_pitch.exit.cirrus_set_start_address.exit_crit_edge

cirrus_pitch.exit.cirrus_set_start_address.exit_crit_edge: ; preds = %cirrus_pitch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cirrus_set_start_address.exit

if.end.i66:                                       ; preds = %cirrus_pitch.exit
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %149, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 12) #6, !srcloc !48
  %150 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %151, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i, i8 0) #6, !srcloc !48
  %152 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %153, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i, i8 13) #6, !srcloc !48
  %154 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i3.i = getelementptr i8, ptr %155, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i3.i, i8 0) #6, !srcloc !48
  %156 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %157, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i, i8 27) #6, !srcloc !48
  %158 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i6.i = getelementptr i8, ptr %159, i32 21
  %160 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i6.i) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %161 = and i8 %160, -14
  %162 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %163, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 27) #6, !srcloc !48
  %164 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i9.i = getelementptr i8, ptr %165, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i9.i, i8 %161) #6, !srcloc !48
  %166 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %167, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11.i, i8 29) #6, !srcloc !48
  %168 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i12.i = getelementptr i8, ptr %169, i32 21
  %170 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i12.i) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %171 = and i8 %170, 127
  %172 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %173, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i, i8 29) #6, !srcloc !48
  %174 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i15.i = getelementptr i8, ptr %175, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i15.i, i8 %171) #6, !srcloc !48
  %176 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %177) #6
  br label %cirrus_set_start_address.exit

cirrus_set_start_address.exit:                    ; preds = %if.end.i66, %cirrus_pitch.exit.cirrus_set_start_address.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #6, !srcloc !48
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cirrus_set_start_address.exit, %cirrus_cpp.exit.cleanup.sink.split_crit_edge
  %178 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %178)
  %.sink67 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %.sink67) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cirrus_fb_blit_rect(ptr noundef %fb, ptr nocapture noundef readonly %map, ptr noundef %rect) unnamed_addr #2 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  %vram = getelementptr inbounds %struct.cirrus_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vram, align 8
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #6
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %idx, align 4, !annotation !46
  %call = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpp = getelementptr inbounds %struct.cirrus_device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpp, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %format, align 8
  %11 = getelementptr inbounds %struct.drm_format_info, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 2
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp = icmp eq i32 %8, %conv
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %14 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pitches, align 8
  %call6 = call i32 @drm_fb_clip_offset(i32 noundef %15, ptr noundef %10, ptr noundef %rect) #6
  %add.ptr7 = getelementptr i8, ptr %3, i32 %call6
  %16 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pitches, align 8
  call void @drm_fb_memcpy_toio(ptr noundef %add.ptr7, i32 noundef %17, ptr noundef %5, ptr noundef %fb, ptr noundef %rect) #6
  br label %if.end78

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp13 = icmp eq i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp16 = icmp eq i32 %8, 2
  %or.cond = select i1 %cmp13, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then18, label %if.else23

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %pitch = getelementptr inbounds %struct.cirrus_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pitch, align 4
  %call20 = call i32 @drm_fb_clip_offset(i32 noundef %19, ptr noundef %10, ptr noundef %rect) #6
  %add.ptr21 = getelementptr i8, ptr %3, i32 %call20
  %20 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pitch, align 4
  call void @drm_fb_xrgb8888_to_rgb565_toio(ptr noundef %add.ptr21, i32 noundef %21, ptr noundef %5, ptr noundef %fb, ptr noundef %rect, i1 noundef zeroext false) #6
  br label %if.end78

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp31 = icmp eq i32 %8, 3
  %or.cond2 = select i1 %cmp13, i1 %cmp31, i1 false
  br i1 %or.cond2, label %if.then33, label %land.end

if.then33:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  %pitch34 = getelementptr inbounds %struct.cirrus_device, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %pitch34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pitch34, align 4
  %call36 = call i32 @drm_fb_clip_offset(i32 noundef %23, ptr noundef %10, ptr noundef %rect) #6
  %add.ptr37 = getelementptr i8, ptr %3, i32 %call36
  %24 = ptrtoint ptr %pitch34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pitch34, align 4
  call void @drm_fb_xrgb8888_to_rgb888_toio(ptr noundef %add.ptr37, i32 noundef %25, ptr noundef %5, ptr noundef %fb, ptr noundef %rect) #6
  br label %if.end78

land.end:                                         ; preds = %if.else23
  %.b1 = load i1, ptr @cirrus_fb_blit_rect.__already_done, align 1
  br i1 %.b1, label %land.end.if.end78_crit_edge, label %if.then45, !prof !52

land.end.if.end78_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then45:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cirrus_fb_blit_rect.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 339, i32 noundef 9, ptr noundef null) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then45, %land.end.if.end78_crit_edge, %if.then33, %if.then18, %if.then3
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_clip_offset(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_rgb565_toio(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_xrgb8888_to_rgb888_toio(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_cirrus__320_649_cirrus_init6, !1, !"__initcall__kmod_cirrus__320_649_cirrus_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 649, i32 1}
!2 = !{ptr @__exitcall_cirrus_exit, !3, !"__exitcall_cirrus_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 650, i32 1}
!4 = !{ptr @__UNIQUE_ID_file321, !5, !"__UNIQUE_ID_file321", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 653, i32 1}
!6 = !{ptr @__UNIQUE_ID_license322, !5, !"__UNIQUE_ID_license322", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 630, i32 10}
!9 = !{ptr @cirrus_pci_driver, !10, !"cirrus_pci_driver", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 629, i32 26}
!11 = !{ptr @pciidlist, !12, !"pciidlist", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 613, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 536, i32 12}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 537, i32 12}
!17 = !{ptr @cirrus_driver, !18, !"cirrus_driver", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 532, i32 32}
!19 = !{ptr @cirrus_fops, !20, !"cirrus_fops", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 530, i32 1}
!21 = !{ptr @cirrus_mode_config_funcs, !22, !"cirrus_mode_config_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 502, i32 43}
!23 = !{ptr @cirrus_conn_helper_funcs, !24, !"cirrus_conn_helper_funcs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 387, i32 48}
!25 = !{ptr @cirrus_conn_funcs, !26, !"cirrus_conn_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 391, i32 41}
!27 = !{ptr @cirrus_pipe_funcs, !28, !"cirrus_pipe_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 456, i32 51}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 339, i32 3}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cirrus_formats, !34, !"cirrus_formats", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 464, i32 23}
!35 = !{ptr @cirrus_modifiers, !36, !"cirrus_modifiers", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tiny/cirrus.c", i32 470, i32 23}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{i64 2148893938}
!48 = !{i64 707769}
!49 = !{i64 708164}
!50 = !{i64 2148892333}
!51 = !{i64 2157145121}
!52 = !{!"branch_weights", i32 2000, i32 1}
