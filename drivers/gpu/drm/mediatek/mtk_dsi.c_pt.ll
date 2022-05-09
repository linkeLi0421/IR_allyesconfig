; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.mtk_dsi_driver_data = type { i32, i8, i8 }
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
%struct.mtk_dsi = type { ptr, %struct.mipi_dsi_host, %struct.drm_encoder, %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.videomode, %struct.mtk_phy_timing, i32, i8, i32, %struct.wait_queue_head, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_phy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk-dsi\00", [24 x i8] zeroinitializer }, align 32
@mtk_dsi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_dsi_driver_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mtk_dsi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_dsi_probe, ptr @mtk_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_dsi_poweron._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set data rate: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_dsi_poweron\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/mediatek/mtk_dsi.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_dsi_poweron._entry_ptr = internal global ptr @mtk_dsi_poweron._entry, section ".printk_index", align 4
@mtk_dsi_poweron._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 633, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable engine clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_dsi_poweron._entry_ptr.8 = internal global ptr @mtk_dsi_poweron._entry.6, section ".printk_index", align 4
@mtk_dsi_poweron._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable digital clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_dsi_poweron._entry_ptr.11 = internal global ptr @mtk_dsi_poweron._entry.9, section ".printk_index", align 4
@mtk_dsi_config_vdo_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014[drm] HFP + HBP less than d-phy, FPS will under 60Hz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_dsi_config_vdo_timing\00", [38 x i8] zeroinitializer }, align 32
@mtk_dsi_config_vdo_timing._entry_ptr = internal global ptr @mtk_dsi_config_vdo_timing._entry, section ".printk_index", align 4
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to switch cmd mode\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_dsi_wait_for_irq_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014[drm] Wait DSI IRQ(0x%08x) Timeout\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_dsi_wait_for_irq_done\00", [38 x i8] zeroinitializer }, align 32
@mtk_dsi_wait_for_irq_done._entry_ptr = internal global ptr @mtk_dsi_wait_for_irq_done._entry, section ".printk_index", align 4
@mtk_dsi_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @mtk_dsi_host_attach, ptr @mtk_dsi_host_detach, ptr @mtk_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1044, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register DSI host: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_dsi_probe\00", [18 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr = internal global ptr @mtk_dsi_probe._entry, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"engine\00", [25 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 1055, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get engine clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr.22 = internal global ptr @mtk_dsi_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"digital\00", [24 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 1064, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get digital clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr.26 = internal global ptr @mtk_dsi_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hs\00", [29 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.3, i32 1071, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get hs clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr.30 = internal global ptr @mtk_dsi_probe._entry.28, section ".printk_index", align 4
@mtk_dsi_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.3, i32 1079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to ioremap memory: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr.33 = internal global ptr @mtk_dsi_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.18, ptr @.str.3, i32 1086, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get MIPI-DPHY: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr.37 = internal global ptr @mtk_dsi_probe._entry.35, section ".printk_index", align 4
@mtk_dsi_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.18, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get dsi irq_num: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr.40 = internal global ptr @mtk_dsi_probe._entry.38, section ".printk_index", align 4
@mtk_dsi_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.18, ptr @.str.3, i32 1100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request mediatek dsi irq\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_dsi_probe._entry_ptr.43 = internal global ptr @mtk_dsi_probe._entry.41, section ".printk_index", align 4
@mtk_dsi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dsi->irq_wait_queue\00", [43 x i8] zeroinitializer }, align 32
@mtk_dsi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @mtk_dsi_bridge_attach, ptr null, ptr null, ptr null, ptr @mtk_dsi_bridge_disable, ptr null, ptr @mtk_dsi_bridge_mode_set, ptr null, ptr @mtk_dsi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_dsi_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mtk_dsi_bind, ptr @mtk_dsi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to add dsi_host component: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to encoder init to drm\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to create bridge connector\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dsi engine is not command mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dsi receive buffer size may be NULL\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_dsi_host_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016[drm] dsi get %d byte data from the panel address(0x%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_dsi_host_transfer\00", [42 x i8] zeroinitializer }, align 32
@mtk_dsi_host_transfer._entry_ptr = internal global ptr @mtk_dsi_host_transfer._entry, section ".printk_index", align 4
@mtk_dsi_wait_for_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014[drm] polling dsi wait not busy timeout!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_dsi_wait_for_idle\00", [42 x i8] zeroinitializer }, align 32
@mtk_dsi_wait_for_idle._entry_ptr = internal global ptr @mtk_dsi_wait_for_idle._entry, section ".printk_index", align 4
@mtk_dsi_recv_cnt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016[drm] type is 0x02, try again\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_dsi_recv_cnt\00", [47 x i8] zeroinitializer }, align 32
@mtk_dsi_recv_cnt._entry_ptr = internal global ptr @mtk_dsi_recv_cnt._entry, section ".printk_index", align 4
@mtk_dsi_recv_cnt._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] type(0x%x) not recognized\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_dsi_recv_cnt._entry_ptr.58 = internal global ptr @mtk_dsi_recv_cnt._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to power on dsi\0A\00", [40 x i8] zeroinitializer }, align 32
@mt2701_dsi_driver_data = internal constant { %struct.mtk_dsi_driver_data, [24 x i8] } { %struct.mtk_dsi_driver_data { i32 384, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt8173_dsi_driver_data = internal constant { %struct.mtk_dsi_driver_data, [24 x i8] } { %struct.mtk_dsi_driver_data { i32 512, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt8183_dsi_driver_data = internal constant { %struct.mtk_dsi_driver_data, [24 x i8] } { %struct.mtk_dsi_driver_data { i32 512, i8 1, i8 1 }, [24 x i8] zeroinitializer }, align 32
@switch.table.mtk_dsi_poweron = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 12, i32 28, i32 60], [16 x i8] zeroinitializer }, align 32
@switch.table.mtk_dsi_poweron.60 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.mtk_dsi_poweron.61 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65536, i32 131072, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 6, i64 20, i64 36]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 6, i64 20, i64 36]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 6, i64 20, i64 36]
@__sancov_gen_cov_switch_values.65 = internal global [9 x i64] [i64 7, i64 8, i64 2, i64 17, i64 18, i64 26, i64 28, i64 33, i64 34]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1158, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"mtk_dsi_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1143, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"mtk_dsi_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1154, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 625, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 633, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 639, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 500, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 590, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 553, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"mtk_dsi_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1022, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1044, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1050, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1055, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1059, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1064, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1068, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1071, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1079, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1083, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1086, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1092, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1100, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1104, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [21 x i8] c"mtk_dsi_bridge_funcs\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 768, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant [22 x i8] c"mtk_dsi_component_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 843, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 866, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 796, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 809, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 979, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 993, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1016, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 892, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 912, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 915, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 713, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [23 x i8] c"mt2701_dsi_driver_data\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1133, i32 41 }
@___asan_gen_.258 = private unnamed_addr constant [23 x i8] c"mt8173_dsi_driver_data\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1129, i32 41 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"mt8183_dsi_driver_data\00", align 1
@___asan_gen_.262 = private constant [38 x i8] c"../drivers/gpu/drm/mediatek/mtk_dsi.c\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 1137, i32 41 }
@___asan_gen_.264 = private unnamed_addr constant [29 x i8] c"switch.table.mtk_dsi_poweron\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [32 x i8] c"switch.table.mtk_dsi_poweron.60\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [32 x i8] c"switch.table.mtk_dsi_poweron.61\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @mtk_dsi_config_vdo_timing._entry, ptr @mtk_dsi_config_vdo_timing._entry_ptr, ptr @mtk_dsi_host_transfer._entry, ptr @mtk_dsi_host_transfer._entry_ptr, ptr @mtk_dsi_poweron._entry, ptr @mtk_dsi_poweron._entry.6, ptr @mtk_dsi_poweron._entry.9, ptr @mtk_dsi_poweron._entry_ptr, ptr @mtk_dsi_poweron._entry_ptr.11, ptr @mtk_dsi_poweron._entry_ptr.8, ptr @mtk_dsi_probe._entry, ptr @mtk_dsi_probe._entry.20, ptr @mtk_dsi_probe._entry.24, ptr @mtk_dsi_probe._entry.28, ptr @mtk_dsi_probe._entry.31, ptr @mtk_dsi_probe._entry.35, ptr @mtk_dsi_probe._entry.38, ptr @mtk_dsi_probe._entry.41, ptr @mtk_dsi_probe._entry_ptr, ptr @mtk_dsi_probe._entry_ptr.22, ptr @mtk_dsi_probe._entry_ptr.26, ptr @mtk_dsi_probe._entry_ptr.30, ptr @mtk_dsi_probe._entry_ptr.33, ptr @mtk_dsi_probe._entry_ptr.37, ptr @mtk_dsi_probe._entry_ptr.40, ptr @mtk_dsi_probe._entry_ptr.43, ptr @mtk_dsi_recv_cnt._entry, ptr @mtk_dsi_recv_cnt._entry.56, ptr @mtk_dsi_recv_cnt._entry_ptr, ptr @mtk_dsi_recv_cnt._entry_ptr.58, ptr @mtk_dsi_wait_for_idle._entry, ptr @mtk_dsi_wait_for_idle._entry_ptr, ptr @mtk_dsi_wait_for_irq_done._entry, ptr @mtk_dsi_wait_for_irq_done._entry_ptr, ptr @.str, ptr @mtk_dsi_of_match, ptr @mtk_dsi_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mtk_dsi_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @mtk_dsi_probe.__key, ptr @.str.44, ptr @mtk_dsi_bridge_funcs, ptr @mtk_dsi_component_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @mt2701_dsi_driver_data, ptr @mt8173_dsi_driver_data, ptr @mt8183_dsi_driver_data, ptr @switch.table.mtk_dsi_poweron, ptr @switch.table.mtk_dsi_poweron.60, ptr @switch.table.mtk_dsi_poweron.61], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_poweron._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_poweron._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_poweron._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_config_vdo_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_wait_for_irq_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_host_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_wait_for_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_recv_cnt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dsi_recv_cnt._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_dsi_driver_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_dsi_driver_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_dsi_driver_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dsi_poweron to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dsi_poweron.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dsi_poweron.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_dsi_ddp_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @mtk_dsi_poweron(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_dsi_poweron(ptr noundef %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %refcount = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 17
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcount, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %format = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 13
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 2
  %switch.select = select i1 %switch.selectcmp, i32 18, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %switch.selectcmp346 = icmp eq i32 %5, 3
  %switch.select347 = select i1 %switch.selectcmp346, i32 16, i32 %switch.select
  %vm = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15
  %6 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm, align 4
  %mul = mul i32 %switch.select347, %7
  %conv = zext i32 %mul to i64
  %lanes = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 14
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lanes, align 4
  %conv4 = zext i32 %9 to i64
  %add = add nsw i64 %conv4, -1
  %sub = add nsw i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp177 = icmp ult i64 %sub, 4294967296
  br i1 %cmp177, label %if.then181, label %if.else187, !prof !130

