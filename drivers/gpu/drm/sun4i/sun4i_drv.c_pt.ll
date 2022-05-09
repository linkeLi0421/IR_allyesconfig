; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.endpoint_list = type { %struct.anon.84 }
%struct.anon.84 = type { %union.anon.85, [16 x ptr] }
%union.anon.85 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.sun4i_drv = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_sun4i_drm__317_444_sun4i_drv_platform_driver_init6 = internal global ptr @sun4i_drv_platform_driver_init, section ".initcall6.init", align 4
@sun4i_drv_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_drv_probe, ptr @sun4i_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_drv_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_drv_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_drv_platform_driver_exit = internal global ptr @sun4i_drv_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author318 = internal constant [70 x i8] c"sun4i_drm.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [66 x i8] c"sun4i_drm.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [66 x i8] c"sun4i_drm.description=Allwinner A10 Display Engine DRM/KMS Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [47 x i8] c"sun4i_drm.file=drivers/gpu/drm/sun4i/sun4i-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [22 x i8] c"sun4i_drm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-drm\00", [22 x i8] zeroinitializer }, align 32
@sun4i_drv_of_table = internal constant { [16 x %struct.of_device_id], [768 x i8] } { [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31s-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [768 x i8] zeroinitializer }, align 32
@sun4i_drv_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sun4i_drv_drm_sys_suspend, ptr @sun4i_drv_drm_sys_resume, ptr @sun4i_drv_drm_sys_suspend, ptr @sun4i_drv_drm_sys_resume, ptr @sun4i_drv_drm_sys_suspend, ptr @sun4i_drv_drm_sys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allwinner,pipelines\00", [44 x i8] zeroinitializer }, align 32
@sun4i_drv_master_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @sun4i_drv_bind, ptr @sun4i_drv_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Adding component %pOF\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun4i-a10-display-frontend\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun5i-a13-display-frontend\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun6i-a31-display-frontend\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun7i-a20-display-frontend\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun8i-a23-display-frontend\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun8i-a33-display-frontend\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allwinner,sun9i-a80-display-frontend\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi-connector\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"allwinner,sun9i-a80-deu\00", [40 x i8] zeroinitializer }, align 32
@sun4i_frontend_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Comparing of node %pOF with %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No output to bind on port %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error retrieving the output node\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TCON output endpoint is TCON TOP... skipping\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't parse endpoint\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Endpoint is our panel... skipping\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_tcon_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@sun8i_tcon_top_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@sun4i_drv_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_sun4i_gem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.26, ptr @.str.27, i32 19, ptr null, i32 0, ptr @sun4i_drv_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sun4i_drv_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 83, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't claim our memory region\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun4i_drv_bind\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/sun4i/sun4i_drv.c\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_drv_bind._entry_ptr = internal global ptr @sun4i_drv_bind._entry, section ".printk_index", align 4
@sun4i_drv_bind._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.20, i32 91, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't bind all pipelines components\0A\00", [56 x i8] zeroinitializer }, align 32
@sun4i_drv_bind._entry_ptr.25 = internal global ptr @sun4i_drv_bind._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Allwinner sun4i Display Engine\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20150629\00", [23 x i8] zeroinitializer }, align 32
@sun4i_drv_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"sun4i_drv_platform_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 435, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 439, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"sun4i_drv_of_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 415, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"sun4i_drv_drm_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 364, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 380, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"sun4i_drv_master_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 143, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 331, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 155, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 156, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 157, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 158, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 159, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 160, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 161, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 150, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 166, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 206, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 246, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 253, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 265, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 279, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 285, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"sun4i_drv_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 44, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 83, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 91, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 50, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 51, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"sun4i_drv_fops\00", align 1
@___asan_gen_.128 = private constant [37 x i8] c"../drivers/gpu/drm/sun4i/sun4i_drv.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 42, i32 1 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_sun4i_drv_platform_driver_exit, ptr @__initcall__kmod_sun4i_drm__317_444_sun4i_drv_platform_driver_init6, ptr @sun4i_drv_bind._entry, ptr @sun4i_drv_bind._entry.23, ptr @sun4i_drv_bind._entry_ptr, ptr @sun4i_drv_bind._entry_ptr.25, ptr @sun4i_drv_platform_driver_exit, ptr @sun4i_drv_platform_driver, ptr @.str, ptr @sun4i_drv_of_table, ptr @sun4i_drv_drm_pm_ops, ptr @.str.1, ptr @sun4i_drv_master_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @sun4i_drv_driver, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @sun4i_drv_fops], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_of_table to i32), i32 3136, i32 3904, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_master_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_bind._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_drv_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_drv_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_drv_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_drv_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_drv_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %match = alloca ptr, align 4
  %list = alloca %struct.endpoint_list, align 4
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
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %list) #5
  %3 = getelementptr inbounds i8, ptr %list, i32 20
  %4 = call ptr @memset(ptr %3, i32 255, i32 64)
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %list, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %list, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.__kfifo, ptr %list, i32 0, i32 2
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.__kfifo, ptr %list, i32 0, i32 3
  %8 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.anon.84, ptr %list, i32 0, i32 1
  %data = getelementptr inbounds %struct.__kfifo, ptr %list, i32 0, i32 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %10 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i116 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool.not.i117 = icmp eq i32 %call.i116, 0
  br i1 %tobool.not.i117, label %entry.of_parse_phandle.exit_crit_edge, label %entry.of_parse_phandle.exit.thread_crit_edge

