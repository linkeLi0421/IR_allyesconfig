; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_drm_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.component_master_ops = type { ptr, ptr }
%struct.mtk_mmsys_driver_data = type { ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
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
%struct.mtk_drm_private = type { ptr, ptr, i32, ptr, ptr, ptr, [32 x ptr], [32 x %struct.mtk_ddp_comp], ptr, ptr }
%struct.mtk_ddp_comp = type { ptr, i32, ptr, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.94, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.94 = type { i32, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.90, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.90 = type { [4 x i8] }

@mtk_drm_drivers = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @mtk_disp_aal_driver, ptr @mtk_disp_ccorr_driver, ptr @mtk_disp_color_driver, ptr @mtk_disp_gamma_driver, ptr @mtk_disp_ovl_driver, ptr @mtk_disp_rdma_driver, ptr @mtk_dpi_driver, ptr @mtk_drm_platform_driver, ptr @mtk_dsi_driver], [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_mediatek_drm__321_730_mtk_drm_init6 = internal global ptr @mtk_drm_init, section ".initcall6.init", align 4
@__exitcall_mtk_drm_exit = internal global ptr @mtk_drm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author322 = internal constant [51 x i8] c"mediatek_drm.author=YT SHEN <yt.shen@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [49 x i8] c"mediatek_drm.description=Mediatek SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [56 x i8] c"mediatek_drm.file=drivers/gpu/drm/mediatek/mediatek-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [28 x i8] c"mediatek_drm.license=GPL v2\00", section ".modinfo", align 1
@mtk_disp_aal_driver = external dso_local global %struct.platform_driver, align 4
@mtk_disp_ccorr_driver = external dso_local global %struct.platform_driver, align 4
@mtk_disp_color_driver = external dso_local global %struct.platform_driver, align 4
@mtk_disp_gamma_driver = external dso_local global %struct.platform_driver, align 4
@mtk_disp_ovl_driver = external dso_local global %struct.platform_driver, align 4
@mtk_disp_rdma_driver = external dso_local global %struct.platform_driver, align 4
@mtk_dpi_driver = external dso_local global %struct.platform_driver, align 4
@mtk_drm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_drm_probe, ptr @mtk_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_dsi_driver = external dso_local global %struct.platform_driver, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek-drm\00", [19 x i8] zeroinitializer }, align 32
@mtk_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_drm_sys_suspend, ptr @mtk_drm_sys_resume, ptr @mtk_drm_sys_suspend, ptr @mtk_drm_sys_resume, ptr @mtk_drm_sys_suspend, ptr @mtk_drm_sys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_drm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get MMSYS device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_drm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/mediatek/mtk_drm_drv.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_drm_probe._entry_ptr = internal global ptr @mtk_drm_probe._entry, section ".printk_index", align 4
@mtk_drm_of_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7623_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8167_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mmsys_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-mmsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_mmsys_driver_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@mtk_ddp_comp_dt_ids = internal constant { [48 x %struct.of_device_id], [2336 x i8] } { [48 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-aal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-aal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-aal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-aal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-ccorr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-ccorr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-ccorr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-dither\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-dither\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-gamma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-gamma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-gamma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-mutex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-od\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-ovl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-ovl-2l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-ovl-2l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-postmask\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-ufoe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-wdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 16 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 16 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 16 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 16 to ptr) }, %struct.of_device_id zeroinitializer], [2336 x i8] zeroinitializer }, align 32
@mtk_drm_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek_drm\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Skipping disabled component %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_drm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 595, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Skipping unknown component %pOF\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_drm_probe._entry_ptr.11 = internal global ptr @mtk_drm_probe._entry.8, section ".printk_index", align 4
@mtk_drm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 616, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adding component match for %pOF\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_drm_probe._entry_ptr.15 = internal global ptr @mtk_drm_probe._entry.12, section ".printk_index", align 4
@mtk_drm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to find disp-mutex node\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_drm_probe._entry_ptr.18 = internal global ptr @mtk_drm_probe._entry.16, section ".printk_index", align 4
@mtk_drm_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @mtk_drm_bind, ptr @mtk_drm_unbind }, [24 x i8] zeroinitializer }, align 32
@mt2701_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [36 x i8] } { %struct.mtk_mmsys_driver_data { ptr @mt2701_mtk_ddp_main, i32 5, ptr @mt2701_mtk_ddp_ext, i32 2, ptr null, i32 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mt7623_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [36 x i8] } { %struct.mtk_mmsys_driver_data { ptr @mt7623_mtk_ddp_main, i32 5, ptr @mt7623_mtk_ddp_ext, i32 2, ptr null, i32 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@mt2712_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [36 x i8] } { %struct.mtk_mmsys_driver_data { ptr @mt2712_mtk_ddp_main, i32 7, ptr @mt2712_mtk_ddp_ext, i32 7, ptr @mt2712_mtk_ddp_third, i32 3, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mt8167_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [36 x i8] } { %struct.mtk_mmsys_driver_data { ptr @mt8167_mtk_ddp_main, i32 8, ptr null, i32 0, ptr null, i32 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mt8173_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [36 x i8] } { %struct.mtk_mmsys_driver_data { ptr @mt8173_mtk_ddp_main, i32 8, ptr @mt8173_mtk_ddp_ext, i32 5, ptr null, i32 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mt8183_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [36 x i8] } { %struct.mtk_mmsys_driver_data { ptr @mt8183_mtk_ddp_main, i32 9, ptr @mt8183_mtk_ddp_ext, i32 3, ptr null, i32 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mt8192_mmsys_driver_data = internal constant { %struct.mtk_mmsys_driver_data, [36 x i8] } { %struct.mtk_mmsys_driver_data { ptr @mt8192_mtk_ddp_main, i32 10, ptr @mt8192_mtk_ddp_ext, i32 3, ptr null, i32 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mt2701_mtk_ddp_main = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 25, i32 4, i32 2, i32 9], [44 x i8] zeroinitializer }, align 32
@mt2701_mtk_ddp_ext = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 26, i32 7], [24 x i8] zeroinitializer }, align 32
@mt7623_mtk_ddp_main = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 25, i32 4, i32 2, i32 7], [44 x i8] zeroinitializer }, align 32
@mt7623_mtk_ddp_ext = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 26, i32 9], [24 x i8] zeroinitializer }, align 32
@mt2712_mtk_ddp_main = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16, i32 4, i32 0, i32 14, i32 25, i32 7, i32 22], [36 x i8] zeroinitializer }, align 32
@mt2712_mtk_ddp_ext = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 20, i32 5, i32 1, i32 15, i32 26, i32 8, i32 23], [36 x i8] zeroinitializer }, align 32
@mt2712_mtk_ddp_third = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 27, i32 12, i32 24], [20 x i8] zeroinitializer }, align 32
@mt8167_mtk_ddp_main = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 4, i32 3, i32 0, i32 13, i32 6, i32 25, i32 9], [32 x i8] zeroinitializer }, align 32
@mt8173_mtk_ddp_main = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 4, i32 0, i32 14, i32 25, i32 29, i32 9, i32 22], [32 x i8] zeroinitializer }, align 32
@mt8173_mtk_ddp_ext = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 20, i32 5, i32 13, i32 26, i32 7], [44 x i8] zeroinitializer }, align 32
@mt8183_mtk_ddp_main = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 16, i32 17, i32 25, i32 4, i32 3, i32 0, i32 13, i32 6, i32 9], [60 x i8] zeroinitializer }, align 32
@mt8183_mtk_ddp_ext = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 18, i32 26, i32 7], [20 x i8] zeroinitializer }, align 32
@mt8192_mtk_ddp_main = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 16, i32 17, i32 25, i32 4, i32 3, i32 0, i32 13, i32 21, i32 6, i32 9], [56 x i8] zeroinitializer }, align 32
@mt8192_mtk_ddp_ext = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 19, i32 28, i32 7], [20 x i8] zeroinitializer }, align 32
@mtk_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @mtk_drm_gem_prime_import, ptr @mtk_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @mtk_drm_gem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 19, ptr null, i32 0, ptr @mtk_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mediatek\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mediatek SoC DRM\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20150513\00", [23 x i8] zeroinitializer }, align 32
@mtk_drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@mtk_drm_kms_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Waiting for disp-mutex device %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_drm_kms_init\00", [47 x i8] zeroinitializer }, align 32
@mtk_drm_kms_init._entry_ptr = internal global ptr @mtk_drm_kms_init._entry, section ".printk_index", align 4
@mtk_drm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @mtk_drm_mode_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_drm_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, [24 x i8] zeroinitializer }, align 32
@mtk_drm_kms_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Need at least one OVL device\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_drm_kms_init._entry_ptr.26 = internal global ptr @mtk_drm_kms_init._entry.24, section ".printk_index", align 4
@mtk_drm_kms_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set DMA segment size\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_drm_kms_init._entry_ptr.29 = internal global ptr @mtk_drm_kms_init._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 5, i64 8, i64 9, i64 12, i64 15, i64 16]
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"mtk_drm_drivers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 706, i32 39 }
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"mtk_drm_platform_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 697, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 701, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"mtk_drm_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 694, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 559, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"mtk_drm_of_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 523, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"mtk_ddp_comp_dt_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 425, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 580, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 594, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 615, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 629, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"mtk_drm_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 420, i32 42 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"mt2701_mmsys_driver_data\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 180, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"mt7623_mmsys_driver_data\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 188, i32 43 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"mt2712_mmsys_driver_data\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 196, i32 43 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"mt8167_mmsys_driver_data\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 205, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant [25 x i8] c"mt8173_mmsys_driver_data\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 210, i32 43 }
@___asan_gen_.114 = private unnamed_addr constant [25 x i8] c"mt8183_mmsys_driver_data\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 217, i32 43 }
@___asan_gen_.117 = private unnamed_addr constant [25 x i8] c"mt8192_mmsys_driver_data\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 224, i32 43 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"mt2701_mtk_ddp_main\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 61, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"mt2701_mtk_ddp_ext\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 69, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"mt7623_mtk_ddp_main\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 74, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"mt7623_mtk_ddp_ext\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 82, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"mt2712_mtk_ddp_main\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 87, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [19 x i8] c"mt2712_mtk_ddp_ext\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 97, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"mt2712_mtk_ddp_third\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 107, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"mt8167_mtk_ddp_main\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 113, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"mt8173_mtk_ddp_main\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 124, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"mt8173_mtk_ddp_ext\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 135, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"mt8183_mtk_ddp_main\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 143, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"mt8183_mtk_ddp_ext\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 155, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c"mt8192_mtk_ddp_main\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 161, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"mt8192_mtk_ddp_ext\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 174, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"mtk_drm_driver\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 353, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 365, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 366, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 367, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"mtk_drm_fops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 339, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 244, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"mtk_drm_mode_config_funcs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 55, i32 43 }
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"mtk_drm_mode_config_helpers\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 38, i32 50 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 298, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [42 x i8] c"../drivers/gpu/drm/mediatek/mtk_drm_drv.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 311, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_mtk_drm_exit, ptr @__initcall__kmod_mediatek_drm__321_730_mtk_drm_init6, ptr @mtk_drm_exit, ptr @mtk_drm_kms_init._entry, ptr @mtk_drm_kms_init._entry.24, ptr @mtk_drm_kms_init._entry.27, ptr @mtk_drm_kms_init._entry_ptr, ptr @mtk_drm_kms_init._entry_ptr.26, ptr @mtk_drm_kms_init._entry_ptr.29, ptr @mtk_drm_probe._entry, ptr @mtk_drm_probe._entry.12, ptr @mtk_drm_probe._entry.16, ptr @mtk_drm_probe._entry.8, ptr @mtk_drm_probe._entry_ptr, ptr @mtk_drm_probe._entry_ptr.11, ptr @mtk_drm_probe._entry_ptr.15, ptr @mtk_drm_probe._entry_ptr.18, ptr @mtk_drm_drivers, ptr @mtk_drm_platform_driver, ptr @.str, ptr @mtk_drm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mtk_drm_of_ids, ptr @mtk_ddp_comp_dt_ids, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @mtk_drm_ops, ptr @mt2701_mmsys_driver_data, ptr @mt7623_mmsys_driver_data, ptr @mt2712_mmsys_driver_data, ptr @mt8167_mmsys_driver_data, ptr @mt8173_mmsys_driver_data, ptr @mt8183_mmsys_driver_data, ptr @mt8192_mmsys_driver_data, ptr @mt2701_mtk_ddp_main, ptr @mt2701_mtk_ddp_ext, ptr @mt7623_mtk_ddp_main, ptr @mt7623_mtk_ddp_ext, ptr @mt2712_mtk_ddp_main, ptr @mt2712_mtk_ddp_ext, ptr @mt2712_mtk_ddp_third, ptr @mt8167_mtk_ddp_main, ptr @mt8173_mtk_ddp_main, ptr @mt8173_mtk_ddp_ext, ptr @mt8183_mtk_ddp_main, ptr @mt8183_mtk_ddp_ext, ptr @mt8192_mtk_ddp_main, ptr @mt8192_mtk_ddp_ext, ptr @mtk_drm_driver, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mtk_drm_fops, ptr @.str.22, ptr @.str.23, ptr @mtk_drm_mode_config_funcs, ptr @mtk_drm_mode_config_helpers, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_drivers to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_of_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ddp_comp_dt_ids to i32), i32 9408, i32 11744, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mmsys_driver_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_mmsys_driver_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_mmsys_driver_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8167_mmsys_driver_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_mmsys_driver_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mmsys_driver_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mmsys_driver_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mtk_ddp_main to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mtk_ddp_ext to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_mtk_ddp_main to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_mtk_ddp_ext to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_mtk_ddp_main to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_mtk_ddp_ext to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_mtk_ddp_third to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8167_mtk_ddp_main to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_mtk_ddp_main to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_mtk_ddp_ext to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mtk_ddp_main to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mtk_ddp_ext to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mtk_ddp_main to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mtk_ddp_ext to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_kms_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_kms_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_kms_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_unregister_drivers(ptr noundef nonnull @mtk_drm_drivers, i32 noundef 9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @mtk_drm_drivers, i32 noundef 9, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #6
  %4 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %match, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 800, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup101_crit_edge, label %if.end

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %mmsys_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %mmsys_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mmsys_dev, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup101

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_match_node(ptr noundef nonnull @mtk_drm_of_ids, ptr noundef %3) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup101_crit_edge, label %if.end10

if.end6.cleanup101_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

if.end10:                                         ; preds = %if.end6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %data11 = getelementptr inbounds %struct.mtk_drm_private, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %data11, align 4
  %parent12 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent12, align 4
  %call13 = tail call ptr @of_get_next_child(ptr noundef %12, ptr noundef null) #6
  %cmp.not181 = icmp eq ptr %call13, null
  br i1 %cmp.not181, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %mutex_node = getelementptr inbounds %struct.mtk_drm_private, ptr %call.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.0182 = phi ptr [ %call13, %for.body.lr.ph ], [ %call73, %for.inc.for.body_crit_edge ]
  %call15 = call ptr @of_match_node(ptr noundef nonnull @mtk_ddp_comp_dt_ids, ptr noundef nonnull %node.0182) #6
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.end18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %call19 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %node.0182) #6
  br i1 %call19, label %if.end30, label %do.body21