if.then181:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv182 = trunc i64 %sub to i32
  %div185 = udiv i32 %conv182, %9
  br label %if.end191

if.else187:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %sub) #8, !srcloc !131
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  %extract.t443 = trunc i64 %asmresult1.i to i32
  br label %if.end191

if.end191:                                        ; preds = %if.else187, %if.then181
  %_tmp.0.off0 = phi i32 [ %div185, %if.then181 ], [ %extract.t443, %if.else187 ]
  %data_rate = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 11
  %11 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %_tmp.0.off0, ptr %data_rate, align 4
  %hs_clk = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 10
  %12 = ptrtoint ptr %hs_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hs_clk, align 4
  %call196 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %_tmp.0.off0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %do.end, label %if.end200

do.end:                                           ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %call196) #9
  br label %err_refcount

if.end200:                                        ; preds = %if.end191
  %phy = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 6
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %call201 = tail call i32 @phy_power_on(ptr noundef %15) #5
  %engine_clk = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 8
  %16 = ptrtoint ptr %engine_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %engine_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end200.clk_prepare_enable.exit_crit_edge

if.end200.clk_prepare_enable.exit_crit_edge:      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end200
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end209_crit_edge, label %if.then3.i

if.end.i.if.end209_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end200.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end200.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp203 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp203, label %do.end208, label %clk_prepare_enable.exit.if.end209_crit_edge

clk_prepare_enable.exit.if.end209_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end209

do.end208:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #9
  br label %err_phy_power_off

if.end209:                                        ; preds = %clk_prepare_enable.exit.if.end209_crit_edge, %if.end.i.if.end209_crit_edge
  %digital_clk = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 9
  %18 = ptrtoint ptr %digital_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %digital_clk, align 4
  %call.i349 = tail call i32 @clk_prepare(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %tobool.not.i350 = icmp eq i32 %call.i349, 0
  br i1 %tobool.not.i350, label %if.end.i353, label %if.end209.clk_prepare_enable.exit356_crit_edge

if.end209.clk_prepare_enable.exit356_crit_edge:   ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit356

if.end.i353:                                      ; preds = %if.end209
  %call1.i351 = tail call i32 @clk_enable(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i351)
  %tobool2.not.i352 = icmp eq i32 %call1.i351, 0
  br i1 %tobool2.not.i352, label %if.end.i353.if.end217_crit_edge, label %if.then3.i354

if.end.i353.if.end217_crit_edge:                  ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end217

if.then3.i354:                                    ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %19) #5
  br label %clk_prepare_enable.exit356

clk_prepare_enable.exit356:                       ; preds = %if.then3.i354, %if.end209.clk_prepare_enable.exit356_crit_edge
  %retval.0.i355 = phi i32 [ %call.i349, %if.end209.clk_prepare_enable.exit356_crit_edge ], [ %call1.i351, %if.then3.i354 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i355)
  %cmp211 = icmp slt i32 %retval.0.i355, 0
  br i1 %cmp211, label %do.end216, label %clk_prepare_enable.exit356.if.end217_crit_edge

clk_prepare_enable.exit356.if.end217_crit_edge:   ; preds = %clk_prepare_enable.exit356
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end217

do.end216:                                        ; preds = %clk_prepare_enable.exit356
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i355) #9
  %20 = ptrtoint ptr %engine_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %engine_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %err_phy_power_off

if.end217:                                        ; preds = %clk_prepare_enable.exit356.if.end217_crit_edge, %if.end.i353.if.end217_crit_edge
  %regs.i.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 7
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %25 = or i32 %24, 33554432
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %25) #5, !srcloc !135
  %driver_data = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 21
  %28 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data, align 4
  %has_shadow_ctl = getelementptr inbounds %struct.mtk_dsi_driver_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %has_shadow_ctl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_shadow_ctl, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool218.not = icmp eq i8 %31, 0
  br i1 %tobool218.not, label %if.end217.if.end223_crit_edge, label %do.body220

if.end217.if.end223_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

do.body220:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #5, !srcloc !135
  br label %if.end223

if.end223:                                        ; preds = %do.body220, %if.end217.if.end223_crit_edge
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i358 = getelementptr i8, ptr %35, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i358) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %37 = or i32 %36, 16777216
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i359 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i359, i32 %37) #5, !srcloc !135
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %41, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %43 = and i32 %42, -16777217
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i5.i = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i, i32 %43) #5, !srcloc !135
  %46 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_rate, align 4
  %sub.i360 = add i32 %47, 999999
  %div.i = udiv i32 %sub.i360, 1000000
  %phy_timing.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16
  %mul.i = mul nuw nsw i32 %div.i, 60
  %div1.i = udiv i32 %mul.i, 8000
  %add2.i = add nuw nsw i32 %div1.i, 1
  %48 = ptrtoint ptr %phy_timing.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add2.i, ptr %phy_timing.i, align 4
  %mul3.i = mul nuw nsw i32 %div.i, 80
  %add4.i = add nuw nsw i32 %mul3.i, 4000
  %div5.i = udiv i32 %add4.i, 8000
  %da_hs_prepare.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 1
  %49 = ptrtoint ptr %da_hs_prepare.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div5.i, ptr %da_hs_prepare.i, align 4
  %mul6.i = mul nuw nsw i32 %div.i, 170
  %add7.i = add nuw nsw i32 %mul6.i, 10000
  %div8.i = udiv i32 %add7.i, 8000
  %add9.i = add nuw nsw i32 %div8.i, 1
  %sub11.i = sub nsw i32 %add9.i, %div5.i
  %da_hs_zero.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 2
  %50 = ptrtoint ptr %da_hs_zero.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub11.i, ptr %da_hs_zero.i, align 4
  %add13.i = add nuw nsw i32 %div5.i, 1
  %da_hs_trail.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 3
  %51 = ptrtoint ptr %da_hs_trail.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add13.i, ptr %da_hs_trail.i, align 4
  %mul15.i = shl nuw nsw i32 %add2.i, 2
  %sub16.i = add nsw i32 %mul15.i, -2
  %ta_go.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 4
  %52 = ptrtoint ptr %ta_go.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub16.i, ptr %ta_go.i, align 4
  %add18.i = add nuw nsw i32 %div1.i, 3
  %ta_sure.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 5
  %53 = ptrtoint ptr %ta_sure.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add18.i, ptr %ta_sure.i, align 4
  %ta_get.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 6
  %54 = ptrtoint ptr %ta_get.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul15.i, ptr %ta_get.i, align 4
  %mul22.i = shl nuw nsw i32 %add2.i, 1
  %add23.i = or i32 %mul22.i, 1
  %da_hs_exit.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 7
  %55 = ptrtoint ptr %da_hs_exit.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add23.i, ptr %da_hs_exit.i, align 4
  %mul24.i = mul nuw nsw i32 %div.i, 70
  %div25.i = udiv i32 %mul24.i, 8000
  %clk_hs_prepare.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 10
  %56 = ptrtoint ptr %clk_hs_prepare.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div25.i, ptr %clk_hs_prepare.i, align 4
  %add27.i = add nuw nsw i32 %div25.i, 8
  %clk_hs_post.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 11
  %57 = ptrtoint ptr %clk_hs_post.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add27.i, ptr %clk_hs_post.i, align 4
  %clk_hs_trail.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 9
  %58 = ptrtoint ptr %clk_hs_trail.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div25.i, ptr %clk_hs_trail.i, align 4
  %mul30.i = shl nuw nsw i32 %div25.i, 2
  %clk_hs_zero.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 8
  %59 = ptrtoint ptr %clk_hs_zero.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul30.i, ptr %clk_hs_zero.i, align 4
  %mul32.i = shl nuw nsw i32 %div25.i, 1
  %clk_hs_exit.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 16, i32 12
  %60 = ptrtoint ptr %clk_hs_exit.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul32.i, ptr %clk_hs_exit.i, align 4
  %shl.i = shl nuw nsw i32 %div5.i, 8
  %or.i = or i32 %shl.i, %add2.i
  %shl36.i = shl nsw i32 %sub11.i, 16
  %shl39.i = shl nuw nsw i32 %add13.i, 24
  %or37.i = or i32 %shl39.i, %or.i
  %or40.i = or i32 %or37.i, %shl36.i
  %shl43.i = shl nuw nsw i32 %add18.i, 8
  %shl46.i = shl nuw nsw i32 %add2.i, 18
  %shl49.i = shl i32 %add23.i, 24
  %or44.i = or i32 %shl46.i, %shl43.i
  %or47.i = or i32 %or44.i, %sub16.i
  %or50.i = or i32 %or47.i, %shl49.i
  %shl52.i = shl nuw nsw i32 %div25.i, 18
  %shl55.i = shl nuw nsw i32 %div25.i, 24
  %or53.i = or i32 %shl52.i, %shl55.i
  %or56.i = or i32 %or53.i, 256
  %shl59.i = shl nuw nsw i32 %add27.i, 8
  %or60.i = or i32 %shl59.i, %div25.i
  %shl62.i = shl nuw nsw i32 %div25.i, 17
  %or63.i = or i32 %or60.i, %shl62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %61 = tail call i32 @llvm.bswap.i32(i32 %or40.i) #5
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %63, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %61) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %64 = tail call i32 @llvm.bswap.i32(i32 %or50.i) #5
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %66, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %64) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %or56.i) #5
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %69, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %67) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %or63.i) #5
  %71 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %72, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %70) #5, !srcloc !135
  %73 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lanes, align 4
  %switch.tableidx = add i32 %74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %75 = icmp ult i32 %switch.tableidx, 4
  br i1 %75, label %switch.lookup, label %if.end223.mtk_dsi_rxtx_control.exit_crit_edge