entry.of_parse_phandle.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit.thread

entry.of_parse_phandle.exit_crit_edge:            ; preds = %entry
  br label %of_parse_phandle.exit

of_parse_phandle.exit.thread:                     ; preds = %for.inc.of_parse_phandle.exit.thread_crit_edge, %entry.of_parse_phandle.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %for.inc.of_parse_phandle.exit_crit_edge, %entry.of_parse_phandle.exit_crit_edge
  %i.0118 = phi i32 [ %inc26, %for.inc.of_parse_phandle.exit_crit_edge ], [ 0, %entry.of_parse_phandle.exit_crit_edge ]
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.else

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %of_parse_phandle.exit
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %list, align 4
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  %sub = sub i32 %14, %16
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %18)
  %cmp.not = icmp ugt i32 %sub, %18
  br i1 %cmp.not, label %if.else.for.inc_crit_edge, label %if.then14

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %18, %14
  %arrayidx = getelementptr ptr, ptr %buf, i32 %and
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %12, ptr %arrayidx, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !85
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %list, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %list, align 4
  br label %for.inc

cleanup:                                          ; preds = %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %list, align 4
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp37.not119 = icmp eq i32 %23, %25
  br i1 %cmp37.not119, label %cleanup.cleanup73_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

cleanup.cleanup73_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup73

for.inc:                                          ; preds = %if.then14, %if.else.for.inc_crit_edge
  %inc26 = add i32 %i.0118, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %26 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %inc26, ptr noundef nonnull %args.i) #5
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.of_parse_phandle.exit_crit_edge, label %for.inc.of_parse_phandle.exit.thread_crit_edge

for.inc.of_parse_phandle.exit.thread_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit.thread

for.inc.of_parse_phandle.exit_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit

while.body:                                       ; preds = %sun4i_drv_add_endpoints.exit.while.body_crit_edge, %cleanup.while.body_crit_edge
  %27 = phi i32 [ %37, %sun4i_drv_add_endpoints.exit.while.body_crit_edge ], [ %25, %cleanup.while.body_crit_edge ]
  %count.0120 = phi i32 [ %add, %sun4i_drv_add_endpoints.exit.while.body_crit_edge ], [ 0, %cleanup.while.body_crit_edge ]
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask, align 4
  %and48 = and i32 %29, %27
  %arrayidx49 = getelementptr ptr, ptr %buf, i32 %and48
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx49, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !86
  %32 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out, align 4
  %inc57 = add i32 %33, 1
  store i32 %inc57, ptr %out, align 4
  %call.i107 = call fastcc zeroext i1 @sun4i_drv_node_is_frontend(ptr noundef %31) #5
  br i1 %call.i107, label %while.body.if.end.i108_crit_edge, label %land.lhs.true.i

while.body.if.end.i108_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i108

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = call zeroext i1 @of_device_is_available(ptr noundef %31) #5
  br i1 %call1.i, label %land.lhs.true.i.if.end.i108_crit_edge, label %land.lhs.true.i.sun4i_drv_add_endpoints.exit_crit_edge

