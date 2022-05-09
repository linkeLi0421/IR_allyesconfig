; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mxsfb/mxsfb_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/mxsfb/mxsfb_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mxsfb_devdata = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.mxsfb_drm_private = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.90, %struct.drm_crtc, %struct.drm_encoder, ptr, ptr }
%struct.anon.90 = type { %struct.drm_plane, %struct.drm_plane }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }

@__initcall__kmod_mxsfb__321_413_mxsfb_platform_driver_init6 = internal global ptr @mxsfb_platform_driver_init, section ".initcall6.init", align 4
@mxsfb_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxsfb_probe, ptr @mxsfb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxsfb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxsfb_platform_driver_exit = internal global ptr @mxsfb_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author322 = internal constant [41 x i8] c"mxsfb.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [47 x i8] c"mxsfb.description=Freescale MXS DRM/KMS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [39 x i8] c"mxsfb.file=drivers/gpu/drm/mxsfb/mxsfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [18 x i8] c"mxsfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mxsfb\00", [26 x i8] zeroinitializer }, align 32
@mxsfb_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-lcdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mxsfb_devdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-lcdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxsfb_devdata, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-lcdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxsfb_devdata, i64 48) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mxsfb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mxsfb_suspend, ptr @mxsfb_resume, ptr @mxsfb_suspend, ptr @mxsfb_resume, ptr @mxsfb_suspend, ptr @mxsfb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxsfb_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mxsfb-drm\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MXSFB Controller DRM\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20160824\00", [23 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_axi\00", [23 x i8] zeroinitializer }, align 32
@mxsfb_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 246, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize KMS pipeline\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxsfb_load\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/mxsfb/mxsfb_drv.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxsfb_load._entry_ptr = internal global ptr @mxsfb_load._entry, section ".printk_index", align 4
@mxsfb_load._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 252, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialise vblank\0A\00", [35 x i8] zeroinitializer }, align 32
@mxsfb_load._entry_ptr.13 = internal global ptr @mxsfb_load._entry.11, section ".printk_index", align 4
@mxsfb_load._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 262, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot connect bridge: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxsfb_load._entry_ptr.16 = internal global ptr @mxsfb_load._entry.14, section ".printk_index", align 4
@mxsfb_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @mxsfb_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mxsfb_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, [24 x i8] zeroinitializer }, align 32
@mxsfb_load._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 285, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@mxsfb_load._entry_ptr.19 = internal global ptr @mxsfb_load._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to attach bridge\0A\00", [39 x i8] zeroinitializer }, align 32
@mxsfb_fb_create.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.8, ptr @.str.22, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxsfb_fb_create\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid pitch: fb width must match pitch\0A\00", [54 x i8] zeroinitializer }, align 32
@mxsfb_devdata = internal constant { [3 x %struct.mxsfb_devdata], [56 x i8] } { [3 x %struct.mxsfb_devdata] [%struct.mxsfb_devdata { i32 32, i32 48, i32 64, i32 255, i32 24, i8 0, i8 0 }, %struct.mxsfb_devdata { i32 48, i32 64, i32 80, i32 16383, i32 18, i8 0, i8 1 }, %struct.mxsfb_devdata { i32 48, i32 64, i32 80, i32 16383, i32 18, i8 1, i8 1 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"mxsfb_platform_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 403, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 407, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"mxsfb_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 330, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"mxsfb_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 399, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"mxsfb_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 319, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 323, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 324, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 325, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 317, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 227, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 231, i32 47 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 246, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 252, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 262, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"mxsfb_mode_config_funcs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 105, i32 43 }
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"mxsfb_mode_config_helpers\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 111, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 285, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 140, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 98, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"mxsfb_devdata\00", align 1
@___asan_gen_.108 = private constant [37 x i8] c"../drivers/gpu/drm/mxsfb/mxsfb_drv.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 45, i32 35 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_mxsfb_platform_driver_exit, ptr @__initcall__kmod_mxsfb__321_413_mxsfb_platform_driver_init6, ptr @mxsfb_load._entry, ptr @mxsfb_load._entry.11, ptr @mxsfb_load._entry.14, ptr @mxsfb_load._entry.17, ptr @mxsfb_load._entry_ptr, ptr @mxsfb_load._entry_ptr.13, ptr @mxsfb_load._entry_ptr.16, ptr @mxsfb_load._entry_ptr.19, ptr @mxsfb_platform_driver_exit, ptr @mxsfb_platform_driver, ptr @.str, ptr @mxsfb_dt_ids, ptr @mxsfb_pm_ops, ptr @mxsfb_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @mxsfb_mode_config_funcs, ptr @mxsfb_mode_config_helpers, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @mxsfb_devdata], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_load._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_load._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_load._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxsfb_devdata to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxsfb_enable_axi_clk(ptr nocapture noundef readonly %mxsfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_axi = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 3
  %0 = ptrtoint ptr %clk_axi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_axi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxsfb_disable_axi_clk(ptr nocapture noundef readonly %mxsfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_axi = getelementptr inbounds %struct.mxsfb_drm_private, ptr %mxsfb, i32 0, i32 3
  %0 = ptrtoint ptr %clk_axi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_axi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %1) #5
  tail call void @clk_unprepare(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_platform_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxsfb_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxsfb_platform_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxsfb_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %iter.i.i = alloca %struct.drm_connector_list_iter, align 4
  %panel.i.i = alloca ptr, align 4
  %bridge.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @mxsfb_dt_ids, ptr noundef %dev) #5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @mxsfb_driver, ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -16
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 2160, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end7.err_free_crit_edge, label %if.end.i

if.end7.err_free_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end.i:                                         ; preds = %if.end7
  %drm2.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %drm2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %drm2.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %dev_private.i, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %call.i.i, align 8
  %call4.i = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 0) #5
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call6.i = tail call ptr @devm_ioremap_resource(ptr noundef %11, ptr noundef %call4.i) #5
  %base.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call6.i to i32
  br label %mxsfb_load.exit

if.end12.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %call14.i = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef null) #5
  %clk.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call14.i, ptr %clk.i, align 8
  %cmp.i155.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call14.i to i32
  br label %mxsfb_load.exit

if.end20.i:                                       ; preds = %if.end12.i
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %call22.i = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef nonnull @.str.4) #5
  %clk_axi.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 3
  %cmp.i156.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i156.i, ptr null, ptr %call22.i
  %20 = ptrtoint ptr %clk_axi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.store.select.i, ptr %clk_axi.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %call29.i = tail call ptr @devm_clk_get(ptr noundef %22, ptr noundef nonnull @.str.5) #5
  %clk_disp_axi.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 4
  %cmp.i157.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select168.i = select i1 %cmp.i157.i, ptr null, ptr %call29.i
  %23 = ptrtoint ptr %clk_disp_axi.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spec.store.select168.i, ptr %clk_disp_axi.i, align 8
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %call.i158.i = tail call i32 @dma_set_mask(ptr noundef %25, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %cmp.i159.i = icmp eq i32 %call.i158.i, 0
  br i1 %cmp.i159.i, label %if.end39.i, label %if.end20.i.err_free_crit_edge

if.end20.i.err_free_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end39.i:                                       ; preds = %if.end20.i
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %25, i64 noundef 4294967295) #5
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %27) #5
  %call.i160.i = tail call i32 @drmm_mode_config_init(ptr noundef %call3) #5
  %call42.i = tail call i32 @mxsfb_kms_init(ptr noundef nonnull %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp.i28 = icmp slt i32 %call42.i, 0
  br i1 %cmp.i28, label %do.end.i, label %if.end45.i

do.end.i:                                         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6) #8
  br label %err_vblank.i