do.body21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_drm_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_drm_probe, %if.then26)) #6
          to label %for.inc [label %if.then26], !srcloc !129

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_drm_probe.__UNIQUE_ID_ddebug320, ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull %node.0182) #6
  br label %for.inc

if.end30:                                         ; preds = %if.end18
  %data31 = getelementptr inbounds %struct.of_device_id, ptr %call15, i32 0, i32 3
  %13 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data31, align 4
  %cmp32 = icmp eq ptr %14, inttoptr (i32 6 to ptr)
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = call ptr @of_node_get(ptr noundef nonnull %node.0182) #6
  %15 = ptrtoint ptr %mutex_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %mutex_node, align 4
  br label %for.inc

if.end35:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %14 to i32
  %call36 = call i32 @mtk_ddp_comp_get_id(ptr noundef nonnull %node.0182, i32 noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %node.0182) #9
  br label %for.inc

if.end42:                                         ; preds = %if.end35
  %call43 = call ptr @of_node_get(ptr noundef nonnull %node.0182) #6
  %arrayidx = getelementptr %struct.mtk_drm_private, ptr %call.i, i32 0, i32 6, i32 %call36
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call43, ptr %arrayidx, align 4
  %18 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end42.if.end64_crit_edge [
    i32 0, label %if.end42.do.end63_crit_edge
    i32 2, label %if.end42.do.end63_crit_edge191
    i32 3, label %if.end42.do.end63_crit_edge192
    i32 5, label %if.end42.do.end63_crit_edge193
    i32 8, label %if.end42.do.end63_crit_edge194
    i32 9, label %if.end42.do.end63_crit_edge195
    i32 12, label %if.end42.do.end63_crit_edge196
    i32 15, label %if.end42.do.end63_crit_edge197
    i32 16, label %if.end42.do.end63_crit_edge198
  ]

