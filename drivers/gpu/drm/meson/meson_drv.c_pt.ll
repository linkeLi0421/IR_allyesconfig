; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.meson_drm_soc_attr = type { %struct.meson_drm_soc_limits, ptr }
%struct.meson_drm_soc_limits = type { i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_drm_match_data = type { i32, ptr }
%struct.meson_afbcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96 }
%struct.anon.93 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.94 = type { i32, i8, i8, i8 }
%struct.anon.95 = type { i32, ptr, i32 }
%struct.anon.96 = type { ptr, i64, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_meson_drm__319_544_meson_drm_platform_driver_init6 = internal global ptr @meson_drm_platform_driver_init, section ".initcall6.init", align 4
@meson_drm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_drv_probe, ptr null, ptr @meson_drv_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_drv_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_drm_platform_driver_exit = internal global ptr @meson_drm_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [59 x i8] c"meson_drm.author=Jasper St. Pierre <jstpierre@mecheye.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [58 x i8] c"meson_drm.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [47 x i8] c"meson_drm.description=Amlogic Meson DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [47 x i8] c"meson_drm.file=drivers/gpu/drm/meson/meson-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [22 x i8] c"meson_drm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson-drm\00", [22 x i8] zeroinitializer }, align 32
@dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_drm_gxbb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_drm_gxl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_drm_gxm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_drm_g12a_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@meson_drv_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @meson_drv_pm_suspend, ptr @meson_drv_pm_resume, ptr @meson_drv_pm_suspend, ptr @meson_drv_pm_resume, ptr @meson_drv_pm_suspend, ptr @meson_drv_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@connectors_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"composite-video-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"svideo-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@meson_drv_probe.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_drv_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/meson/meson_drv.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"parent %pOF remote match add %pOF parent %s\0A\00", [51 x i8] zeroinitializer }, align 32
@meson_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 488, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Queued %d outputs on vpu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_drv_probe._entry_ptr = internal global ptr @meson_drv_probe._entry, section ".printk_index", align 4
@meson_drv_master_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @meson_drv_bind, ptr @meson_drv_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Comparing of node %pOF with %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@meson_drv_bind_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 187, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No output connector available\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_drv_bind_master\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@meson_drv_bind_master._entry_ptr = internal global ptr @meson_drv_bind_master._entry, section ".printk_index", align 4
@meson_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @meson_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hhi\00", [28 x i8] zeroinitializer }, align 32
@meson_drv_bind_master._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 4096, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"meson_drv:231:(&meson_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@meson_drv_bind_master._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 233, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't create the HHI regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_drv_bind_master._entry_ptr.17 = internal global ptr @meson_drv_bind_master._entry.15, section ".printk_index", align 4
@meson_drm_soc_attrs = internal constant { [1 x %struct.meson_drm_soc_attr], [24 x i8] } { [1 x %struct.meson_drm_soc_attr] [%struct.meson_drm_soc_attr { %struct.meson_drm_soc_limits { i32 1650000 }, ptr @.compoundliteral }], [24 x i8] zeroinitializer }, align 32
@meson_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@meson_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, [24 x i8] zeroinitializer }, align 32
@meson_drv_bind_master._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 317, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't bind all components\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_drv_bind_master._entry_ptr.20 = internal global ptr @meson_drv_bind_master._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"meson\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Amlogic Meson DRM driver\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20161109\00", [23 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GXL (S805*)\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.24, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@meson_drm_gxbb_data = internal global { %struct.meson_drm_match_data, [24 x i8] } zeroinitializer, align 32
@meson_drm_gxl_data = internal global { %struct.meson_drm_match_data, [24 x i8] } { %struct.meson_drm_match_data { i32 1, ptr null }, [24 x i8] zeroinitializer }, align 32
@meson_drm_gxm_data = internal global { %struct.meson_drm_match_data, [24 x i8] } { %struct.meson_drm_match_data { i32 2, ptr @meson_afbcd_gxm_ops }, [24 x i8] zeroinitializer }, align 32
@meson_drm_g12a_data = internal global { %struct.meson_drm_match_data, [24 x i8] } { %struct.meson_drm_match_data { i32 3, ptr @meson_afbcd_g12a_ops }, [24 x i8] zeroinitializer }, align 32
@meson_afbcd_gxm_ops = external dso_local global %struct.meson_afbcd_ops, align 4
@meson_afbcd_g12a_ops = external dso_local global %struct.meson_afbcd_ops, align 4
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"meson_drm_platform_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 534, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 538, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"dt_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 517, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"meson_drv_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 530, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"connectors_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 446, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 473, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 488, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"meson_drv_master_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 394, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 428, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 187, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"meson_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 94, i32 32 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 210, i32 53 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 218, i32 59 }
@___asan_gen_.91 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"meson_regmap_config\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 124, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 230, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 233, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"meson_drm_soc_attrs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 162, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"meson_mode_config_funcs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 58, i32 43 }
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"meson_mode_config_helpers\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 64, i32 50 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 317, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 102, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 103, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 104, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 92, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 169, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"meson_drm_gxbb_data\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 499, i32 36 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"meson_drm_gxl_data\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 503, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"meson_drm_gxm_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 507, i32 36 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"meson_drm_g12a_data\00", align 1
@___asan_gen_.147 = private constant [37 x i8] c"../drivers/gpu/drm/meson/meson_drv.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 512, i32 36 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_meson_drm_platform_driver_exit, ptr @__initcall__kmod_meson_drm__319_544_meson_drm_platform_driver_init6, ptr @meson_drm_platform_driver_exit, ptr @meson_drv_bind_master._entry, ptr @meson_drv_bind_master._entry.15, ptr @meson_drv_bind_master._entry.18, ptr @meson_drv_bind_master._entry_ptr, ptr @meson_drv_bind_master._entry_ptr.17, ptr @meson_drv_bind_master._entry_ptr.20, ptr @meson_drv_probe._entry, ptr @meson_drv_probe._entry_ptr, ptr @meson_drm_platform_driver, ptr @.str, ptr @dt_match, ptr @meson_drv_pm_ops, ptr @connectors_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @meson_drv_master_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @meson_driver, ptr @.str.12, ptr @.str.13, ptr @meson_drv_bind_master._key, ptr @meson_regmap_config, ptr @.str.14, ptr @.str.16, ptr @meson_drm_soc_attrs, ptr @meson_mode_config_funcs, ptr @meson_mode_config_helpers, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @fops, ptr @.str.24, ptr @.compoundliteral, ptr @meson_drm_gxbb_data, ptr @meson_drm_gxl_data, ptr @meson_drm_gxm_data, ptr @meson_drm_g12a_data], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drv_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connectors_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drv_master_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drv_bind_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drv_bind_master._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drv_bind_master._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drm_soc_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drv_bind_master._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drm_gxbb_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drm_gxl_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drm_gxm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_drm_g12a_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_drm_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_drm_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_drm_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_drm_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #5
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_next_endpoint(ptr noundef %2, ptr noundef null) #5
  %cmp.not61 = icmp eq ptr %call, null
  br i1 %cmp.not61, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.063 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %ep.062 = phi ptr [ %call, %for.body.lr.ph ], [ %call18, %for.inc.for.body_crit_edge ]
  %call1 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %ep.062) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %call2 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %call1) #5
  br i1 %call2, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  call void @of_node_put(ptr noundef %call1) #5
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call ptr @of_match_node(ptr noundef nonnull @connectors_match, ptr noundef nonnull %call1) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %count.063, 1
  call void @of_node_put(ptr noundef nonnull %call1) #5
  br label %for.inc

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_drv_probe.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_drv_probe, %if.then11)) #5
          to label %do.end [label %if.then11], !srcloc !96

