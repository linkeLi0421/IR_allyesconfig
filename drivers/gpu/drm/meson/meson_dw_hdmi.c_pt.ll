; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_dw_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_dw_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dw_hdmi_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_dw_hdmi_data = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.meson_dw_hdmi = type { %struct.dw_hdmi_plat_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.90, %struct.anon.91, %struct.anon.92, %struct.anon.93 }
%struct.anon.90 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.91 = type { i32, i8, i8, i8 }
%struct.anon.92 = type { i32, ptr, i32 }
%struct.anon.93 = type { ptr, i64, i32 }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__initcall__kmod_meson_dw_hdmi__313_906_meson_dw_hdmi_platform_driver_init6 = internal global ptr @meson_dw_hdmi_platform_driver_init, section ".initcall6.init", align 4
@meson_dw_hdmi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_dw_hdmi_probe, ptr @meson_dw_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_dw_hdmi_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_dw_hdmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_dw_hdmi_platform_driver_exit = internal global ptr @meson_dw_hdmi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author314 = internal constant [62 x i8] c"meson_dw_hdmi.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description315 = internal constant [59 x i8] c"meson_dw_hdmi.description=Amlogic Meson HDMI-TX DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [55 x i8] c"meson_dw_hdmi.file=drivers/gpu/drm/meson/meson_dw_hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [26 x i8] c"meson_dw_hdmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson-dw-hdmi\00", [18 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_of_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_dw_hdmi_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_dw_hdmi_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_dw_hdmi_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_dw_hdmi_g12a_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @meson_dw_hdmi_pm_suspend, ptr @meson_dw_hdmi_pm_resume, ptr @meson_dw_hdmi_pm_suspend, ptr @meson_dw_hdmi_pm_resume, ptr @meson_dw_hdmi_pm_suspend, ptr @meson_dw_hdmi_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @meson_dw_hdmi_bind, ptr @meson_dw_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 712, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_dw_hdmi_bind\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/meson/meson_dw_hdmi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry_ptr = internal global ptr @meson_dw_hdmi_bind._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmitx_apb\00", [21 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get hdmitx_apb reset\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry_ptr.11 = internal global ptr @meson_dw_hdmi_bind._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hdmitx\00", [25 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 751, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get hdmitx reset\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry_ptr.15 = internal global ptr @meson_dw_hdmi_bind._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmitx_phy\00", [21 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get hdmitx_phy reset\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry_ptr.19 = internal global ptr @meson_dw_hdmi_bind._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isfr\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iahb\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"venci\00", [26 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_dw_hdmi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @meson_dw_hdmi_reg_read, ptr @meson_dw_hdmi_reg_write, ptr null, i8 1, i32 65536, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"meson_dw_hdmi:779:(&meson_dw_hdmi_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw_hdmi_top_irq\00", [16 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 791, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request hdmi top irq\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_bind._entry_ptr.27 = internal global ptr @meson_dw_hdmi_bind._entry.25, section ".printk_index", align 4
@meson_dw_hdmi_phy_ops = internal constant { %struct.dw_hdmi_phy_ops, [44 x i8] } { %struct.dw_hdmi_phy_ops { ptr @dw_hdmi_phy_init, ptr @dw_hdmi_phy_disable, ptr @dw_hdmi_read_hpd, ptr null, ptr @dw_hdmi_setup_hpd }, [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_dw_hdmi_phy\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amlogic,meson-gxl-dw-hdmi\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amlogic,meson-gxm-dw-hdmi\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amlogic,meson-g12a-dw-hdmi\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI controller initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_enable_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to get %s pclk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson_enable_clk\00", [47 x i8] zeroinitializer }, align 32
@meson_enable_clk._entry_ptr = internal global ptr @meson_enable_clk._entry, section ".printk_index", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\22%s\22 div%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amlogic,meson-gxbb-dw-hdmi\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_dw_hdmi_gx_data = internal constant { %struct.meson_dw_hdmi_data, [16 x i8] } { %struct.meson_dw_hdmi_data { ptr @dw_hdmi_top_read, ptr @dw_hdmi_top_write, ptr @dw_hdmi_dwc_read, ptr @dw_hdmi_dwc_write }, [16 x i8] zeroinitializer }, align 32
@meson_dw_hdmi_g12a_data = internal constant { %struct.meson_dw_hdmi_data, [16 x i8] } { %struct.meson_dw_hdmi_data { ptr @dw_hdmi_g12a_top_read, ptr @dw_hdmi_g12a_top_write, ptr @dw_hdmi_g12a_dwc_read, ptr @dw_hdmi_g12a_dwc_write }, [16 x i8] zeroinitializer }, align 32
@reg_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_lock\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"meson_dw_hdmi_platform_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 897, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 901, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"meson_dw_hdmi_of_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 884, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"meson_dw_hdmi_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 879, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"meson_dw_hdmi_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 834, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 708, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 712, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 726, i32 64 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 742, i32 7 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 744, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 749, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 751, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 756, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 758, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 766, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 770, i32 30 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 774, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [28 x i8] c"meson_dw_hdmi_regmap_config\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 604, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 778, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 789, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 791, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"meson_dw_hdmi_phy_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 526, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 801, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 808, i32 43 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 809, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 810, i32 43 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 821, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 685, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 379, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 318, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"meson_dw_hdmi_gx_data\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 613, i32 40 }
@___asan_gen_.167 = private unnamed_addr constant [24 x i8] c"meson_dw_hdmi_g12a_data\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 620, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant [9 x i8] c"reg_lock\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [41 x i8] c"../drivers/gpu/drm/meson/meson_dw_hdmi.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 113, i32 8 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_meson_dw_hdmi_platform_driver_exit, ptr @__initcall__kmod_meson_dw_hdmi__313_906_meson_dw_hdmi_platform_driver_init6, ptr @meson_dw_hdmi_bind._entry, ptr @meson_dw_hdmi_bind._entry.13, ptr @meson_dw_hdmi_bind._entry.17, ptr @meson_dw_hdmi_bind._entry.25, ptr @meson_dw_hdmi_bind._entry.9, ptr @meson_dw_hdmi_bind._entry_ptr, ptr @meson_dw_hdmi_bind._entry_ptr.11, ptr @meson_dw_hdmi_bind._entry_ptr.15, ptr @meson_dw_hdmi_bind._entry_ptr.19, ptr @meson_dw_hdmi_bind._entry_ptr.27, ptr @meson_dw_hdmi_platform_driver_exit, ptr @meson_enable_clk._entry, ptr @meson_enable_clk._entry_ptr, ptr @meson_dw_hdmi_platform_driver, ptr @.str, ptr @meson_dw_hdmi_of_table, ptr @meson_dw_hdmi_pm_ops, ptr @meson_dw_hdmi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @meson_dw_hdmi_bind._key, ptr @meson_dw_hdmi_regmap_config, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @meson_dw_hdmi_phy_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @meson_dw_hdmi_gx_data, ptr @meson_dw_hdmi_g12a_data, ptr @reg_lock, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_of_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_bind._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_bind._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_bind._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_bind._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_enable_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_gx_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_dw_hdmi_g12a_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_dw_hdmi_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_dw_hdmi_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_dw_hdmi_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @meson_dw_hdmi_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @meson_dw_hdmi_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #6
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv7 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %priv7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %priv7, align 4
  %dev8 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev8, align 4
  %data9 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %data9, align 4
  %call11 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %hdmi_supply = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %hdmi_supply, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end6
  %cmp = icmp eq ptr %call11, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then14.cleanup_crit_edge, label %if.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hdmi_supply, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end6
  %call21 = tail call i32 @regulator_enable(ptr noundef %call11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %7 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdmi_supply, align 4
  %call.i208 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @meson_disable_regulator, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool.not.i = icmp eq i32 %call.i208, 0
  br i1 %tobool.not.i, label %if.end24.if.end30_crit_edge, label %devm_add_action_or_reset.exit

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

devm_add_action_or_reset.exit:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call.i225 = tail call i32 @regulator_disable(ptr noundef %8) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end24.if.end30_crit_edge, %if.end18
  %call.i209 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %hdmitx_apb = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %hdmitx_apb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i209, ptr %hdmitx_apb, align 4
  %cmp.i210 = icmp ugt ptr %call.i209, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %10 = ptrtoint ptr %hdmitx_apb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdmitx_apb, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %call.i211 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %hdmitx_ctrl = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %hdmitx_ctrl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i211, ptr %hdmitx_ctrl, align 4
  %cmp.i212 = icmp ugt ptr %call.i211, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  %14 = ptrtoint ptr %hdmitx_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmitx_ctrl, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %call.i213 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %hdmitx_phy = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %hdmitx_phy to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i213, ptr %hdmitx_phy, align 4
  %cmp.i214 = icmp ugt ptr %call.i213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %do.end57, label %if.end60

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  %18 = ptrtoint ptr %hdmitx_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmitx_phy, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %call61 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #6
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %hdmitx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call61, ptr %hdmitx, align 4
  %cmp.i215 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end60
  %call68 = tail call fastcc i32 @meson_enable_clk(ptr noundef %dev, ptr noundef nonnull @.str.20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %call72 = tail call fastcc i32 @meson_enable_clk(ptr noundef %dev, ptr noundef nonnull @.str.21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %call76 = tail call fastcc i32 @meson_enable_clk(ptr noundef %dev, ptr noundef nonnull @.str.22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %if.end75
  %call81 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @meson_dw_hdmi_regmap_config, ptr noundef nonnull @meson_dw_hdmi_bind._key, ptr noundef nonnull @.str.23) #6
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call81, ptr %call.i, align 4
  %cmp.i216 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call81 to i32
  br label %cleanup

if.end87:                                         ; preds = %if.end79
  %call88 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end87.cleanup_crit_edge, label %if.end91

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %if.end87
  %call92 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call88, ptr noundef nonnull @dw_hdmi_top_irq, ptr noundef nonnull @dw_hdmi_top_thread_irq, i32 noundef 128, ptr noundef nonnull @.str.24, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end98, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end98:                                         ; preds = %if.end91
  tail call fastcc void @meson_dw_hdmi_init(ptr noundef nonnull %call.i)
  %priv_data = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %priv_data, align 4
  %phy_ops = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %phy_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @meson_dw_hdmi_phy_ops, ptr %phy_ops, align 4
  %phy_name = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %phy_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.28, ptr %phy_name, align 4
  %phy_data = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %phy_data, align 4
  %input_bus_encoding = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %input_bus_encoding to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %input_bus_encoding, align 4
  %ycbcr_420_allowed = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %ycbcr_420_allowed to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %ycbcr_420_allowed, align 1
  %disable_cec = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 15
  %31 = ptrtoint ptr %disable_cec to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %disable_cec, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disable_cec, align 4
  %output_port = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %output_port to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %output_port, align 4
  %33 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev8, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %call.i217 = tail call i32 @of_device_is_compatible(ptr noundef %36, ptr noundef nonnull @.str.29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool100.not = icmp eq i32 %call.i217, 0
  br i1 %tobool100.not, label %lor.lhs.false, label %if.end98.if.then106_crit_edge

if.end98.if.then106_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

lor.lhs.false:                                    ; preds = %if.end98
  %37 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev8, align 4
  %of_node.i219 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %of_node.i219 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node.i219, align 8
  %call.i220 = tail call i32 @of_device_is_compatible(ptr noundef %40, ptr noundef nonnull @.str.30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool102.not = icmp eq i32 %call.i220, 0
  br i1 %tobool102.not, label %lor.lhs.false103, label %lor.lhs.false.if.then106_crit_edge

lor.lhs.false.if.then106_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

lor.lhs.false103:                                 ; preds = %lor.lhs.false
  %41 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev8, align 4
  %of_node.i222 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %of_node.i222 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i222, align 8
  %call.i223 = tail call i32 @of_device_is_compatible(ptr noundef %44, ptr noundef nonnull @.str.31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool105.not = icmp eq i32 %call.i223, 0
  br i1 %tobool105.not, label %lor.lhs.false103.if.end107_crit_edge, label %lor.lhs.false103.if.then106_crit_edge

lor.lhs.false103.if.then106_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

lor.lhs.false103.if.end107_crit_edge:             ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then106:                                       ; preds = %lor.lhs.false103.if.then106_crit_edge, %lor.lhs.false.if.then106_crit_edge, %if.end98.if.then106_crit_edge
  %use_drm_infoframe = getelementptr inbounds %struct.dw_hdmi_plat_data, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %use_drm_infoframe to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %use_drm_infoframe, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %lor.lhs.false103.if.end107_crit_edge
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call109 = tail call ptr @dw_hdmi_probe(ptr noundef %add.ptr, ptr noundef nonnull %call.i) #6
  %hdmi = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 10
  %47 = ptrtoint ptr %hdmi to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call109, ptr %hdmi, align 4
  %cmp.i224 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call109 to i32
  br label %cleanup

if.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %call117 = tail call ptr @of_drm_find_bridge(ptr noundef %50) #6
  %bridge = getelementptr inbounds %struct.meson_dw_hdmi, ptr %call.i, i32 0, i32 11
  %51 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call117, ptr %bridge, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then112, %do.end97, %if.end87.cleanup_crit_edge, %if.then84, %if.end75.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then64, %do.end57, %do.end47, %do.end37, %devm_add_action_or_reset.exit, %if.else.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %12, %do.end37 ], [ %16, %do.end47 ], [ %20, %do.end57 ], [ %22, %if.then64 ], [ %24, %if.then84 ], [ %call92, %do.end97 ], [ %48, %if.then112 ], [ 0, %if.end115 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.then14.cleanup_crit_edge ], [ %call21, %if.else.cleanup_crit_edge ], [ %call.i208, %devm_add_action_or_reset.exit ], [ %call68, %if.end67.cleanup_crit_edge ], [ %call72, %if.end71.cleanup_crit_edge ], [ %call76, %if.end75.cleanup_crit_edge ], [ %call88, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_dw_hdmi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi = getelementptr inbounds %struct.meson_dw_hdmi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi, align 4
  tail call void @dw_hdmi_unbind(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_disable_regulator(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_enable_clk(ptr noundef %dev, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %name) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %name) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then4, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup

if.then4:                                         ; preds = %if.end.i
  %call.i15 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @meson_disable_clk, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.then4.cleanup_crit_edge, label %if.then.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %call) #6
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then4.cleanup_crit_edge, %if.then3.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ 0, %if.then4.cleanup_crit_edge ], [ %call.i15, %if.then.i ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_top_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %dev_id, i32 noundef 4) #6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %top_write = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %top_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %top_write, align 4
  tail call void %7(ptr noundef %dev_id, i32 noundef 5, i32 noundef %call) #6
  %and = and i32 %call, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq_stat = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dev_id, i32 0, i32 9
  %8 = ptrtoint ptr %irq_stat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %irq_stat, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and2 = and i32 %call, 1
  %9 = xor i32 %and2, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ %9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_top_thread_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_stat = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_stat, align 4
  %and = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and1 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp ne i32 %and1, 0
  %hdmi = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dev_id, i32 0, i32 10
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi, align 4
  tail call void @dw_hdmi_setup_rx_sense(ptr noundef %3, i1 noundef zeroext %tobool2.not, i1 noundef zeroext %tobool2.not) #6
  %bridge = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dev_id, i32 0, i32 11
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 4
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %7) #6
  %8 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bridge, align 4
  %cond = select i1 %tobool2.not, i32 1, i32 2
  tail call void @drm_bridge_hpd_notify(ptr noundef %9, i32 noundef %cond) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_dw_hdmi_init(ptr noundef %meson_dw_hdmi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %meson_dw_hdmi, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hhi, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 460, i32 noundef 65535, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hhi, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 256, i32 noundef 65280, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %hdmitx_apb = getelementptr inbounds %struct.meson_dw_hdmi, ptr %meson_dw_hdmi, i32 0, i32 5
  %6 = ptrtoint ptr %hdmitx_apb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmitx_apb, align 4
  %call4 = tail call i32 @reset_control_reset(ptr noundef %7) #6
  %hdmitx_ctrl = getelementptr inbounds %struct.meson_dw_hdmi, ptr %meson_dw_hdmi, i32 0, i32 6
  %8 = ptrtoint ptr %hdmitx_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdmitx_ctrl, align 4
  %call5 = tail call i32 @reset_control_reset(ptr noundef %9) #6
  %hdmitx_phy = getelementptr inbounds %struct.meson_dw_hdmi, ptr %meson_dw_hdmi, i32 0, i32 7
  %10 = ptrtoint ptr %hdmitx_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdmitx_phy, align 4
  %call6 = tail call i32 @reset_control_reset(ptr noundef %11) #6
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.not = icmp eq i32 %13, 3
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %meson_dw_hdmi, i32 0, i32 3
  %14 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdmitx, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !104
  %17 = or i32 %16, 8388608
  %18 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdmitx, align 4
  %add.ptr10 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %17) #6, !srcloc !105
  %20 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdmitx, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !104
  %23 = or i32 %22, 8388608
  %24 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdmitx, align 4
  %add.ptr19 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %23) #6, !srcloc !105
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.meson_dw_hdmi, ptr %meson_dw_hdmi, i32 0, i32 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %top_write = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %top_write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %top_write, align 4
  tail call void %29(ptr noundef %meson_dw_hdmi, i32 noundef 0, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 20) #6
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %top_write21 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %top_write21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %top_write21, align 4
  tail call void %33(ptr noundef %meson_dw_hdmi, i32 noundef 1, i32 noundef 255) #6
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %top_write23 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %top_write23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %top_write23, align 4
  tail call void %37(ptr noundef %meson_dw_hdmi, i32 noundef 5, i32 noundef 1) #6
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %top_write25 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %top_write25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %top_write25, align 4
  tail call void %41(ptr noundef %meson_dw_hdmi, i32 noundef 3, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_hdmi_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_disable_clk(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #6
  tail call void @clk_unprepare(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.meson_dw_hdmi, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dwc_read = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dwc_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc_read, align 4
  %call = tail call i32 %3(ptr noundef %context, i32 noundef %reg) #6
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %result, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.meson_dw_hdmi, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dwc_write = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dwc_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc_write, align 4
  tail call void %3(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_setup_rx_sense(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_phy_init(ptr noundef %hdmi, ptr noundef %data, ptr noundef %display, ptr noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.drm_display_info, ptr %display, i32 0, i32 16
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdmi1, align 8, !range !106
  %priv2 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 40044
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !104
  %7 = lshr i32 %6, 8
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 31
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %9)
  %cmp = icmp sgt i32 %9, 340000
  %cond = select i1 %cmp, i32 40, i32 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %cond) #6
  %call3 = tail call zeroext i1 @drm_mode_is_420_only(ptr noundef %display, ptr noundef %mode) #6
  br i1 %call3, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call zeroext i1 @drm_mode_is_420_also(ptr noundef %display, ptr noundef %mode) #6
  br i1 %call5, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %mode_is_420.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ], [ false, %land.lhs.true.if.end_crit_edge ]
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hhi, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 460, i32 noundef 65535, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hhi, align 4
  %call.i176 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 256, i32 noundef 65280, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %data9 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data9, align 4
  %top_write = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %top_write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %top_write, align 4
  tail call void %17(ptr noundef %data, i32 noundef 0, i32 noundef 0) #6
  %18 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data9, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i177 = tail call i32 %21(ptr noundef %data, i32 noundef 1) #6
  %or.i = or i32 %call.i177, 3
  %22 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data9, align 4
  %top_write.i = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %top_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %top_write.i, align 4
  tail call void %25(ptr noundef %data, i32 noundef 1, i32 noundef %or.i) #6
  %26 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data9, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i179 = tail call i32 %29(ptr noundef %data, i32 noundef 1) #6
  %or.i181 = or i32 %call.i179, 48
  %30 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data9, align 4
  %top_write.i182 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %top_write.i182 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %top_write.i182, align 4
  tail call void %33(ptr noundef %data, i32 noundef 1, i32 noundef %or.i181) #6
  %34 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data9, align 4
  %top_write11 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %top_write11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %top_write11, align 4
  tail call void %37(ptr noundef %data, i32 noundef 6, i32 noundef 4096) #6
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340001, i32 %39)
  %cmp13 = icmp slt i32 %39, 340001
  %brmerge = or i1 %mode_is_420.0.off0, %cmp13
  %40 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data9, align 4
  %top_write22 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %top_write22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %top_write22, align 4
  %. = select i1 %brmerge, i32 2031647, i32 0
  %.210 = select i1 %brmerge, i32 2031647, i32 67044351
  tail call void %43(ptr noundef %data, i32 noundef 10, i32 noundef %.) #6
  %44 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data9, align 4
  %top_write24 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %top_write24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %top_write24, align 4
  tail call void %47(ptr noundef %data, i32 noundef 11, i32 noundef %.210) #6
  %48 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data9, align 4
  %top_write27 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %top_write27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %top_write27, align 4
  tail call void %51(ptr noundef %data, i32 noundef 12, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  %52 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data9, align 4
  %top_write29 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %top_write29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %top_write29, align 4
  tail call void %55(ptr noundef %data, i32 noundef 12, i32 noundef 2) #6
  %56 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv2, align 4
  %58 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mode, align 4
  %div121.i = zext i1 %mode_is_420.0.off0 to i32
  %spec.select.i = lshr i32 %59, %div121.i
  %dev.i.i = getelementptr inbounds %struct.meson_dw_hdmi, ptr %data, i32 0, i32 2
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i = tail call i32 @of_device_is_compatible(ptr noundef %63, ptr noundef nonnull @.str.29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end.if.then5.i_crit_edge

if.end.if.then5.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.end
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 4
  %of_node.i123.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %of_node.i123.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node.i123.i, align 8
  %call.i124.i = tail call i32 @of_device_is_compatible(ptr noundef %67, ptr noundef nonnull @.str.30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %tobool4.not.i = icmp eq i32 %call.i124.i, 0
  br i1 %tobool4.not.i, label %if.else31.i, label %lor.lhs.false.i.if.then5.i_crit_edge

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.end.if.then5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 371249, i32 %spec.select.i)
  %cmp.i = icmp ugt i32 %spec.select.i, 371249
  br i1 %cmp.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %hhi.i = getelementptr inbounds %struct.meson_drm, ptr %57, i32 0, i32 3
  %68 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hhi.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 928, i32 noundef 859648642) #6
  %70 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hhi.i, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 940, i32 noundef 557199707) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 296999, i32 %spec.select.i)
  %cmp10.i = icmp ugt i32 %spec.select.i, 296999
  br i1 %cmp10.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %hhi12.i = getelementptr inbounds %struct.meson_drm, ptr %57, i32 0, i32 3
  %72 = ptrtoint ptr %hhi12.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hhi12.i, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 928, i32 noundef 858796930) #6
  %74 = ptrtoint ptr %hhi12.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hhi12.i, align 4
  %call15.i = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 940, i32 noundef 540422491) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 148499, i32 %spec.select.i)
  %cmp17.i = icmp ugt i32 %spec.select.i, 148499
  %hhi19.i = getelementptr inbounds %struct.meson_drm, ptr %57, i32 0, i32 3
  %76 = ptrtoint ptr %hhi19.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hhi19.i, align 4
  br i1 %cmp17.i, label %if.then18.i, label %if.else23.i

if.then18.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 928, i32 noundef 858796898) #6
  %78 = ptrtoint ptr %hhi19.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hhi19.i, align 4
  %call22.i = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 940, i32 noundef 538325339) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else23.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 928, i32 noundef 861946178) #6
  %80 = ptrtoint ptr %hhi19.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hhi19.i, align 4
  %call27.i = tail call i32 @regmap_write(ptr noundef %81, i32 noundef 940, i32 noundef 1454427) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else31.i:                                      ; preds = %lor.lhs.false.i
  %82 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i.i, align 4
  %of_node.i126.i = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 27
  %84 = ptrtoint ptr %of_node.i126.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node.i126.i, align 8
  %call.i127.i = tail call i32 @of_device_is_compatible(ptr noundef %85, ptr noundef nonnull @.str.36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool33.not.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool33.not.i, label %if.else55.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 371249, i32 %spec.select.i)
  %cmp35.i = icmp ugt i32 %spec.select.i, 371249
  br i1 %cmp35.i, label %if.then36.i, label %if.else41.i

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %hhi37.i = getelementptr inbounds %struct.meson_drm, ptr %57, i32 0, i32 3
  %86 = ptrtoint ptr %hhi37.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hhi37.i, align 4
  %call38.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 928, i32 noundef 859124293) #6
  %88 = ptrtoint ptr %hhi37.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hhi37.i, align 4
  %call40.i = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 940, i32 noundef 553652571) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else41.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 296999, i32 %spec.select.i)
  %cmp42.i = icmp ugt i32 %spec.select.i, 296999
  %hhi44.i = getelementptr inbounds %struct.meson_drm, ptr %57, i32 0, i32 3
  %90 = ptrtoint ptr %hhi44.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hhi44.i, align 4
  br i1 %cmp42.i, label %if.then43.i, label %if.else48.i

if.then43.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  %call45.i = tail call i32 @regmap_write(ptr noundef %91, i32 noundef 928, i32 noundef 862143107) #6
  %92 = ptrtoint ptr %hhi44.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hhi44.i, align 4
  %call47.i = tail call i32 @regmap_write(ptr noundef %93, i32 noundef 940, i32 noundef -1342172837) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else48.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  %call50.i = tail call i32 @regmap_write(ptr noundef %91, i32 noundef 928, i32 noundef 862134562) #6
  %94 = ptrtoint ptr %hhi44.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hhi44.i, align 4
  %call52.i = tail call i32 @regmap_write(ptr noundef %95, i32 noundef 940, i32 noundef 536875355) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else55.i:                                      ; preds = %if.else31.i
  %96 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i.i, align 4
  %of_node.i129.i = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 27
  %98 = ptrtoint ptr %of_node.i129.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_node.i129.i, align 8
  %call.i130.i = tail call i32 @of_device_is_compatible(ptr noundef %99, ptr noundef nonnull @.str.31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %tobool57.not.i = icmp eq i32 %call.i130.i, 0
  br i1 %tobool57.not.i, label %if.else55.i.meson_hdmi_phy_setup_mode.exit_crit_edge, label %if.then58.i

if.else55.i.meson_hdmi_phy_setup_mode.exit_crit_edge: ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_hdmi_phy_setup_mode.exit

if.then58.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 371249, i32 %spec.select.i)
  %cmp59.i = icmp ugt i32 %spec.select.i, 371249
  br i1 %cmp59.i, label %if.then60.i, label %if.else67.i

if.then60.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  %hhi61.i = getelementptr inbounds %struct.meson_drm, ptr %57, i32 0, i32 3
  %100 = ptrtoint ptr %hhi61.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hhi61.i, align 4
  %call62.i = tail call i32 @regmap_write(ptr noundef %101, i32 noundef 928, i32 noundef 938173892) #6
  %102 = ptrtoint ptr %hhi61.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hhi61.i, align 4
  %call64.i = tail call i32 @regmap_write(ptr noundef %103, i32 noundef 940, i32 noundef 716242747) #6
  %104 = ptrtoint ptr %hhi61.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hhi61.i, align 4
  %call66.i = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 948, i32 noundef 2059) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else67.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 296999, i32 %spec.select.i)
  %cmp68.i = icmp ugt i32 %spec.select.i, 296999
  %hhi70.i = getelementptr inbounds %struct.meson_drm, ptr %57, i32 0, i32 3
  %106 = ptrtoint ptr %hhi70.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hhi70.i, align 4
  br i1 %cmp68.i, label %if.then69.i, label %if.else76.i