land.lhs.true.i.sun4i_drv_add_endpoints.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun4i_drv_add_endpoints.exit

land.lhs.true.i.if.end.i108_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i108

if.end.i108:                                      ; preds = %land.lhs.true.i.if.end.i108_crit_edge, %while.body.if.end.i108_crit_edge
  %call.i.i = call i32 @of_device_is_compatible(ptr noundef %31, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not.i, label %if.end4.i, label %if.end.i108.sun4i_drv_add_endpoints.exit_crit_edge

if.end.i108.sun4i_drv_add_endpoints.exit_crit_edge: ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun4i_drv_add_endpoints.exit

if.end4.i:                                        ; preds = %if.end.i108
  %call5.i = call fastcc zeroext i1 @sun4i_drv_node_is_frontend(ptr noundef %31) #5
  br i1 %call5.i, label %if.end4.i.lor.lhs.false7.i_crit_edge, label %lor.lhs.false.i

if.end4.i.lor.lhs.false7.i_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false7.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %call.i31.i = call i32 @of_device_is_compatible(ptr noundef %31, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.i32.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.i32.not.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %lor.lhs.false.i.lor.lhs.false7.i_crit_edge

lor.lhs.false.i.lor.lhs.false7.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false7.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i.lor.lhs.false7.i_crit_edge, %if.end4.i.lor.lhs.false7.i_crit_edge
  %call.i33.i = call ptr @of_match_node(ptr noundef nonnull @sun4i_frontend_of_table, ptr noundef %31) #5
  %tobool.i34.not.i = icmp eq ptr %call.i33.i, null
  br i1 %tobool.i34.not.i, label %lor.lhs.false7.i.if.end12.i_crit_edge, label %land.lhs.true9.i

lor.lhs.false7.i.if.end12.i_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

land.lhs.true9.i:                                 ; preds = %lor.lhs.false7.i
  %call10.i = call zeroext i1 @of_device_is_available(ptr noundef %31) #5
  br i1 %call10.i, label %land.lhs.true9.i.if.then11.i_crit_edge, label %land.lhs.true9.i.if.end12.i_crit_edge

land.lhs.true9.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

land.lhs.true9.i.if.then11.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true9.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %31) #5
  call void @drm_of_component_match_add(ptr noundef %dev, ptr noundef nonnull %match, ptr noundef nonnull @compare_of, ptr noundef %31) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %land.lhs.true9.i.if.end12.i_crit_edge, %lor.lhs.false7.i.if.end12.i_crit_edge
  %count.0.i = phi i32 [ 1, %if.then11.i ], [ 0, %land.lhs.true9.i.if.end12.i_crit_edge ], [ 0, %lor.lhs.false7.i.if.end12.i_crit_edge ]
  call fastcc void @sun4i_drv_traverse_endpoints(ptr noundef nonnull %list, ptr noundef %31, i32 noundef 1) #5
  %call.i35.i = call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef %31) #5
  %tobool.i36.not.i = icmp eq ptr %call.i35.i, null
  br i1 %tobool.i36.not.i, label %if.end12.i.sun4i_drv_add_endpoints.exit_crit_edge, label %if.then14.i

if.end12.i.sun4i_drv_add_endpoints.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun4i_drv_add_endpoints.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @sun4i_drv_traverse_endpoints(ptr noundef nonnull %list, ptr noundef %31, i32 noundef 3) #5
  call fastcc void @sun4i_drv_traverse_endpoints(ptr noundef nonnull %list, ptr noundef %31, i32 noundef 5) #5
  br label %sun4i_drv_add_endpoints.exit

sun4i_drv_add_endpoints.exit:                     ; preds = %if.then14.i, %if.end12.i.sun4i_drv_add_endpoints.exit_crit_edge, %if.end.i108.sun4i_drv_add_endpoints.exit_crit_edge, %land.lhs.true.i.sun4i_drv_add_endpoints.exit_crit_edge
  %retval.0.i109 = phi i32 [ 0, %land.lhs.true.i.sun4i_drv_add_endpoints.exit_crit_edge ], [ 0, %if.end.i108.sun4i_drv_add_endpoints.exit_crit_edge ], [ %count.0.i, %if.then14.i ], [ %count.0.i, %if.end12.i.sun4i_drv_add_endpoints.exit_crit_edge ]
  %add = add i32 %retval.0.i109, %count.0120
  %34 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %list, align 4
  %36 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %out, align 4
  %cmp37.not = icmp eq i32 %35, %37
  br i1 %cmp37.not, label %while.end, label %sun4i_drv_add_endpoints.exit.while.body_crit_edge