if.end42.do.end63_crit_edge198:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge197:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge196:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge195:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge194:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge193:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge192:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge191:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.do.end63_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end42.if.end64_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end63:                                         ; preds = %if.end42.do.end63_crit_edge, %if.end42.do.end63_crit_edge191, %if.end42.do.end63_crit_edge192, %if.end42.do.end63_crit_edge193, %if.end42.do.end63_crit_edge194, %if.end42.do.end63_crit_edge195, %if.end42.do.end63_crit_edge196, %if.end42.do.end63_crit_edge197, %if.end42.do.end63_crit_edge198
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull %node.0182) #9
  call void @drm_of_component_match_add(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef nonnull @compare_of, ptr noundef nonnull %node.0182) #6
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %if.end42.if.end64_crit_edge
  %arrayidx65 = getelementptr %struct.mtk_drm_private, ptr %call.i, i32 0, i32 7, i32 %call36
  %call66 = call i32 @mtk_ddp_comp_init(ptr noundef nonnull %node.0182, ptr noundef %arrayidx65, i32 noundef %call36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.for.inc_crit_edge, label %cleanup.thread177

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.thread177:                                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %node.0182) #6
  br label %err_node

for.inc:                                          ; preds = %if.end64.for.inc_crit_edge, %do.end41, %if.then33, %if.then26, %do.body21, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent12, align 4
  %call73 = call ptr @of_get_next_child(ptr noundef %20, ptr noundef nonnull %node.0182) #6
  %cmp.not = icmp eq ptr %call73, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  %mutex_node74 = getelementptr inbounds %struct.mtk_drm_private, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %mutex_node74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mutex_node74, align 4
  %tobool75.not = icmp eq ptr %22, null
  br i1 %tobool75.not, label %do.end79, label %if.end80