if.then69.i:                                      ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #8
  %call71.i = tail call i32 @regmap_write(ptr noundef %107, i32 noundef 928, i32 noundef 871064162) #6
  %108 = ptrtoint ptr %hhi70.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hhi70.i, align 4
  %call73.i = tail call i32 @regmap_write(ptr noundef %109, i32 noundef 940, i32 noundef 716242747) #6
  %110 = ptrtoint ptr %hhi70.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hhi70.i, align 4
  %call75.i = tail call i32 @regmap_write(ptr noundef %111, i32 noundef 948, i32 noundef 3) #6
  br label %meson_hdmi_phy_setup_mode.exit

if.else76.i:                                      ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #8
  %call78.i = tail call i32 @regmap_write(ptr noundef %107, i32 noundef 928, i32 noundef 871055938) #6
  %112 = ptrtoint ptr %hhi70.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hhi70.i, align 4
  %call80.i = tail call i32 @regmap_write(ptr noundef %113, i32 noundef 940, i32 noundef 716242747) #6
  %114 = ptrtoint ptr %hhi70.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hhi70.i, align 4
  %call82.i = tail call i32 @regmap_write(ptr noundef %115, i32 noundef 948, i32 noundef 3) #6
  br label %meson_hdmi_phy_setup_mode.exit

