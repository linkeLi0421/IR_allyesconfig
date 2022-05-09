; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sprd/sprd_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/sprd/sprd_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.sprd_dsi = type { ptr, %struct.mipi_dsi_host, ptr, %struct.drm_encoder, ptr, %struct.dsi_context }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.dsi_context = type { ptr, ptr, %struct.dphy_pll, %struct.videomode, i8, i8, i8, i32, i32, i16, i16, i16, i16, i16, i8, i8 }
%struct.dphy_pll = type { i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd-dsi-drv\00", [19 x i8] zeroinitializer }, align 32
@dsi_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sharkl3-dsi-host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_dsi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_dsi_probe, ptr @sprd_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dsi_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author307 = internal constant [45 x i8] c"sprd_drm.author=Leon He <leon.he@unisoc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [51 x i8] c"sprd_drm.author=Kevin Tang <kevin.tang@unisoc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [60 x i8] c"sprd_drm.description=Unisoc MIPI DSI HOST Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [44 x i8] c"sprd_drm.file=drivers/gpu/drm/sprd/sprd-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [24 x i8] c"sprd_drm.license=GPL v2\00", section ".modinfo", align 1
@sprd_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @sprd_dsi_host_attach, ptr @sprd_dsi_host_detach, ptr @sprd_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@dsi_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sprd_dsi_bind, ptr @sprd_dsi_unbind }, [24 x i8] zeroinitializer }, align 32
@sprd_dsi_encoder_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm] *ERROR* failed to find crtc mask\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_dsi_encoder_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/sprd/sprd_dsi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_dsi_encoder_init._entry_ptr = internal global ptr @sprd_dsi_encoder_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"find possible crtcs: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@sprd_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @drm_encoder_cleanup, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sprd_dsi_encoder_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[drm] *ERROR* failed to init dsi encoder\0A\00", [54 x i8] zeroinitializer }, align 32
@sprd_dsi_encoder_init._entry_ptr.9 = internal global ptr @sprd_dsi_encoder_init._entry.7, section ".printk_index", align 4
@sprd_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_dsi_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sprd_dsi_encoder_disable, ptr @sprd_dsi_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@sprd_dsi_encoder_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 837, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[drm] dsi isn't initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd_dsi_encoder_disable\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_dsi_encoder_disable._entry_ptr = internal global ptr @sprd_dsi_encoder_disable._entry, section ".printk_index", align 4
@sprd_dsi_encoder_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 800, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[drm] dsi is initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sprd_dsi_encoder_enable\00", [40 x i8] zeroinitializer }, align 32
@sprd_dsi_encoder_enable._entry_ptr = internal global ptr @sprd_dsi_encoder_enable._entry, section ".printk_index", align 4
@sprd_dsi_dpi_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[drm] *ERROR* current resolution can not be set\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sprd_dsi_dpi_video\00", [45 x i8] zeroinitializer }, align 32
@sprd_dsi_dpi_video._entry_ptr = internal global ptr @sprd_dsi_dpi_video._entry, section ".printk_index", align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported format (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@sprd_dphy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[drm] *ERROR* dphy initial failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_dphy_init\00", [17 x i8] zeroinitializer }, align 32
@sprd_dphy_init._entry_ptr = internal global ptr @sprd_dphy_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dphy_wait_pll_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[drm] *ERROR* dphy pll can not be locked\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dphy_wait_pll_locked\00", [43 x i8] zeroinitializer }, align 32
@dphy_wait_pll_locked._entry_ptr = internal global ptr @dphy_wait_pll_locked._entry, section ".printk_index", align 4
@sprd_dsi_context_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[drm] *ERROR* failed to map dsi host registers\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_dsi_context_init\00", [42 x i8] zeroinitializer }, align 32
@sprd_dsi_context_init._entry_ptr = internal global ptr @sprd_dsi_context_init._entry, section ".printk_index", align 4
@sprd_dsi_context_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_tst_io = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_tst_io_write, ptr null, ptr null, ptr @regmap_tst_io_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@byte_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sprd_dsi:916:(&byte_config)->lock\00", [62 x i8] zeroinitializer }, align 32
@sprd_dsi_context_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.3, i32 918, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[drm] *ERROR* dphy regmap init failed\0A\00", [57 x i8] zeroinitializer }, align 32
@sprd_dsi_context_init._entry_ptr.28 = internal global ptr @sprd_dsi_context_init._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg = 0x%02x, val = 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@sprd_dsi_rd_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[drm] *ERROR* wait read response time out\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sprd_dsi_rd_pkt\00", [16 x i8] zeroinitializer }, align 32
@sprd_dsi_rd_pkt._entry_ptr = internal global ptr @sprd_dsi_rd_pkt._entry, section ".printk_index", align 4
@sprd_dsi_rd_pkt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[drm] *ERROR* rx payload fifo empty\0A\00", [59 x i8] zeroinitializer }, align 32
@sprd_dsi_rd_pkt._entry_ptr.34 = internal global ptr @sprd_dsi_rd_pkt._entry.32, section ".printk_index", align 4
@sprd_dsi_wr_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[drm] *ERROR* tx payload fifo is not empty\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sprd_dsi_wr_pkt\00", [16 x i8] zeroinitializer }, align 32
@sprd_dsi_wr_pkt._entry_ptr = internal global ptr @sprd_dsi_wr_pkt._entry, section ".printk_index", align 4
@sprd_dsi_wr_pkt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm] *ERROR* tx cmd fifo is not empty\0A\00", [56 x i8] zeroinitializer }, align 32
@sprd_dsi_wr_pkt._entry_ptr.39 = internal global ptr @sprd_dsi_wr_pkt._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 255]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 255]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1065, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"dsi_match_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1030, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"sprd_dsi_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1061, i32 24 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"sprd_dsi_host_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1024, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"dsi_component_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 967, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 867, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 871, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"sprd_encoder_funcs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 854, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 877, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"sprd_encoder_helper_funcs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 848, i32 46 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 837, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 800, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 527, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 384, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 770, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 236, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 912, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"regmap_tst_io\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 215, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"byte_config\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 220, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 916, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 918, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 174, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 700, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 707, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 636, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [35 x i8] c"../drivers/gpu/drm/sprd/sprd_dsi.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 658, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @dphy_wait_pll_locked._entry, ptr @dphy_wait_pll_locked._entry_ptr, ptr @sprd_dphy_init._entry, ptr @sprd_dphy_init._entry_ptr, ptr @sprd_dsi_context_init._entry, ptr @sprd_dsi_context_init._entry.26, ptr @sprd_dsi_context_init._entry_ptr, ptr @sprd_dsi_context_init._entry_ptr.28, ptr @sprd_dsi_dpi_video._entry, ptr @sprd_dsi_dpi_video._entry_ptr, ptr @sprd_dsi_encoder_disable._entry, ptr @sprd_dsi_encoder_disable._entry_ptr, ptr @sprd_dsi_encoder_enable._entry, ptr @sprd_dsi_encoder_enable._entry_ptr, ptr @sprd_dsi_encoder_init._entry, ptr @sprd_dsi_encoder_init._entry.7, ptr @sprd_dsi_encoder_init._entry_ptr, ptr @sprd_dsi_encoder_init._entry_ptr.9, ptr @sprd_dsi_rd_pkt._entry, ptr @sprd_dsi_rd_pkt._entry.32, ptr @sprd_dsi_rd_pkt._entry_ptr, ptr @sprd_dsi_rd_pkt._entry_ptr.34, ptr @sprd_dsi_wr_pkt._entry, ptr @sprd_dsi_wr_pkt._entry.37, ptr @sprd_dsi_wr_pkt._entry_ptr, ptr @sprd_dsi_wr_pkt._entry_ptr.39, ptr @.str, ptr @dsi_match_table, ptr @sprd_dsi_driver, ptr @sprd_dsi_host_ops, ptr @dsi_component_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sprd_encoder_funcs, ptr @.str.8, ptr @sprd_encoder_helper_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @sprd_dsi_context_init._key, ptr @regmap_tst_io, ptr @byte_config, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_encoder_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_encoder_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_encoder_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_encoder_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_dpi_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dphy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dphy_wait_pll_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_context_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_context_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_tst_io to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byte_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_context_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_rd_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_rd_pkt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_wr_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dsi_wr_pkt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dsi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 208, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %host = getelementptr inbounds %struct.sprd_dsi, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.sprd_dsi, ptr %call.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sprd_dsi_host_ops, ptr %ops, align 4
  %2 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %host, align 4
  %call5 = tail call i32 @mipi_dsi_host_register(ptr noundef %host) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dsi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %host = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dsi_host_attach(ptr nocapture noundef %host, ptr noundef %slave) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %slave2 = getelementptr i8, ptr %host, i32 16
  %0 = ptrtoint ptr %slave2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %slave, ptr %slave2, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %slave, i32 0, i32 6
  %1 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode_flags, align 8
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  %5 = getelementptr i8, ptr %host, i32 181
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %5, align 1
  %7 = load i32, ptr %mode_flags, align 8
  %and5 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %burst_mode = getelementptr i8, ptr %host, i32 182
  %8 = ptrtoint ptr %burst_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %burst_mode, align 2
  br label %if.end17

if.else8:                                         ; preds = %entry
  %and10 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %burst_mode15 = getelementptr i8, ptr %host, i32 182
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %burst_mode15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %burst_mode15, align 2
  br label %if.end17