if.then11:                                        ; preds = %do.body
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.dev_name.exit_crit_edge

if.then11.dev_name.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then11.dev_name.exit_crit_edge
  %retval.0.i59 = phi ptr [ %6, %if.end.i ], [ %4, %if.then11.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_drv_probe.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %2, ptr noundef nonnull %call1, ptr noundef %retval.0.i59) #5
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  call void @component_match_add_release(ptr noundef %dev, ptr noundef nonnull %match, ptr noundef null, ptr noundef nonnull @compare_of, ptr noundef nonnull %call1) #5
  call void @of_node_put(ptr noundef nonnull %call1) #5
  %inc17 = add i32 %count.063, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then5, %if.then
  %count.1 = phi i32 [ %inc, %if.then5 ], [ %inc17, %do.end ], [ %count.063, %if.then ]
  %call18 = call ptr @of_graph_get_next_endpoint(ptr noundef %2, ptr noundef nonnull %ep.062) #5
  %cmp.not = icmp eq ptr %call18, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool19.not = icmp eq i32 %count.1, 0
  br i1 %tobool19.not, label %for.end.cleanup_crit_edge, label %land.lhs.true

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  %7 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %match, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %if.then21, label %do.end29.critedge

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = call fastcc i32 @meson_drv_bind_master(ptr noundef %dev, i1 noundef zeroext false)
  br label %cleanup