if.end223.mtk_dsi_rxtx_control.exit_crit_edge:    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_rxtx_control.exit

switch.lookup:                                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mtk_dsi_poweron, i32 0, i32 %switch.tableidx
  %76 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_dsi_rxtx_control.exit

mtk_dsi_rxtx_control.exit:                        ; preds = %switch.lookup, %if.end223.mtk_dsi_rxtx_control.exit_crit_edge
  %tmp_reg.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 60, %if.end223.mtk_dsi_rxtx_control.exit_crit_edge ]
  %mode_flags.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 12
  %77 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mode_flags.i, align 4
  %and.i361 = shl i32 %78, 6
  %79 = and i32 %and.i361, 65536
  %80 = or i32 %79, %tmp_reg.0.i
  %and5.i = lshr i32 %78, 3
  %81 = and i32 %and5.i, 64
  %82 = or i32 %80, %81
  %83 = xor i32 %82, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #5
  %85 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i363 = getelementptr i8, ptr %86, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i363, i32 %84) #5, !srcloc !135
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 100, i32 noundef 2) #5
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i365 = getelementptr i8, ptr %88, i32 16
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i365) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %90 = or i32 %89, 67108864
  %91 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i366 = getelementptr i8, ptr %92, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i366, i32 %90) #5, !srcloc !135
  %93 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i367 = getelementptr i8, ptr %94, i32 16
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i367) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %96 = and i32 %95, -67108865
  %97 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i5.i368 = getelementptr i8, ptr %98, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i368, i32 %96) #5, !srcloc !135
  %99 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %100)
  %cmp.i = icmp eq i32 %100, 3
  %..i = select i1 %cmp.i, i32 2, i32 3
  %hactive.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 1
  %101 = ptrtoint ptr %hactive.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hactive.i, align 4
  %mul.i369 = mul i32 %..i, %102
  %103 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values)
  switch i32 %100, label %mtk_dsi_rxtx_control.exit.mtk_dsi_ps_control_vact.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i371
    i32 2, label %sw.bb5.i
  ]

mtk_dsi_rxtx_control.exit.mtk_dsi_ps_control_vact.exit_crit_edge: ; preds = %mtk_dsi_rxtx_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_ps_control_vact.exit

sw.bb.i:                                          ; preds = %mtk_dsi_rxtx_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i370 = or i32 %mul.i369, 196608
  br label %mtk_dsi_ps_control_vact.exit

sw.bb3.i371:                                      ; preds = %mtk_dsi_rxtx_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or4.i = or i32 %mul.i369, 131072
  br label %mtk_dsi_ps_control_vact.exit

sw.bb5.i:                                         ; preds = %mtk_dsi_rxtx_control.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or6.i = or i32 %mul.i369, 65536
  br label %mtk_dsi_ps_control_vact.exit

mtk_dsi_ps_control_vact.exit:                     ; preds = %sw.bb5.i, %sw.bb3.i371, %sw.bb.i, %mtk_dsi_rxtx_control.exit.mtk_dsi_ps_control_vact.exit_crit_edge
  %ps_bpp_mode.0.i = phi i32 [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i371 ], [ %or.i370, %sw.bb.i ], [ %mul.i369, %mtk_dsi_rxtx_control.exit.mtk_dsi_ps_control_vact.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %vactive.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 5
  %104 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vactive.i, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #5
  %107 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i373 = getelementptr i8, ptr %108, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i373, i32 %106) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %109 = tail call i32 @llvm.bswap.i32(i32 %ps_bpp_mode.0.i) #5
  %110 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %111, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %109) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %112 = tail call i32 @llvm.bswap.i32(i32 %mul.i369) #5
  %113 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %114, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %112) #5, !srcloc !135
  %115 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i375 = getelementptr i8, ptr %116, i32 304
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i375) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %118 = or i32 %117, 16777216
  %119 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i376 = getelementptr i8, ptr %120, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i376, i32 %118) #5, !srcloc !135
  %121 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i377 = getelementptr i8, ptr %122, i32 304
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i377) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %124 = or i32 %123, 536870912
  %125 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i6.i = getelementptr i8, ptr %126, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i, i32 %124) #5, !srcloc !135
  %127 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %128)
  %cmp.i380 = icmp eq i32 %128, 3
  %..i381 = select i1 %cmp.i380, i32 2, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %vsync_len.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 8
  %129 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %vsync_len.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #5
  %132 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i383 = getelementptr i8, ptr %133, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i383, i32 %131) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %vback_porch.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 7
  %134 = ptrtoint ptr %vback_porch.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vback_porch.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #5
  %137 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %138, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %136) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %vfront_porch.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 6
  %139 = ptrtoint ptr %vfront_porch.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %vfront_porch.i, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  %142 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %143, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %141) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %vactive.i, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #5
  %147 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %148, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %146) #5, !srcloc !135
  %149 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %driver_data, align 4
  %has_size_ctl.i = getelementptr inbounds %struct.mtk_dsi_driver_data, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %has_size_ctl.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %has_size_ctl.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i385 = icmp eq i8 %152, 0
  br i1 %tobool.not.i385, label %mtk_dsi_ps_control_vact.exit.if.end24.i_crit_edge, label %do.body18.i

mtk_dsi_ps_control_vact.exit.if.end24.i_crit_edge: ; preds = %mtk_dsi_ps_control_vact.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.body18.i:                                      ; preds = %mtk_dsi_ps_control_vact.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %vactive.i, align 4
  %shl.i386 = shl i32 %154, 16
  %155 = ptrtoint ptr %hactive.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %hactive.i, align 4
  %or.i388 = or i32 %shl.i386, %156
  %157 = tail call i32 @llvm.bswap.i32(i32 %or.i388) #5
  %158 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %159, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %157) #5, !srcloc !135
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.body18.i, %mtk_dsi_ps_control_vact.exit.if.end24.i_crit_edge
  %hsync_len.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 4
  %160 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %hsync_len.i, align 4
  %162 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mode_flags.i, align 4
  %and.i390 = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i390)
  %tobool25.not.i = icmp eq i32 %and.i390, 0
  %hback_porch30.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 3
  %164 = ptrtoint ptr %hback_porch30.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %hback_porch30.i, align 4
  %add.i = select i1 %tobool25.not.i, i32 %161, i32 0
  %.pn.i = add i32 %add.i, %165
  %horizontal_backporch_byte.0.in.i = mul i32 %.pn.i, %..i381
  %horizontal_backporch_byte.0.i = add i32 %horizontal_backporch_byte.0.in.i, -10
  %166 = ptrtoint ptr %phy_timing.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %phy_timing.i, align 4
  %168 = ptrtoint ptr %da_hs_prepare.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %da_hs_prepare.i, align 4
  %170 = ptrtoint ptr %da_hs_zero.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %da_hs_zero.i, align 4
  %172 = ptrtoint ptr %da_hs_exit.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %da_hs_exit.i, align 4
  %add35.i = add i32 %167, 3
  %add36.i = add i32 %add35.i, %169
  %add37.i = add i32 %add36.i, %171
  %add38.i = add i32 %add37.i, %173
  %and40.i = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %cond.i = select i1 %tobool41.not.i, i32 12, i32 18
  %and43.i = lshr i32 %163, 8
  %174 = and i32 %and43.i, 2
  %add46.i = add nuw nsw i32 %cond.i, %174
  %hfront_porch.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 15, i32 2
  %175 = ptrtoint ptr %hfront_porch.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %hfront_porch.i, align 4
  %mul47.i = mul i32 %176, %..i381
  %add48.i = add i32 %mul47.i, %horizontal_backporch_byte.0.i
  %177 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %lanes, align 4
  %mul49.i = mul i32 %178, %add38.i
  %add50.i = add i32 %add46.i, %mul49.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i, i32 %add50.i)
  %cmp51.i = icmp ugt i32 %add48.i, %add50.i
  br i1 %cmp51.i, label %if.then52.i, label %do.end61.i