if.else14:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %burst_mode15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %burst_mode15, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12, %if.then7
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %call = tail call i32 @component_add(ptr noundef %12, ptr noundef nonnull @dsi_component_ops) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dsi_host_detach(ptr nocapture noundef readonly %host, ptr nocapture noundef readnone %slave) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void @component_del(ptr noundef %1, ptr noundef nonnull @dsi_component_ops) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dsi_host_transfer(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf1 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf1, align 4
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %4 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %tx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.then.cond.end11_crit_edge, label %cond.end

if.then.cond.end11_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end11

cond.end:                                         ; preds = %if.then
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp5.not = icmp eq i32 %7, 1
  br i1 %cmp5.not, label %cond.end.cond.end11_crit_edge, label %cond.true7

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end11

cond.true7:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx8 = getelementptr i8, ptr %1, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %phi.cast = zext i8 %11 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 16
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true7, %cond.end.cond.end11_crit_edge, %if.then.cond.end11_crit_edge
  %cond63 = phi i8 [ %9, %cond.true7 ], [ %9, %cond.end.cond.end11_crit_edge ], [ 0, %if.then.cond.end11_crit_edge ]
  %cond12 = phi i32 [ %phi.bo, %cond.true7 ], [ 0, %cond.end.cond.end11_crit_edge ], [ 0, %if.then.cond.end11_crit_edge ]
  %ctx = getelementptr i8, ptr %host, i32 96
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg, align 4
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 1
  %add.ptr.i = getelementptr i8, ptr %host, i32 -4
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i = icmp ugt i8 %13, 3
  br i1 %cmp.i, label %cond.end11.cleanup_crit_edge, label %if.end.i

cond.end11.cleanup_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %cond.end11
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 152
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %19 = and i32 %18, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %conv4.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 6
  %conv6.i = zext i8 %cond63 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl7.i, %cond12
  %or8.i = or i32 %or.i, %conv4.i
  %or11.i = or i32 %or8.i, %shl.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %add.ptr12.i = getelementptr i8, ptr %22, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %20) #4, !srcloc !115
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %do.body.i
  %i.02.i.i = phi i32 [ 0, %do.body.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 152
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not.i.i = icmp sgt i32 %25, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end19.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #4
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end19.i:                                       ; preds = %for.body.i.i
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %28, i32 152
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %30 = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool21.not.i = icmp eq i32 %30, 0
  br i1 %tobool21.not.i, label %for.cond.preheader.i, label %if.end19.i.cleanup.sink.split.i_crit_edge

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

for.cond.preheader.i:                             ; preds = %if.end19.i
  %conv36.i = and i32 %5, 255
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end70.i
  %inc75.i = add nuw nsw i32 %i.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc75.i, 100
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0119.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc75.i, %for.cond.i.for.body.i_crit_edge ]
  %count.0118.i = phi i32 [ 0, %for.cond.preheader.i ], [ %count.4.i, %for.cond.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %add.ptr32.i = getelementptr i8, ptr %32, i32 112
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #4, !srcloc !112
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0118.i, i32 %conv36.i)
  %cmp37.i = icmp slt i32 %count.0118.i, %conv36.i
  br i1 %cmp37.i, label %if.then39.i, label %for.body.i.if.end41.i_crit_edge

for.body.i.if.end41.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

if.then39.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv40.i = trunc i32 %34 to i8
  %inc.i = add nsw i32 %count.0118.i, 1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %count.0118.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv40.i, ptr %arrayidx.i, align 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %for.body.i.if.end41.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.then39.i ], [ %count.0118.i, %for.body.i.if.end41.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.i, i32 %conv36.i)
  %cmp43.i = icmp slt i32 %count.1.i, %conv36.i
  br i1 %cmp43.i, label %if.then45.i, label %if.end41.i.if.end50.i_crit_edge

if.end41.i.if.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 %34, 8
  %conv47.i = trunc i32 %shr.i to i8
  %inc48.i = add nsw i32 %count.1.i, 1
  %arrayidx49.i = getelementptr i8, ptr %3, i32 %count.1.i
  %36 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv47.i, ptr %arrayidx49.i, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.end41.i.if.end50.i_crit_edge
  %count.2.i = phi i32 [ %inc48.i, %if.then45.i ], [ %count.1.i, %if.end41.i.if.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.2.i, i32 %conv36.i)
  %cmp52.i = icmp slt i32 %count.2.i, %conv36.i
  br i1 %cmp52.i, label %if.then54.i, label %if.end50.i.if.end60.i_crit_edge

if.end50.i.if.end60.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr55.i = lshr i32 %34, 16
  %conv57.i = trunc i32 %shr55.i to i8
  %inc58.i = add nsw i32 %count.2.i, 1
  %arrayidx59.i = getelementptr i8, ptr %3, i32 %count.2.i
  %37 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv57.i, ptr %arrayidx59.i, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then54.i, %if.end50.i.if.end60.i_crit_edge
  %count.3.i = phi i32 [ %inc58.i, %if.then54.i ], [ %count.2.i, %if.end50.i.if.end60.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.3.i, i32 %conv36.i)
  %cmp62.i = icmp slt i32 %count.3.i, %conv36.i
  br i1 %cmp62.i, label %if.then64.i, label %if.end60.i.if.end70.i_crit_edge

if.end60.i.if.end70.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70.i

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr65.i = lshr i32 %34, 24
  %conv67.i = trunc i32 %shr65.i to i8
  %inc68.i = add nsw i32 %count.3.i, 1
  %arrayidx69.i = getelementptr i8, ptr %3, i32 %count.3.i
  %38 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv67.i, ptr %arrayidx69.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then64.i, %if.end60.i.if.end70.i_crit_edge
  %count.4.i = phi i32 [ %inc68.i, %if.then64.i ], [ %count.3.i, %if.end60.i.if.end70.i_crit_edge ]
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %40, i32 152
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %42 = and i32 %41, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool72.not.i = icmp eq i32 %42, 0
  br i1 %tobool72.not.i, label %for.cond.i, label %if.end70.i.cleanup_crit_edge

if.end70.i.cleanup_crit_edge:                     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.end19.i.cleanup.sink.split.i_crit_edge, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.str.33.sink.i = phi ptr [ @.str.33, %if.end19.i.cleanup.sink.split.i_crit_edge ], [ @.str.30, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -5, %if.end19.i.cleanup.sink.split.i_crit_edge ], [ -110, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %dev27.i = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev27.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %.str.33.sink.i) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %land.lhs.true19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end
  %tx_len20 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %47 = ptrtoint ptr %tx_len20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_len20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool21.not = icmp eq i32 %48, 0
  br i1 %tobool21.not, label %land.lhs.true19.cleanup_crit_edge, label %if.then22

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true19
  %ctx23 = getelementptr i8, ptr %host, i32 96
  %49 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %msg, align 4
  %type25 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %51 = ptrtoint ptr %type25 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type25, align 1
  %conv27 = trunc i32 %48 to i16
  %add.ptr.i47 = getelementptr i8, ptr %host, i32 -4
  %conv.i48 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp.i49 = icmp ugt i8 %50, 3
  br i1 %cmp.i49, label %if.then22.cleanup_crit_edge, label %if.then22.for.body.i.i53_crit_edge

if.then22.for.body.i.i53_crit_edge:               ; preds = %if.then22
  br label %for.body.i.i53

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i.i53:                                   ; preds = %if.end.i.i56.for.body.i.i53_crit_edge, %if.then22.for.body.i.i53_crit_edge
  %i.02.i.i50 = phi i32 [ %inc.i.i54, %if.end.i.i56.for.body.i.i53_crit_edge ], [ 0, %if.then22.for.body.i.i53_crit_edge ]
  %53 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx23, align 4
  %add.ptr.i.i.i51 = getelementptr i8, ptr %54, i32 152
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i51) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %56 = and i32 %55, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i52 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i52, label %if.end.i.i56, label %if.end3.i

if.end.i.i56:                                     ; preds = %for.body.i.i53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #4
  %inc.i.i54 = add nuw nsw i32 %i.02.i.i50, 1
  %exitcond.not.i.i55 = icmp eq i32 %inc.i.i54, 5000
  br i1 %exitcond.not.i.i55, label %do.end.i, label %if.end.i.i56.for.body.i.i53_crit_edge

if.end.i.i56.for.body.i.i53_crit_edge:            ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i53

do.end.i:                                         ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i47, align 4
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.35) #7
  br label %cleanup

if.end3.i:                                        ; preds = %for.body.i.i53
  %conv4.i57 = and i32 %48, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv27)
  %cmp5.i = icmp ugt i16 %conv27, 2
  br i1 %cmp5.i, label %if.end3.i.for.cond11.preheader.i_crit_edge, label %if.else.i

if.end3.i.for.cond11.preheader.i_crit_edge:       ; preds = %if.end3.i
  br label %for.cond11.preheader.i

for.cond11.preheader.i:                           ; preds = %do.body20.i.for.cond11.preheader.i_crit_edge, %if.end3.i.for.cond11.preheader.i_crit_edge
  %i.0121.i = phi i32 [ %add25.i, %do.body20.i.for.cond11.preheader.i_crit_edge ], [ 0, %if.end3.i.for.cond11.preheader.i_crit_edge ]
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.0121.i, i32 %conv4.i57) #4
  %62 = sub i32 %smax.i, %i.0121.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0121.i, i32 %conv4.i57)
  %exitcond.not.not.i = icmp slt i32 %i.0121.i, %conv4.i57
  br i1 %exitcond.not.not.i, label %for.body17.i, label %for.cond11.preheader.i.do.body20.i_crit_edge

for.cond11.preheader.i.do.body20.i_crit_edge:     ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20.i

for.body17.i:                                     ; preds = %for.cond11.preheader.i
  %arrayidx.i58 = getelementptr i8, ptr %1, i32 %i.0121.i
  %63 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i58, align 1
  %conv19.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %exitcond.1.not.i = icmp eq i32 %62, 1
  br i1 %exitcond.1.not.i, label %for.body17.i.do.body20.i_crit_edge, label %for.body17.1.i

for.body17.i.do.body20.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20.i

for.body17.1.i:                                   ; preds = %for.body17.i
  %add.1.i = add nsw i32 %i.0121.i, 1
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 %add.1.i
  %65 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.1.i, align 1
  %conv19.1.i = zext i8 %66 to i32
  %shl.1.i = shl nuw nsw i32 %conv19.1.i, 8
  %or.1.i = or i32 %shl.1.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %exitcond.2.not.i = icmp eq i32 %62, 2
  br i1 %exitcond.2.not.i, label %for.body17.1.i.do.body20.i_crit_edge, label %for.body17.2.i

for.body17.1.i.do.body20.i_crit_edge:             ; preds = %for.body17.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20.i