if.end45.i:                                       ; preds = %if.end39.i
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 30, i32 19
  %30 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_crtc.i, align 4
  %call46.i = tail call i32 @drm_vblank_init(ptr noundef %call3, i32 noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.end51.i, label %if.end53.i

do.end51.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.12) #8
  br label %err_vblank.i

if.end53.i:                                       ; preds = %if.end45.i
  %crtc.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc.i) #5
  %34 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drm2.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i) #5
  %36 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i, align 4, !annotation !73
  %37 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %37, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i.i) #5
  %39 = ptrtoint ptr %panel.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge.i.i) #5
  %40 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge.i.i, align 4, !annotation !73
  %dev.i.i = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i.i, align 8
  %call.i161.i = call i32 @drm_of_find_panel_or_bridge(ptr noundef %44, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %panel.i.i, ptr noundef nonnull %bridge.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %tobool.not.i.i = icmp eq i32 %call.i161.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end53.i.mxsfb_attach_bridge.exit.i_crit_edge

if.end53.i.mxsfb_attach_bridge.exit.i_crit_edge:  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_attach_bridge.exit.i

if.end.i.i:                                       ; preds = %if.end53.i
  %45 = ptrtoint ptr %panel.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %panel.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i.i, label %if.end10thread-pre-split.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %47 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i, align 4
  %call5.i.i = call ptr @devm_drm_panel_bridge_add_typed(ptr noundef %48, ptr noundef nonnull %46, i32 noundef 17) #5
  %49 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i.i, ptr %bridge.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then7.i.i, label %if.then3.i.i.if.end10.i.i_crit_edge

if.then3.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %call5.i.i to i32
  br label %mxsfb_attach_bridge.exit.i

if.end10thread-pre-split.i.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr.i.i = load ptr, ptr %bridge.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end10thread-pre-split.i.i, %if.then3.i.i.if.end10.i.i_crit_edge
  %52 = phi ptr [ %.pr.i.i, %if.end10thread-pre-split.i.i ], [ %call5.i.i, %if.then3.i.i.if.end10.i.i_crit_edge ]
  %tobool11.not.i.i = icmp eq ptr %52, null
  br i1 %tobool11.not.i.i, label %mxsfb_attach_bridge.exit.thread.i, label %if.end13.i.i

mxsfb_attach_bridge.exit.thread.i:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #5
  br label %do.end61.i

if.end13.i.i:                                     ; preds = %if.end10.i.i
  %encoder.i.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 9
  %call14.i.i = call i32 @drm_bridge_attach(ptr noundef %encoder.i.i, ptr noundef nonnull %52, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %mxsfb_attach_bridge.exit.thread166.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %call18.i.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %54, i32 noundef %call14.i.i, ptr noundef nonnull @.str.20) #5
  br label %mxsfb_attach_bridge.exit.i

mxsfb_attach_bridge.exit.thread166.i:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bridge.i.i, align 4
  %bridge20.i.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %bridge20.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %bridge20.i.i, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %35, ptr noundef nonnull %iter.i.i) #5
  %call21.i.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i) #5
  %connector.i.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 10
  %58 = ptrtoint ptr %connector.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call21.i.i, ptr %connector.i.i, align 8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #5
  br label %if.end64.i