do.end79:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %err_node

if.end80:                                         ; preds = %for.end
  call void @pm_runtime_enable(ptr noundef %dev1) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %24 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %match, align 4
  %call81 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @mtk_drm_ops, ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end80.cleanup101_crit_edge, label %err_pm

if.end80.cleanup101_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

err_pm:                                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %err_node

err_node:                                         ; preds = %err_pm, %do.end79, %cleanup.thread177
  %ret.2 = phi i32 [ %call81, %err_pm ], [ -19, %do.end79 ], [ %call66, %cleanup.thread177 ]
  %mutex_node85 = getelementptr inbounds %struct.mtk_drm_private, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %mutex_node85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mutex_node85, align 4
  call void @of_node_put(ptr noundef %27) #6
  br label %for.body88

for.body88:                                       ; preds = %for.inc99.for.body88_crit_edge, %err_node
  %i.0185 = phi i32 [ 0, %err_node ], [ %inc, %for.inc99.for.body88_crit_edge ]
  %arrayidx90 = getelementptr %struct.mtk_drm_private, ptr %call.i, i32 0, i32 6, i32 %i.0185
  %28 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx90, align 4
  call void @of_node_put(ptr noundef %29) #6
  %larb_dev = getelementptr %struct.mtk_drm_private, ptr %call.i, i32 0, i32 7, i32 %i.0185, i32 2
  %30 = ptrtoint ptr %larb_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %larb_dev, align 4
  %tobool93.not = icmp eq ptr %31, null
  br i1 %tobool93.not, label %for.body88.for.inc99_crit_edge, label %if.then94