sun4i_drv_add_endpoints.exit.while.body_crit_edge: ; preds = %sun4i_drv_add_endpoints.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %sun4i_drv_add_endpoints.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  br i1 %phi.cmp, label %while.end.cleanup73_crit_edge, label %if.then69

while.end.cleanup73_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup73

if.then69:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %match, align 4
  %call71 = call i32 @component_master_add_with_match(ptr noundef %dev, ptr noundef nonnull @sun4i_drv_master_ops, ptr noundef %39) #5
  br label %cleanup73

cleanup73:                                        ; preds = %if.then69, %while.end.cleanup73_crit_edge, %cleanup.cleanup73_crit_edge
  %retval.0 = phi i32 [ %call71, %if.then69 ], [ 0, %while.end.cleanup73_crit_edge ], [ 0, %cleanup.cleanup73_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %list) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @sun4i_drv_master_ops) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sun4i_drv_node_is_frontend(ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.lor.end_crit_edge

lor.lhs.false3.lor.end_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.lor.end_crit_edge

lor.lhs.false6.lor.end_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.lor.end_crit_edge

lor.lhs.false9.lor.end_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.rhs, label %lor.lhs.false12.lor.end_crit_edge

lor.lhs.false12.lor.end_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16 = icmp ne i32 %call15, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false12.lor.end_crit_edge, %lor.lhs.false9.lor.end_crit_edge, %lor.lhs.false6.lor.end_crit_edge, %lor.lhs.false3.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %0 = phi i1 [ true, %lor.lhs.false12.lor.end_crit_edge ], [ true, %lor.lhs.false9.lor.end_crit_edge ], [ true, %lor.lhs.false6.lor.end_crit_edge ], [ true, %lor.lhs.false3.lor.end_crit_edge ], [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %tobool16, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef %data) #5
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %3, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun4i_drv_traverse_endpoints(ptr nocapture noundef %list, ptr noundef %node, i32 noundef %port_id) unnamed_addr #2 align 64 {
entry:
  %endpoint = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_graph_get_port_by_id(ptr noundef %node, i32 noundef %port_id) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %port_id) #5
  br label %cleanup40

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call, ptr noundef null) #5
  %cmp.not73 = icmp eq ptr %call1, null
  br i1 %cmp.not73, label %if.end.cleanup40_crit_edge, label %for.body.lr.ph

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %if.end
  %0 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint, i32 0, i32 1
  %1 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint, i32 0, i32 2
  %out = getelementptr inbounds %struct.__kfifo, ptr %list, i32 0, i32 1
  %mask = getelementptr inbounds %struct.__kfifo, ptr %list, i32 0, i32 2
  %buf = getelementptr inbounds %struct.anon.84, ptr %list, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ep.074 = phi ptr [ %call1, %for.body.lr.ph ], [ %call39, %for.inc.for.body_crit_edge ]
  %call2 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %ep.074) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #5
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %call.i = call ptr @of_match_node(ptr noundef nonnull @sun4i_tcon_of_table, ptr noundef %node) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end5.if.else_crit_edge, label %if.then7

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then7:                                         ; preds = %if.end5
  %call.i67 = call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef nonnull %call2) #5
  %tobool.i68.not = icmp eq ptr %call.i67, null
  br i1 %tobool.i68.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #5
  call void @of_node_put(ptr noundef nonnull %call2) #5
  br label %for.inc

if.end10:                                         ; preds = %if.then7
  %call.i69 = call ptr @of_match_node(ptr noundef nonnull @sun4i_tcon_of_table, ptr noundef %node) #5
  %tobool.not.i = icmp eq ptr %call.i69, null
  br i1 %tobool.not.i, label %if.end10.if.else_crit_edge, label %sun4i_drv_node_is_tcon_with_ch0.exit

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