mxsfb_attach_bridge.exit.i:                       ; preds = %if.then16.i.i, %if.then7.i.i, %if.end53.i.mxsfb_attach_bridge.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %50, %if.then7.i.i ], [ %call18.i.i, %if.then16.i.i ], [ %call.i161.i, %if.end53.i.mxsfb_attach_bridge.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #5
  %59 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i.i, label %mxsfb_attach_bridge.exit.i.do.end61.i_crit_edge [
    i32 0, label %mxsfb_attach_bridge.exit.i.if.end64.i_crit_edge
    i32 -517, label %mxsfb_attach_bridge.exit.i.err_vblank.i_crit_edge
  ]

mxsfb_attach_bridge.exit.i.err_vblank.i_crit_edge: ; preds = %mxsfb_attach_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_vblank.i

mxsfb_attach_bridge.exit.i.if.end64.i_crit_edge:  ; preds = %mxsfb_attach_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

mxsfb_attach_bridge.exit.i.do.end61.i_crit_edge:  ; preds = %mxsfb_attach_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61.i

do.end61.i:                                       ; preds = %mxsfb_attach_bridge.exit.i.do.end61.i_crit_edge, %mxsfb_attach_bridge.exit.thread.i
  %retval.0.i165.i = phi i32 [ -19, %mxsfb_attach_bridge.exit.thread.i ], [ %retval.0.i.i, %mxsfb_attach_bridge.exit.i.do.end61.i_crit_edge ]
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i165.i) #8
  br label %err_vblank.i