for.body88.for.inc99_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99

if.then94:                                        ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_device(ptr noundef nonnull %31) #6
  br label %for.inc99

for.inc99:                                        ; preds = %if.then94, %for.body88.for.inc99_crit_edge
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc99.cleanup101_crit_edge, label %for.inc99.for.body88_crit_edge

for.inc99.for.body88_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body88

for.inc99.cleanup101_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

cleanup101:                                       ; preds = %for.inc99.cleanup101_crit_edge, %if.end80.cleanup101_crit_edge, %if.end6.cleanup101_crit_edge, %do.end, %entry.cleanup101_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %entry.cleanup101_crit_edge ], [ -19, %if.end6.cleanup101_crit_edge ], [ 0, %if.end80.cleanup101_crit_edge ], [ %ret.2, %for.inc99.cleanup101_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @mtk_drm_ops) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %mutex_node = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mutex_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mutex_node, align 4
  tail call void @of_node_put(ptr noundef %3) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_drm_private, ptr %1, i32 0, i32 6, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @of_node_put(ptr noundef %5) #6
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ddp_comp_get_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ddp_comp_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_bind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @mtk_drm_driver, ptr noundef %dev) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dev_private, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %1, align 4
  %5 = load ptr, ptr %dev_private, align 4
  %call.i = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #6
  br i1 %call.i, label %if.end.i, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end.i:                                         ; preds = %if.end
  %mutex_node.i = getelementptr inbounds %struct.mtk_drm_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mutex_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mutex_node.i, align 4
  %call1.i = tail call ptr @of_find_device_by_node(ptr noundef %7) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mutex_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mutex_node.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef %11) #9
  %12 = ptrtoint ptr %mutex_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mutex_node.i, align 4
  tail call void @of_node_put(ptr noundef %13) #6
  br label %err_free