if.then52.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul53.i = mul i32 %add50.i, %mul47.i
  %div.i395 = udiv i32 %mul53.i, %add48.i
  %sub54.i = sub i32 %mul47.i, %div.i395
  %mul55.i = mul i32 %add50.i, %horizontal_backporch_byte.0.i
  %div56.i = udiv i32 %mul55.i, %add48.i
  %sub57.i = sub i32 %horizontal_backporch_byte.0.i, %div56.i
  br label %do.body63.i

do.end61.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %do.body63.i

do.body63.i:                                      ; preds = %do.end61.i, %if.then52.i
  %horizontal_backporch_byte.1.i = phi i32 [ %sub57.i, %if.then52.i ], [ %horizontal_backporch_byte.0.i, %do.end61.i ]
  %horizontal_frontporch_byte.0.i = phi i32 [ %sub54.i, %if.then52.i ], [ %mul47.i, %do.end61.i ]
  %mul.i397 = mul i32 %161, %..i381
  %sub.i398 = add i32 %mul.i397, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %179 = tail call i32 @llvm.bswap.i32(i32 %sub.i398) #5
  %180 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %181, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %179) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %182 = tail call i32 @llvm.bswap.i32(i32 %horizontal_backporch_byte.1.i) #5
  %183 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %184, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %182) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %185 = tail call i32 @llvm.bswap.i32(i32 %horizontal_frontporch_byte.0.i) #5
  %186 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %187, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 %185) #5, !srcloc !135
  %188 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %format, align 4
  %switch.tableidx446 = add i32 %189, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx446)
  %190 = icmp ult i32 %switch.tableidx446, 3
  br i1 %190, label %switch.lookup445, label %do.body63.i.mtk_dsi_config_vdo_timing.exit_crit_edge

do.body63.i.mtk_dsi_config_vdo_timing.exit_crit_edge: ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_config_vdo_timing.exit

switch.lookup445:                                 ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep447 = getelementptr inbounds [3 x i32], ptr @switch.table.mtk_dsi_poweron.60, i32 0, i32 %switch.tableidx446
  %191 = ptrtoint ptr %switch.gep447 to i32
  call void @__asan_load4_noabort(i32 %191)
  %switch.load448 = load i32, ptr %switch.gep447, align 4
  %switch.gep449 = getelementptr inbounds [3 x i32], ptr @switch.table.mtk_dsi_poweron.61, i32 0, i32 %switch.tableidx446
  %192 = ptrtoint ptr %switch.gep449 to i32
  call void @__asan_load4_noabort(i32 %192)
  %switch.load450 = load i32, ptr %switch.gep449, align 4
  br label %mtk_dsi_config_vdo_timing.exit

mtk_dsi_config_vdo_timing.exit:                   ; preds = %switch.lookup445, %do.body63.i.mtk_dsi_config_vdo_timing.exit_crit_edge
  %dsi_tmp_buf_bpp.0.i.i = phi i32 [ 3, %do.body63.i.mtk_dsi_config_vdo_timing.exit_crit_edge ], [ %switch.load448, %switch.lookup445 ]
  %tmp_reg.0.i.i = phi i32 [ 196608, %do.body63.i.mtk_dsi_config_vdo_timing.exit_crit_edge ], [ %switch.load450, %switch.lookup445 ]
  %193 = ptrtoint ptr %hactive.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %hactive.i, align 4
  %mul.i.i = mul i32 %194, %dsi_tmp_buf_bpp.0.i.i
  %and.i.i = and i32 %mul.i.i, 16383
  %add.i.i = or i32 %and.i.i, %tmp_reg.0.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %195 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #5
  %196 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i399 = getelementptr i8, ptr %197, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i399, i32 %195) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %198 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i401 = getelementptr i8, ptr %199, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 184549376) #5, !srcloc !135
  %200 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i403 = getelementptr i8, ptr %201, i32 260
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i403) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %203 = and i32 %202, -33554433
  %204 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i404 = getelementptr i8, ptr %205, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i404, i32 %203) #5, !srcloc !135
  %206 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %207, i32 260
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %209 = or i32 %208, 67108864
  %210 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i6.i405 = getelementptr i8, ptr %211, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i405, i32 %209) #5, !srcloc !135
  %212 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %213, i32 260
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %215 = and i32 %214, -67108865
  %216 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i10.i = getelementptr i8, ptr %217, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i10.i, i32 %215) #5, !srcloc !135
  %218 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i407 = getelementptr i8, ptr %219, i32 264
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i407) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %221 = and i32 %220, -33554433
  %222 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i408 = getelementptr i8, ptr %223, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i408, i32 %221) #5, !srcloc !135
  %224 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i409 = getelementptr i8, ptr %225, i32 264
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i409) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %227 = or i32 %226, 67108864
  %228 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i6.i410 = getelementptr i8, ptr %229, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i410, i32 %227) #5, !srcloc !135
  %230 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i411 = getelementptr i8, ptr %231, i32 264
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i411) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %233 = and i32 %232, -67108865
  %234 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i10.i412 = getelementptr i8, ptr %235, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i10.i412, i32 %233) #5, !srcloc !135
  %236 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i414 = getelementptr i8, ptr %237, i32 260
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i414) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %239 = and i32 %238, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool.i.not.i = icmp eq i32 %239, 0
  br i1 %tobool.i.not.i, label %mtk_dsi_config_vdo_timing.exit.cleanup_crit_edge, label %if.then4.i

mtk_dsi_config_vdo_timing.exit.cleanup_crit_edge: ; preds = %mtk_dsi_config_vdo_timing.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %mtk_dsi_config_vdo_timing.exit
  call void @__sanitizer_cov_trace_pc() #7
  %240 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %241, i32 260
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %243 = and i32 %242, -16777217
  %244 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i18.i = getelementptr i8, ptr %245, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i18.i, i32 %243) #5, !srcloc !135
  br label %cleanup

err_phy_power_off:                                ; preds = %do.end216, %do.end208
  %ret.0 = phi i32 [ %retval.0.i, %do.end208 ], [ %retval.0.i355, %do.end216 ]
  %246 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %phy, align 4
  %call226 = tail call i32 @phy_power_off(ptr noundef %247) #5
  br label %err_refcount

err_refcount:                                     ; preds = %err_phy_power_off, %do.end
  %ret.1 = phi i32 [ %call196, %do.end ], [ %ret.0, %err_phy_power_off ]
  %248 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %refcount, align 4
  %dec = add i32 %249, -1
  store i32 %dec, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_refcount, %if.then4.i, %mtk_dsi_config_vdo_timing.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_refcount ], [ 0, %entry.cleanup_crit_edge ], [ 0, %mtk_dsi_config_vdo_timing.exit.cleanup_crit_edge ], [ 0, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_dsi_ddp_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @mtk_dsi_poweroff(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dsi_poweroff(ptr noundef %dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 17
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !156

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 676, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end21.critedge:                                ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23.not = icmp eq i32 %dec, 0
  br i1 %cmp23.not, label %if.end25, label %if.end21.critedge.return_crit_edge

if.end21.critedge.return_crit_edge:               ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end25:                                         ; preds = %if.end21.critedge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %regs.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 7
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !135
  %irq_data.i.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 19
  %5 = ptrtoint ptr %irq_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_data.i.i, align 4
  %and.i.i = and i32 %6, -9
  store i32 %and.i.i, ptr %irq_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !135
  %call.i = tail call fastcc i32 @mtk_dsi_wait_for_irq_done(ptr noundef %dsi, i32 noundef 8, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end25.mtk_dsi_switch_to_cmd_mode.exit_crit_edge

if.end25.mtk_dsi_switch_to_cmd_mode.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_switch_to_cmd_mode.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #5
  br label %mtk_dsi_switch_to_cmd_mode.exit

mtk_dsi_switch_to_cmd_mode.exit:                  ; preds = %if.then.i, %if.end25.mtk_dsi_switch_to_cmd_mode.exit_crit_edge
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %12 = or i32 %11, 16777216
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %12) #5, !srcloc !135
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %18 = and i32 %17, -16777217
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i5.i = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i, i32 %18) #5, !srcloc !135
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %22, i32 264
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %24 = and i32 %23, -16777217
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i.i42 = getelementptr i8, ptr %26, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i42, i32 %24) #5, !srcloc !135
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3.i43 = getelementptr i8, ptr %28, i32 264
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i43) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %30 = and i32 %29, -33554433
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i5.i44 = getelementptr i8, ptr %32, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i44, i32 %30) #5, !srcloc !135
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %34, i32 260
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %36 = and i32 %35, -16777217
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i.i47 = getelementptr i8, ptr %38, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i47, i32 %36) #5, !srcloc !135
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3.i48 = getelementptr i8, ptr %40, i32 260
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i48) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %42 = and i32 %41, -33554433
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i5.i49 = getelementptr i8, ptr %44, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i49, i32 %42) #5, !srcloc !135
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %46, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %48 = and i32 %47, -33554433
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i.i52 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i52, i32 %48) #5, !srcloc !135
  %engine_clk = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 8
  %51 = ptrtoint ptr %engine_clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %engine_clk, align 4
  tail call void @clk_disable(ptr noundef %52) #5
  tail call void @clk_unprepare(ptr noundef %52) #5
  %digital_clk = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 9
  %53 = ptrtoint ptr %digital_clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %digital_clk, align 4
  tail call void @clk_disable(ptr noundef %54) #5
  tail call void @clk_unprepare(ptr noundef %54) #5
  %phy = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 6
  %55 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy, align 4
  %call26 = tail call i32 @phy_power_off(ptr noundef %56) #5
  br label %return