if.end64.i:                                       ; preds = %mxsfb_attach_bridge.exit.i.if.end64.i_crit_edge, %mxsfb_attach_bridge.exit.thread166.i
  %min_width.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 30, i32 23
  %62 = ptrtoint ptr %min_width.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 120, ptr %min_width.i, align 4
  %min_height.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 30, i32 24
  %63 = ptrtoint ptr %min_height.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 120, ptr %min_height.i, align 4
  %max_width.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 30, i32 25
  %64 = ptrtoint ptr %max_width.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 65535, ptr %max_width.i, align 4
  %max_height.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 30, i32 26
  %65 = ptrtoint ptr %max_height.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 65535, ptr %max_height.i, align 4
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 30, i32 27
  %66 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @mxsfb_mode_config_funcs, ptr %funcs.i, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_device, ptr %call3, i32 0, i32 30, i32 103
  %67 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mxsfb_mode_config_helpers, ptr %helper_private.i, align 4
  call void @drm_mode_config_reset(ptr noundef %call3) #5
  %call71.i = call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.end64.i.err_vblank.i_crit_edge, label %if.end74.i

if.end64.i.err_vblank.i_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_vblank.i

if.end74.i:                                       ; preds = %if.end64.i
  %irq.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %call.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call71.i, ptr %irq.i, align 4
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %call.i162.i = call i32 @__pm_runtime_resume(ptr noundef %70, i32 noundef 4) #5
  %71 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq.i, align 4
  %call78.i = call fastcc i32 @mxsfb_irq_install(ptr noundef %call3, i32 noundef %72) #5
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %call.i163.i = call i32 @__pm_runtime_idle(ptr noundef %74, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %cmp81.i = icmp slt i32 %call78.i, 0
  br i1 %cmp81.i, label %do.end85.i, label %mxsfb_load.exit.thread33

do.end85.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.18) #8
  br label %err_vblank.i

mxsfb_load.exit.thread33:                         ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_kms_helper_poll_init(ptr noundef %call3) #5
  %driver_data.i.i.i = getelementptr i8, ptr %6, i32 164
  %77 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call3, ptr %driver_data.i.i.i, align 4
  %call88.i = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %call3) #5
  br label %if.end11

err_vblank.i:                                     ; preds = %do.end85.i, %if.end64.i.err_vblank.i_crit_edge, %do.end61.i, %mxsfb_attach_bridge.exit.i.err_vblank.i_crit_edge, %do.end51.i, %do.end.i
  %ret.0.i = phi i32 [ %call42.i, %do.end.i ], [ %call46.i, %do.end51.i ], [ %retval.0.i165.i, %do.end61.i ], [ %call71.i, %if.end64.i.err_vblank.i_crit_edge ], [ %call78.i, %do.end85.i ], [ %retval.0.i.i, %mxsfb_attach_bridge.exit.i.err_vblank.i_crit_edge ]
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 4
  call void @__pm_runtime_disable(ptr noundef %79, i1 noundef zeroext true) #5
  br label %mxsfb_load.exit

