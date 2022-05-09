; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/shmobile/shmob_drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/shmobile/shmob_drm_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.shmob_drm_device = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, ptr, %struct.shmob_drm_crtc, %struct.shmob_drm_encoder, %struct.shmob_drm_connector }
%struct.shmob_drm_crtc = type { %struct.drm_crtc, ptr, i32, ptr, [2 x i32], i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.shmob_drm_encoder = type { %struct.drm_encoder, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.shmob_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.shmob_drm_platform_data = type { i32, %struct.shmob_drm_interface_data, %struct.shmob_drm_panel_data, %struct.shmob_drm_backlight_data }
%struct.shmob_drm_interface_data = type { i32, %struct.shmob_drm_sys_interface_data, i32, i32 }
%struct.shmob_drm_sys_interface_data = type { i32, i32 }
%struct.shmob_drm_panel_data = type { i32, i32, %struct.drm_mode_modeinfo }
%struct.drm_mode_modeinfo = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, [32 x i8] }
%struct.shmob_drm_backlight_data = type { ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }

@__initcall__kmod_shmob_drm__316_298_shmob_drm_platform_driver_init6 = internal global ptr @shmob_drm_platform_driver_init, section ".initcall6.init", align 4
@shmob_drm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @shmob_drm_probe, ptr @shmob_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmob_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_shmob_drm_platform_driver_exit = internal global ptr @shmob_drm_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author317 = internal constant [70 x i8] c"shmob_drm.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [51 x i8] c"shmob_drm.description=Renesas SH Mobile DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [50 x i8] c"shmob_drm.file=drivers/gpu/drm/shmobile/shmob-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [22 x i8] c"shmob_drm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shmob-drm\00", [22 x i8] zeroinitializer }, align 32
@shmob_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @shmob_drm_pm_suspend, ptr @shmob_drm_pm_resume, ptr @shmob_drm_pm_suspend, ptr @shmob_drm_pm_resume, ptr @shmob_drm_pm_suspend, ptr @shmob_drm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@shmob_drm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 199, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shmob_drm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/shmobile/shmob_drm_drv.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@shmob_drm_probe._entry_ptr = internal global ptr @shmob_drm_probe._entry, section ".printk_index", align 4
@shmob_drm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sdev->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@shmob_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.25, ptr @.str.26, i32 3, ptr null, i32 0, ptr @shmob_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@shmob_drm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize mode setting\0A\00", [61 x i8] zeroinitializer }, align 32
@shmob_drm_probe._entry_ptr.9 = internal global ptr @shmob_drm_probe._entry.7, section ".printk_index", align 4
@shmob_drm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to create plane %u\0A\00", [37 x i8] zeroinitializer }, align 32
@shmob_drm_probe._entry_ptr.12 = internal global ptr @shmob_drm_probe._entry.10, section ".printk_index", align 4
@shmob_drm_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize vblank\0A\00", [35 x i8] zeroinitializer }, align 32
@shmob_drm_probe._entry_ptr.15 = internal global ptr @shmob_drm_probe._entry.13, section ".printk_index", align 4
@shmob_drm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@shmob_drm_probe._entry_ptr.18 = internal global ptr @shmob_drm_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peripheral_clk\00", [17 x i8] zeroinitializer }, align 32
@shmob_drm_setup_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get dot clock %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"shmob_drm_setup_clocks\00", [41 x i8] zeroinitializer }, align 32
@shmob_drm_setup_clocks._entry_ptr = internal global ptr @shmob_drm_setup_clocks._entry, section ".printk_index", align 4
@shmob_drm_init_interface.ldmt1r = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 4, i32 5, i32 6, i32 7, i32 10, i32 11, i32 15, i32 4096, i32 4097, i32 4098, i32 4099, i32 4100, i32 4101, i32 4103, i32 4104, i32 4105, i32 4106, i32 4107], [52 x i8] zeroinitializer }, align 32
@shmob_drm_init_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 59, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid interface type %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"shmob_drm_init_interface\00", [39 x i8] zeroinitializer }, align 32
@shmob_drm_init_interface._entry_ptr = internal global ptr @shmob_drm_init_interface._entry, section ".printk_index", align 4
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Renesas SH Mobile DRM\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20120424\00", [23 x i8] zeroinitializer }, align 32
@shmob_drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@switch.table.shmob_drm_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr null], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"shmob_drm_platform_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 289, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 293, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"shmob_drm_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 169, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 199, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 213, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"shmob_drm_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 130, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 239, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 246, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 253, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 265, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 75, i32 13 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 79, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 92, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"ldmt1r\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 35, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 58, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 135, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 136, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"shmob_drm_fops\00", align 1
@___asan_gen_.121 = private constant [44 x i8] c"../drivers/gpu/drm/shmobile/shmob_drm_drv.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 128, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [29 x i8] c"switch.table.shmob_drm_probe\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__exitcall_shmob_drm_platform_driver_exit, ptr @__initcall__kmod_shmob_drm__316_298_shmob_drm_platform_driver_init6, ptr @shmob_drm_init_interface._entry, ptr @shmob_drm_init_interface._entry_ptr, ptr @shmob_drm_platform_driver_exit, ptr @shmob_drm_probe._entry, ptr @shmob_drm_probe._entry.10, ptr @shmob_drm_probe._entry.13, ptr @shmob_drm_probe._entry.16, ptr @shmob_drm_probe._entry.7, ptr @shmob_drm_probe._entry_ptr, ptr @shmob_drm_probe._entry_ptr.12, ptr @shmob_drm_probe._entry_ptr.15, ptr @shmob_drm_probe._entry_ptr.18, ptr @shmob_drm_probe._entry_ptr.9, ptr @shmob_drm_setup_clocks._entry, ptr @shmob_drm_setup_clocks._entry_ptr, ptr @shmob_drm_platform_driver, ptr @.str, ptr @shmob_drm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @shmob_drm_probe.__key, ptr @.str.6, ptr @shmob_drm_driver, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @shmob_drm_init_interface.ldmt1r, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @shmob_drm_fops, ptr @switch.table.shmob_drm_probe], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_setup_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_init_interface.ldmt1r to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_init_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.shmob_drm_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @shmob_drm_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @shmob_drm_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2232, i32 noundef 3520) #5
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %pdata8 = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pdata8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %pdata8, align 4
  %irq_lock = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @shmob_drm_probe.__key, i16 noundef signext 3) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %mmio = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %mmio, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %switch.lookup, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end19
  %switch.idx.mult = shl i32 %8, 16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.shmob_drm_probe, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %lddckr4.i = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %lddckr4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.idx.mult, ptr %lddckr4.i, align 8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  %call.i136 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef %switch.load) #5
  %cmp.i.i = icmp ugt ptr %call.i136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %shmob_drm_setup_clocks.exit, label %shmob_drm_setup_clocks.exit.thread145