return:                                           ; preds = %mtk_dsi_switch_to_cmd_mode.exit, %if.end21.critedge.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 576, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %host = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mtk_dsi_ops, ptr %ops, align 4
  %1 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %host, align 4
  %call5 = tail call i32 @mipi_dsi_host_register(ptr noundef %host) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call5) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %driver_data = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 21
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %driver_data, align 4
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #5
  %engine_clk = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %engine_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %engine_clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.end7
  %cmp15.not = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp15.not, label %if.then12.err_unregister_host_crit_edge, label %do.end19

if.then12.err_unregister_host_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unregister_host

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %4) #9
  br label %err_unregister_host

if.end21:                                         ; preds = %if.end7
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.23) #5
  %digital_clk = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %digital_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %digital_clk, align 4
  %cmp.i158 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.end21
  %cmp28.not = icmp eq ptr %call22, inttoptr (i32 -517 to ptr)
  br i1 %cmp28.not, label %if.then25.err_unregister_host_crit_edge, label %do.end32

if.then25.err_unregister_host_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unregister_host

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %6) #9
  br label %err_unregister_host

if.end34:                                         ; preds = %if.end21
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.27) #5
  %hs_clk = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %hs_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call35, ptr %hs_clk, align 4
  %cmp.i159 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %8) #9
  br label %err_unregister_host

if.end44:                                         ; preds = %if.end34
  %call45 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call46 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call45) #5
  %regs47 = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %regs47 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call46, ptr %regs47, align 4
  %cmp.i160 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %10) #9
  br label %err_unregister_host

if.end56:                                         ; preds = %if.end44
  %call57 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.34) #5
  %phy = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call57, ptr %phy, align 4
  %cmp.i161 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then60, label %if.end66

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %12) #9
  br label %err_unregister_host

if.end66:                                         ; preds = %if.end56
  %call67 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %call67) #9
  br label %err_unregister_host

if.end74:                                         ; preds = %if.end66
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end74.dev_name.exit_crit_edge

if.end74.dev_name.exit_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end74.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ %14, %if.end74.dev_name.exit_crit_edge ]
  %call.i162 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call67, ptr noundef nonnull @mtk_dsi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool79.not = icmp eq i32 %call.i162, 0
  br i1 %tobool79.not, label %do.body86, label %do.end83

do.end83:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #9
  br label %err_unregister_host

do.body86:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq_wait_queue = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %irq_wait_queue, ptr noundef nonnull @.str.44, ptr noundef nonnull @mtk_dsi_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %funcs = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mtk_dsi_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %of_node90 = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %of_node90 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %of_node90, align 4
  %type = getelementptr inbounds %struct.mtk_dsi, ptr %call.i, i32 0, i32 3, i32 10
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %type, align 4
  br label %cleanup

err_unregister_host:                              ; preds = %do.end83, %do.end72, %if.then60, %if.then50, %if.then38, %do.end32, %if.then25.err_unregister_host_crit_edge, %do.end19, %if.then12.err_unregister_host_crit_edge
  %ret.0 = phi i32 [ %4, %do.end19 ], [ -517, %if.then12.err_unregister_host_crit_edge ], [ %6, %do.end32 ], [ -517, %if.then25.err_unregister_host_crit_edge ], [ %8, %if.then38 ], [ %10, %if.then50 ], [ %12, %if.then60 ], [ %call67, %do.end72 ], [ %call.i162, %do.end83 ]
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_host, %do.body86, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %ret.0, %err_unregister_host ], [ 0, %do.body86 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled.i = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.mtk_output_dsi_disable.exit_crit_edge, label %if.end.i

entry.mtk_output_dsi_disable.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_output_dsi_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mtk_dsi_poweroff(ptr noundef %1) #5
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i, align 4
  br label %mtk_output_dsi_disable.exit

mtk_output_dsi_disable.exit:                      ; preds = %if.end.i, %entry.mtk_output_dsi_disable.exit_crit_edge
  %host = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %host) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_dsi_wait_for_irq_done(ptr noundef %dsi, i32 noundef %irq_flag, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 551) #5
  %irq_data = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 19
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_data, align 4
  %and = and i32 %1, %irq_flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  %spec.store.select = select i1 %tobool5.not, i32 1, i32 %call2.i
  %__ret.0 = select i1 %tobool.not, i32 %call2.i, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool7.not = icmp eq i32 %__ret.0, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %2 = select i1 %not.tobool.not, i1 true, i1 %tobool7.not
  br i1 %2, label %entry.if.end38_crit_edge, label %if.then9

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %irq_wait_queue = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 20
  %call1180 = call i32 @prepare_to_wait_event(ptr noundef %irq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_data, align 4
  %and1481 = and i32 %5, %irq_flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1481)
  %tobool15.not82 = icmp eq i32 %and1481, 0
  %__ret10.185 = select i1 %tobool15.not82, i32 %call2.i, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.185)
  %tobool25.not86 = icmp eq i32 %__ret10.185, 0
  %not.tobool15.not87 = xor i1 %tobool15.not82, true
  %6 = select i1 %not.tobool15.not87, i1 true, i1 %tobool25.not86
  br i1 %6, label %if.then9.for.end_crit_edge, label %if.then9.if.end31_crit_edge

if.then9.if.end31_crit_edge:                      ; preds = %if.then9
  br label %if.end31

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end31:                                         ; preds = %cleanup.if.end31_crit_edge, %if.then9.if.end31_crit_edge
  %__ret10.189 = phi i32 [ %__ret10.1, %cleanup.if.end31_crit_edge ], [ %__ret10.185, %if.then9.if.end31_crit_edge ]
  %call1188 = phi i32 [ %call11, %cleanup.if.end31_crit_edge ], [ %call1180, %if.then9.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1188)
  %tobool32.not = icmp eq i32 %call1188, 0
  br i1 %tobool32.not, label %cleanup, label %if.end31.__out_crit_edge

if.end31.__out_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %__out

cleanup:                                          ; preds = %if.end31
  %call35 = call i32 @schedule_timeout(i32 noundef %__ret10.189) #5
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %irq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %7 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_data, align 4
  %and14 = and i32 %8, %irq_flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool19.not = icmp eq i32 %call35, 0
  %spec.store.select49 = select i1 %tobool19.not, i32 1, i32 %call35
  %__ret10.1 = select i1 %tobool15.not, i32 %call35, i32 %spec.store.select49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool25.not = icmp eq i32 %__ret10.1, 0
  %not.tobool15.not = xor i1 %tobool15.not, true
  %9 = select i1 %not.tobool15.not, i1 true, i1 %tobool25.not
  br i1 %9, label %cleanup.for.end_crit_edge, label %cleanup.if.end31_crit_edge

cleanup.if.end31_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %__ret10.1.lcssa = phi i32 [ %__ret10.185, %if.then9.for.end_crit_edge ], [ %__ret10.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %irq_wait_queue, ptr noundef nonnull %__wq_entry) #5
  br label %__out