mxsfb_load.exit:                                  ; preds = %err_vblank.i, %if.then17.i, %if.then9.i
  %retval.0.i = phi i32 [ %13, %if.then9.i ], [ %17, %if.then17.i ], [ %ret.0.i, %err_vblank.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool9.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool9.not, label %mxsfb_load.exit.if.end11_crit_edge, label %mxsfb_load.exit.err_free_crit_edge

mxsfb_load.exit.err_free_crit_edge:               ; preds = %mxsfb_load.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

mxsfb_load.exit.if.end11_crit_edge:               ; preds = %mxsfb_load.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %mxsfb_load.exit.if.end11_crit_edge, %mxsfb_load.exit.thread33
  %call12 = call i32 @drm_dev_register(ptr noundef %call3, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err_unload

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_fbdev_generic_setup(ptr noundef %call3, i32 noundef 32) #5
  br label %cleanup

err_unload:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_kms_helper_poll_fini(ptr noundef %call3) #5
  call void @drm_mode_config_cleanup(ptr noundef %call3) #5
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  %call.i.i30 = call i32 @__pm_runtime_resume(ptr noundef %81, i32 noundef 4) #5
  %82 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_private.i, align 4
  call fastcc void @mxsfb_irq_disable(ptr noundef %call3) #5
  %irq.i.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq.i.i, align 4
  %call.i10.i = call ptr @free_irq(i32 noundef %85, ptr noundef %call3) #5
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  %call.i11.i = call i32 @__pm_runtime_idle(ptr noundef %87, i32 noundef 4) #5
  %88 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %dev_private.i, align 4
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  call void @__pm_runtime_disable(ptr noundef %90, i1 noundef zeroext true) #5
  br label %err_free

err_free:                                         ; preds = %err_unload, %mxsfb_load.exit.err_free_crit_edge, %if.end20.i.err_free_crit_edge, %if.end7.err_free_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %mxsfb_load.exit.err_free_crit_edge ], [ %call12, %err_unload ], [ %call.i158.i, %if.end20.i.err_free_crit_edge ], [ -12, %if.end7.err_free_crit_edge ]
  call void @drm_dev_put(ptr noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %ret.0, %err_free ], [ 0, %if.end15 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %1) #5
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i, align 4
  tail call fastcc void @mxsfb_irq_disable(ptr noundef %1) #5
  %irq.i.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i.i, align 4
  %call.i10.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %call.i11.i = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #5
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dev_private.i.i, align 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #5
  tail call void @drm_dev_put(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

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
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxsfb_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxsfb_irq_install(ptr noundef %dev, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mxsfb_irq_disable(ptr noundef %dev)
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @mxsfb_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %3, ptr noundef %dev) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -107, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add_typed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mxsfb_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %2 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 2
  %conv = zext i8 %4 to i32
  %mul = mul i32 %1, %conv
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %5 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pitches, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %6)
  %cmp.not = icmp eq i32 %mul, %6
  br i1 %cmp.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxsfb_fb_create.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxsfb_fb_create, %if.then9)) #5
          to label %cleanup [label %if.then9], !srcloc !74

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxsfb_fb_create.__UNIQUE_ID_ddebug320, ptr noundef %8, ptr noundef nonnull @.str.22) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call14, %if.end13 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %if.then9 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxsfb_irq_disable(ptr nocapture noundef readonly %drm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %clk_axi.i = getelementptr inbounds %struct.mxsfb_drm_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk_axi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_axi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mxsfb_enable_axi_clk.exit_crit_edge, label %if.then.i

entry.mxsfb_enable_axi_clk.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_enable_axi_clk.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.mxsfb_enable_axi_clk.exit_crit_edge

if.then.i.mxsfb_enable_axi_clk.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_enable_axi_clk.exit

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.mxsfb_enable_axi_clk.exit_crit_edge, label %if.then3.i.i

if.end.i.i.mxsfb_enable_axi_clk.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_enable_axi_clk.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %3) #5
  br label %mxsfb_enable_axi_clk.exit