sun4i_drv_node_is_tcon_with_ch0.exit:             ; preds = %if.end10
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i69, i32 0, i32 3
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.i.not = icmp eq i8 %5, 0
  br i1 %tobool1.i.not, label %sun4i_drv_node_is_tcon_with_ch0.exit.if.else_crit_edge, label %if.then12

sun4i_drv_node_is_tcon_with_ch0.exit.if.else_crit_edge: ; preds = %sun4i_drv_node_is_tcon_with_ch0.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then12:                                        ; preds = %sun4i_drv_node_is_tcon_with_ch0.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint) #5
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %endpoint, align 4, !annotation !88
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %0, align 4, !annotation !88
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !88
  %call13 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep.074, ptr noundef nonnull %endpoint) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then12.cleanup.thread_crit_edge

if.then12.cleanup.thread_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end16:                                         ; preds = %if.then12
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %if.end16.cleanup.thread_crit_edge, label %cleanup

if.end16.cleanup.thread_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end16.cleanup.thread_crit_edge, %if.then12.cleanup.thread_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %if.then12.cleanup.thread_crit_edge ], [ @.str.17, %if.end16.cleanup.thread_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %.str.16.sink) #5
  call void @of_node_put(ptr noundef nonnull %call2) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint) #5
  br label %for.inc

cleanup:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint) #5
  br label %if.else

if.else:                                          ; preds = %cleanup, %sun4i_drv_node_is_tcon_with_ch0.exit.if.else_crit_edge, %if.end10.if.else_crit_edge, %if.end5.if.else_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %list, align 4
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out, align 4
  %sub = sub i32 %12, %14
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %16)
  %cmp26.not = icmp ugt i32 %sub, %16
  br i1 %cmp26.not, label %if.else.for.inc_crit_edge, label %if.then29

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %16, %12
  %arrayidx = getelementptr ptr, ptr %buf, i32 %and
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2, ptr %arrayidx, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !89
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %list, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.else.for.inc_crit_edge, %cleanup.thread, %if.then9, %if.then4
  %call39 = call ptr @of_get_next_available_child(ptr noundef nonnull %call, ptr noundef nonnull %ep.074) #5
  %cmp.not = icmp eq ptr %call39, null
  br i1 %cmp.not, label %for.inc.cleanup40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup40

cleanup40:                                        ; preds = %for.inc.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_drv_bind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_dev_alloc(ptr noundef nonnull @sun4i_drv_driver, ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.free_drm_crit_edge, label %if.end5

if.end.free_drm_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_drm

if.end5:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %dev_private, align 4
  %frontend_list = getelementptr inbounds %struct.sun4i_drv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %frontend_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %frontend_list, ptr %frontend_list, align 4
  %prev.i = getelementptr inbounds %struct.sun4i_drv, ptr %call.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %frontend_list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i66 = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %prev.i66, align 4
  %tcon_list = getelementptr inbounds %struct.sun4i_drv, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %tcon_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %tcon_list, ptr %tcon_list, align 4
  %prev.i67 = getelementptr inbounds %struct.sun4i_drv, ptr %call.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tcon_list, ptr %prev.i67, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %call.i68 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %10, i32 noundef 0) #5
  %11 = zext i32 %call.i68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i68, label %do.end [
    i32 0, label %if.end5.if.end10_crit_edge
    i32 -19, label %if.end5.if.end10_crit_edge71
  ]

if.end5.if.end10_crit_edge71:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18) #8
  br label %free_drm

if.end10:                                         ; preds = %if.end5.if.end10_crit_edge, %if.end5.if.end10_crit_edge71
  %call.i69 = tail call i32 @drmm_mode_config_init(ptr noundef %call) #5
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev12, align 4
  %call13 = tail call i32 @component_bind_all(ptr noundef %15, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.24) #8
  br label %cleanup_mode_config

if.end20:                                         ; preds = %if.end10
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 19
  %18 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_crtc, align 4
  %call21 = tail call i32 @drm_vblank_init(ptr noundef %call, i32 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_mode_config_crit_edge

if.end20.cleanup_mode_config_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup_mode_config

if.end24:                                         ; preds = %if.end20
  %call.i70 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @sun4i_drv_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool26.not = icmp eq i32 %call.i70, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_mode_config_crit_edge

if.end24.cleanup_mode_config_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup_mode_config

if.end28:                                         ; preds = %if.end24
  tail call void @sun4i_framebuffer_init(ptr noundef %call) #5
  tail call void @drm_kms_helper_poll_init(ptr noundef %call) #5
  %call29 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %finish_poll

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 32) #5
  br label %cleanup