__out:                                            ; preds = %for.end, %if.end31.__out_crit_edge
  %__ret10.272 = phi i32 [ %__ret10.1.lcssa, %for.end ], [ %call1188, %if.end31.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end38

if.end38:                                         ; preds = %__out, %entry.if.end38_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end38_crit_edge ], [ %__ret10.272, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp = icmp eq i32 %__ret.1, 0
  br i1 %cmp, label %do.end43, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %irq_flag) #9
  %regs.i.i = getelementptr inbounds %struct.mtk_dsi, ptr %dsi, i32 0, i32 7
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @arm_heavy_mb() #5
  %13 = or i32 %12, 33554432
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %15, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %13) #5, !srcloc !135
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %17, i32 16
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #5, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @arm_heavy_mb() #5
  %19 = or i32 %18, 16777216
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i69 = getelementptr i8, ptr %21, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i69, i32 %19) #5, !srcloc !135
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %23, i32 16
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #5, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @arm_heavy_mb() #5
  %25 = and i32 %24, -16777217
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i5.i = getelementptr i8, ptr %27, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i, i32 %25) #5, !srcloc !135
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end38.if.end46_crit_edge
  ret i32 %__ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mtk_dsi, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !132
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  %and = and i32 %3, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 132
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #5, !srcloc !135
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  %.mask = and i32 %12, 128
  %tobool11.not = icmp eq i32 %.mask, 0
  br i1 %tobool11.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr.i20 = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #5, !srcloc !132
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %neg.i = xor i32 %and, -1
  %and.i21 = and i32 %16, %neg.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i21) #5
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr4.i22 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i22, i32 %17) #5, !srcloc !135
  %irq_data.i = getelementptr inbounds %struct.mtk_dsi, ptr %dev_id, i32 0, i32 19
  %20 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_data.i, align 4
  %or.i23 = or i32 %21, %and
  store i32 %or.i23, ptr %irq_data.i, align 4
  %irq_wait_queue = getelementptr inbounds %struct.mtk_dsi, ptr %dev_id, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %irq_wait_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_host_attach(ptr noundef %host, ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanes, align 8
  %lanes2 = getelementptr i8, ptr %host, i32 408
  %4 = ptrtoint ptr %lanes2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %lanes2, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 5
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 4
  %format3 = getelementptr i8, ptr %host, i32 404
  %7 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %format3, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_flags, align 8
  %mode_flags4 = getelementptr i8, ptr %host, i32 400
  %10 = ptrtoint ptr %mode_flags4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mode_flags4, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @devm_drm_of_get_bridge(ptr noundef %1, ptr noundef %12, i32 noundef 0, i32 noundef 0) #5
  %next_bridge = getelementptr i8, ptr %host, i32 368
  %13 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %next_bridge, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge = getelementptr i8, ptr %host, i32 88
  tail call void @drm_bridge_add(ptr noundef %bridge) #5
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %call11 = tail call i32 @component_add(ptr noundef %16, ptr noundef nonnull @mtk_dsi_component_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %call11) #5
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %call11, %if.then12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_host_detach(ptr noundef %host, ptr nocapture noundef readnone %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void @component_del(ptr noundef %1, ptr noundef nonnull @mtk_dsi_component_ops) #5
  %bridge = getelementptr i8, ptr %host, i32 88
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_host_transfer(ptr noundef %host, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  %read_data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %read_data) #5
  %0 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %read_data, i32 0, i32 15
  %regs = getelementptr i8, ptr %host, i32 380
  %15 = call ptr @memset(ptr %read_data, i32 255, i32 16)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %19 = and i32 %18, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %21, label %if.end.if.end21_crit_edge [
    i8 4, label %if.end.if.then18_crit_edge
    i8 20, label %if.end.if.then18_crit_edge117
    i8 36, label %if.end.if.then18_crit_edge118
    i8 6, label %if.end.if.then18_crit_edge119
  ]

if.end.if.then18_crit_edge119:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end.if.then18_crit_edge118:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end.if.then18_crit_edge117:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then18:                                        ; preds = %if.end.if.then18_crit_edge, %if.end.if.then18_crit_edge117, %if.end.if.then18_crit_edge118, %if.end.if.then18_crit_edge119
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %irq_flag.0 = phi i32 [ 3, %if.then18 ], [ 2, %if.end.if.end21_crit_edge ]
  %call.i.i = tail call i64 @ktime_get() #5
  %add.i.i.i = add i64 %call.i.i, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 890) #5
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr54.i.i = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  %.mask55.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask55.i.i)
  %tobool.not56.i.i = icmp eq i32 %.mask55.i.i, 0
  br i1 %tobool.not56.i.i, label %if.end21.mtk_dsi_wait_for_idle.exit.i_crit_edge, label %if.end21.land.lhs.true.i.i_crit_edge

if.end21.land.lhs.true.i.i_crit_edge:             ; preds = %if.end21
  br label %land.lhs.true.i.i

if.end21.mtk_dsi_wait_for_idle.exit.i_crit_edge:  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_wait_for_idle.exit.i

land.lhs.true.i.i:                                ; preds = %if.then26.i.i.land.lhs.true.i.i_crit_edge, %if.end21.land.lhs.true.i.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 4, i32 noundef 2) #5
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  %.mask.i.i = and i32 %28, 128
  %tobool.not.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %if.then26.i.i.mtk_dsi_wait_for_idle.exit.i_crit_edge, label %if.then26.i.i.land.lhs.true.i.i_crit_edge

if.then26.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i

if.then26.i.i.mtk_dsi_wait_for_idle.exit.i_crit_edge: ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_wait_for_idle.exit.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %30, i32 12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  %.mask52.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask52.i.i)
  %tobool30.not.i.i = icmp eq i32 %.mask52.i.i, 0
  br i1 %tobool30.not.i.i, label %for.end.i.i.mtk_dsi_wait_for_idle.exit.i_crit_edge, label %do.end35.i.i

for.end.i.i.mtk_dsi_wait_for_idle.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_wait_for_idle.exit.i

do.end35.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #9
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %35 = or i32 %34, 33554432
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 %35) #5, !srcloc !135
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr.i.i48.i.i = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %41 = or i32 %40, 16777216
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr4.i.i49.i.i = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i49.i.i, i32 %41) #5, !srcloc !135
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %47 = and i32 %46, -16777217
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr4.i5.i.i.i = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i5.i.i.i, i32 %47) #5, !srcloc !135
  br label %mtk_dsi_wait_for_idle.exit.i

mtk_dsi_wait_for_idle.exit.i:                     ; preds = %do.end35.i.i, %for.end.i.i.mtk_dsi_wait_for_idle.exit.i_crit_edge, %if.then26.i.i.mtk_dsi_wait_for_idle.exit.i_crit_edge, %if.end21.mtk_dsi_wait_for_idle.exit.i_crit_edge
  %neg.i.i = xor i32 %irq_flag.0, -1
  %irq_data.i.i = getelementptr i8, ptr %host, i32 512
  %50 = ptrtoint ptr %irq_data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_data.i.i, align 4
  %and.i.i = and i32 %51, %neg.i.i
  store i32 %and.i.i, ptr %irq_data.i.i, align 4
  %tx_buf1.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %52 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_buf1.i.i, align 4
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type, align 1
  %driver_data.i.i = getelementptr i8, ptr %host, i32 568
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %conv.i.i = zext i8 %55 to i32
  %60 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %55, label %if.else.i.i [
    i8 4, label %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge
    i8 20, label %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge120
    i8 36, label %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge121
    i8 6, label %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge122
  ]

mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge122: ; preds = %mtk_dsi_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge121: ; preds = %mtk_dsi_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge120: ; preds = %mtk_dsi_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge: ; preds = %mtk_dsi_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %mtk_dsi_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_len.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %61 = ptrtoint ptr %tx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp16.i.i = icmp ugt i32 %62, 2
  %phi.cast.i.i = select i1 %cmp16.i.i, i32 2, i32 0
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge120, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge121, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge122
  %config.0.i.i = phi i32 [ %phi.cast.i.i, %if.else.i.i ], [ 4, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge ], [ 4, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge120 ], [ 4, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge121 ], [ 4, %mtk_dsi_wait_for_idle.exit.i.if.end.i.i_crit_edge122 ]
  %tx_len19.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %63 = ptrtoint ptr %tx_len19.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_len19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp20.i.i = icmp ugt i32 %64, 2
  br i1 %cmp20.i.i, label %if.end36.i.thread.i, label %if.end36.i.i

if.end36.i.thread.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = add i32 %64, 3
  %div78.i.i = lshr i32 %add.i.i, 2
  %add24.i.i = add nuw nsw i32 %div78.i.i, 1
  %shl.i.i = shl i32 %64, 16
  %shl28.i.i = shl nuw nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl.i.i, %shl28.i.i
  %phi.bo.i.i = and i32 %add24.i.i, 63
  br label %for.body.lr.ph.i.i

if.end36.i.i:                                     ; preds = %if.end.i.i
  %shl33.i.i = shl nuw nsw i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp3892.not.i.i = icmp eq i32 %64, 0
  br i1 %cmp3892.not.i.i, label %if.end36.i.i.mtk_dsi_host_send_cmd.exit_crit_edge, label %if.end36.i.i.for.body.lr.ph.i.i_crit_edge

if.end36.i.i.for.body.lr.ph.i.i_crit_edge:        ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i.i

if.end36.i.i.mtk_dsi_host_send_cmd.exit_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_host_send_cmd.exit

for.body.lr.ph.i.i:                               ; preds = %if.end36.i.i.for.body.lr.ph.i.i_crit_edge, %if.end36.i.thread.i
  %cmdq_mask.0.i20.i = phi i32 [ -1, %if.end36.i.thread.i ], [ 65535, %if.end36.i.i.for.body.lr.ph.i.i_crit_edge ]
  %or.pn.i18.i = phi i32 [ %or.i.i, %if.end36.i.thread.i ], [ %shl33.i.i, %if.end36.i.i.for.body.lr.ph.i.i_crit_edge ]
  %cmdq_off.0.i17.i = phi i32 [ 4, %if.end36.i.thread.i ], [ 2, %if.end36.i.i.for.body.lr.ph.i.i_crit_edge ]
  %cmdq_size.0.i15.i = phi i32 [ %phi.bo.i.i, %if.end36.i.thread.i ], [ 1, %if.end36.i.i.for.body.lr.ph.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.093.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add41.i.i = add i32 %i.093.i.i, %cmdq_off.0.i17.i
  %add42.i.i = add i32 %add41.i.i, %59
  %and.i7.i = and i32 %add42.i.i, -4
  %and45.i.i = shl i32 %add41.i.i, 3
  %mul.i.i = and i32 %and45.i.i, 24
  %shl46.i.i = shl nuw i32 255, %mul.i.i
  %arrayidx.i.i = getelementptr i8, ptr %53, i32 %i.093.i.i
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i, align 1
  %conv47.i.i = zext i8 %66 to i32
  %shl52.i.i = shl nuw i32 %conv47.i.i, %mul.i.i
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 %and.i7.i
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !132
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %neg.i.i.i = xor i32 %shl46.i.i, -1
  %and.i.i.i = and i32 %70, %neg.i.i.i
  %and2.i.i.i = and i32 %shl52.i.i, %shl46.i.i
  %or.i.i.i = or i32 %and.i.i.i, %and2.i.i.i
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %73, i32 %and.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %71) #5, !srcloc !135
  %inc.i.i = add nuw i32 %i.093.i.i, 1
  %74 = ptrtoint ptr %tx_len19.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_len19.i.i, align 4
  %cmp38.i.i = icmp ult i32 %inc.i.i, %75
  br i1 %cmp38.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.mtk_dsi_host_send_cmd.exit_crit_edge