for.body17.2.i:                                   ; preds = %for.body17.1.i
  %add.2.i = add nsw i32 %i.0121.i, 2
  %arrayidx.2.i = getelementptr i8, ptr %1, i32 %add.2.i
  %67 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.2.i, align 1
  %conv19.2.i = zext i8 %68 to i32
  %shl.2.i = shl nuw nsw i32 %conv19.2.i, 16
  %or.2.i = or i32 %shl.2.i, %or.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %exitcond.3.not.i = icmp eq i32 %62, 3
  br i1 %exitcond.3.not.i, label %for.body17.2.i.do.body20.i_crit_edge, label %for.body17.3.i

for.body17.2.i.do.body20.i_crit_edge:             ; preds = %for.body17.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20.i

for.body17.3.i:                                   ; preds = %for.body17.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.3.i = add nsw i32 %i.0121.i, 3
  %arrayidx.3.i = getelementptr i8, ptr %1, i32 %add.3.i
  %69 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.3.i, align 1
  %conv19.3.i = zext i8 %70 to i32
  %shl.3.i = shl nuw i32 %conv19.3.i, 24
  %or.3.i = or i32 %shl.3.i, %or.2.i
  br label %do.body20.i

do.body20.i:                                      ; preds = %for.body17.3.i, %for.body17.2.i.do.body20.i_crit_edge, %for.body17.1.i.do.body20.i_crit_edge, %for.body17.i.do.body20.i_crit_edge, %for.cond11.preheader.i.do.body20.i_crit_edge
  %payload.0.lcssa.i = phi i32 [ 0, %for.cond11.preheader.i.do.body20.i_crit_edge ], [ %conv19.i, %for.body17.i.do.body20.i_crit_edge ], [ %or.1.i, %for.body17.1.i.do.body20.i_crit_edge ], [ %or.2.i, %for.body17.2.i.do.body20.i_crit_edge ], [ %or.3.i, %for.body17.3.i ]
  %j.0.lcssa.i = phi i32 [ 0, %for.cond11.preheader.i.do.body20.i_crit_edge ], [ 1, %for.body17.i.do.body20.i_crit_edge ], [ 2, %for.body17.1.i.do.body20.i_crit_edge ], [ 3, %for.body17.2.i.do.body20.i_crit_edge ], [ 4, %for.body17.3.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %71 = tail call i32 @llvm.bswap.i32(i32 %payload.0.lcssa.i) #4
  %72 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx23, align 4
  %add.ptr23.i = getelementptr i8, ptr %73, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %71) #4, !srcloc !115
  %add25.i = add i32 %j.0.lcssa.i, %i.0121.i
  %cmp9.i = icmp slt i32 %add25.i, %conv4.i57
  br i1 %cmp9.i, label %do.body20.i.for.cond11.preheader.i_crit_edge, label %for.end26.i

do.body20.i.for.cond11.preheader.i_crit_edge:     ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond11.preheader.i

for.end26.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv28.i = trunc i32 %48 to i8
  %74 = lshr i32 %48, 8
  %conv30.i = trunc i32 %74 to i8
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27)
  %cmp32.not.i = icmp eq i16 %conv27, 0
  br i1 %cmp32.not.i, label %if.else.i.if.end47.i_crit_edge, label %cond.end.i

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.i

cond.end.i:                                       ; preds = %if.else.i
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv27)
  %cmp38.not.i = icmp eq i16 %conv27, 1
  br i1 %cmp38.not.i, label %cond.end.i.if.end47.i_crit_edge, label %cond.true40.i

cond.end.i.if.end47.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47.i

cond.true40.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx41.i = getelementptr i8, ptr %1, i32 1
  %77 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx41.i, align 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %cond.true40.i, %cond.end.i.if.end47.i_crit_edge, %if.else.i.if.end47.i_crit_edge, %for.end26.i
  %wc_lsbyte.0.i = phi i8 [ %conv28.i, %for.end26.i ], [ %76, %cond.end.i.if.end47.i_crit_edge ], [ %76, %cond.true40.i ], [ 0, %if.else.i.if.end47.i_crit_edge ]
  %wc_msbyte.0.i = phi i8 [ %conv30.i, %for.end26.i ], [ 0, %cond.end.i.if.end47.i_crit_edge ], [ %78, %cond.true40.i ], [ 0, %if.else.i.if.end47.i_crit_edge ]
  br label %for.body.i107.i

for.body.i107.i:                                  ; preds = %if.end.i110.i.for.body.i107.i_crit_edge, %if.end47.i
  %i.02.i104.i = phi i32 [ 0, %if.end47.i ], [ %inc.i108.i, %if.end.i110.i.for.body.i107.i_crit_edge ]
  %79 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx23, align 4
  %add.ptr.i.i105.i = getelementptr i8, ptr %80, i32 152
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i105.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %82 = and i32 %81, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i106.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i106.i, label %if.end.i110.i, label %do.body57.i

if.end.i110.i:                                    ; preds = %for.body.i107.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748) #4
  %inc.i108.i = add nuw nsw i32 %i.02.i104.i, 1
  %exitcond.not.i109.i = icmp eq i32 %inc.i108.i, 5000
  br i1 %exitcond.not.i109.i, label %do.end53.i, label %if.end.i110.i.for.body.i107.i_crit_edge

if.end.i110.i.for.body.i107.i_crit_edge:          ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i107.i

do.end53.i:                                       ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i47, align 4
  %dev55.i = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %dev55.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev55.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.38) #7
  br label %cleanup

do.body57.i:                                      ; preds = %for.body.i107.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  %conv60.i = zext i8 %52 to i32
  %shl62.i = shl nuw nsw i32 %conv.i48, 6
  %or63.i = or i32 %shl62.i, %conv60.i
  %conv64.i = zext i8 %wc_lsbyte.0.i to i32
  %shl65.i = shl nuw nsw i32 %conv64.i, 8
  %or66.i = or i32 %or63.i, %shl65.i
  %conv67.i59 = zext i8 %wc_msbyte.0.i to i32
  %shl68.i = shl nuw nsw i32 %conv67.i59, 16
  %or69.i = or i32 %or66.i, %shl68.i
  %88 = tail call i32 @llvm.bswap.i32(i32 %or69.i) #4
  %89 = ptrtoint ptr %ctx23 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctx23, align 4
  %add.ptr71.i = getelementptr i8, ptr %90, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %88) #4, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %do.body57.i, %do.end53.i, %do.end.i, %if.then22.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cleanup.sink.split.i, %if.end70.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cond.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true19.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %cond.end11.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -110, %do.end.i ], [ -110, %do.end53.i ], [ 0, %do.body57.i ], [ -22, %if.then22.cleanup_crit_edge ], [ %count.4.i, %if.end70.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dsi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %1, align 4
  %encoder1.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool5.not.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev7.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %10, %cond.true.i ], [ null, %if.end.i.cond.end.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %call.i) #4
  %possible_crtcs.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %possible_crtcs.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call9.i = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %13, ptr noundef %encoder1.i, ptr noundef nonnull @sprd_encoder_funcs, i32 noundef 6, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end, label %do.end14.i

do.end14.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end:                                           ; preds = %cond.end.i
  %helper_private.i.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 3, i32 11
  %18 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sprd_encoder_helper_funcs, ptr %helper_private.i.i, align 4
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i25 = tail call ptr @devm_drm_of_get_bridge(ptr noundef %dev, ptr noundef %20, i32 noundef 1, i32 noundef 0) #4
  %panel_bridge.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i25, ptr %panel_bridge.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i26

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %call.i25 to i32
  br label %sprd_dsi_bridge_init.exit

if.end.i26:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call i32 @drm_bridge_attach(ptr noundef %encoder1.i, ptr noundef %call.i25, ptr noundef null, i32 noundef 0) #4
  br label %sprd_dsi_bridge_init.exit

sprd_dsi_bridge_init.exit:                        ; preds = %if.end.i26, %if.then.i
  %retval.0.i27 = phi i32 [ %22, %if.then.i ], [ %call6.i, %if.end.i26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i27)
  %tobool4.not = icmp eq i32 %retval.0.i27, 0
  br i1 %tobool4.not, label %if.end6, label %sprd_dsi_bridge_init.exit.cleanup_crit_edge

sprd_dsi_bridge_init.exit.cleanup_crit_edge:      ; preds = %sprd_dsi_bridge_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %sprd_dsi_bridge_init.exit
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %ctx1.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5
  %call.i28 = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 0) #4
  %23 = ptrtoint ptr %call.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i28, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i28, i32 0, i32 1
  %25 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %24
  %add.i.i = add i32 %sub.i.i, %26
  %call3.i = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %24, i32 noundef %add.i.i) #4
  %27 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call3.i, ptr %ctx1.i, align 4
  %tobool.not.i29 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i29, label %do.end.i30, label %if.end.i32

do.end.i30:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end.i32:                                       ; preds = %if.end6
  %call7.i = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_tst_io, ptr noundef %1, ptr noundef nonnull @byte_config, ptr noundef nonnull @sprd_dsi_context_init._key, ptr noundef nonnull @.str.25) #4
  %regmap.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i, ptr %regmap.i, align 4
  %cmp.i.i31 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i31, label %do.end13.i, label %if.end18.i

do.end13.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %dev15.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.27) #7
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %cleanup