shmob_drm_setup_clocks.exit.thread145:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %clock.i = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i136, ptr %clock.i, align 4
  br label %if.end23

shmob_drm_setup_clocks.exit:                      ; preds = %switch.lookup
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.21, ptr noundef %switch.load) #8
  %17 = ptrtoint ptr %call.i136 to i32
  %cmp21 = icmp slt ptr %call.i136, null
  br i1 %cmp21, label %shmob_drm_setup_clocks.exit.cleanup_crit_edge, label %shmob_drm_setup_clocks.exit.if.end23_crit_edge

shmob_drm_setup_clocks.exit.if.end23_crit_edge:   ; preds = %shmob_drm_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

shmob_drm_setup_clocks.exit.cleanup_crit_edge:    ; preds = %shmob_drm_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %shmob_drm_setup_clocks.exit.if.end23_crit_edge, %shmob_drm_setup_clocks.exit.thread145
  %18 = ptrtoint ptr %pdata8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata8, align 4
  %iface.i = getelementptr inbounds %struct.shmob_drm_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %21)
  %cmp.i137 = icmp ugt i32 %21, 18
  br i1 %cmp.i137, label %shmob_drm_init_interface.exit.thread, label %if.end27

shmob_drm_init_interface.exit.thread:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.23, i32 noundef %21) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %arrayidx.i = getelementptr [19 x i32], ptr @shmob_drm_init_interface.ldmt1r, i32 0, i32 %21
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %ldmt1r.i = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %ldmt1r.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ldmt1r.i, align 4
  %call29 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @shmob_drm_driver, ptr noundef %dev) #5
  %cmp.i141 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %ddev34 = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %ddev34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call29, ptr %ddev34, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call29, i32 0, i32 5
  %29 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %dev_private, align 4
  %call35 = tail call i32 @shmob_drm_modeset_init(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end33
  %call44 = tail call i32 @shmob_drm_plane_create(ptr noundef nonnull %call.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %for.body.preheader.do.end49_crit_edge, label %for.inc

for.body.preheader.do.end49_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %err_free_drm_dev

do.end49:                                         ; preds = %for.inc.2.do.end49_crit_edge, %for.inc.1.do.end49_crit_edge, %for.inc.do.end49_crit_edge, %for.body.preheader.do.end49_crit_edge
  %i.0151.lcssa = phi i32 [ 0, %for.body.preheader.do.end49_crit_edge ], [ 1, %for.inc.do.end49_crit_edge ], [ 2, %for.inc.1.do.end49_crit_edge ], [ 3, %for.inc.2.do.end49_crit_edge ]
  %call44.lcssa = phi i32 [ %call44, %for.body.preheader.do.end49_crit_edge ], [ %call44.1, %for.inc.do.end49_crit_edge ], [ %call44.2, %for.inc.1.do.end49_crit_edge ], [ %call44.3, %for.inc.2.do.end49_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %i.0151.lcssa) #8
  br label %err_modeset_cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call44.1 = tail call i32 @shmob_drm_plane_create(ptr noundef nonnull %call.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.1)
  %cmp45.1 = icmp slt i32 %call44.1, 0
  br i1 %cmp45.1, label %for.inc.do.end49_crit_edge, label %for.inc.1

for.inc.do.end49_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

for.inc.1:                                        ; preds = %for.inc
  %call44.2 = tail call i32 @shmob_drm_plane_create(ptr noundef nonnull %call.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.2)
  %cmp45.2 = icmp slt i32 %call44.2, 0
  br i1 %cmp45.2, label %for.inc.1.do.end49_crit_edge, label %for.inc.2

for.inc.1.do.end49_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

for.inc.2:                                        ; preds = %for.inc.1
  %call44.3 = tail call i32 @shmob_drm_plane_create(ptr noundef nonnull %call.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.3)
  %cmp45.3 = icmp slt i32 %call44.3, 0
  br i1 %cmp45.3, label %for.inc.2.do.end49_crit_edge, label %for.inc.3

for.inc.2.do.end49_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end49

for.inc.3:                                        ; preds = %for.inc.2
  %call52 = tail call i32 @drm_vblank_init(ptr noundef %call29, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end59

do.end57:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %err_modeset_cleanup

if.end59:                                         ; preds = %for.inc.3
  %call60 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.err_modeset_cleanup_crit_edge, label %if.end63

if.end59.err_modeset_cleanup_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_modeset_cleanup

if.end63:                                         ; preds = %if.end59
  %irq = getelementptr inbounds %struct.shmob_drm_device, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call60, ptr %irq, align 8
  %driver = getelementptr inbounds %struct.drm_device, ptr %call29, i32 0, i32 4
  %31 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %32, i32 0, i32 21
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %call.i142 = tail call i32 @request_threaded_irq(i32 noundef %call60, ptr noundef nonnull @shmob_drm_irq, ptr noundef null, i32 noundef 0, ptr noundef %34, ptr noundef %call29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp66 = icmp slt i32 %call.i142, 0
  br i1 %cmp66, label %do.end70, label %if.end72

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %err_modeset_cleanup

if.end72:                                         ; preds = %if.end63
  %call73 = tail call i32 @drm_dev_register(ptr noundef %call29, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %err_irq_uninstall, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_irq_uninstall:                                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 8
  %call78 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %call29) #5
  br label %err_modeset_cleanup

err_modeset_cleanup:                              ; preds = %err_irq_uninstall, %do.end70, %if.end59.err_modeset_cleanup_crit_edge, %do.end57, %do.end49
  %ret.0 = phi i32 [ %call44.lcssa, %do.end49 ], [ %call52, %do.end57 ], [ %call60, %if.end59.err_modeset_cleanup_crit_edge ], [ %call.i142, %do.end70 ], [ %call73, %err_irq_uninstall ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call29) #5
  br label %err_free_drm_dev

err_free_drm_dev:                                 ; preds = %err_modeset_cleanup, %do.end40
  %ret.1 = phi i32 [ %call35, %do.end40 ], [ %ret.0, %err_modeset_cleanup ]
  tail call void @drm_dev_put(ptr noundef %call29) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_drm_dev, %if.end72.cleanup_crit_edge, %if.then31, %shmob_drm_init_interface.exit.thread, %shmob_drm_setup_clocks.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %6, %if.then16 ], [ %27, %if.then31 ], [ %ret.1, %err_free_drm_dev ], [ -12, %if.end.cleanup_crit_edge ], [ %17, %shmob_drm_setup_clocks.exit.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ], [ -22, %shmob_drm_init_interface.exit.thread ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ddev1 = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev1, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #5
  %irq = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #5
  tail call void @drm_dev_put(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmob_drm_modeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmob_drm_plane_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %irq_lock = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #5
  %mmio.i = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !76
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %xor = xor i32 %5, 255
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %xor) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %8) #5, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #5
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %arg, i32 noundef 0) #5
  %crtc = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 9
  tail call void @shmob_drm_crtc_finish_page_flip(ptr noundef %crtc) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

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
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmob_drm_crtc_finish_page_flip(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 8
  tail call void @drm_kms_helper_poll_disable(ptr noundef %3) #5
  %crtc = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 9
  tail call void @shmob_drm_crtc_suspend(ptr noundef %crtc) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 8
  tail call void @drm_modeset_lock_all(ptr noundef %3) #5
  %crtc = getelementptr inbounds %struct.shmob_drm_device, ptr %1, i32 0, i32 9
  tail call void @shmob_drm_crtc_resume(ptr noundef %crtc) #5
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 8
  tail call void @drm_modeset_unlock_all(ptr noundef %5) #5
  %6 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddev, align 8
  tail call void @drm_kms_helper_poll_enable(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmob_drm_crtc_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmob_drm_crtc_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_shmob_drm__316_298_shmob_drm_platform_driver_init6, !1, !"__initcall__kmod_shmob_drm__316_298_shmob_drm_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_shmob_drm_platform_driver_exit, !1, !"__exitcall_shmob_drm_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author317, !4, !"__UNIQUE_ID_author317", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 300, i32 1}
!5 = !{ptr @__UNIQUE_ID_description318, !6, !"__UNIQUE_ID_description318", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 301, i32 1}
!7 = !{ptr @__UNIQUE_ID_file319, !8, !"__UNIQUE_ID_file319", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 302, i32 1}
!9 = !{ptr @__UNIQUE_ID_license320, !8, !"__UNIQUE_ID_license320", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 293, i32 11}
!12 = !{ptr @shmob_drm_platform_driver, !13, !"shmob_drm_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 289, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 199, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @shmob_drm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @shmob_drm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @shmob_drm_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 213, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 239, i32 3}
!27 = !{ptr @shmob_drm_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @shmob_drm_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 246, i32 4}
!31 = !{ptr @shmob_drm_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @shmob_drm_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 253, i32 3}
!35 = !{ptr @shmob_drm_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @shmob_drm_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 265, i32 3}
!39 = !{ptr @shmob_drm_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @shmob_drm_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 75, i32 13}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 79, i32 13}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 92, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @shmob_drm_setup_clocks._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @shmob_drm_setup_clocks._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @shmob_drm_init_interface.ldmt1r, !51, !"ldmt1r", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 35, i32 19}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 58, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @shmob_drm_init_interface._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @shmob_drm_init_interface._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 135, i32 12}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 136, i32 12}
!61 = !{ptr @shmob_drm_driver, !62, !"shmob_drm_driver", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 130, i32 32}
!63 = !{ptr @shmob_drm_fops, !64, !"shmob_drm_fops", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 128, i32 1}
!65 = !{ptr @shmob_drm_pm_ops, !66, !"shmob_drm_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_drv.c", i32 169, i32 32}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2035002}
!77 = !{i64 2149575351}
!78 = !{i64 2149576706}
!79 = !{i64 2034584}