for.body.i.i.mtk_dsi_host_send_cmd.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_host_send_cmd.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

mtk_dsi_host_send_cmd.exit:                       ; preds = %for.body.i.i.mtk_dsi_host_send_cmd.exit_crit_edge, %if.end36.i.i.mtk_dsi_host_send_cmd.exit_crit_edge
  %cmdq_mask.0.i21.i = phi i32 [ 65535, %if.end36.i.i.mtk_dsi_host_send_cmd.exit_crit_edge ], [ %cmdq_mask.0.i20.i, %for.body.i.i.mtk_dsi_host_send_cmd.exit_crit_edge ]
  %or.pn.i19.i = phi i32 [ %shl33.i.i, %if.end36.i.i.mtk_dsi_host_send_cmd.exit_crit_edge ], [ %or.pn.i18.i, %for.body.i.i.mtk_dsi_host_send_cmd.exit_crit_edge ]
  %cmdq_size.0.i16.i = phi i32 [ 1, %if.end36.i.i.mtk_dsi_host_send_cmd.exit_crit_edge ], [ %cmdq_size.0.i15.i, %for.body.i.i.mtk_dsi_host_send_cmd.exit_crit_edge ]
  %reg_val.0.i.i = or i32 %or.pn.i19.i, %config.0.i.i
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr.i80.i.i = getelementptr i8, ptr %77, i32 %59
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i.i) #5, !srcloc !132
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %neg.i81.i.i = xor i32 %cmdq_mask.0.i21.i, -1
  %and.i82.i.i = and i32 %79, %neg.i81.i.i
  %and2.i83.i.i = and i32 %reg_val.0.i.i, %cmdq_mask.0.i21.i
  %or.i84.i.i = or i32 %and.i82.i.i, %and2.i83.i.i
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i84.i.i) #5
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %add.ptr4.i85.i.i = getelementptr i8, ptr %82, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i85.i.i, i32 %80) #5, !srcloc !135
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr.i87.i.i = getelementptr i8, ptr %84, i32 96
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %86 = and i32 %85, -1056964609
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  %or.i90.i.i = or i32 %87, %cmdq_size.0.i16.i
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i90.i.i) #5
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %add.ptr4.i91.i.i = getelementptr i8, ptr %90, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i91.i.i, i32 %88) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 0) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 16777216) #5, !srcloc !135
  %call.i = tail call fastcc i32 @mtk_dsi_wait_for_irq_done(ptr noundef %add.ptr.i, i32 noundef %irq_flag.0, i32 noundef 2000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mtk_dsi_host_send_cmd.exit.cleanup_crit_edge, label %if.end26

mtk_dsi_host_send_cmd.exit.cleanup_crit_edge:     ; preds = %mtk_dsi_host_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %mtk_dsi_host_send_cmd.exit
  %95 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %type, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %96, label %if.end26.cleanup_crit_edge [
    i8 4, label %if.end26.if.end47_crit_edge
    i8 20, label %if.end26.if.end47_crit_edge123
    i8 36, label %if.end26.if.end47_crit_edge124
    i8 6, label %if.end26.if.end47_crit_edge125
  ]

if.end26.if.end47_crit_edge125:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end26.if.end47_crit_edge124:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end26.if.end47_crit_edge123:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end26.if.end47_crit_edge, %if.end26.if.end47_crit_edge123, %if.end26.if.end47_crit_edge124, %if.end26.if.end47_crit_edge125
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %98 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rx_buf, align 4
  %tobool48.not = icmp eq ptr %99, null
  br i1 %tobool48.not, label %if.then49, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end47
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  %add.ptr56 = getelementptr i8, ptr %101, i32 116
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr56) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %103 = ptrtoint ptr %read_data to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %read_data, align 1
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %add.ptr57.1 = getelementptr i8, ptr %105, i32 117
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.1) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %0, align 1
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 4
  %add.ptr57.2 = getelementptr i8, ptr %109, i32 118
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.2) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %1, align 1
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 4
  %add.ptr57.3 = getelementptr i8, ptr %113, i32 119
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.3) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %115 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %2, align 1
  %116 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs, align 4
  %add.ptr57.4 = getelementptr i8, ptr %117, i32 120
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.4) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %119 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %3, align 1
  %120 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs, align 4
  %add.ptr57.5 = getelementptr i8, ptr %121, i32 121
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.5) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %123 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %4, align 1
  %124 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs, align 4
  %add.ptr57.6 = getelementptr i8, ptr %125, i32 122
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.6) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %127 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %5, align 1
  %128 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs, align 4
  %add.ptr57.7 = getelementptr i8, ptr %129, i32 123
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.7) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %131 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %6, align 1
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 4
  %add.ptr57.8 = getelementptr i8, ptr %133, i32 124
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.8) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %135 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %7, align 1
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %add.ptr57.9 = getelementptr i8, ptr %137, i32 125
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.9) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %139 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %8, align 1
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 4
  %add.ptr57.10 = getelementptr i8, ptr %141, i32 126
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.10) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %143 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %9, align 1
  %144 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs, align 4
  %add.ptr57.11 = getelementptr i8, ptr %145, i32 127
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.11) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %147 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %10, align 1
  %148 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs, align 4
  %add.ptr57.12 = getelementptr i8, ptr %149, i32 128
  %150 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.12) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %151 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %11, align 1
  %152 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs, align 4
  %add.ptr57.13 = getelementptr i8, ptr %153, i32 129
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.13) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %155 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %12, align 1
  %156 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs, align 4
  %add.ptr57.14 = getelementptr i8, ptr %157, i32 130
  %158 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.14) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %159 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %13, align 1
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %add.ptr57.15 = getelementptr i8, ptr %161, i32 131
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57.15) #5, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %163 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %14, align 1
  %call63 = call fastcc i32 @mtk_dsi_recv_cnt(i8 noundef zeroext %102, ptr noundef nonnull %read_data)
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %164 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rx_len, align 4
  %166 = tail call i32 @llvm.umin.i32(i32 %call63, i32 %165)
  %167 = tail call i32 @llvm.umin.i32(i32 %166, i32 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool79.not = icmp eq i32 %167, 0
  br i1 %tobool79.not, label %for.body.preheader.do.end_crit_edge, label %if.then80

for.body.preheader.do.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #5
  br label %cleanup

if.then80:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call63)
  %cmp64 = icmp ugt i32 %call63, 2
  %. = select i1 %cmp64, ptr %3, ptr %0
  %168 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rx_buf, align 4
  %170 = call ptr @memcpy(ptr %169, ptr %., i32 %167)
  br label %do.end

do.end:                                           ; preds = %if.then80, %for.body.preheader.do.end_crit_edge
  %171 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tx_buf1.i.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %172, align 1
  %conv84 = zext i8 %174 to i32
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %167, i32 noundef %conv84) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then49, %if.end26.cleanup_crit_edge, %mtk_dsi_host_send_cmd.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %167, %do.end ], [ -22, %if.then49 ], [ -62, %mtk_dsi_host_send_cmd.exit.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %read_data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_of_get_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %encoder.i = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mtk_dsi_encoder_init.exit.thread10

mtk_dsi_encoder_init.exit.thread10:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %host.i = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %call1.i = tail call i32 @mtk_drm_find_possible_crtc_by_comp(ptr noundef %data, ptr noundef %3) #5
  %possible_crtcs.i = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1.i, ptr %possible_crtcs.i, align 4
  %bridge.i = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 3
  %call4.i = tail call i32 @drm_bridge_attach(ptr noundef %encoder.i, ptr noundef %bridge.i, ptr noundef null, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %mtk_dsi_encoder_init.exit.thread13

mtk_dsi_encoder_init.exit.thread13:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_encoder_cleanup(ptr noundef %encoder.i) #5
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call9.i = tail call ptr @drm_bridge_connector_init(ptr noundef %data, ptr noundef %encoder.i) #5
  %connector.i = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %connector.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %connector.i, align 4
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtk_dsi_encoder_init.exit, label %mtk_dsi_encoder_init.exit.thread

mtk_dsi_encoder_init.exit.thread:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %call9.i, ptr noundef %encoder.i) #5
  br label %if.end

mtk_dsi_encoder_init.exit:                        ; preds = %if.end7.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47) #5
  %6 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector.i, align 4
  %8 = ptrtoint ptr %7 to i32
  tail call void @drm_encoder_cleanup(ptr noundef %encoder.i) #5
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %mtk_dsi_encoder_init.exit.if.end_crit_edge, label %mtk_dsi_encoder_init.exit.cleanup_crit_edge