if.end5.i:                                        ; preds = %if.end.i
  %dev6.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3
  %mutex_dev.i = getelementptr inbounds %struct.mtk_drm_private, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %mutex_dev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev6.i, ptr %mutex_dev.i, align 4
  %call7.i = tail call i32 @drmm_mode_config_init(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.mtk_drm_kms_init.exit_crit_edge

if.end5.i.mtk_drm_kms_init.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_drm_kms_init.exit

if.end10.i:                                       ; preds = %if.end5.i
  %min_width.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 23
  %15 = ptrtoint ptr %min_width.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %min_width.i, align 4
  %min_height.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 24
  %16 = ptrtoint ptr %min_height.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %min_height.i, align 4
  %max_width.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 25
  %17 = ptrtoint ptr %max_width.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4096, ptr %max_width.i, align 4
  %max_height.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 26
  %18 = ptrtoint ptr %max_height.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %max_height.i, align 4
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 27
  %19 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mtk_drm_mode_config_funcs, ptr %funcs.i, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 103
  %20 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mtk_drm_mode_config_helpers, ptr %helper_private.i, align 4
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 2
  %21 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev16.i, align 4
  %call17.i = tail call i32 @component_bind_all(ptr noundef %22, ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end10.i.mtk_drm_kms_init.exit_crit_edge

if.end10.i.mtk_drm_kms_init.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_drm_kms_init.exit

if.end20.i:                                       ; preds = %if.end10.i
  %data.i = getelementptr inbounds %struct.mtk_drm_private, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %main_len.i = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %main_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %main_len.i, align 4
  %call22.i = tail call i32 @mtk_drm_crtc_create(ptr noundef %call1, ptr noundef %26, i32 noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i26 = icmp slt i32 %call22.i, 0
  br i1 %cmp.i26, label %if.end20.i.mtk_drm_kms_init.exit.thread33_crit_edge, label %if.end24.i

if.end20.i.mtk_drm_kms_init.exit.thread33_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_drm_kms_init.exit.thread33

if.end24.i:                                       ; preds = %if.end20.i
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %ext_path.i = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ext_path.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ext_path.i, align 4
  %ext_len.i = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %ext_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ext_len.i, align 4
  %call27.i = tail call i32 @mtk_drm_crtc_create(ptr noundef %call1, ptr noundef %32, i32 noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end24.i.mtk_drm_kms_init.exit.thread33_crit_edge, label %if.end30.i

if.end24.i.mtk_drm_kms_init.exit.thread33_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_drm_kms_init.exit.thread33

if.end30.i:                                       ; preds = %if.end24.i
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %third_path.i = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %third_path.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %third_path.i, align 4
  %third_len.i = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %third_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %third_len.i, align 4
  %call33.i = tail call i32 @mtk_drm_crtc_create(ptr noundef %call1, ptr noundef %38, i32 noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end30.i.mtk_drm_kms_init.exit.thread33_crit_edge, label %if.end36.i

if.end30.i.mtk_drm_kms_init.exit.thread33_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_drm_kms_init.exit.thread33

if.end36.i:                                       ; preds = %if.end30.i
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %arrayidx39.i = getelementptr %struct.mtk_drm_private, ptr %5, i32 0, i32 6, i32 %46
  %47 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx39.i, align 4
  %tobool40.not.i = icmp eq ptr %48, null
  br i1 %tobool40.not.i, label %cond.false.i, label %if.end36.i.cond.end.i_crit_edge

if.end36.i.cond.end.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %ext_path43.i = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %42, i32 0, i32 2
  %49 = ptrtoint ptr %ext_path43.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ext_path43.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %arrayidx45.i = getelementptr %struct.mtk_drm_private, ptr %5, i32 0, i32 6, i32 %52
  %53 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx45.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end36.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %54, %cond.false.i ], [ %48, %if.end36.i.cond.end.i_crit_edge ]
  %call46.i = tail call ptr @of_find_device_by_node(ptr noundef %cond.i) #6
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.then48.i, label %if.end53.i

if.then48.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.25) #9
  br label %mtk_drm_kms_init.exit.thread33

if.end53.i:                                       ; preds = %cond.end.i
  %dev54.i = getelementptr inbounds %struct.platform_device, ptr %call46.i, i32 0, i32 3
  %dma_dev55.i = getelementptr inbounds %struct.mtk_drm_private, ptr %5, i32 0, i32 1
  %57 = ptrtoint ptr %dma_dev55.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev54.i, ptr %dma_dev55.i, align 4
  %dma_parms.i.i = getelementptr inbounds %struct.platform_device, ptr %call46.i, i32 0, i32 3, i32 22
  %58 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %do.end61.i, label %if.end62.i

do.end61.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54.i, ptr noundef nonnull @.str.28) #9
  br label %mtk_drm_kms_init.exit.thread33

if.end62.i:                                       ; preds = %if.end53.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %59, align 4
  %call63.i = tail call i32 @drm_vblank_init(ptr noundef %call1, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  br i1 %cmp64.i, label %if.end62.i.mtk_drm_kms_init.exit.thread33_crit_edge, label %mtk_drm_kms_init.exit.thread30

if.end62.i.mtk_drm_kms_init.exit.thread33_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_drm_kms_init.exit.thread33

mtk_drm_kms_init.exit.thread30:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_kms_helper_poll_init(ptr noundef %call1) #6
  tail call void @drm_mode_config_reset(ptr noundef %call1) #6
  br label %if.end7

mtk_drm_kms_init.exit.thread33:                   ; preds = %if.end62.i.mtk_drm_kms_init.exit.thread33_crit_edge, %do.end61.i, %if.then48.i, %if.end30.i.mtk_drm_kms_init.exit.thread33_crit_edge, %if.end24.i.mtk_drm_kms_init.exit.thread33_crit_edge, %if.end20.i.mtk_drm_kms_init.exit.thread33_crit_edge
  %ret.0.i = phi i32 [ %call22.i, %if.end20.i.mtk_drm_kms_init.exit.thread33_crit_edge ], [ %call27.i, %if.end24.i.mtk_drm_kms_init.exit.thread33_crit_edge ], [ %call33.i, %if.end30.i.mtk_drm_kms_init.exit.thread33_crit_edge ], [ -5, %do.end61.i ], [ %call63.i, %if.end62.i.mtk_drm_kms_init.exit.thread33_crit_edge ], [ -19, %if.then48.i ]
  %61 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev16.i, align 4
  tail call void @component_unbind_all(ptr noundef %62, ptr noundef %call1) #6
  %63 = ptrtoint ptr %mutex_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mutex_dev.i, align 4
  tail call void @put_device(ptr noundef %64) #6
  br label %err_free

mtk_drm_kms_init.exit:                            ; preds = %if.end10.i.mtk_drm_kms_init.exit_crit_edge, %if.end5.i.mtk_drm_kms_init.exit_crit_edge
  %ret.1.i = phi i32 [ %call7.i, %if.end5.i.mtk_drm_kms_init.exit_crit_edge ], [ %call17.i, %if.end10.i.mtk_drm_kms_init.exit_crit_edge ]
  %65 = ptrtoint ptr %mutex_dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mutex_dev.i, align 4
  tail call void @put_device(ptr noundef %66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp = icmp slt i32 %ret.1.i, 0
  br i1 %cmp, label %mtk_drm_kms_init.exit.err_free_crit_edge, label %mtk_drm_kms_init.exit.if.end7_crit_edge

mtk_drm_kms_init.exit.if.end7_crit_edge:          ; preds = %mtk_drm_kms_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

mtk_drm_kms_init.exit.err_free_crit_edge:         ; preds = %mtk_drm_kms_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end7:                                          ; preds = %mtk_drm_kms_init.exit.if.end7_crit_edge, %mtk_drm_kms_init.exit.thread30
  %call8 = tail call i32 @drm_dev_register(ptr noundef %call1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %err_deinit, label %if.end11

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_fbdev_generic_setup(ptr noundef %call1, i32 noundef 32) #6
  br label %cleanup

err_deinit:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call1) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %call1) #6
  %dev.i27 = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 2
  %67 = ptrtoint ptr %dev.i27 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i27, align 4
  tail call void @component_unbind_all(ptr noundef %68, ptr noundef %call1) #6
  br label %err_free

err_free:                                         ; preds = %err_deinit, %mtk_drm_kms_init.exit.err_free_crit_edge, %mtk_drm_kms_init.exit.thread33, %do.end.i, %if.end.err_free_crit_edge
  %ret.0 = phi i32 [ %ret.1.i, %mtk_drm_kms_init.exit.err_free_crit_edge ], [ %call8, %err_deinit ], [ %ret.0.i, %mtk_drm_kms_init.exit.thread33 ], [ -517, %do.end.i ], [ -517, %if.end.err_free_crit_edge ]
  tail call void @drm_dev_put(ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end11, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %err_free ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_unbind(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @drm_dev_unregister(ptr noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %5) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %5) #6
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void @component_unbind_all(ptr noundef %7, ptr noundef %5) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @drm_dev_put(ptr noundef %9) #6
  %num_pipes = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %num_pipes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_pipes, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_drm_gem_prime_import(ptr noundef %dev, ptr noundef %dma_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dma_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_dev, align 4
  %call = tail call ptr @drm_gem_prime_import_dev(ptr noundef %dev, ptr noundef %dma_buf, ptr noundef %3) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_drm_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

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
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_drm_crtc_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_drm_mode_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %cmd) #6
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %cmd) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_sys_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_sys_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_mediatek_drm__321_730_mtk_drm_init6, !1, !"__initcall__kmod_mediatek_drm__321_730_mtk_drm_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 730, i32 1}
!2 = !{ptr @__exitcall_mtk_drm_exit, !3, !"__exitcall_mtk_drm_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 731, i32 1}
!4 = !{ptr @__UNIQUE_ID_author322, !5, !"__UNIQUE_ID_author322", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 733, i32 1}
!6 = !{ptr @__UNIQUE_ID_description323, !7, !"__UNIQUE_ID_description323", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 734, i32 1}
!8 = !{ptr @__UNIQUE_ID_file324, !9, !"__UNIQUE_ID_file324", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 735, i32 1}
!10 = !{ptr @__UNIQUE_ID_license325, !9, !"__UNIQUE_ID_license325", i1 false, i1 false}
!11 = !{ptr @mtk_drm_drivers, !12, !"mtk_drm_drivers", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 706, i32 39}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 701, i32 11}
!15 = !{ptr @mtk_drm_platform_driver, !16, !"mtk_drm_platform_driver", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 697, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 559, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtk_drm_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mtk_drm_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 580, i32 4}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mtk_drm_probe.__UNIQUE_ID_ddebug320, !26, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 594, i32 4}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mtk_drm_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_drm_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 615, i32 4}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mtk_drm_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mtk_drm_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 629, i32 3}
!41 = !{ptr @mtk_drm_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mtk_drm_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @mtk_drm_of_ids, !44, !"mtk_drm_of_ids", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 523, i32 34}
!45 = !{ptr @mt2701_mmsys_driver_data, !46, !"mt2701_mmsys_driver_data", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 180, i32 43}
!47 = !{ptr @mt2701_mtk_ddp_main, !48, !"mt2701_mtk_ddp_main", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 61, i32 35}
!49 = !{ptr @mt2701_mtk_ddp_ext, !50, !"mt2701_mtk_ddp_ext", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 69, i32 35}
!51 = !{ptr @mt7623_mmsys_driver_data, !52, !"mt7623_mmsys_driver_data", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 188, i32 43}
!53 = !{ptr @mt7623_mtk_ddp_main, !54, !"mt7623_mtk_ddp_main", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 74, i32 35}
!55 = !{ptr @mt7623_mtk_ddp_ext, !56, !"mt7623_mtk_ddp_ext", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 82, i32 35}
!57 = !{ptr @mt2712_mmsys_driver_data, !58, !"mt2712_mmsys_driver_data", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 196, i32 43}
!59 = !{ptr @mt2712_mtk_ddp_main, !60, !"mt2712_mtk_ddp_main", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 87, i32 35}
!61 = !{ptr @mt2712_mtk_ddp_ext, !62, !"mt2712_mtk_ddp_ext", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 97, i32 35}
!63 = !{ptr @mt2712_mtk_ddp_third, !64, !"mt2712_mtk_ddp_third", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 107, i32 35}
!65 = !{ptr @mt8167_mmsys_driver_data, !66, !"mt8167_mmsys_driver_data", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 205, i32 43}
!67 = !{ptr @mt8167_mtk_ddp_main, !68, !"mt8167_mtk_ddp_main", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 113, i32 29}
!69 = !{ptr @mt8173_mmsys_driver_data, !70, !"mt8173_mmsys_driver_data", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 210, i32 43}
!71 = !{ptr @mt8173_mtk_ddp_main, !72, !"mt8173_mtk_ddp_main", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 124, i32 35}
!73 = !{ptr @mt8173_mtk_ddp_ext, !74, !"mt8173_mtk_ddp_ext", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 135, i32 35}
!75 = !{ptr @mt8183_mmsys_driver_data, !76, !"mt8183_mmsys_driver_data", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 217, i32 43}
!77 = !{ptr @mt8183_mtk_ddp_main, !78, !"mt8183_mtk_ddp_main", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 143, i32 35}
!79 = !{ptr @mt8183_mtk_ddp_ext, !80, !"mt8183_mtk_ddp_ext", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 155, i32 35}
!81 = !{ptr @mt8192_mmsys_driver_data, !82, !"mt8192_mmsys_driver_data", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 224, i32 43}
!83 = !{ptr @mt8192_mtk_ddp_main, !84, !"mt8192_mtk_ddp_main", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 161, i32 35}
!85 = !{ptr @mt8192_mtk_ddp_ext, !86, !"mt8192_mtk_ddp_ext", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 174, i32 35}
!87 = !{ptr @mtk_ddp_comp_dt_ids, !88, !"mtk_ddp_comp_dt_ids", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 425, i32 34}
!89 = !{ptr @mtk_drm_ops, !90, !"mtk_drm_ops", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 420, i32 42}
!91 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 365, i32 10}
!93 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 366, i32 10}
!95 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 367, i32 10}
!97 = !{ptr @mtk_drm_driver, !98, !"mtk_drm_driver", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 353, i32 32}
!99 = !{ptr @mtk_drm_fops, !100, !"mtk_drm_fops", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 339, i32 1}
!101 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 244, i32 3}
!103 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mtk_drm_kms_init._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mtk_drm_kms_init._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 298, i32 3}
!108 = !{ptr @mtk_drm_kms_init._entry.24, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mtk_drm_kms_init._entry_ptr.26, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 311, i32 3}
!112 = !{ptr @mtk_drm_kms_init._entry.27, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mtk_drm_kms_init._entry_ptr.29, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mtk_drm_mode_config_funcs, !115, !"mtk_drm_mode_config_funcs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 55, i32 43}
!116 = !{ptr @mtk_drm_mode_config_helpers, !117, !"mtk_drm_mode_config_helpers", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 38, i32 50}
!118 = !{ptr @mtk_drm_pm_ops, !119, !"mtk_drm_pm_ops", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_drv.c", i32 694, i32 8}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148244807, i64 2148244812, i64 2148244825, i64 2148244869, i64 2148244903, i64 2148244924}