meson_hdmi_phy_setup_mode.exit:                   ; preds = %if.else76.i, %if.then69.i, %if.then60.i, %if.else55.i.meson_hdmi_phy_setup_mode.exit_crit_edge, %if.else48.i, %if.then43.i, %if.then36.i, %if.else23.i, %if.then18.i, %if.then11.i, %if.then6.i
  %116 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hhi, align 4
  %call.i183 = tail call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef 932, i32 noundef -65536, i32 noundef 59768832, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %118 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %119, i32 0, i32 27
  %120 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %of_node.i, align 8
  %call.i184 = tail call i32 @of_device_is_compatible(ptr noundef %121, ptr noundef nonnull @.str.29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool34.not = icmp eq i32 %call.i184, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %meson_hdmi_phy_setup_mode.exit.if.end47_crit_edge

meson_hdmi_phy_setup_mode.exit.if.end47_crit_edge: ; preds = %meson_hdmi_phy_setup_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

lor.lhs.false35:                                  ; preds = %meson_hdmi_phy_setup_mode.exit
  %122 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i.i, align 4
  %of_node.i186 = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 27
  %124 = ptrtoint ptr %of_node.i186 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %of_node.i186, align 8
  %call.i187 = tail call i32 @of_device_is_compatible(ptr noundef %125, ptr noundef nonnull @.str.30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool37.not = icmp eq i32 %call.i187, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %lor.lhs.false35.if.end47_crit_edge

lor.lhs.false35.if.end47_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i.i, align 4
  %of_node.i189 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 27
  %128 = ptrtoint ptr %of_node.i189 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %of_node.i189, align 8
  %call.i190 = tail call i32 @of_device_is_compatible(ptr noundef %129, ptr noundef nonnull @.str.31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool40.not = icmp eq i32 %call.i190, 0
  %spec.select = select i1 %tobool40.not, i32 131072, i32 0
  br label %if.end47

if.end47:                                         ; preds = %lor.lhs.false38, %lor.lhs.false35.if.end47_crit_edge, %meson_hdmi_phy_setup_mode.exit.if.end47_crit_edge
  %.sink209 = phi i32 [ 0, %lor.lhs.false35.if.end47_crit_edge ], [ 0, %meson_hdmi_phy_setup_mode.exit.if.end47_crit_edge ], [ %spec.select, %lor.lhs.false38 ]
  %130 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hhi, align 4
  %call.i192 = tail call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 932, i32 noundef 131072, i32 noundef %.sink209, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %132 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hhi, align 4
  %call.i193 = tail call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 932, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @dw_hdmi_set_high_tmds_clock_ratio(ptr noundef %hdmi, ptr noundef %display) #6
  tail call void @msleep(i32 noundef 100) #6
  %134 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv2, align 4
  %hhi.i195 = getelementptr inbounds %struct.meson_drm, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %hhi.i195 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hhi.i195, align 4
  %call.i.i196 = tail call i32 @regmap_update_bits_base(ptr noundef %137, i32 noundef 932, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 429496000) #6
  %139 = ptrtoint ptr %hhi.i195 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hhi.i195, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 932, i32 noundef 15, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 429496000) #6
  %142 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %priv2, align 4
  %hhi.i198 = getelementptr inbounds %struct.meson_drm, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %hhi.i198 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hhi.i198, align 4
  %call.i.i199 = tail call i32 @regmap_update_bits_base(ptr noundef %145, i32 noundef 932, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 429496000) #6
  %147 = ptrtoint ptr %hhi.i198 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hhi.i198, align 4
  %call.i5.i200 = tail call i32 @regmap_update_bits_base(ptr noundef %148, i32 noundef 932, i32 noundef 15, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 429496000) #6
  %150 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv2, align 4
  %hhi.i202 = getelementptr inbounds %struct.meson_drm, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %hhi.i202 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hhi.i202, align 4
  %call.i.i203 = tail call i32 @regmap_update_bits_base(ptr noundef %153, i32 noundef 932, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 429496000) #6
  %155 = ptrtoint ptr %hhi.i202 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hhi.i202, align 4
  %call.i5.i204 = tail call i32 @regmap_update_bits_base(ptr noundef %156, i32 noundef 932, i32 noundef 15, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 429496000) #6
  %hdmi_use_enci = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 16, i32 3
  %158 = ptrtoint ptr %hdmi_use_enci to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %hdmi_use_enci, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool50.not = icmp eq i8 %159, 0
  %160 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %io_base, align 8
  br i1 %tobool50.not, label %if.else54, label %if.then51

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr53 = getelementptr i8, ptr %161, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 0) #6, !srcloc !105
  br label %if.end57

if.else54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr56 = getelementptr i8, ptr %161, i32 28160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #6, !srcloc !105
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then51
  %162 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %io_base, align 8
  %add.ptr60 = getelementptr i8, ptr %163, i32 40044
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #6, !srcloc !104
  %165 = and i32 %164, -50331649
  %166 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %io_base, align 8
  %add.ptr64 = getelementptr i8, ptr %167, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %165) #6, !srcloc !105
  %168 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %io_base, align 8
  %add.ptr67 = getelementptr i8, ptr %169, i32 40044
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #6, !srcloc !104
  %171 = and i32 %170, -983041
  %172 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %io_base, align 8
  %add.ptr73 = getelementptr i8, ptr %173, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %171) #6, !srcloc !105
  %174 = ptrtoint ptr %hdmi_use_enci to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %hdmi_use_enci, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool76.not = icmp eq i8 %175, 0
  %176 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %io_base, align 8
  br i1 %tobool76.not, label %if.else80, label %if.then77