if.end18.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #6
  %data_hs2lp.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 9
  %40 = ptrtoint ptr %data_hs2lp.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 120, ptr %data_hs2lp.i, align 4
  %data_lp2hs.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 10
  %41 = ptrtoint ptr %data_lp2hs.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 500, ptr %data_lp2hs.i, align 2
  %clk_hs2lp.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 11
  %42 = ptrtoint ptr %clk_hs2lp.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 4, ptr %clk_hs2lp.i, align 4
  %clk_lp2hs.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 12
  %43 = ptrtoint ptr %clk_lp2hs.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 15, ptr %clk_lp2hs.i, align 2
  %max_rd_time.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 13
  %44 = ptrtoint ptr %max_rd_time.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 6000, ptr %max_rd_time.i, align 4
  %int0_mask.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 7
  %45 = ptrtoint ptr %int0_mask.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %int0_mask.i, align 4
  %int1_mask.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 8
  %46 = ptrtoint ptr %int1_mask.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %int1_mask.i, align 4
  %enabled.i = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 5, i32 4
  %47 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %enabled.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18.i, %do.end13.i, %do.end.i30, %sprd_dsi_bridge_init.exit.cleanup_crit_edge, %do.end14.i, %do.end.i
  %retval.0 = phi i32 [ %retval.0.i27, %sprd_dsi_bridge_init.exit.cleanup_crit_edge ], [ -22, %do.end.i ], [ %call9.i, %do.end14.i ], [ %39, %do.end13.i ], [ 0, %if.end18.i ], [ -6, %do.end.i30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dsi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_graph_get_remote_node(ptr noundef %3, i32 noundef 1, i32 noundef 0) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drm_of_panel_bridge_remove.exit_crit_edge, label %if.end.i

entry.drm_of_panel_bridge_remove.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_of_panel_bridge_remove.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call.i) #4
  tail call void @drm_panel_bridge_remove(ptr noundef %call1.i) #4
  br label %drm_of_panel_bridge_remove.exit

drm_of_panel_bridge_remove.exit:                  ; preds = %if.end.i, %entry.drm_of_panel_bridge_remove.exit_crit_edge
  %encoder = getelementptr inbounds %struct.sprd_dsi, ptr %1, i32 0, i32 3
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dsi_encoder_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adj_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vm = getelementptr i8, ptr %encoder, i32 120
  tail call void @drm_display_mode_to_videomode(ptr noundef %adj_mode, ptr noundef %vm) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dsi_encoder_disable(ptr nocapture noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %encoder, i32 160
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %encoder, i32 -24
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %ctx1 = getelementptr i8, ptr %encoder, i32 76
  tail call void @sprd_dpu_stop(ptr noundef %7) #4
  %8 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 120
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %11 = and i32 %10, -33554433
  %12 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %13, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %11) #4, !srcloc !115
  %14 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx1, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %15, i32 120
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %17 = and i32 %16, -16777217
  %18 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i5.i = getelementptr i8, ptr %19, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i, i32 %17) #4, !srcloc !115
  %20 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx1, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %21, i32 120
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %23 = or i32 %22, 33554432
  %24 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i8.i = getelementptr i8, ptr %25, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i8.i, i32 %23) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx1, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx1, align 4
  %add.ptr8.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #4, !srcloc !115
  %32 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dsi_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %ctx1 = getelementptr i8, ptr %encoder, i32 76
  %enabled = getelementptr i8, ptr %encoder, i32 160
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %encoder, i32 -24
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave.i = getelementptr i8, ptr %encoder, i32 -4
  %8 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave.i, align 4
  %hs_rate.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %hs_rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hs_rate.i, align 4
  %div110.i = lshr i32 %11, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx1, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 -1) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx1, align 4
  %add.ptr12.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 -1) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx1, align 4
  %add.ptr17.i = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 16777216) #4, !srcloc !115
  %20 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 188
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %23 = and i32 %22, -33554433
  %24 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %25, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %23) #4, !srcloc !115
  %26 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx1, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %27, i32 188
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %29 = and i32 %28, -16777217
  %30 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i113.i = getelementptr i8, ptr %31, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i113.i, i32 %29) #4, !srcloc !115
  %32 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx1, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %33, i32 180
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %35 = or i32 %34, 16777216
  %36 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i116.i = getelementptr i8, ptr %37, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i116.i, i32 %35) #4, !srcloc !115
  %38 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx1, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %39, i32 180
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %41 = or i32 %40, 33554432
  %42 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i120.i = getelementptr i8, ptr %43, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i120.i, i32 %41) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx1, align 4
  %add.ptr22.i = getelementptr i8, ptr %45, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 16777216) #4, !srcloc !115
  %46 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx1, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %47, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %49 = and i32 %48, -201326593
  %50 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i123.i = getelementptr i8, ptr %51, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i123.i, i32 %49) #4, !srcloc !115
  %52 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx1, align 4
  %add.ptr.i124.i = getelementptr i8, ptr %53, i32 28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %55 = and i32 %54, -50331649
  %56 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i126.i = getelementptr i8, ptr %57, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i126.i, i32 %55) #4, !srcloc !115
  %58 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %slave.i, align 4
  %lp_rate.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %lp_rate.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lp_rate.i, align 8
  %add.i = add nsw i32 %div110.i, -1
  %sub.i = add i32 %add.i, %61
  %div26.i = udiv i32 %sub.i, %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  tail call void @arm_heavy_mb() #4
  %62 = tail call i32 @llvm.bswap.i32(i32 %div26.i) #4
  %63 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx1, align 4
  %add.ptr31.i = getelementptr i8, ptr %64, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %62) #4, !srcloc !115
  %max_rd_time32.i = getelementptr i8, ptr %encoder, i32 180
  %65 = ptrtoint ptr %max_rd_time32.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %max_rd_time32.i, align 4
  %conv.i = zext i16 %66 to i32
  %mul.i = mul i32 %div110.i, %conv.i
  %sub34.i = add i32 %mul.i, 999999
  %div35.i = udiv i32 %sub34.i, 1000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  tail call void @arm_heavy_mb() #4
  %67 = tail call i32 @llvm.bswap.i32(i32 %div35.i) #4
  %68 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx1, align 4
  %add.ptr42.i = getelementptr i8, ptr %69, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %67) #4, !srcloc !115
  %data_hs2lp43.i = getelementptr i8, ptr %encoder, i32 172
  %70 = ptrtoint ptr %data_hs2lp43.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %data_hs2lp43.i, align 4
  %conv44.i = zext i16 %71 to i32
  %mul45.i = mul i32 %div110.i, %conv44.i
  %sub47.i = add i32 %mul45.i, 999999
  %div48.i = udiv i32 %sub47.i, 1000000
  %data_lp2hs50.i = getelementptr i8, ptr %encoder, i32 174
  %72 = ptrtoint ptr %data_lp2hs50.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %data_lp2hs50.i, align 2
  %conv51.i = zext i16 %73 to i32
  %mul52.i = mul i32 %div110.i, %conv51.i
  %sub54.i = add i32 %mul52.i, 999999
  %div55.i = udiv i32 %sub54.i, 1000000
  %clk_hs2lp57.i = getelementptr i8, ptr %encoder, i32 176
  %74 = ptrtoint ptr %clk_hs2lp57.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %clk_hs2lp57.i, align 4
  %conv58.i = zext i16 %75 to i32
  %mul59.i = mul i32 %div110.i, %conv58.i
  %sub61.i = add i32 %mul59.i, 999999
  %div62.i = udiv i32 %sub61.i, 1000000
  %clk_lp2hs64.i = getelementptr i8, ptr %encoder, i32 178
  %76 = ptrtoint ptr %clk_lp2hs64.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %clk_lp2hs64.i, align 2
  %conv65.i = zext i16 %77 to i32
  %mul66.i = mul i32 %div110.i, %conv65.i
  %sub68.i = add i32 %mul66.i, 999999
  %div69.i = udiv i32 %sub68.i, 1000000
  %78 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctx1, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %79, i32 172
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %81 = and i32 %80, -65536
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #4
  %shl.i.i = shl nuw nsw i32 %div48.i, 16
  %or.i129.i = or i32 %82, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %83 = tail call i32 @llvm.bswap.i32(i32 %or.i129.i) #4
  %84 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i130.i = getelementptr i8, ptr %85, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i130.i, i32 %83) #4, !srcloc !115
  %86 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctx1, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %87, i32 172
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %89 = and i32 %88, 65535
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #4
  %or.i133.i = or i32 %90, %div55.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i133.i) #4
  %92 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i134.i = getelementptr i8, ptr %93, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i134.i, i32 %91) #4, !srcloc !115
  %94 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctx1, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %95, i32 168
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %97 = and i32 %96, -65536
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  %shl.i137.i = shl nuw nsw i32 %div62.i, 16
  %or.i138.i = or i32 %98, %shl.i137.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i138.i) #4
  %100 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i139.i = getelementptr i8, ptr %101, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i139.i, i32 %99) #4, !srcloc !115
  %102 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx1, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %103, i32 168
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %105 = and i32 %104, 65535
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #4
  %or.i143.i = or i32 %106, %div69.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %107 = tail call i32 @llvm.bswap.i32(i32 %or.i143.i) #4
  %108 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i144.i = getelementptr i8, ptr %109, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i144.i, i32 %107) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %110 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx1, align 4
  %add.ptr79.i = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 16777216) #4, !srcloc !115
  %work_mode = getelementptr i8, ptr %encoder, i32 161
  %112 = ptrtoint ptr %work_mode to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %work_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp = icmp eq i8 %113, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -24
  %vm1.i = getelementptr i8, ptr %encoder, i32 120
  %114 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %slave.i, align 4
  %hs_rate.i33 = getelementptr inbounds %struct.mipi_dsi_device, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %hs_rate.i33 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hs_rate.i33, align 4
  %div1.i = lshr i32 %117, 3
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %115, i32 0, i32 5
  %118 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %format.i, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values)
  switch i32 %119, label %sw.default.i.i [
    i32 3, label %if.then3.calc_video_size_step.exit.i_crit_edge
    i32 1, label %if.then3.sw.bb1.i2.i_crit_edge
    i32 2, label %if.then3.sw.bb1.i2.i_crit_edge85
    i32 0, label %if.then3.sw.bb2.i3.i_crit_edge
    i32 255, label %sw.bb3.i4.i
  ]

if.then3.sw.bb2.i3.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2.i3.i

if.then3.sw.bb1.i2.i_crit_edge85:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i2.i

if.then3.sw.bb1.i2.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i2.i

if.then3.calc_video_size_step.exit.i_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_video_size_step.exit.i

sw.default.i.i:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %119) #4
  br label %sw.bb2.i3.i

sw.bb1.i2.i:                                      ; preds = %if.then3.sw.bb1.i2.i_crit_edge, %if.then3.sw.bb1.i2.i_crit_edge85
  br label %calc_video_size_step.exit.i

sw.bb2.i3.i:                                      ; preds = %sw.default.i.i, %if.then3.sw.bb2.i3.i_crit_edge
  br label %calc_video_size_step.exit.i