do.end29.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %count.1) #8
  %9 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %match, align 4
  %call32 = call i32 @component_master_add_with_match(ptr noundef %dev, ptr noundef nonnull @meson_drv_master_ops, ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end29.critedge, %if.then21, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %do.end29.critedge ], [ %call23, %if.then21 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_drv_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drm = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #5
  %4 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm, align 4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef %data) #5
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %3, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_drv_bind_master(ptr noundef %dev, i1 noundef zeroext %has_components) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %1, ptr noundef null) #5
  %cmp.not8.i = icmp eq ptr %call.i, null
  br i1 %cmp.not8.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ep.09.i = phi ptr [ %call3.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call1.i = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %ep.09.i) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.inc.i, label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef nonnull %ep.09.i) #5
  %cmp.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %call1 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @meson_driver, ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call.i280 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 448, i32 noundef 3520) #5
  %tobool10.not = icmp eq ptr %call.i280, null
  br i1 %tobool10.not, label %if.end8.free_drm_crit_edge, label %if.end12

if.end8.free_drm_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end12:                                         ; preds = %if.end8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call4, i32 0, i32 5
  %5 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i280, ptr %dev_private, align 4
  %drm13 = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 10
  %6 = ptrtoint ptr %drm13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %drm13, align 4
  %7 = ptrtoint ptr %call.i280 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call.i280, align 8
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call1, align 4
  %compat15 = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 1
  %10 = ptrtoint ptr %compat15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %compat15, align 4
  %afbcd_ops = getelementptr inbounds %struct.meson_drm_match_data, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %afbcd_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %afbcd_ops, align 4
  %afbcd = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 18
  %13 = ptrtoint ptr %afbcd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %afbcd, align 8
  %call16 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef nonnull @.str.12) #5
  %cmp.i281 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i281, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call16 to i32
  br label %free_drm

if.end20:                                         ; preds = %if.end12
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 2
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16, ptr %io_base, align 8
  %call21 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.13) #5
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.free_drm_crit_edge, label %if.end24

if.end20.free_drm_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end24:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call21, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call21, i32 0, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %19
  %call26 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %17, i32 noundef %add.i) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end24.free_drm_crit_edge, label %if.end29

if.end24.free_drm_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end29:                                         ; preds = %if.end24
  %call31 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %call26, ptr noundef nonnull @meson_regmap_config, ptr noundef nonnull @meson_drv_bind_master._key, ptr noundef nonnull @.str.14) #5
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 3
  %20 = ptrtoint ptr %hhi to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call31, ptr %hhi, align 4
  %cmp.i282 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  %21 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hhi, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %free_drm

if.end41:                                         ; preds = %if.end29
  %call42 = tail call ptr @meson_canvas_get(ptr noundef %dev) #5
  %canvas = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 5
  %24 = ptrtoint ptr %canvas to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call42, ptr %canvas, align 4
  %cmp.i283 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call42 to i32
  br label %free_drm