if.then77:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr79 = getelementptr i8, ptr %177, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 16777216) #6, !srcloc !105
  br label %if.end83

if.else80:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr82 = getelementptr i8, ptr %177, i32 28160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 16777216) #6, !srcloc !105
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %if.then77
  %178 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %io_base, align 8
  %add.ptr86 = getelementptr i8, ptr %179, i32 40044
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #6, !srcloc !104
  %181 = and i32 %180, -983041
  %182 = tail call i32 @llvm.bswap.i32(i32 %181)
  %and90 = and i32 %7, 3840
  %or92 = or i32 %182, %and90
  %183 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %184 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %io_base, align 8
  %add.ptr94 = getelementptr i8, ptr %185, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %183) #6, !srcloc !105
  %186 = ptrtoint ptr %hdmi_use_enci to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %hdmi_use_enci, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool97.not = icmp eq i8 %187, 0
  %188 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %io_base, align 8
  %add.ptr111 = getelementptr i8, ptr %189, i32 40044
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #6
  %191 = and i32 %190, -50331649
  br i1 %tobool97.not, label %if.else108, label %if.then98

if.then98:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %192 = or i32 %191, 16777216
  %193 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %io_base, align 8
  %add.ptr107 = getelementptr i8, ptr %194, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %192) #6, !srcloc !105
  br label %if.end118