mtk_dsi_encoder_init.exit.cleanup_crit_edge:      ; preds = %mtk_dsi_encoder_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mtk_dsi_encoder_init.exit.if.end_crit_edge:       ; preds = %mtk_dsi_encoder_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %mtk_dsi_encoder_init.exit.if.end_crit_edge, %mtk_dsi_encoder_init.exit.thread
  %call.i7 = tail call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mtk_dsi_encoder_init.exit.cleanup_crit_edge, %mtk_dsi_encoder_init.exit.thread13, %mtk_dsi_encoder_init.exit.thread10
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ %8, %mtk_dsi_encoder_init.exit.cleanup_crit_edge ], [ %call.i, %mtk_dsi_encoder_init.exit.thread10 ], [ %call4.i, %mtk_dsi_encoder_init.exit.thread13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dsi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %encoder = getelementptr inbounds %struct.mtk_dsi, ptr %1, i32 0, i32 2
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_drm_find_possible_crtc_by_comp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_dsi_recv_cnt(i8 noundef zeroext %type, ptr nocapture noundef readonly %read_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %type, label %do.end8 [
    i8 17, label %entry.return_crit_edge
    i8 33, label %entry.return_crit_edge14
    i8 18, label %entry.sw.bb1_crit_edge
    i8 34, label %entry.sw.bb1_crit_edge15
    i8 26, label %entry.sw.bb2_crit_edge
    i8 28, label %entry.sw.bb2_crit_edge16
    i8 2, label %do.end
  ]

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge15
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge16
  %arrayidx = getelementptr i8, ptr %read_data, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %2 to i32
  %arrayidx4 = getelementptr i8, ptr %read_data, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %mul = shl nuw nsw i32 %conv5, 4
  %add = add nuw nsw i32 %mul, %conv3
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #9
  br label %return

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %type to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv) #9
  br label %return

return:                                           ; preds = %do.end8, %do.end, %sw.bb2, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge14
  %retval.0 = phi i32 [ %add, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge14 ], [ 0, %do.end8 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dsi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call2 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dsi_bridge_disable(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr i8, ptr %bridge, i32 420
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.mtk_output_dsi_disable.exit_crit_edge, label %if.end.i

entry.mtk_output_dsi_disable.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_output_dsi_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -92
  tail call fastcc void @mtk_dsi_poweroff(ptr noundef %add.ptr.i) #5
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled.i, align 4
  br label %mtk_output_dsi_disable.exit

mtk_output_dsi_disable.exit:                      ; preds = %if.end.i, %entry.mtk_output_dsi_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dsi_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vm = getelementptr i8, ptr %bridge, i32 324
  tail call void @drm_display_mode_to_videomode(ptr noundef %adjusted, ptr noundef %vm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dsi_bridge_enable(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr i8, ptr %bridge, i32 420
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mtk_output_dsi_enable.exit_crit_edge

entry.mtk_output_dsi_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_output_dsi_enable.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -92
  %call.i = tail call fastcc i32 @mtk_dsi_poweron(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59) #5
  br label %mtk_output_dsi_enable.exit

if.end2.i:                                        ; preds = %if.end.i
  %mode_flags.i.i = getelementptr i8, ptr %bridge, i32 312
  %2 = ptrtoint ptr %mode_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_flags.i.i, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.i.mtk_dsi_set_mode.exit.i_crit_edge, label %if.then.i.i

if.end2.i.mtk_dsi_set_mode.exit.i_crit_edge:      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_set_mode.exit.i

if.then.i.i:                                      ; preds = %if.end2.i
  %and2.i.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %if.then.i.i.mtk_dsi_set_mode.exit.i_crit_edge

if.then.i.i.mtk_dsi_set_mode.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_set_mode.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 33554432, i32 16777216
  br label %mtk_dsi_set_mode.exit.i

mtk_dsi_set_mode.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i.mtk_dsi_set_mode.exit.i_crit_edge, %if.end2.i.mtk_dsi_set_mode.exit.i_crit_edge
  %vid_mode.0.i.i = phi i32 [ 0, %if.end2.i.mtk_dsi_set_mode.exit.i_crit_edge ], [ 50331648, %if.then.i.i.mtk_dsi_set_mode.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %regs.i.i = getelementptr i8, ptr %bridge, i32 292
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %vid_mode.0.i.i) #5, !srcloc !135
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i, label %if.then.i9.i, label %mtk_dsi_set_mode.exit.i.mtk_dsi_clk_hs_mode.exit.i_crit_edge

mtk_dsi_set_mode.exit.i.mtk_dsi_clk_hs_mode.exit.i_crit_edge: ; preds = %mtk_dsi_set_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_dsi_clk_hs_mode.exit.i

if.then.i9.i:                                     ; preds = %mtk_dsi_set_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %11, i32 260
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #5, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %15, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %13) #5, !srcloc !135
  br label %mtk_dsi_clk_hs_mode.exit.i

mtk_dsi_clk_hs_mode.exit.i:                       ; preds = %if.then.i9.i, %mtk_dsi_set_mode.exit.i.mtk_dsi_clk_hs_mode.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 16777216) #5, !srcloc !135
  %20 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %enabled.i, align 4
  br label %mtk_output_dsi_enable.exit

mtk_output_dsi_enable.exit:                       ; preds = %mtk_dsi_clk_hs_mode.exit.i, %if.then1.i, %entry.mtk_output_dsi_enable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1158, i32 11}
!2 = !{ptr @mtk_dsi_driver, !3, !"mtk_dsi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1154, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 625, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mtk_dsi_poweron._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_dsi_poweron._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 633, i32 3}
!14 = !{ptr @mtk_dsi_poweron._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_dsi_poweron._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 639, i32 3}
!18 = !{ptr @mtk_dsi_poweron._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtk_dsi_poweron._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 500, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtk_dsi_config_vdo_timing._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mtk_dsi_config_vdo_timing._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 590, i32 3}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 553, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtk_dsi_wait_for_irq_done._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_dsi_wait_for_irq_done._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1044, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mtk_dsi_probe._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mtk_dsi_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1050, i32 38}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1055, i32 4}
!41 = !{ptr @mtk_dsi_probe._entry.20, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mtk_dsi_probe._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1059, i32 39}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1064, i32 4}
!47 = !{ptr @mtk_dsi_probe._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_dsi_probe._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1068, i32 34}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1071, i32 3}
!53 = !{ptr @mtk_dsi_probe._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_dsi_probe._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1079, i32 3}
!57 = !{ptr @mtk_dsi_probe._entry.31, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mtk_dsi_probe._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1083, i32 31}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1086, i32 3}
!63 = !{ptr @mtk_dsi_probe._entry.35, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mtk_dsi_probe._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1092, i32 3}
!67 = !{ptr @mtk_dsi_probe._entry.38, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mtk_dsi_probe._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1100, i32 3}
!71 = !{ptr @mtk_dsi_probe._entry.41, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_dsi_probe._entry_ptr.43, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mtk_dsi_probe.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1104, i32 2}
!75 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mtk_dsi_ops, !77, !"mtk_dsi_ops", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1022, i32 39}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 866, i32 3}
!80 = !{ptr @mtk_dsi_component_ops, !81, !"mtk_dsi_component_ops", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 843, i32 35}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 796, i32 3}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 809, i32 3}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 979, i32 3}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 993, i32 3}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1016, i32 2}
!92 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mtk_dsi_host_transfer._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mtk_dsi_host_transfer._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 892, i32 3}
!97 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mtk_dsi_wait_for_idle._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @mtk_dsi_wait_for_idle._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 912, i32 3}
!102 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mtk_dsi_recv_cnt._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mtk_dsi_recv_cnt._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 915, i32 3}
!107 = !{ptr @mtk_dsi_recv_cnt._entry.56, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @mtk_dsi_recv_cnt._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @mtk_dsi_bridge_funcs, !110, !"mtk_dsi_bridge_funcs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 768, i32 38}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 713, i32 3}
!113 = !{ptr @mtk_dsi_of_match, !114, !"mtk_dsi_of_match", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1143, i32 34}
!115 = !{ptr @mt2701_dsi_driver_data, !116, !"mt2701_dsi_driver_data", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1133, i32 41}
!117 = !{ptr @mt8173_dsi_driver_data, !118, !"mt8173_dsi_driver_data", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1129, i32 41}
!119 = !{ptr @mt8183_dsi_driver_data, !120, !"mt8183_dsi_driver_data", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/mediatek/mtk_dsi.c", i32 1137, i32 41}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2148656798, i64 2148657078, i64 2148657412, i64 2148657746}
!132 = !{i64 3108194}
!133 = !{i64 2156865731}
!134 = !{i64 2156865973}
!135 = !{i64 3107776}
!136 = !{i8 0, i8 2}
!137 = !{i64 2156902390}
!138 = !{i64 2156866531}
!139 = !{i64 2156866942}
!140 = !{i64 2156867353}
!141 = !{i64 2156867764}
!142 = !{i64 2156877504}
!143 = !{i64 2156875928}
!144 = !{i64 2156876352}
!145 = !{i64 2156876770}
!146 = !{i64 2156878383}
!147 = !{i64 2156878817}
!148 = !{i64 2156879258}
!149 = !{i64 2156879697}
!150 = !{i64 2156880141}
!151 = !{i64 2156882776}
!152 = !{i64 2156883262}
!153 = !{i64 2156883743}
!154 = !{i64 2156877969}
!155 = !{i64 2156885990}
!156 = !{!"branch_weights", i32 1, i32 2000}
!157 = !{i64 2156884970}
!158 = !{i64 2156885356}
!159 = !{i64 2156890665}
!160 = !{i64 2156891321}
!161 = !{i64 2156912020}
!162 = !{i64 2156905359}
!163 = !{i64 2156905841}
!164 = !{i64 2156884202}
!165 = !{i64 2156884586}
!166 = !{i64 2156912957}
!167 = !{i64 3107974}
!168 = !{i64 2156875133}