sw.bb3.i4.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_video_size_step.exit.i

calc_video_size_step.exit.i:                      ; preds = %sw.bb3.i4.i, %sw.bb2.i3.i, %sw.bb1.i2.i, %if.then3.calc_video_size_step.exit.i_crit_edge
  %conv477.i = phi i32 [ 12, %sw.bb3.i4.i ], [ 5, %sw.bb2.i3.i ], [ 3, %sw.bb1.i2.i ], [ 0, %if.then3.calc_video_size_step.exit.i_crit_edge ]
  %bpp_x100.0.i.i = phi i32 [ 100, %sw.bb3.i4.i ], [ 300, %sw.bb2.i3.i ], [ 225, %sw.bb1.i2.i ], [ 200, %if.then3.calc_video_size_step.exit.i_crit_edge ]
  %hactive79.i = getelementptr i8, ptr %encoder, i32 124
  %121 = ptrtoint ptr %hactive79.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %conv581.in.i = load i32, ptr %hactive79.i, align 4
  %mul.i34 = mul i32 %div1.i, 1000
  %122 = ptrtoint ptr %vm1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vm1.i, align 4
  %div11.i = udiv i32 %123, 1000
  %div12.i = udiv i32 %mul.i34, %div11.i
  %hsync_len.i = getelementptr i8, ptr %encoder, i32 136
  %124 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hsync_len.i, align 4
  %add.i35 = add i32 %125, %conv581.in.i
  %hfront_porch.i = getelementptr i8, ptr %encoder, i32 128
  %126 = ptrtoint ptr %hfront_porch.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hfront_porch.i, align 4
  %add14.i = add i32 %add.i35, %127
  %hback_porch.i = getelementptr i8, ptr %encoder, i32 132
  %128 = ptrtoint ptr %hback_porch.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hback_porch.i, align 4
  %add15.i = add i32 %add14.i, %129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %130 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctx1, align 4
  %add.ptr17.i36 = getelementptr i8, ptr %131, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i36, i32 0) #4, !srcloc !115
  %132 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctx1, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %133, i32 56
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %135 = and i32 %134, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %136 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i.i38 = getelementptr i8, ptr %137, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i38, i32 %135) #4, !srcloc !115
  %138 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx1, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %139, i32 32
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %141 = and i32 %140, -1056964609
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #4
  %or.i12.i = or i32 %142, %conv477.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %143 = tail call i32 @llvm.bswap.i32(i32 %or.i12.i) #4
  %144 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i13.i = getelementptr i8, ptr %145, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i13.i, i32 %143) #4, !srcloc !115
  %burst_mode.i = getelementptr i8, ptr %encoder, i32 162
  %146 = ptrtoint ptr %burst_mode.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %burst_mode.i, align 2
  %148 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ctx1, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %149, i32 56
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %151 = and i32 %150, -50331649
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #4
  %153 = and i8 %147, 3
  %and2.i16.i = zext i8 %153 to i32
  %or.i17.i = or i32 %152, %and2.i16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %154 = tail call i32 @llvm.bswap.i32(i32 %or.i17.i) #4
  %155 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i18.i = getelementptr i8, ptr %156, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i18.i, i32 %154) #4, !srcloc !115
  %conv21.i = and i32 %add15.i, 65535
  %mul22.i = mul i32 %conv21.i, %div12.i
  %mul23.i = mul i32 %mul22.i, 95
  %div24.i = udiv i32 %mul23.i, 100000
  %157 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ctx1, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %158, i32 208
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #4, !srcloc !112
  %160 = shl i32 %159, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %or.i22.i = or i32 %160, %div24.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %161 = tail call i32 @llvm.bswap.i32(i32 %or.i22.i) #4
  %162 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i23.i = getelementptr i8, ptr %163, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i23.i, i32 %161) #4, !srcloc !115
  %div29.i = udiv i32 %mul22.i, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  tail call void @arm_heavy_mb() #4
  %conv34.i = and i32 %div29.i, 65535
  %164 = tail call i32 @llvm.bswap.i32(i32 %conv34.i) #4
  %165 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctx1, align 4
  %add.ptr36.i = getelementptr i8, ptr %166, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %164) #4, !srcloc !115
  %167 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hsync_len.i, align 4
  %mul38.i = mul i32 %168, %div12.i
  %div39.i = udiv i32 %mul38.i, 1000
  %169 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ctx1, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %170, i32 40
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %172 = and i32 %171, -65536
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #4
  %conv41.i = shl i32 %div39.i, 16
  %or.i27.i = or i32 %173, %conv41.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %174 = tail call i32 @llvm.bswap.i32(i32 %or.i27.i) #4
  %175 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i28.i = getelementptr i8, ptr %176, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i28.i, i32 %174) #4, !srcloc !115
  %177 = ptrtoint ptr %hback_porch.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %hback_porch.i, align 4
  %mul43.i = mul i32 %178, %div12.i
  %div44.i = udiv i32 %mul43.i, 1000
  %conv46.i = and i32 %div44.i, 65535
  %179 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ctx1, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %180, i32 40
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %182 = and i32 %181, 65535
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #4
  %or.i31.i = or i32 %183, %conv46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %184 = tail call i32 @llvm.bswap.i32(i32 %or.i31.i) #4
  %185 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i32.i = getelementptr i8, ptr %186, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i32.i, i32 %184) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  %vactive.i = getelementptr i8, ptr %encoder, i32 140
  %187 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %vactive.i, align 4
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #4
  %190 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ctx1, align 4
  %add.ptr51.i = getelementptr i8, ptr %191, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %189) #4, !srcloc !115
  %vfront_porch.i = getelementptr i8, ptr %encoder, i32 144
  %192 = ptrtoint ptr %vfront_porch.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %vfront_porch.i, align 4
  %194 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ctx1, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %195, i32 48
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %197 = and i32 %196, 16580607
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #4
  %and2.i35.i = and i32 %193, 1023
  %or.i36.i = or i32 %198, %and2.i35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %199 = tail call i32 @llvm.bswap.i32(i32 %or.i36.i) #4
  %200 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i37.i = getelementptr i8, ptr %201, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i37.i, i32 %199) #4, !srcloc !115
  %vback_porch.i = getelementptr i8, ptr %encoder, i32 148
  %202 = ptrtoint ptr %vback_porch.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %vback_porch.i, align 4
  %204 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ctx1, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %205, i32 48
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %207 = and i32 %206, -16518913
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #4
  %shl.i40.i = shl i32 %203, 10
  %and2.i41.i = and i32 %shl.i40.i, 1047552
  %or.i42.i = or i32 %208, %and2.i41.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %209 = tail call i32 @llvm.bswap.i32(i32 %or.i42.i) #4
  %210 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i43.i = getelementptr i8, ptr %211, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i43.i, i32 %209) #4, !srcloc !115
  %vsync_len.i = getelementptr i8, ptr %encoder, i32 152
  %212 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %vsync_len.i, align 4
  %214 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ctx1, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %215, i32 48
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %217 = and i32 %216, -61504
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #4
  %shl.i46.i = shl i32 %213, 20
  %and2.i47.i = and i32 %shl.i46.i, 1072693248
  %or.i48.i = or i32 %218, %and2.i47.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %219 = tail call i32 @llvm.bswap.i32(i32 %or.i48.i) #4
  %220 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i49.i = getelementptr i8, ptr %221, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i49.i, i32 %219) #4, !srcloc !115
  %222 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ctx1, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %223, i32 56
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %225 = or i32 %224, 4128768
  %226 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i53.i = getelementptr i8, ptr %227, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i53.i, i32 %225) #4, !srcloc !115
  %228 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %vactive.i, align 4
  %mul54.i = mul i32 %229, %conv21.i
  %div57.lhs.trunc.i = trunc i32 %bpp_x100.0.i.i to i16
  %div5799.i = udiv i16 %div57.lhs.trunc.i, 50
  %div57.zext.i = zext i16 %div5799.i to i32
  %add58.i = add i32 %mul54.i, %div57.zext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add58.i)
  %cmp105.i = icmp ugt i32 %add58.i, 128
  br i1 %cmp105.i, label %calc_video_size_step.exit.i.for.body.i_crit_edge, label %calc_video_size_step.exit.i.for.end.i_crit_edge

calc_video_size_step.exit.i.for.end.i_crit_edge:  ; preds = %calc_video_size_step.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

calc_video_size_step.exit.i.for.body.i_crit_edge: ; preds = %calc_video_size_step.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %calc_video_size_step.exit.i.for.body.i_crit_edge
  %div2.0106.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ 128, %calc_video_size_step.exit.i.for.body.i_crit_edge ]
  %add58.i.frozen = freeze i32 %add58.i
  %div2.0106.i.frozen = freeze i32 %div2.0106.i
  %div72.i = udiv i32 %add58.i.frozen, %div2.0106.i.frozen
  %230 = mul i32 %div72.i, %div2.0106.i.frozen
  %rem.i.decomposed = sub i32 %add58.i.frozen, %230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp62.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp62.i, label %do.body64.i, label %for.inc.i

do.body64.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %231 = tail call i32 @llvm.bswap.i32(i32 %div2.0106.i) #4
  %232 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ctx1, align 4
  %add.ptr68.i = getelementptr i8, ptr %233, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %231) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  tail call void @arm_heavy_mb() #4
  %234 = tail call i32 @llvm.bswap.i32(i32 %div72.i) #4
  %235 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ctx1, align 4
  %add.ptr74.i = getelementptr i8, ptr %236, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %234) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  tail call void @arm_heavy_mb() #4
  %237 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ctx1, align 4
  %add.ptr80.i = getelementptr i8, ptr %238, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %234) #4, !srcloc !115
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %div2.0106.i, -1
  %cmp60.i = icmp ugt i32 %div2.0106.i, 3
  br i1 %cmp60.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body64.i, %calc_video_size_step.exit.i.for.end.i_crit_edge
  %239 = ptrtoint ptr %burst_mode.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %burst_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %240)
  %cmp83.i = icmp eq i8 %240, 2
  br i1 %cmp83.i, label %if.then85.i, label %if.else.i