mxsfb_enable_axi_clk.exit:                        ; preds = %if.then3.i.i, %if.end.i.i.mxsfb_enable_axi_clk.exit_crit_edge, %if.then.i.mxsfb_enable_axi_clk.exit_crit_edge, %entry.mxsfb_enable_axi_clk.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.mxsfb_drm_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 2097152) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 131072) #5, !srcloc !76
  %8 = ptrtoint ptr %clk_axi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_axi.i, align 4
  %tobool.not.i12 = icmp eq ptr %9, null
  br i1 %tobool.not.i12, label %mxsfb_enable_axi_clk.exit.mxsfb_disable_axi_clk.exit_crit_edge, label %if.then.i13

mxsfb_enable_axi_clk.exit.mxsfb_disable_axi_clk.exit_crit_edge: ; preds = %mxsfb_enable_axi_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mxsfb_disable_axi_clk.exit

if.then.i13:                                      ; preds = %mxsfb_enable_axi_clk.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef nonnull %9) #5
  tail call void @clk_unprepare(ptr noundef nonnull %9) #5
  br label %mxsfb_disable_axi_clk.exit

mxsfb_disable_axi_clk.exit:                       ; preds = %if.then.i13, %mxsfb_enable_axi_clk.exit.mxsfb_disable_axi_clk.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %base = getelementptr inbounds %struct.mxsfb_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %crtc = getelementptr inbounds %struct.mxsfb_drm_private, ptr %1, i32 0, i32 8
  %call2 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc) #5
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 131072) #5, !srcloc !76
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxsfb_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_mxsfb__321_413_mxsfb_platform_driver_init6, !1, !"__initcall__kmod_mxsfb__321_413_mxsfb_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 413, i32 1}
!2 = !{ptr @__exitcall_mxsfb_platform_driver_exit, !1, !"__exitcall_mxsfb_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author322, !4, !"__UNIQUE_ID_author322", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 415, i32 1}
!5 = !{ptr @__UNIQUE_ID_description323, !6, !"__UNIQUE_ID_description323", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 416, i32 1}
!7 = !{ptr @__UNIQUE_ID_file324, !8, !"__UNIQUE_ID_file324", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 417, i32 1}
!9 = !{ptr @__UNIQUE_ID_license325, !8, !"__UNIQUE_ID_license325", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 407, i32 12}
!12 = !{ptr @mxsfb_platform_driver, !13, !"mxsfb_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 403, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 323, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 324, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 325, i32 10}
!20 = !{ptr @mxsfb_driver, !21, !"mxsfb_driver", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 319, i32 32}
!22 = !{ptr @fops, !23, !"fops", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 317, i32 1}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 227, i32 42}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 231, i32 47}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 246, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mxsfb_load._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @mxsfb_load._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 252, i32 3}
!38 = !{ptr @mxsfb_load._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mxsfb_load._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 262, i32 4}
!42 = !{ptr @mxsfb_load._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mxsfb_load._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 285, i32 3}
!46 = !{ptr @mxsfb_load._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mxsfb_load._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 140, i32 39}
!50 = !{ptr @mxsfb_mode_config_funcs, !51, !"mxsfb_mode_config_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 105, i32 43}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 98, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mxsfb_fb_create.__UNIQUE_ID_ddebug320, !53, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!56 = !{ptr @mxsfb_mode_config_helpers, !57, !"mxsfb_mode_config_helpers", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 111, i32 50}
!58 = !{ptr @mxsfb_dt_ids, !59, !"mxsfb_dt_ids", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 330, i32 34}
!60 = !{ptr @mxsfb_devdata, !61, !"mxsfb_devdata", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 45, i32 35}
!62 = !{ptr @mxsfb_pm_ops, !63, !"mxsfb_pm_ops", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/mxsfb/mxsfb_drv.c", i32 399, i32 32}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2148729727, i64 2148729732, i64 2148729745, i64 2148729789, i64 2148729823, i64 2148729844}
!75 = !{i64 2157023025}
!76 = !{i64 6256127}
!77 = !{i64 2157023612}
!78 = !{i64 6256545}
!79 = !{i64 2157022024}
!80 = !{i64 2157022438}