if.end48:                                         ; preds = %if.end41
  %canvas_id_osd1 = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 6
  %call50 = tail call i32 @meson_canvas_alloc(ptr noundef %call42, ptr noundef %canvas_id_osd1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.free_drm_crit_edge

if.end48.free_drm_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end53:                                         ; preds = %if.end48
  %26 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %canvas, align 4
  %canvas_id_vd1_0 = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 7
  %call55 = tail call i32 @meson_canvas_alloc(ptr noundef %27, ptr noundef %canvas_id_vd1_0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  %28 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %canvas, align 4
  br i1 %tobool56.not, label %if.end61, label %if.then57

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %canvas_id_osd1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %canvas_id_osd1, align 8
  %call60 = tail call i32 @meson_canvas_free(ptr noundef %29, i8 noundef zeroext %31) #5
  br label %free_drm

if.end61:                                         ; preds = %if.end53
  %canvas_id_vd1_1 = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 8
  %call63 = tail call i32 @meson_canvas_alloc(ptr noundef %29, ptr noundef %canvas_id_vd1_1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  %32 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %canvas, align 4
  br i1 %tobool64.not, label %if.end72, label %if.then65

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %canvas_id_osd1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %canvas_id_osd1, align 8
  %call68 = tail call i32 @meson_canvas_free(ptr noundef %33, i8 noundef zeroext %35) #5
  %36 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %canvas, align 4
  %38 = ptrtoint ptr %canvas_id_vd1_0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %canvas_id_vd1_0, align 1
  %call71 = tail call i32 @meson_canvas_free(ptr noundef %37, i8 noundef zeroext %39) #5
  br label %free_drm

if.end72:                                         ; preds = %if.end61
  %canvas_id_vd1_2 = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 9
  %call74 = tail call i32 @meson_canvas_alloc(ptr noundef %33, ptr noundef %canvas_id_vd1_2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end86, label %if.then76

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %canvas, align 4
  %42 = ptrtoint ptr %canvas_id_osd1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %canvas_id_osd1, align 8
  %call79 = tail call i32 @meson_canvas_free(ptr noundef %41, i8 noundef zeroext %43) #5
  %44 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %canvas, align 4
  %46 = ptrtoint ptr %canvas_id_vd1_0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %canvas_id_vd1_0, align 1
  %call82 = tail call i32 @meson_canvas_free(ptr noundef %45, i8 noundef zeroext %47) #5
  %48 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %canvas, align 4
  %50 = ptrtoint ptr %canvas_id_vd1_1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %canvas_id_vd1_1, align 2
  %call85 = tail call i32 @meson_canvas_free(ptr noundef %49, i8 noundef zeroext %51) #5
  br label %free_drm

if.end86:                                         ; preds = %if.end72
  %call87 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #5
  %vsync_irq = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 4
  %52 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call87, ptr %vsync_irq, align 8
  %call88 = tail call i32 @drm_vblank_init(ptr noundef %call4, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %for.body, label %if.end86.free_drm_crit_edge

if.end86.free_drm_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

for.body:                                         ; preds = %if.end86
  %call92 = tail call ptr @soc_device_match(ptr noundef nonnull @.compoundliteral) #5
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %for.body.for.end_crit_edge, label %if.then94

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then94:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %limits96 = getelementptr inbounds %struct.meson_drm, ptr %call.i280, i32 0, i32 14
  %53 = ptrtoint ptr %limits96 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @meson_drm_soc_attrs, ptr %limits96, align 4
  br label %for.end

for.end:                                          ; preds = %if.then94, %for.body.for.end_crit_edge
  %call.i284 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @meson_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %tobool99.not = icmp eq i32 %call.i284, 0
  br i1 %tobool99.not, label %if.end101, label %for.end.free_drm_crit_edge

for.end.free_drm_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end101:                                        ; preds = %for.end
  %call102 = tail call i32 @drmm_mode_config_init(ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.free_drm_crit_edge

if.end101.free_drm_crit_edge:                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end105:                                        ; preds = %if.end101
  %max_width = getelementptr inbounds %struct.drm_device, ptr %call4, i32 0, i32 30, i32 25
  %54 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3840, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %call4, i32 0, i32 30, i32 26
  %55 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2160, ptr %max_height, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %call4, i32 0, i32 30, i32 27
  %56 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @meson_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %call4, i32 0, i32 30, i32 103
  %57 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @meson_mode_config_helpers, ptr %helper_private, align 4
  tail call fastcc void @meson_vpu_init(ptr noundef nonnull %call.i280)
  tail call void @meson_venc_init(ptr noundef nonnull %call.i280) #5
  tail call void @meson_vpp_init(ptr noundef nonnull %call.i280) #5
  tail call void @meson_viu_init(ptr noundef nonnull %call.i280) #5
  %58 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %afbcd, align 8
  %tobool111.not = icmp eq ptr %59, null
  br i1 %tobool111.not, label %if.end105.if.end119_crit_edge, label %if.then112

if.end105.if.end119_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then112:                                       ; preds = %if.end105
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call115 = tail call i32 %61(ptr noundef nonnull %call.i280) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then112.if.end119_crit_edge, label %if.then112.cleanup_crit_edge

if.then112.cleanup_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then112.if.end119_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.end119:                                        ; preds = %if.then112.if.end119_crit_edge, %if.end105.if.end119_crit_edge
  %call120 = tail call i32 @meson_encoder_cvbs_init(ptr noundef nonnull %call.i280) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end119.free_drm_crit_edge

if.end119.free_drm_crit_edge:                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end123:                                        ; preds = %if.end119
  br i1 %has_components, label %if.then125, label %if.end123.if.end135_crit_edge

if.end123.if.end135_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

if.then125:                                       ; preds = %if.end123
  %dev126 = getelementptr inbounds %struct.drm_device, ptr %call4, i32 0, i32 2
  %62 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev126, align 4
  %call127 = tail call i32 @component_bind_all(ptr noundef %63, ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then125.if.end135_crit_edge, label %do.end132

if.then125.if.end135_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.end132:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.19) #8
  br label %free_drm

if.end135:                                        ; preds = %if.then125.if.end135_crit_edge, %if.end123.if.end135_crit_edge
  %call136 = tail call i32 @meson_encoder_hdmi_init(ptr noundef nonnull %call.i280) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.free_drm_crit_edge

if.end135.free_drm_crit_edge:                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end139:                                        ; preds = %if.end135
  %call140 = tail call i32 @meson_plane_create(ptr noundef nonnull %call.i280) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.free_drm_crit_edge

if.end139.free_drm_crit_edge:                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end143:                                        ; preds = %if.end139
  %call144 = tail call i32 @meson_overlay_create(ptr noundef nonnull %call.i280) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end143.free_drm_crit_edge

if.end143.free_drm_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end147:                                        ; preds = %if.end143
  %call148 = tail call i32 @meson_crtc_create(ptr noundef nonnull %call.i280) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.free_drm_crit_edge

if.end147.free_drm_crit_edge:                     ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end151:                                        ; preds = %if.end147
  %66 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vsync_irq, align 8
  %driver = getelementptr inbounds %struct.drm_device, ptr %call4, i32 0, i32 4
  %68 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %69, i32 0, i32 21
  %70 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name, align 4
  %call.i285 = tail call i32 @request_threaded_irq(i32 noundef %67, ptr noundef nonnull @meson_irq, ptr noundef null, i32 noundef 0, ptr noundef %71, ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %tobool154.not = icmp eq i32 %call.i285, 0
  br i1 %tobool154.not, label %if.end156, label %if.end151.free_drm_crit_edge

if.end151.free_drm_crit_edge:                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end156:                                        ; preds = %if.end151
  tail call void @drm_mode_config_reset(ptr noundef %call4) #5
  tail call void @drm_kms_helper_poll_init(ptr noundef %call4) #5
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i280, ptr %driver_data.i.i, align 4
  %call157 = tail call i32 @drm_dev_register(ptr noundef %call4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %uninstall_irq

if.end160:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_fbdev_generic_setup(ptr noundef %call4, i32 noundef 32) #5
  br label %cleanup

uninstall_irq:                                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vsync_irq, align 8
  %call162 = tail call ptr @free_irq(i32 noundef %74, ptr noundef %call4) #5
  br label %free_drm

free_drm:                                         ; preds = %uninstall_irq, %if.end151.free_drm_crit_edge, %if.end147.free_drm_crit_edge, %if.end143.free_drm_crit_edge, %if.end139.free_drm_crit_edge, %if.end135.free_drm_crit_edge, %do.end132, %if.end119.free_drm_crit_edge, %if.end101.free_drm_crit_edge, %for.end.free_drm_crit_edge, %if.end86.free_drm_crit_edge, %if.then76, %if.then65, %if.then57, %if.end48.free_drm_crit_edge, %if.then45, %do.end37, %if.end24.free_drm_crit_edge, %if.end20.free_drm_crit_edge, %if.then18, %if.end8.free_drm_crit_edge
  %ret.0 = phi i32 [ %14, %if.then18 ], [ %23, %do.end37 ], [ %25, %if.then45 ], [ %call50, %if.end48.free_drm_crit_edge ], [ %call55, %if.then57 ], [ %call63, %if.then65 ], [ %call74, %if.then76 ], [ %call88, %if.end86.free_drm_crit_edge ], [ %call.i284, %for.end.free_drm_crit_edge ], [ %call102, %if.end101.free_drm_crit_edge ], [ %call120, %if.end119.free_drm_crit_edge ], [ %call127, %do.end132 ], [ %call136, %if.end135.free_drm_crit_edge ], [ %call140, %if.end139.free_drm_crit_edge ], [ %call144, %if.end143.free_drm_crit_edge ], [ %call148, %if.end147.free_drm_crit_edge ], [ %call.i285, %if.end151.free_drm_crit_edge ], [ %call157, %uninstall_irq ], [ -12, %if.end8.free_drm_crit_edge ], [ -22, %if.end20.free_drm_crit_edge ], [ -99, %if.end24.free_drm_crit_edge ]
  tail call void @drm_dev_put(ptr noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %free_drm, %if.end160, %if.then112.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %ret.0, %free_drm ], [ 0, %if.end160 ], [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ %call115, %if.then112.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @meson_canvas_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_canvas_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_canvas_free(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_vpu_init(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 40512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8448) #5, !srcloc !97
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 40548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 256) #5, !srcloc !97
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 40564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 36864) #5, !srcloc !97
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 40584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 512) #5, !srcloc !97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_venc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_vpp_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_viu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_encoder_cvbs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_encoder_hdmi_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_plane_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_overlay_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_crtc_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irq(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 28092
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !98
  tail call void @meson_crtc_irq(ptr noundef %1) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dumb_create(ptr noundef %file, ptr noundef %dev, ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpp, align 8
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 7
  %div12 = lshr i32 %sub, 3
  %add1 = add nuw nsw i32 %div12, 63
  %and = and i32 %add1, 1073741760
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %pitch, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 8
  %mul3 = mul i32 %and, %6
  %add4 = add i32 %mul3, 4095
  %and5 = and i32 %add4, -4096
  %conv = zext i32 %and5 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size, align 8
  %call = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %file, ptr noundef %dev, ptr noundef %args) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_crtc_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_drv_bind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @meson_drv_bind_master(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_drv_unbind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm1 = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm1, align 4
  %canvas = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %canvas, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %canvas_id_osd1 = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %canvas_id_osd1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %canvas_id_osd1, align 8
  %call3 = tail call i32 @meson_canvas_free(ptr noundef nonnull %5, i8 noundef zeroext %7) #5
  %8 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %canvas, align 4
  %canvas_id_vd1_0 = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %canvas_id_vd1_0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %canvas_id_vd1_0, align 1
  %call5 = tail call i32 @meson_canvas_free(ptr noundef %9, i8 noundef zeroext %11) #5
  %12 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %canvas, align 4
  %canvas_id_vd1_1 = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %canvas_id_vd1_1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %canvas_id_vd1_1, align 2
  %call7 = tail call i32 @meson_canvas_free(ptr noundef %13, i8 noundef zeroext %15) #5
  %16 = ptrtoint ptr %canvas to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %canvas, align 4
  %canvas_id_vd1_2 = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %canvas_id_vd1_2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %canvas_id_vd1_2, align 1
  %call9 = tail call i32 @meson_canvas_free(ptr noundef %17, i8 noundef zeroext %19) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_dev_unregister(ptr noundef %3) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #5
  tail call void @drm_atomic_helper_shutdown(ptr noundef %3) #5
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %3) #5
  %vsync_irq = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vsync_irq, align 8
  %call10 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %3) #5
  tail call void @drm_dev_put(ptr noundef %3) #5
  %afbcd = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %afbcd, align 8
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reset = getelementptr inbounds %struct.meson_afbcd_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reset, align 4
  %call15 = tail call i32 %25(ptr noundef %1) #5
  tail call void @meson_rdma_free(ptr noundef %1) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_rdma_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_drv_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drm = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_drv_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_base.i = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 40512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8448) #5, !srcloc !97
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 40548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 256) #5, !srcloc !97
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 40564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 36864) #5, !srcloc !97
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %9, i32 40584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 512) #5, !srcloc !97
  tail call void @meson_venc_init(ptr noundef nonnull %1) #5
  tail call void @meson_vpp_init(ptr noundef nonnull %1) #5
  tail call void @meson_viu_init(ptr noundef nonnull %1) #5
  %afbcd = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %afbcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %afbcd, align 8
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call5 = tail call i32 %13(ptr noundef nonnull %1) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %drm = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drm, align 4
  %call7 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_meson_drm__319_544_meson_drm_platform_driver_init6, !1, !"__initcall__kmod_meson_drm__319_544_meson_drm_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 544, i32 1}
!2 = !{ptr @__exitcall_meson_drm_platform_driver_exit, !1, !"__exitcall_meson_drm_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author320, !4, !"__UNIQUE_ID_author320", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 546, i32 1}
!5 = !{ptr @__UNIQUE_ID_author321, !6, !"__UNIQUE_ID_author321", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 547, i32 1}
!7 = !{ptr @__UNIQUE_ID_description322, !8, !"__UNIQUE_ID_description322", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 548, i32 1}
!9 = !{ptr @__UNIQUE_ID_file323, !10, !"__UNIQUE_ID_file323", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 549, i32 1}
!11 = !{ptr @__UNIQUE_ID_license324, !10, !"__UNIQUE_ID_license324", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 538, i32 11}
!14 = !{ptr @meson_drm_platform_driver, !15, !"meson_drm_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 534, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 473, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @meson_drv_probe.__UNIQUE_ID_ddebug318, !17, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 488, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @meson_drv_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @meson_drv_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @connectors_match, !29, !"connectors_match", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 446, i32 34}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 428, i32 2}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 187, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @meson_drv_bind_master._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @meson_drv_bind_master._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 210, i32 53}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 218, i32 59}
!42 = !{ptr @meson_drv_bind_master._key, !43, !"_key", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 230, i32 14}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 233, i32 3}
!47 = !{ptr @meson_drv_bind_master._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @meson_drv_bind_master._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 317, i32 4}
!51 = !{ptr @meson_drv_bind_master._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @meson_drv_bind_master._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 102, i32 12}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 103, i32 12}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 104, i32 12}
!59 = !{ptr @meson_driver, !60, !"meson_driver", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 94, i32 32}
!61 = !{ptr @fops, !62, !"fops", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 92, i32 1}
!63 = !{ptr @meson_regmap_config, !64, !"meson_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 124, i32 29}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 169, i32 16}
!67 = !{ptr @meson_drm_soc_attrs, !68, !"meson_drm_soc_attrs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 162, i32 40}
!69 = !{ptr @meson_mode_config_funcs, !70, !"meson_mode_config_funcs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 58, i32 43}
!71 = !{ptr @meson_mode_config_helpers, !72, !"meson_mode_config_helpers", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 64, i32 50}
!73 = !{ptr @meson_drv_master_ops, !74, !"meson_drv_master_ops", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 394, i32 42}
!75 = !{ptr @dt_match, !76, !"dt_match", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 517, i32 34}
!77 = !{ptr @meson_drm_gxbb_data, !78, !"meson_drm_gxbb_data", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 499, i32 36}
!79 = !{ptr @meson_drm_gxl_data, !80, !"meson_drm_gxl_data", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 503, i32 36}
!81 = !{ptr @meson_drm_gxm_data, !82, !"meson_drm_gxm_data", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 507, i32 36}
!83 = !{ptr @meson_drm_g12a_data, !84, !"meson_drm_g12a_data", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 512, i32 36}
!85 = !{ptr @meson_drv_pm_ops, !86, !"meson_drv_pm_ops", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/meson/meson_drv.c", i32 530, i32 32}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2148969357, i64 2148969362, i64 2148969375, i64 2148969419, i64 2148969453, i64 2148969474}
!97 = !{i64 6915822}
!98 = !{i64 6916240}