if.then85.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv86.i = and i32 %conv581.in.i, 65535
  %241 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ctx1, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %242, i32 36
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %244 = and i32 %243, 65535
  %245 = tail call i32 @llvm.bswap.i32(i32 %244) #4
  %or.i57.i = or i32 %245, %conv86.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %246 = tail call i32 @llvm.bswap.i32(i32 %or.i57.i) #4
  %247 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i58.i = getelementptr i8, ptr %248, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i58.i, i32 %246) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %249 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ctx1, align 4
  %add.ptr91.i = getelementptr i8, ptr %250, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 0) #4, !srcloc !115
  %251 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ctx1, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %252, i32 36
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %254 = and i32 %253, -65536
  %255 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i61.i = getelementptr i8, ptr %256, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i61.i, i32 %254) #4, !srcloc !115
  br label %do.body185.i

if.else.i:                                        ; preds = %for.end.i
  %257 = ptrtoint ptr %hactive79.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %hactive79.i, align 4
  %mul94.i = mul i32 %258, %bpp_x100.0.i.i
  %div95.i = udiv i32 %mul94.i, 100
  %add96.i = add nuw nsw i32 %div95.i, 6
  %259 = ptrtoint ptr %hfront_porch.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %hfront_porch.i, align 4
  %add99.i = add i32 %260, %258
  %mul100.i = mul i32 %add99.i, %div12.i
  %261 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %slave.i, align 4
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %262, i32 0, i32 4
  %263 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %lanes.i, align 8
  %div102.i = udiv i32 %mul100.i, %264
  %div103.i = udiv i32 %div102.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div103.i, i32 %add96.i)
  %cmp104.i = icmp ult i32 %div103.i, %add96.i
  br i1 %cmp104.i, label %do.end109.i, label %if.end110.i

do.end109.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %265 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %266, i32 0, i32 2
  %267 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %268, ptr noundef nonnull @.str.15) #7
  br label %if.end5

if.end110.i:                                      ; preds = %if.else.i
  %sub.i39 = sub nsw i32 %div103.i, %add96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i39)
  %cmp111.i = icmp ugt i32 %sub.i39, 1
  br i1 %cmp111.i, label %for.cond115.preheader.i, label %if.else164.i

for.cond115.preheader.i:                          ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %258)
  %cmp118107.i = icmp ugt i32 %258, 1
  br i1 %cmp118107.i, label %for.body120.lr.ph.i, label %for.cond115.preheader.i.if.end176.i_crit_edge

for.cond115.preheader.i.if.end176.i_crit_edge:    ; preds = %for.cond115.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176.i

for.body120.lr.ph.i:                              ; preds = %for.cond115.preheader.i
  %mul122.i = mul i32 %258, 1000
  br label %for.body120.i

for.body120.i:                                    ; preds = %for.inc144.i.for.body120.i_crit_edge, %for.body120.lr.ph.i
  %conv116111.i = phi i32 [ 1, %for.body120.lr.ph.i ], [ %conv116.i, %for.inc144.i.for.body120.i_crit_edge ]
  %chunks.0110.i = phi i32 [ 0, %for.body120.lr.ph.i ], [ %chunks.1.i, %for.inc144.i.for.body120.i_crit_edge ]
  %video_size.0108.i = phi i16 [ 1, %for.body120.lr.ph.i ], [ %add147.i, %for.inc144.i.for.body120.i_crit_edge ]
  %div124.i = udiv i32 %mul122.i, %conv116111.i
  %rem125.i = urem i32 %div124.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem125.i)
  %tobool126.not.i = icmp eq i32 %rem125.i, 0
  br i1 %tobool126.not.i, label %if.end128.i, label %for.body120.i.for.inc144.i_crit_edge

for.body120.i.for.inc144.i_crit_edge:             ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc144.i

if.end128.i:                                      ; preds = %for.body120.i
  %div131.i = udiv i32 %258, %conv116111.i
  %mul134.i = mul nuw nsw i32 %conv116111.i, %bpp_x100.0.i.i
  %div135.i = udiv i32 %mul134.i, 100
  %add136.i = add nuw nsw i32 %div135.i, 6
  %mul137.i = mul i32 %div131.i, %add136.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div103.i, i32 %mul137.i)
  %cmp138.not.i = icmp ult i32 %div103.i, %mul137.i
  br i1 %cmp138.not.i, label %if.end128.i.for.inc144.i_crit_edge, label %for.end149.i

if.end128.i.for.inc144.i_crit_edge:               ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc144.i

for.inc144.i:                                     ; preds = %if.end128.i.for.inc144.i_crit_edge, %for.body120.i.for.inc144.i_crit_edge
  %chunks.1.i = phi i32 [ %chunks.0110.i, %for.body120.i.for.inc144.i_crit_edge ], [ %div131.i, %if.end128.i.for.inc144.i_crit_edge ]
  %add147.i = add i16 %video_size.0108.i, 1
  %conv116.i = zext i16 %add147.i to i32
  %cmp118.i = icmp ugt i32 %258, %conv116.i
  br i1 %cmp118.i, label %for.inc144.i.for.body120.i_crit_edge, label %for.inc144.i.if.end176.i_crit_edge

for.inc144.i.if.end176.i_crit_edge:               ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176.i

for.inc144.i.for.body120.i_crit_edge:             ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body120.i

for.end149.i:                                     ; preds = %if.end128.i
  %sub142.i = sub i32 %div103.i, %mul137.i
  %mul150.i = mul i32 %div131.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub142.i, i32 %mul150.i)
  %cmp151.i = icmp ugt i32 %sub142.i, %mul150.i
  br i1 %cmp151.i, label %if.then153.i, label %for.end149.i.if.end176.i_crit_edge

for.end149.i.if.end176.i_crit_edge:               ; preds = %for.end149.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end176.i

if.then153.i:                                     ; preds = %for.end149.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub155.i = sub i32 %sub142.i, %mul150.i
  %div156.i = udiv i32 %sub155.i, %div131.i
  %conv158.i = and i32 %div156.i, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv158.i)
  %cmp159.not.i = icmp eq i32 %conv158.i, 0
  %269 = and i32 %div156.i, 65535
  %phi.cast.i = select i1 %cmp159.not.i, i32 %269, i32 1023
  br label %if.end176.i

if.else164.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv166.i = trunc i32 %258 to i16
  br label %if.end176.i

if.end176.i:                                      ; preds = %if.else164.i, %if.then153.i, %for.end149.i.if.end176.i_crit_edge, %for.inc144.i.if.end176.i_crit_edge, %for.cond115.preheader.i.if.end176.i_crit_edge
  %video_size.2.i = phi i16 [ %video_size.0108.i, %if.then153.i ], [ %video_size.0108.i, %for.end149.i.if.end176.i_crit_edge ], [ %conv166.i, %if.else164.i ], [ 1, %for.cond115.preheader.i.if.end176.i_crit_edge ], [ %add147.i, %for.inc144.i.if.end176.i_crit_edge ]
  %null_pkt_size.0.i = phi i32 [ %phi.cast.i, %if.then153.i ], [ 0, %for.end149.i.if.end176.i_crit_edge ], [ 0, %if.else164.i ], [ 0, %for.cond115.preheader.i.if.end176.i_crit_edge ], [ 0, %for.inc144.i.if.end176.i_crit_edge ]
  %chunks.3.i = phi i32 [ %div131.i, %if.then153.i ], [ %div131.i, %for.end149.i.if.end176.i_crit_edge ], [ 1, %if.else164.i ], [ 0, %for.cond115.preheader.i.if.end176.i_crit_edge ], [ %chunks.1.i, %for.inc144.i.if.end176.i_crit_edge ]
  %conv177.i = zext i16 %video_size.2.i to i32
  %270 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ctx1, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %271, i32 36
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %273 = and i32 %272, 65535
  %274 = tail call i32 @llvm.bswap.i32(i32 %273) #4
  %or.i65.i = or i32 %274, %conv177.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %275 = tail call i32 @llvm.bswap.i32(i32 %or.i65.i) #4
  %276 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i66.i = getelementptr i8, ptr %277, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i66.i, i32 %275) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  tail call void @arm_heavy_mb() #4
  %278 = tail call i32 @llvm.bswap.i32(i32 %null_pkt_size.0.i) #4
  %279 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ctx1, align 4
  %add.ptr183.i = getelementptr i8, ptr %280, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183.i, i32 %278) #4, !srcloc !115
  %281 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ctx1, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %282, i32 36
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %284 = and i32 %283, -65536
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #4
  %shl.i69.i = shl i32 %chunks.3.i, 16
  %or.i70.i = or i32 %285, %shl.i69.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %286 = tail call i32 @llvm.bswap.i32(i32 %or.i70.i) #4
  %287 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i71.i = getelementptr i8, ptr %288, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i71.i, i32 %286) #4, !srcloc !115
  br label %do.body185.i

do.body185.i:                                     ; preds = %if.end176.i, %if.then85.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  %int0_mask.i = getelementptr i8, ptr %encoder, i32 164
  %289 = ptrtoint ptr %int0_mask.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %int0_mask.i, align 4
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #4
  %292 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ctx1, align 4
  %add.ptr189.i = getelementptr i8, ptr %293, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189.i, i32 %291) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  tail call void @arm_heavy_mb() #4
  %int1_mask.i = getelementptr i8, ptr %encoder, i32 168
  %294 = ptrtoint ptr %int1_mask.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %int1_mask.i, align 4
  %296 = tail call i32 @llvm.bswap.i32(i32 %295) #4
  %297 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %ctx1, align 4
  %add.ptr194.i = getelementptr i8, ptr %298, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194.i, i32 %296) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  tail call void @arm_heavy_mb() #4
  %299 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %ctx1, align 4
  %add.ptr199.i = getelementptr i8, ptr %300, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.i, i32 16777216) #4, !srcloc !115
  br label %if.end5