if.else108:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %195 = or i32 %191, 33554432
  %196 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %io_base, align 8
  %add.ptr117 = getelementptr i8, ptr %197, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %195) #6, !srcloc !105
  br label %if.end118

if.end118:                                        ; preds = %if.else108, %if.then98
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_phy_disable(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #6
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hhi, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 928, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_read_hpd(ptr nocapture noundef readnone %hdmi, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %data, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_setup_hpd(ptr nocapture noundef readnone %hdmi, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.meson_dw_hdmi, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %top_write = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %top_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top_write, align 4
  tail call void %3(ptr noundef %data, i32 noundef 2, i32 noundef 41120) #6
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %top_write3 = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %top_write3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %top_write3, align 4
  tail call void %7(ptr noundef %data, i32 noundef 5, i32 noundef 6) #6
  %8 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call i32 %11(ptr noundef %data, i32 noundef 3) #6
  %or.i = or i32 %call.i, 6
  %12 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data1, align 4
  %top_write.i = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %top_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %top_write.i, align 4
  tail call void %15(ptr noundef %data, i32 noundef 3, i32 noundef %or.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_is_420_only(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_is_420_also(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_set_high_tmds_clock_ratio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_unbind(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_top_read(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @reg_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %and = and i32 %addr, 65535
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %1 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmitx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdmitx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #6, !srcloc !105
  %5 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdmitx, align 4
  %add.ptr15 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  %8 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdmitx, align 4
  %add.ptr22 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #6, !srcloc !104
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @reg_lock, i32 noundef %call2) #6
  ret i32 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_top_write(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @reg_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %and = and i32 %addr, 65535
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %1 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmitx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdmitx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %data)
  %6 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmitx, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %5) #6, !srcloc !105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @reg_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_dwc_read(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @reg_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %and = and i32 %addr, 65535
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %1 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmitx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdmitx, align 4
  %add.ptr13 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %0) #6, !srcloc !105
  %5 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdmitx, align 4
  %add.ptr15 = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %8 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdmitx, align 4
  %add.ptr22 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #6, !srcloc !104
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @reg_lock, i32 noundef %call2) #6
  ret i32 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_dwc_write(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @reg_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %and = and i32 %addr, 65535
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %1 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmitx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdmitx, align 4
  %add.ptr13 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %0) #6, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %data)
  %6 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmitx, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %5) #6, !srcloc !105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @reg_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_g12a_top_read(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %0 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmitx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32768
  %shl = shl i32 %addr, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !104
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_g12a_top_write(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %1 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdmitx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 32768
  %shl = shl i32 %addr, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %0) #6, !srcloc !105
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_g12a_dwc_read(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %0 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmitx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_g12a_dwc_write(ptr nocapture noundef readonly %dw_hdmi, i32 noundef %addr, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %data to i8
  %hdmitx = getelementptr inbounds %struct.meson_dw_hdmi, ptr %dw_hdmi, i32 0, i32 3
  %0 = ptrtoint ptr %hdmitx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmitx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #6, !srcloc !126
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.meson_dw_hdmi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %top_write = getelementptr inbounds %struct.meson_dw_hdmi_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %top_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %top_write, align 4
  tail call void %5(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_dw_hdmi_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @meson_dw_hdmi_init(ptr noundef nonnull %1)
  %hdmi = getelementptr inbounds %struct.meson_dw_hdmi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi, align 4
  tail call void @dw_hdmi_resume(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !54, !55, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_meson_dw_hdmi__313_906_meson_dw_hdmi_platform_driver_init6, !1, !"__initcall__kmod_meson_dw_hdmi__313_906_meson_dw_hdmi_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 906, i32 1}
!2 = !{ptr @__exitcall_meson_dw_hdmi_platform_driver_exit, !1, !"__exitcall_meson_dw_hdmi_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author314, !4, !"__UNIQUE_ID_author314", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 908, i32 1}
!5 = !{ptr @__UNIQUE_ID_description315, !6, !"__UNIQUE_ID_description315", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 909, i32 1}
!7 = !{ptr @__UNIQUE_ID_file316, !8, !"__UNIQUE_ID_file316", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 910, i32 1}
!9 = !{ptr @__UNIQUE_ID_license317, !8, !"__UNIQUE_ID_license317", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 901, i32 12}
!12 = !{ptr @meson_dw_hdmi_platform_driver, !13, !"meson_dw_hdmi_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 897, i32 31}
!14 = !{ptr @meson_dw_hdmi_ops, !15, !"meson_dw_hdmi_ops", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 834, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 708, i32 2}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 712, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @meson_dw_hdmi_bind._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @meson_dw_hdmi_bind._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 726, i32 64}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 742, i32 7}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 744, i32 3}
!32 = !{ptr @meson_dw_hdmi_bind._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_dw_hdmi_bind._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 749, i32 7}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 751, i32 3}
!38 = !{ptr @meson_dw_hdmi_bind._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @meson_dw_hdmi_bind._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 756, i32 7}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 758, i32 3}
!44 = !{ptr @meson_dw_hdmi_bind._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @meson_dw_hdmi_bind._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 766, i32 30}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 770, i32 30}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 774, i32 30}
!52 = !{ptr @meson_dw_hdmi_bind._key, !53, !"_key", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 778, i32 23}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 789, i32 6}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 791, i32 3}
!59 = !{ptr @meson_dw_hdmi_bind._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @meson_dw_hdmi_bind._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 801, i32 27}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 808, i32 43}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 809, i32 43}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 810, i32 43}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 821, i32 2}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 685, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @meson_enable_clk._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @meson_enable_clk._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @meson_dw_hdmi_regmap_config, !77, !"meson_dw_hdmi_regmap_config", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 604, i32 35}
!78 = !{ptr @meson_dw_hdmi_phy_ops, !79, !"meson_dw_hdmi_phy_ops", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 526, i32 37}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 379, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 318, i32 7}
!84 = !{ptr @meson_dw_hdmi_of_table, !85, !"meson_dw_hdmi_of_table", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 884, i32 34}
!86 = !{ptr @meson_dw_hdmi_gx_data, !87, !"meson_dw_hdmi_gx_data", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 613, i32 40}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 113, i32 8}
!90 = !{ptr @reg_lock, !89, !"reg_lock", i1 false, i1 false}
!91 = !{ptr @meson_dw_hdmi_g12a_data, !92, !"meson_dw_hdmi_g12a_data", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 620, i32 40}
!93 = !{ptr @meson_dw_hdmi_pm_ops, !94, !"meson_dw_hdmi_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/meson/meson_dw_hdmi.c", i32 879, i32 32}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 6010227}
!105 = !{i64 6009809}
!106 = !{i8 0, i8 2}
!107 = !{i64 2157612263}
!108 = !{i64 2157612704}
!109 = !{i64 2157613419}
!110 = !{i64 2157613925}
!111 = !{i64 2157615253}
!112 = !{i64 2157615694}
!113 = !{i64 2157616126}
!114 = !{i64 2157617672}
!115 = !{i64 2157618116}
!116 = !{i64 2157618837}
!117 = !{i64 2157619348}
!118 = !{i64 2157620343}
!119 = !{i64 2157620787}
!120 = !{i64 2157621222}
!121 = !{i64 2157614502}
!122 = !{i64 2157616720}
!123 = !{i64 6010007}
!124 = !{i64 2157619590}
!125 = !{i64 2157621794}
!126 = !{i64 6009612}