finish_poll:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call) #5
  br label %cleanup_mode_config

cleanup_mode_config:                              ; preds = %finish_poll, %if.end24.cleanup_mode_config_crit_edge, %if.end20.cleanup_mode_config_crit_edge, %do.end18
  %ret.0 = phi i32 [ %call13, %do.end18 ], [ %call21, %if.end20.cleanup_mode_config_crit_edge ], [ %call.i70, %if.end24.cleanup_mode_config_crit_edge ], [ %call29, %finish_poll ]
  tail call void @drm_mode_config_cleanup(ptr noundef %call) #5
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #5
  br label %free_drm

free_drm:                                         ; preds = %cleanup_mode_config, %do.end, %if.end.free_drm_crit_edge
  %ret.1 = phi i32 [ %call.i68, %do.end ], [ %ret.0, %cleanup_mode_config ], [ -12, %if.end.free_drm_crit_edge ]
  tail call void @drm_dev_put(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %free_drm, %if.end32, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.1, %free_drm ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_drv_unbind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #5
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %1) #5
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef null) #5
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #5
  tail call void @drm_dev_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_framebuffer_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_sun4i_gem_dumb_create(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #2 align 64 {
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
  %div5 = lshr i32 %sub, 3
  %add1 = add nuw nsw i32 %div5, 1
  %and = and i32 %add1, 1073741822
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %pitch, align 4
  %call = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #5
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
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_drv_drm_sys_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal i32 @sun4i_drv_drm_sys_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_sun4i_drm__317_444_sun4i_drv_platform_driver_init6, !1, !"__initcall__kmod_sun4i_drm__317_444_sun4i_drv_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 444, i32 1}
!2 = !{ptr @__exitcall_sun4i_drv_platform_driver_exit, !1, !"__exitcall_sun4i_drv_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author318, !4, !"__UNIQUE_ID_author318", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 446, i32 1}
!5 = !{ptr @__UNIQUE_ID_author319, !6, !"__UNIQUE_ID_author319", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 447, i32 1}
!7 = !{ptr @__UNIQUE_ID_description320, !8, !"__UNIQUE_ID_description320", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 448, i32 1}
!9 = !{ptr @__UNIQUE_ID_file321, !10, !"__UNIQUE_ID_file321", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 449, i32 1}
!11 = !{ptr @__UNIQUE_ID_license322, !10, !"__UNIQUE_ID_license322", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 439, i32 12}
!14 = !{ptr @sun4i_drv_platform_driver, !15, !"sun4i_drv_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 435, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 380, i32 9}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 331, i32 3}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 155, i32 39}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 156, i32 33}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 157, i32 33}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 158, i32 33}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 159, i32 33}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 160, i32 33}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 161, i32 33}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 150, i32 39}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 166, i32 39}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 206, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 246, i32 3}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 253, i32 4}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 265, i32 5}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 279, i32 6}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 285, i32 6}
!50 = !{ptr @sun4i_drv_master_ops, !51, !"sun4i_drv_master_ops", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 143, i32 42}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 83, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sun4i_drv_bind._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @sun4i_drv_bind._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 91, i32 3}
!62 = !{ptr @sun4i_drv_bind._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sun4i_drv_bind._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 50, i32 12}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 51, i32 12}
!68 = !{ptr @sun4i_drv_driver, !69, !"sun4i_drv_driver", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 44, i32 32}
!70 = !{ptr @sun4i_drv_fops, !71, !"sun4i_drv_fops", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 42, i32 1}
!72 = !{ptr @sun4i_drv_of_table, !73, !"sun4i_drv_of_table", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 415, i32 34}
!74 = !{ptr @sun4i_drv_drm_pm_ops, !75, !"sun4i_drv_drm_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sun4i/sun4i_drv.c", i32 364, i32 32}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2157144224}
!86 = !{i64 2157145740}
!87 = !{i8 0, i8 2}
!88 = !{!"auto-init"}
!89 = !{i64 2157136114}