if.else:                                          ; preds = %if.end
  %hactive1.i = getelementptr i8, ptr %encoder, i32 124
  %301 = ptrtoint ptr %hactive1.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %hactive1.i, align 4
  %303 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %slave.i, align 4
  %format.i41 = getelementptr inbounds %struct.mipi_dsi_device, ptr %304, i32 0, i32 5
  %305 = ptrtoint ptr %format.i41 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %format.i41, align 4
  %307 = zext i32 %306 to i64
  call void @__sanitizer_cov_trace_switch(i64 %307, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %306, label %sw.default.i.i42 [
    i32 3, label %fmt_to_coding.exit.thread62.i
    i32 1, label %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge
    i32 2, label %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge86
    i32 0, label %sw.bb2.i.i
    i32 255, label %sw.bb3.i51.i
  ]

if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge86: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_bytes_per_pixel_x100.exit.i

if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_bytes_per_pixel_x100.exit.i

fmt_to_coding.exit.thread62.i:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_bytes_per_pixel_x100.exit.i

sw.bb2.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_bytes_per_pixel_x100.exit.i

sw.default.i.i42:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %306) #4
  br label %calc_bytes_per_pixel_x100.exit.i

sw.bb3.i51.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_bytes_per_pixel_x100.exit.i

calc_bytes_per_pixel_x100.exit.i:                 ; preds = %sw.bb3.i51.i, %sw.default.i.i42, %sw.bb2.i.i, %fmt_to_coding.exit.thread62.i, %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge, %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge86
  %conv261.i = phi i32 [ 12, %sw.bb3.i51.i ], [ 0, %fmt_to_coding.exit.thread62.i ], [ 3, %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge ], [ 3, %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge86 ], [ 5, %sw.default.i.i42 ], [ 5, %sw.bb2.i.i ]
  %bpp_x100.0.i.i43 = phi i32 [ 100, %sw.bb3.i51.i ], [ 200, %fmt_to_coding.exit.thread62.i ], [ 225, %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge ], [ 225, %if.else.calc_bytes_per_pixel_x100.exit.i_crit_edge86 ], [ 300, %sw.default.i.i42 ], [ 300, %sw.bb2.i.i ]
  %div.i = udiv i32 438400, %bpp_x100.0.i.i43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  tail call void @arm_heavy_mb() #4
  %308 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %ctx1, align 4
  %add.ptr5.i = getelementptr i8, ptr %309, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #4, !srcloc !115
  %310 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ctx1, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %311, i32 32
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %313 = and i32 %312, -1056964609
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #4
  %or.i.i = or i32 %314, %conv261.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %315 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  %316 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i.i45 = getelementptr i8, ptr %317, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i45, i32 %315) #4, !srcloc !115
  %te_ack_en.i = getelementptr i8, ptr %encoder, i32 183
  %318 = ptrtoint ptr %te_ack_en.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %te_ack_en.i, align 1, !range !119
  %320 = zext i8 %319 to i32
  %321 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %ctx1, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %322, i32 104
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %324 = and i32 %323, -16777217
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #4
  %or.i56.i = or i32 %325, %320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %326 = tail call i32 @llvm.bswap.i32(i32 %or.i56.i) #4
  %327 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i57.i = getelementptr i8, ptr %328, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i57.i, i32 %326) #4, !srcloc !115
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %302)
  %cmp.i = icmp ugt i32 %div.i, %302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.i, label %do.body9.i, label %do.body14.i

do.body9.i:                                       ; preds = %calc_bytes_per_pixel_x100.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %329 = tail call i32 @llvm.bswap.i32(i32 %302) #4
  %330 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ctx1, align 4
  %add.ptr13.i = getelementptr i8, ptr %331, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %329) #4, !srcloc !115
  br label %sprd_dsi_edpi_video.exit

do.body14.i:                                      ; preds = %calc_bytes_per_pixel_x100.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %332 = tail call i32 @llvm.bswap.i32(i32 %div.i) #4
  %333 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %ctx1, align 4
  %add.ptr18.i = getelementptr i8, ptr %334, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %332) #4, !srcloc !115
  br label %sprd_dsi_edpi_video.exit

sprd_dsi_edpi_video.exit:                         ; preds = %do.body14.i, %do.body9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  %int0_mask.i46 = getelementptr i8, ptr %encoder, i32 164
  %335 = ptrtoint ptr %int0_mask.i46 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %int0_mask.i46, align 4
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #4
  %338 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %ctx1, align 4
  %add.ptr23.i = getelementptr i8, ptr %339, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %337) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  tail call void @arm_heavy_mb() #4
  %int1_mask.i47 = getelementptr i8, ptr %encoder, i32 168
  %340 = ptrtoint ptr %int1_mask.i47 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %int1_mask.i47, align 4
  %342 = tail call i32 @llvm.bswap.i32(i32 %341) #4
  %343 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %ctx1, align 4
  %add.ptr28.i = getelementptr i8, ptr %344, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %342) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %345 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %ctx1, align 4
  %add.ptr33.i = getelementptr i8, ptr %346, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 16777216) #4, !srcloc !115
  br label %if.end5

if.end5:                                          ; preds = %sprd_dsi_edpi_video.exit, %do.body185.i, %do.end109.i
  %347 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ctx1, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %348, i32 120
  %349 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %350 = and i32 %349, -33554433
  %351 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i.i49 = getelementptr i8, ptr %352, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i49, i32 %350) #4, !srcloc !115
  %353 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %ctx1, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %354, i32 120
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %356 = and i32 %355, -16777217
  %357 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i3.i = getelementptr i8, ptr %358, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3.i, i32 %356) #4, !srcloc !115
  %359 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ctx1, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %360, i32 120
  %361 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %362 = and i32 %361, -67108865
  %363 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i6.i = getelementptr i8, ptr %364, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i, i32 %362) #4, !srcloc !115
  %365 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %ctx1, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %366, i32 240
  %367 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %368 = and i32 %367, -16777217
  %369 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i9.i = getelementptr i8, ptr %370, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i9.i, i32 %368) #4, !srcloc !115
  %371 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %ctx1, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %372, i32 240
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %374 = or i32 %373, 16777216
  %375 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i12.i = getelementptr i8, ptr %376, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i12.i, i32 %374) #4, !srcloc !115
  %377 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %ctx1, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %378, i32 240
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %380 = and i32 %379, -16777217
  %381 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i15.i = getelementptr i8, ptr %382, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i15.i, i32 %380) #4, !srcloc !115
  %call.i = tail call i32 @dphy_pll_config(ptr noundef %ctx1) #4
  tail call void @dphy_timing_config(ptr noundef %ctx1) #4
  %383 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ctx1, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %384, i32 120
  %385 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %386 = or i32 %385, 16777216
  %387 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i19.i = getelementptr i8, ptr %388, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i19.i, i32 %386) #4, !srcloc !115
  %389 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ctx1, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %390, i32 120
  %391 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %392 = or i32 %391, 33554432
  %393 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i23.i50 = getelementptr i8, ptr %394, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i23.i50, i32 %392) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  tail call void @arm_heavy_mb() #4
  %395 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %ctx1, align 4
  %add.ptr1.i = getelementptr i8, ptr %396, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 469762048) #4, !srcloc !115
  %397 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %ctx1, align 4
  %add.ptr.i24.i51 = getelementptr i8, ptr %398, i32 120
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i51) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %400 = or i32 %399, 67108864
  %401 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i27.i = getelementptr i8, ptr %402, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i27.i, i32 %400) #4, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  %403 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %slave.i, align 4
  %lanes.i53 = getelementptr inbounds %struct.mipi_dsi_device, ptr %404, i32 0, i32 4
  %405 = ptrtoint ptr %lanes.i53 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %lanes.i53, align 8
  %sub.i54 = add i32 %406, -1
  %407 = tail call i32 @llvm.bswap.i32(i32 %sub.i54) #4
  %408 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ctx1, align 4
  %add.ptr6.i = getelementptr i8, ptr %409, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %407) #4, !srcloc !115
  %add.ptr.i28.i = getelementptr i8, ptr %encoder, i32 -24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end5
  %i.04.i.i = phi i32 [ 0, %if.end5 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %410 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %ctx1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %411, i32 156
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %413 = and i32 %412, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool.not.i.i = icmp eq i32 %413, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.sprd_dphy_init.exit_crit_edge

for.body.i.i.sprd_dphy_init.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sprd_dphy_init.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %414 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %414(i32 noundef 644244) #4
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 50000
  br i1 %exitcond.not.i.i, label %do.end10.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

do.end10.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %415 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %add.ptr.i28.i, align 4
  %dev.i.i = getelementptr inbounds %struct.drm_device, ptr %416, i32 0, i32 2
  %417 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %418, ptr noundef nonnull @.str.21) #7
  %419 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %add.ptr.i28.i, align 4
  %dev.i55 = getelementptr inbounds %struct.drm_device, ptr %420, i32 0, i32 2
  %421 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %dev.i55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %422, ptr noundef nonnull @.str.19) #7
  br label %sprd_dphy_init.exit

sprd_dphy_init.exit:                              ; preds = %do.end10.i, %for.body.i.i.sprd_dphy_init.exit_crit_edge
  %423 = ptrtoint ptr %work_mode to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %work_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %424)
  %cmp.i56 = icmp eq i8 %424, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %425 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %ctx1, align 4
  %add.ptr.i57 = getelementptr i8, ptr %426, i32 24
  br i1 %cmp.i56, label %do.body.i, label %do.body2.i

do.body.i:                                        ; preds = %sprd_dphy_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 16777216) #4, !srcloc !115
  br label %sprd_dsi_set_work_mode.exit

do.body2.i:                                       ; preds = %sprd_dphy_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 0) #4, !srcloc !115
  br label %sprd_dsi_set_work_mode.exit

sprd_dsi_set_work_mode.exit:                      ; preds = %do.body2.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  tail call void @arm_heavy_mb() #4
  %427 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %ctx1, align 4
  %add.ptr.i58 = getelementptr i8, ptr %428, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 0) #4, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %429 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %429(i32 noundef 21474800) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  tail call void @arm_heavy_mb() #4
  %430 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i = getelementptr i8, ptr %431, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16777216) #4, !srcloc !115
  %432 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %slave.i, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %433, i32 0, i32 6
  %434 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %mode_flags, align 8
  %and = and i32 %435, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %436 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ctx1, align 4
  %add.ptr.i61 = getelementptr i8, ptr %437, i32 116
  %438 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %sprd_dsi_set_work_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  %439 = or i32 %438, 33554432
  %440 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i60 = getelementptr i8, ptr %441, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i60, i32 %439) #4, !srcloc !115
  br label %if.end12

if.else10:                                        ; preds = %sprd_dsi_set_work_mode.exit
  %442 = or i32 %438, 67108864
  %443 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i64 = getelementptr i8, ptr %444, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i64, i32 %442) #4, !srcloc !115
  %445 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %ctx1, align 4
  %add.ptr.i65 = getelementptr i8, ptr %446, i32 116
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %448 = or i32 %447, 16777216
  %449 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i68 = getelementptr i8, ptr %450, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i68, i32 %448) #4, !srcloc !115
  br label %for.body.i71

for.body.i71:                                     ; preds = %if.end.i.for.body.i71_crit_edge, %if.else10
  %i.04.i = phi i32 [ 0, %if.else10 ], [ %inc.i, %if.end.i.for.body.i71_crit_edge ]
  %451 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %ctx1, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %452, i32 156
  %453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i70) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %454 = and i32 %453, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %tobool.not.i = icmp eq i32 %454, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i71.if.end12_crit_edge

for.body.i71.if.end12_crit_edge:                  ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end.i:                                         ; preds = %for.body.i71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %455 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %455(i32 noundef 644244) #4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50000
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i71_crit_edge

if.end.i.for.body.i71_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i71

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %456 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %add.ptr.i28.i, align 4
  %dev.i72 = getelementptr inbounds %struct.drm_device, ptr %457, i32 0, i32 2
  %458 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %dev.i72, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %459, ptr noundef nonnull @.str.21) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end.i, %for.body.i71.if.end12_crit_edge, %if.then9
  tail call void @sprd_dpu_run(ptr noundef %1) #4
  %460 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sprd_dpu_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sprd_dpu_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dphy_pll_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dphy_timing_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_of_get_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_tst_io_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.sprd_dsi, ptr %context, i32 0, i32 5
  %0 = or i32 %val, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %.not = icmp ult i32 %0, 256
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %reg, i32 noundef %val) #4
  %5 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 244
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %8 = or i32 %7, 256
  %9 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #4, !srcloc !115
  %11 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx1, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 244
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %14 = and i32 %13, 16777215
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %or.i20 = or i32 %15, %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i20) #4
  %17 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i21 = getelementptr i8, ptr %18, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i21, i32 %16) #4, !srcloc !115
  %19 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx1, align 4
  %add.ptr.i22 = getelementptr i8, ptr %20, i32 240
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %22 = or i32 %21, 33554432
  %23 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i25 = getelementptr i8, ptr %24, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i25, i32 %22) #4, !srcloc !115
  %25 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx1, align 4
  %add.ptr.i26 = getelementptr i8, ptr %26, i32 240
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %28 = and i32 %27, -33554433
  %29 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i28 = getelementptr i8, ptr %30, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i28, i32 %28) #4, !srcloc !115
  %31 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx1, align 4
  %add.ptr.i29 = getelementptr i8, ptr %32, i32 244
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %34 = and i32 %33, -257
  %35 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i31 = getelementptr i8, ptr %36, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i31, i32 %34) #4, !srcloc !115
  %37 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx1, align 4
  %add.ptr.i32 = getelementptr i8, ptr %38, i32 244
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %40 = and i32 %39, 16777215
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %or.i35 = or i32 %41, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i35) #4
  %43 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i36 = getelementptr i8, ptr %44, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i36, i32 %42) #4, !srcloc !115
  %45 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx1, align 4
  %add.ptr.i37 = getelementptr i8, ptr %46, i32 240
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %48 = or i32 %47, 33554432
  %49 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i40 = getelementptr i8, ptr %50, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i40, i32 %48) #4, !srcloc !115
  %51 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx1, align 4
  %add.ptr.i41 = getelementptr i8, ptr %52, i32 240
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %54 = and i32 %53, -33554433
  %55 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i43 = getelementptr i8, ptr %56, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i43, i32 %54) #4, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_tst_io_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.sprd_dsi, ptr %context, i32 0, i32 5
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 244
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %3 = or i32 %2, 256
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #4, !srcloc !115
  %6 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx1, align 4
  %add.ptr.i20 = getelementptr i8, ptr %7, i32 244
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  %9 = and i32 %8, 16777215
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or.i22 = or i32 %10, %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i22) #4
  %12 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i23 = getelementptr i8, ptr %13, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i23, i32 %11) #4, !srcloc !115
  %14 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx1, align 4
  %add.ptr.i24 = getelementptr i8, ptr %15, i32 240
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %17 = or i32 %16, 33554432
  %18 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i27 = getelementptr i8, ptr %19, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i27, i32 %17) #4, !srcloc !115
  %20 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx1, align 4
  %add.ptr.i28 = getelementptr i8, ptr %21, i32 240
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %23 = and i32 %22, -33554433
  %24 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i30 = getelementptr i8, ptr %25, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i30, i32 %23) #4, !srcloc !115
  %26 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx1, align 4
  %add.ptr.i31 = getelementptr i8, ptr %27, i32 244
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #4, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %29 = and i32 %28, -257
  %30 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx1, align 4
  %add.ptr4.i33 = getelementptr i8, ptr %31, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i33, i32 %29) #4, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #4
  %33 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx1, align 4
  %add.ptr.i34 = getelementptr i8, ptr %34, i32 244
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #4, !srcloc !112
  %36 = lshr i32 %35, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  %and.i35 = and i32 %36, 255
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i35, ptr %val, align 4
  %38 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %41, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %reg, i32 noundef %and.i35) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1065, i32 11}
!2 = !{ptr @sprd_dsi_driver, !3, !"sprd_dsi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1061, i32 24}
!4 = !{ptr @__UNIQUE_ID_author307, !5, !"__UNIQUE_ID_author307", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1070, i32 1}
!6 = !{ptr @__UNIQUE_ID_author308, !7, !"__UNIQUE_ID_author308", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1071, i32 1}
!8 = !{ptr @__UNIQUE_ID_description309, !9, !"__UNIQUE_ID_description309", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1072, i32 1}
!10 = !{ptr @__UNIQUE_ID_file310, !11, !"__UNIQUE_ID_file310", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1073, i32 1}
!12 = !{ptr @__UNIQUE_ID_license311, !11, !"__UNIQUE_ID_license311", i1 false, i1 false}
!13 = !{ptr @sprd_dsi_host_ops, !14, !"sprd_dsi_host_ops", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1024, i32 39}
!15 = !{ptr @dsi_component_ops, !16, !"dsi_component_ops", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 967, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 867, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sprd_dsi_encoder_init._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sprd_dsi_encoder_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 871, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 877, i32 3}
!29 = !{ptr @sprd_dsi_encoder_init._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sprd_dsi_encoder_init._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @sprd_encoder_funcs, !32, !"sprd_encoder_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 854, i32 39}
!33 = !{ptr @sprd_encoder_helper_funcs, !34, !"sprd_encoder_helper_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 848, i32 46}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 837, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sprd_dsi_encoder_disable._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @sprd_dsi_encoder_disable._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 800, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sprd_dsi_encoder_enable._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sprd_dsi_encoder_enable._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 527, i32 4}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sprd_dsi_dpi_video._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sprd_dsi_dpi_video._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 384, i32 3}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 318, i32 3}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 770, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sprd_dphy_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sprd_dphy_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 236, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dphy_wait_pll_locked._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @dphy_wait_pll_locked._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 912, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sprd_dsi_context_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sprd_dsi_context_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @sprd_dsi_context_init._key, !71, !"_key", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 916, i32 16}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 918, i32 3}
!75 = !{ptr @sprd_dsi_context_init._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sprd_dsi_context_init._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @regmap_tst_io, !78, !"regmap_tst_io", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 215, i32 26}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 174, i32 2}
!81 = !{ptr @byte_config, !82, !"byte_config", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 220, i32 35}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 700, i32 3}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sprd_dsi_rd_pkt._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @sprd_dsi_rd_pkt._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 707, i32 3}
!90 = !{ptr @sprd_dsi_rd_pkt._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sprd_dsi_rd_pkt._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 636, i32 3}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sprd_dsi_wr_pkt._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sprd_dsi_wr_pkt._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 658, i32 3}
!99 = !{ptr @sprd_dsi_wr_pkt._entry.37, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @sprd_dsi_wr_pkt._entry_ptr.39, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @dsi_match_table, !102, !"dsi_match_table", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/sprd/sprd_dsi.c", i32 1030, i32 34}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 4204245}
!113 = !{i64 2156869019}
!114 = !{i64 2156922279}
!115 = !{i64 4203827}
!116 = !{i64 2156927255}
!117 = !{i64 2156917975}
!118 = !{i64 2156920469}
!119 = !{i8 0, i8 2}
!120 = !{i64 2156870728}
!121 = !{i64 2156870968}
!122 = !{i64 2156892019}
!123 = !{i64 2156892439}
!124 = !{i64 2156892850}
!125 = !{i64 2156883270}
!126 = !{i64 2156883663}
!127 = !{i64 2156884083}
!128 = !{i64 2156884494}
!129 = !{i64 2156885390}
!130 = !{i64 2156887229}
!131 = !{i64 2156887794}
!132 = !{i64 2156869678}
!133 = !{i64 2156869893}
!134 = !{i64 2156891626}
!135 = !{i64 2156894354}
!136 = !{i64 2156896882}
!137 = !{i64 2156898688}
!138 = !{i64 2156902182}
!139 = !{i64 2156902582}
!140 = !{i64 2156903006}
!141 = !{i64 2156904108}
!142 = !{i64 2156908029}
!143 = !{i64 2156909159}
!144 = !{i64 2156909595}
!145 = !{i64 2156910018}
!146 = !{i64 2156911522}
!147 = !{i64 2156913521}
!148 = !{i64 2156913957}
!149 = !{i64 2156914380}
!150 = !{i64 2156931707}
!151 = !{i64 2156932289}
!152 = !{i64 2156928326}
!153 = !{i64 2156929258}
