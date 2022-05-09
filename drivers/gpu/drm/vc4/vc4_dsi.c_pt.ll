; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.94 = type { ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vc4_dsi_variant = type { i32, i8, ptr, ptr, i32 }
%struct.debugfs_reg32 = type { ptr, i32 }
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
%struct.vc4_dsi = type { ptr, %struct.mipi_dsi_host, ptr, ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x %struct.clk_fixed_factor], ptr, ptr, %struct.completion, i32, %struct.debugfs_regset32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.vc4_dsi_encoder = type { %struct.vc4_encoder, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vc4_dsi\00", [24 x i8] zeroinitializer }, align 32
@vc4_dsi_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-dsi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_dsi1_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dsi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_dsi0_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dsi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_dsi1_variant }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@vc4_dsi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vc4_dsi_dev_probe, ptr @vc4_dsi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_dsi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vc4_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @vc4_dsi_host_attach, ptr @vc4_dsi_host_detach, ptr @vc4_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@vc4_dsi_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown DSI format: %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vc4_dsi_host_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/vc4/vc4_dsi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc4_dsi_host_attach._entry_ptr = internal global ptr @vc4_dsi_host_attach._entry, section ".printk_index", align 4
@vc4_dsi_host_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Only VIDEO mode panels supported currently.\0A\00", [51 x i8] zeroinitializer }, align 32
@vc4_dsi_host_attach._entry_ptr.8 = internal global ptr @vc4_dsi_host_attach._entry.6, section ".printk_index", align 4
@vc4_dsi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vc4_dsi_bind, ptr @vc4_dsi_unbind }, [24 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Port returned 0x%08x for ID instead of 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vc4_dsi_bind\00", [19 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry_ptr = internal global ptr @vc4_dsi_bind._entry, section ".printk_index", align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get DMA memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get DMA channel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vc4 dsi\00", [24 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 1579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get interrupt: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry_ptr.16 = internal global ptr @vc4_dsi_bind._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"escape\00", [25 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 1587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get escape clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry_ptr.20 = internal global ptr @vc4_dsi_bind._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 1595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get phy clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry_ptr.24 = internal global ptr @vc4_dsi_bind._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pixel\00", [26 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.3, i32 1603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get pixel clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry_ptr.28 = internal global ptr @vc4_dsi_bind._entry.26, section ".printk_index", align 4
@vc4_dsi_bind._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.3, i32 1614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set esc clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vc4_dsi_bind._entry_ptr.31 = internal global ptr @vc4_dsi_bind._entry.29, section ".printk_index", align 4
@vc4_dsi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @vc4_dsi_encoder_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_dsi_encoder_disable, ptr @vc4_dsi_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set up DMA register write\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to submit DMA: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to wait for DMA: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LPDT sync\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"data lane 0 sequence\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LP0 contention\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LP1 contention\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HSTX timeout\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LPRX timeout\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"turnaround timeout\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"peripheral reset timeout\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI%d: %s error\0A\00", [47 x i8] zeroinitializer }, align 32
@vc4_dsi_init_phy_clocks.phy_clocks = internal constant { [3 x %struct.anon.94], [40 x i8] } { [3 x %struct.anon.94] [%struct.anon.94 { ptr @.str.45, i32 8 }, %struct.anon.94 { ptr @.str.46, i32 4 }, %struct.anon.94 { ptr @.str.47, i32 2 }], [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"byte\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ddr2\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddr\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi%u_%s\00", [23 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@vc4_dsi_ulps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 711, ptr @.str.51, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout waiting for DSI ULPS entry: STAT 0x%08x\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vc4_dsi_ulps\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vc4_dsi_ulps._entry_ptr = internal global ptr @vc4_dsi_ulps._entry, section ".printk_index", align 4
@vc4_dsi_ulps._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.3, i32 730, ptr @.str.51, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout waiting for DSI STOP entry: STAT 0x%08x\00", [48 x i8] zeroinitializer }, align 32
@vc4_dsi_ulps._entry_ptr.54 = internal global ptr @vc4_dsi_ulps._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to runtime PM enable on DSI%d\0A\00", [58 x i8] zeroinitializer }, align 32
@vc4_dsi_encoder_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 857, ptr @.str.58, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI regs before:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vc4_dsi_encoder_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vc4_dsi_encoder_enable._entry_ptr = internal global ptr @vc4_dsi_encoder_enable._entry, section ".printk_index", align 4
@vc4_dsi_encoder_enable._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.3, i32 869, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set phy clock to %ld: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@vc4_dsi_encoder_enable._entry_ptr.61 = internal global ptr @vc4_dsi_encoder_enable._entry.59, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to turn on DSI escape clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to turn on DSI PLL: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@vc4_dsi_encoder_enable._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.3, i32 952, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set pixel clock to %ldHz: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@vc4_dsi_encoder_enable._entry_ptr.66 = internal global ptr @vc4_dsi_encoder_enable._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to turn on DSI pixel clock: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@vc4_dsi_encoder_enable._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.57, ptr @.str.3, i32 1099, ptr @.str.58, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI regs after:\0A\00", [47 x i8] zeroinitializer }, align 32
@vc4_dsi_encoder_enable._entry_ptr.70 = internal global ptr @vc4_dsi_encoder_enable._entry.68, section ".printk_index", align 4
@vc4_dsi_host_transfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_dsi_host_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 1202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"transfer interrupt wait timeout\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vc4_dsi_host_transfer\00", [42 x i8] zeroinitializer }, align 32
@vc4_dsi_host_transfer._entry_ptr = internal global ptr @vc4_dsi_host_transfer._entry, section ".printk_index", align 4
@vc4_dsi_host_transfer._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 1204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"instat: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@vc4_dsi_host_transfer._entry_ptr.75 = internal global ptr @vc4_dsi_host_transfer._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DSI returned %db, expecting %db\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DSI transfer failed, resetting: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm2711_dsi1_variant = internal constant { %struct.vc4_dsi_variant, [44 x i8] } { %struct.vc4_dsi_variant { i32 1, i8 0, ptr @.str.78, ptr @dsi1_regs, i32 22 }, [44 x i8] zeroinitializer }, align 32
@bcm2835_dsi0_variant = internal constant { %struct.vc4_dsi_variant, [44 x i8] } { %struct.vc4_dsi_variant { i32 0, i8 0, ptr @.str.101, ptr @dsi0_regs, i32 22 }, [44 x i8] zeroinitializer }, align 32
@bcm2835_dsi1_variant = internal constant { %struct.vc4_dsi_variant, [44 x i8] } { %struct.vc4_dsi_variant { i32 1, i8 1, ptr @.str.78, ptr @dsi1_regs, i32 22 }, [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi1_regs\00", [22 x i8] zeroinitializer }, align 32
@dsi1_regs = internal constant { [22 x %struct.debugfs_reg32], [48 x i8] } { [22 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.79, i32 0 }, %struct.debugfs_reg32 { ptr @.str.80, i32 56 }, %struct.debugfs_reg32 { ptr @.str.81, i32 60 }, %struct.debugfs_reg32 { ptr @.str.82, i32 64 }, %struct.debugfs_reg32 { ptr @.str.83, i32 68 }, %struct.debugfs_reg32 { ptr @.str.84, i32 72 }, %struct.debugfs_reg32 { ptr @.str.85, i32 40 }, %struct.debugfs_reg32 { ptr @.str.86, i32 44 }, %struct.debugfs_reg32 { ptr @.str.87, i32 48 }, %struct.debugfs_reg32 { ptr @.str.88, i32 52 }, %struct.debugfs_reg32 { ptr @.str.89, i32 76 }, %struct.debugfs_reg32 { ptr @.str.90, i32 80 }, %struct.debugfs_reg32 { ptr @.str.91, i32 84 }, %struct.debugfs_reg32 { ptr @.str.92, i32 88 }, %struct.debugfs_reg32 { ptr @.str.93, i32 92 }, %struct.debugfs_reg32 { ptr @.str.94, i32 96 }, %struct.debugfs_reg32 { ptr @.str.95, i32 100 }, %struct.debugfs_reg32 { ptr @.str.96, i32 104 }, %struct.debugfs_reg32 { ptr @.str.97, i32 108 }, %struct.debugfs_reg32 { ptr @.str.98, i32 112 }, %struct.debugfs_reg32 { ptr @.str.99, i32 116 }, %struct.debugfs_reg32 { ptr @.str.100, i32 140 }], [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSI1_CTRL\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSI1_STAT\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI1_HSTX_TO_CNT\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI1_LPRX_TO_CNT\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI1_TA_TO_CNT\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI1_PR_TO_CNT\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI1_DISP0_CTRL\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI1_DISP1_CTRL\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSI1_INT_STAT\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSI1_INT_EN\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSI1_PHYC\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_CLT0\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_CLT1\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_CLT2\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_DLT3\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_DLT4\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_DLT5\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_DLT6\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI1_HS_DLT7\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI1_PHY_AFEC0\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI1_PHY_AFEC1\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSI1_ID\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi0_regs\00", [22 x i8] zeroinitializer }, align 32
@dsi0_regs = internal constant { [22 x %struct.debugfs_reg32], [48 x i8] } { [22 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.102, i32 0 }, %struct.debugfs_reg32 { ptr @.str.103, i32 44 }, %struct.debugfs_reg32 { ptr @.str.104, i32 48 }, %struct.debugfs_reg32 { ptr @.str.105, i32 52 }, %struct.debugfs_reg32 { ptr @.str.106, i32 56 }, %struct.debugfs_reg32 { ptr @.str.107, i32 60 }, %struct.debugfs_reg32 { ptr @.str.108, i32 24 }, %struct.debugfs_reg32 { ptr @.str.109, i32 28 }, %struct.debugfs_reg32 { ptr @.str.110, i32 36 }, %struct.debugfs_reg32 { ptr @.str.111, i32 40 }, %struct.debugfs_reg32 { ptr @.str.112, i32 64 }, %struct.debugfs_reg32 { ptr @.str.113, i32 68 }, %struct.debugfs_reg32 { ptr @.str.114, i32 72 }, %struct.debugfs_reg32 { ptr @.str.115, i32 76 }, %struct.debugfs_reg32 { ptr @.str.116, i32 80 }, %struct.debugfs_reg32 { ptr @.str.117, i32 84 }, %struct.debugfs_reg32 { ptr @.str.118, i32 88 }, %struct.debugfs_reg32 { ptr @.str.119, i32 92 }, %struct.debugfs_reg32 { ptr @.str.120, i32 96 }, %struct.debugfs_reg32 { ptr @.str.121, i32 100 }, %struct.debugfs_reg32 { ptr @.str.122, i32 104 }, %struct.debugfs_reg32 { ptr @.str.123, i32 116 }], [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSI0_CTRL\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSI0_STAT\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI0_HSTX_TO_CNT\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSI0_LPRX_TO_CNT\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI0_TA_TO_CNT\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI0_PR_TO_CNT\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI0_DISP0_CTRL\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DSI0_DISP1_CTRL\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSI0_INT_STAT\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DSI0_INT_EN\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSI0_PHYC\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_CLT0\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_CLT1\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_CLT2\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_DLT3\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_DLT4\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_DLT5\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_DLT6\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSI0_HS_DLT7\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI0_PHY_AFEC0\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DSI0_PHY_AFEC1\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSI0_ID\00", [24 x i8] zeroinitializer }, align 32
@switch.table.vc4_dsi_host_attach = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1693, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"vc4_dsi_dt_match\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1345, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"vc4_dsi_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1689, i32 24 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"vc4_dsi_host_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1311, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1288, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1294, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"vc4_dsi_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1657, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1525, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1539, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1549, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1573, i32 7 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1579, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1583, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1587, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1591, i32 41 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1595, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1599, i32 39 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1603, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1614, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [29 x i8] c"vc4_dsi_encoder_helper_funcs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1317, i32 46 }
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 87, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 582, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 589, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 594, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1393, i32 28 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1395, i32 27 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1397, i32 28 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1399, i32 28 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1401, i32 23 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1403, i32 23 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1405, i32 21 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1407, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1359, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [11 x i8] c"phy_clocks\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1434, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1435, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1436, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1437, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1457, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 709, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 728, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 851, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 857, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 868, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 929, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 935, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 951, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 957, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1099, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1202, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1203, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1224, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1247, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [21 x i8] c"bcm2711_dsi1_variant\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1323, i32 37 }
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"bcm2835_dsi0_variant\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1330, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant [21 x i8] c"bcm2835_dsi1_variant\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1337, i32 37 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1325, i32 19 }
@___asan_gen_.373 = private unnamed_addr constant [10 x i8] c"dsi1_regs\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 642, i32 35 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 643, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 644, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 645, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 646, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 647, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 648, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 649, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 650, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 651, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 652, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 653, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 654, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 655, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 656, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 657, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 658, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 659, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 660, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 661, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 662, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 663, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 664, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1332, i32 19 }
@___asan_gen_.445 = private unnamed_addr constant [10 x i8] c"dsi0_regs\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 617, i32 35 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 618, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 619, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 620, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 621, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 622, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 623, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 624, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 625, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 626, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 627, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 628, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 629, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 630, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 631, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 632, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 633, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 634, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 635, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 636, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 637, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 638, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.512 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_dsi.c\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 639, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [33 x i8] c"switch.table.vc4_dsi_host_attach\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @vc4_dsi_bind._entry, ptr @vc4_dsi_bind._entry.14, ptr @vc4_dsi_bind._entry.18, ptr @vc4_dsi_bind._entry.22, ptr @vc4_dsi_bind._entry.26, ptr @vc4_dsi_bind._entry.29, ptr @vc4_dsi_bind._entry_ptr, ptr @vc4_dsi_bind._entry_ptr.16, ptr @vc4_dsi_bind._entry_ptr.20, ptr @vc4_dsi_bind._entry_ptr.24, ptr @vc4_dsi_bind._entry_ptr.28, ptr @vc4_dsi_bind._entry_ptr.31, ptr @vc4_dsi_encoder_enable._entry, ptr @vc4_dsi_encoder_enable._entry.59, ptr @vc4_dsi_encoder_enable._entry.64, ptr @vc4_dsi_encoder_enable._entry.68, ptr @vc4_dsi_encoder_enable._entry_ptr, ptr @vc4_dsi_encoder_enable._entry_ptr.61, ptr @vc4_dsi_encoder_enable._entry_ptr.66, ptr @vc4_dsi_encoder_enable._entry_ptr.70, ptr @vc4_dsi_host_attach._entry, ptr @vc4_dsi_host_attach._entry.6, ptr @vc4_dsi_host_attach._entry_ptr, ptr @vc4_dsi_host_attach._entry_ptr.8, ptr @vc4_dsi_host_transfer._entry, ptr @vc4_dsi_host_transfer._entry.73, ptr @vc4_dsi_host_transfer._entry_ptr, ptr @vc4_dsi_host_transfer._entry_ptr.75, ptr @vc4_dsi_ulps._entry, ptr @vc4_dsi_ulps._entry.52, ptr @vc4_dsi_ulps._entry_ptr, ptr @vc4_dsi_ulps._entry_ptr.54, ptr @.str, ptr @vc4_dsi_dt_match, ptr @vc4_dsi_driver, ptr @vc4_dsi_host_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @vc4_dsi_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @vc4_dsi_encoder_helper_funcs, ptr @init_completion.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @vc4_dsi_init_phy_clocks.phy_clocks, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @bcm2711_dsi1_variant, ptr @bcm2835_dsi0_variant, ptr @bcm2835_dsi1_variant, ptr @.str.78, ptr @dsi1_regs, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @dsi0_regs, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @switch.table.vc4_dsi_host_attach], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_host_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_bind._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_bind._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_bind._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_bind._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_bind._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_init_phy_clocks.phy_clocks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_ulps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_ulps._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_encoder_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_encoder_enable._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_encoder_enable._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_encoder_enable._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_host_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dsi_host_transfer._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_dsi1_variant to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dsi0_variant to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_dsi1_variant to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi1_regs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi0_regs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_dsi_host_attach to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 232, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 4
  %dsi_host = getelementptr inbounds %struct.vc4_dsi, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.vc4_dsi, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vc4_dsi_host_ops, ptr %ops, align 4
  %3 = ptrtoint ptr %dsi_host to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dsi_host, align 4
  %call6 = tail call i32 @mipi_dsi_host_register(ptr noundef %dsi_host) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_dev_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dsi_host = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %dsi_host) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_host_attach(ptr nocapture noundef %host, ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %host, i32 -4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 8
  %lanes1 = getelementptr i8, ptr %host, i32 60
  %2 = ptrtoint ptr %lanes1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %lanes1, align 4
  %channel = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 3
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %channel2 = getelementptr i8, ptr %host, i32 56
  %5 = ptrtoint ptr %channel2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %channel2, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags, align 8
  %mode_flags3 = getelementptr i8, ptr %host, i32 72
  %8 = ptrtoint ptr %mode_flags3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_flags3, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %format21 = getelementptr i8, ptr %host, i32 64
  %14 = ptrtoint ptr %format21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %15) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.offset = sub i32 3, %10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vc4_dsi_host_attach, i32 0, i32 %10
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %format17 = getelementptr i8, ptr %host, i32 64
  %17 = ptrtoint ptr %format17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.offset, ptr %format17, align 4
  %div19 = udiv i32 %switch.load, %1
  %divider20 = getelementptr i8, ptr %host, i32 68
  %18 = ptrtoint ptr %divider20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div19, ptr %divider20, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  br i1 %tobool.not, label %do.end25, label %if.end

do.end25:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @component_add(ptr noundef %dev27, ptr noundef nonnull @vc4_dsi_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end25, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %if.end ], [ 0, %do.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_host_detach(ptr nocapture noundef readonly %host, ptr nocapture noundef readnone %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %host, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vc4_dsi_ops) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_host_transfer(ptr noundef %host, ptr noundef %msg) #0 align 64 {
entry:
  %packet = alloca %struct.mipi_dsi_packet, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %host, i32 -4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packet) #7
  %0 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 3
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %4 = call ptr @memset(ptr %packet, i32 255, i32 16)
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  %call = tail call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %6) #7
  %call1 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %packet, ptr noundef %msg) #7
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 4
  %conv72 = zext i8 %8 to i32
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %conv147 = zext i8 %10 to i32
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 2
  %conv150 = zext i8 %12 to i32
  %13 = shl nuw nsw i32 %conv150, 16
  %14 = shl nuw nsw i32 %conv147, 8
  %shl184 = or i32 %14, %conv72
  %or186 = or i32 %shl184, %13
  br i1 %call, label %if.then188, label %for.cond472.preheader.thread

for.cond472.preheader.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_len1319 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %15 = ptrtoint ptr %rx_len1319 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_len1319, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool329.not1320 = icmp eq i32 %16, 0
  %pktc.01321 = select i1 %tobool329.not1320, i32 0, i32 16
  br label %for.end499

if.then188:                                       ; preds = %entry
  %17 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %19)
  %cmp = icmp ult i32 %19, 17
  %rem = and i32 %19, 3
  %div1039 = lshr i32 %19, 2
  %pix_fifo_len.0 = select i1 %cmp, i32 0, i32 %div1039
  %cmd_fifo_len.0 = select i1 %cmp, i32 %19, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %pix_fifo_len.0)
  %cmp195 = icmp ugt i32 %pix_fifo_len.0, 255
  br i1 %cmp195, label %land.rhs, label %if.then188.if.end328_crit_edge

if.then188.if.end328_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328

land.rhs:                                         ; preds = %if.then188
  %.b1040 = load i1, ptr @vc4_dsi_host_transfer.__already_done, align 1
  br i1 %.b1040, label %land.rhs.if.end328_crit_edge, label %if.then213, !prof !260

land.rhs.if.end328_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end328

if.then213:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vc4_dsi_host_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1140, i32 noundef 9, ptr noundef null) #7
  br label %if.end328

if.end328:                                        ; preds = %if.then213, %land.rhs.if.end328_crit_edge, %if.then188.if.end328_crit_edge
  %shl265 = shl nuw nsw i32 %cmd_fifo_len.0, 24
  %or327 = or i32 %shl265, %or186
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %20 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool329.not = icmp eq i32 %21, 0
  %pktc.0 = select i1 %tobool329.not, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_fifo_len.0)
  %cmp4671309.not = icmp eq i32 %cmd_fifo_len.0, 0
  br i1 %cmp4671309.not, label %if.end328.for.cond472.preheader_crit_edge, label %for.body.lr.ph

if.end328.for.cond472.preheader_crit_edge:        ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond472.preheader

for.body.lr.ph:                                   ; preds = %if.end328
  %variant = getelementptr i8, ptr %host, i32 52
  %reg_dma_chan.i = getelementptr i8, ptr %host, i32 36
  %reg_dma_mem.i = getelementptr i8, ptr %host, i32 44
  %reg_paddr.i = getelementptr i8, ptr %host, i32 48
  %reg_dma_paddr.i = getelementptr i8, ptr %host, i32 40
  %regs.i = getelementptr i8, ptr %host, i32 32
  br label %for.body

for.cond472.preheader:                            ; preds = %dsi_dma_workaround_write.exit.for.cond472.preheader_crit_edge, %if.end328.for.cond472.preheader_crit_edge
  %cmd_fifo_len.11324 = phi i32 [ 0, %if.end328.for.cond472.preheader_crit_edge ], [ %cmd_fifo_len.0, %dsi_dma_workaround_write.exit.for.cond472.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pix_fifo_len.0)
  %cmp4731311.not = icmp eq i32 %pix_fifo_len.0, 0
  br i1 %cmp4731311.not, label %for.cond472.preheader.for.end499_crit_edge, label %for.body475.lr.ph

for.cond472.preheader.for.end499_crit_edge:       ; preds = %for.cond472.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end499

for.body475.lr.ph:                                ; preds = %for.cond472.preheader
  %reg_dma_chan.i1042 = getelementptr i8, ptr %host, i32 36
  %reg_dma_mem.i1047 = getelementptr i8, ptr %host, i32 44
  %reg_paddr.i1049 = getelementptr i8, ptr %host, i32 48
  %reg_dma_paddr.i1051 = getelementptr i8, ptr %host, i32 40
  %regs.i1044 = getelementptr i8, ptr %host, i32 32
  br label %for.body475

for.body:                                         ; preds = %dsi_dma_workaround_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.01310 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dsi_dma_workaround_write.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool469.not = icmp eq i32 %25, 0
  %cond = select i1 %tobool469.not, i32 20, i32 28
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %arrayidx470 = getelementptr i8, ptr %27, i32 %i.01310
  %28 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx470, align 1
  %conv471 = zext i8 %29 to i32
  %30 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %32 = shl nuw i32 %conv471, 24
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %cond
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit

if.end.i:                                         ; preds = %for.body
  %35 = ptrtoint ptr %reg_dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_dma_mem.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv471, ptr %36, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 4
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 30
  %40 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %42 = ptrtoint ptr %reg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_paddr.i, align 4
  %add.i = add i32 %43, %cond
  %44 = ptrtoint ptr %reg_dma_paddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_dma_paddr.i, align 4
  %call.i = call ptr %41(ptr noundef nonnull %31, i32 noundef %add.i, i32 noundef %45, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_submit.i, align 4
  %call4.i = call i32 %47(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool6.not.i = icmp sgt i32 %call4.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i) #7
  br label %dsi_dma_workaround_write.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = call i32 @dma_sync_wait(ptr noundef nonnull %31, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, label %if.then11.i

if.end8.i.dsi_dma_workaround_write.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i) #7
  br label %dsi_dma_workaround_write.exit

dsi_dma_workaround_write.exit:                    ; preds = %if.then11.i, %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, %if.then7.i, %if.then2.i, %do.body.i
  %inc = add nuw i32 %i.01310, 1
  %exitcond.not = icmp eq i32 %inc, %cmd_fifo_len.0
  br i1 %exitcond.not, label %dsi_dma_workaround_write.exit.for.cond472.preheader_crit_edge, label %dsi_dma_workaround_write.exit.for.body_crit_edge

dsi_dma_workaround_write.exit.for.body_crit_edge: ; preds = %dsi_dma_workaround_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

dsi_dma_workaround_write.exit.for.cond472.preheader_crit_edge: ; preds = %dsi_dma_workaround_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond472.preheader

for.body475:                                      ; preds = %dsi_dma_workaround_write.exit1065.for.body475_crit_edge, %for.body475.lr.ph
  %i.11312 = phi i32 [ 0, %for.body475.lr.ph ], [ %inc498, %dsi_dma_workaround_write.exit1065.for.body475_crit_edge ]
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %add.ptr477 = getelementptr i8, ptr %49, i32 %cmd_fifo_len.11324
  %mul = shl i32 %i.11312, 2
  %add.ptr478 = getelementptr i8, ptr %add.ptr477, i32 %mul
  %50 = ptrtoint ptr %add.ptr478 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr478, align 1
  %conv484 = zext i8 %51 to i32
  %arrayidx485 = getelementptr i8, ptr %add.ptr478, i32 1
  %52 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx485, align 1
  %conv486 = zext i8 %53 to i32
  %shl487 = shl nuw nsw i32 %conv486, 8
  %or488 = or i32 %shl487, %conv484
  %arrayidx489 = getelementptr i8, ptr %add.ptr478, i32 2
  %54 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx489, align 1
  %conv490 = zext i8 %55 to i32
  %shl491 = shl nuw nsw i32 %conv490, 16
  %or492 = or i32 %or488, %shl491
  %arrayidx493 = getelementptr i8, ptr %add.ptr478, i32 3
  %56 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx493, align 1
  %conv494 = zext i8 %57 to i32
  %shl495 = shl nuw i32 %conv494, 24
  %or496 = or i32 %or492, %shl495
  %58 = ptrtoint ptr %reg_dma_chan.i1042 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_dma_chan.i1042, align 4
  %tobool.not.i1043 = icmp eq ptr %59, null
  br i1 %tobool.not.i1043, label %do.body.i1046, label %if.end.i1054

do.body.i1046:                                    ; preds = %for.body475
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %60 = call i32 @llvm.bswap.i32(i32 %or496) #7
  %61 = ptrtoint ptr %regs.i1044 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i1044, align 4
  %add.ptr.i1045 = getelementptr i8, ptr %62, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1045, i32 %60) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1065

if.end.i1054:                                     ; preds = %for.body475
  %63 = ptrtoint ptr %reg_dma_mem.i1047 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_dma_mem.i1047, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or496, ptr %64, align 4
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %59, align 4
  %device_prep_dma_memcpy.i1048 = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 30
  %68 = ptrtoint ptr %device_prep_dma_memcpy.i1048 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device_prep_dma_memcpy.i1048, align 4
  %70 = ptrtoint ptr %reg_paddr.i1049 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reg_paddr.i1049, align 4
  %add.i1050 = add i32 %71, 32
  %72 = ptrtoint ptr %reg_dma_paddr.i1051 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg_dma_paddr.i1051, align 4
  %call.i1052 = call ptr %69(ptr noundef nonnull %59, i32 noundef %add.i1050, i32 noundef %73, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1053 = icmp eq ptr %call.i1052, null
  br i1 %tobool1.not.i1053, label %if.then2.i1055, label %if.end3.i1059

if.then2.i1055:                                   ; preds = %if.end.i1054
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1065

if.end3.i1059:                                    ; preds = %if.end.i1054
  %tx_submit.i1056 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1052, i32 0, i32 4
  %74 = ptrtoint ptr %tx_submit.i1056 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_submit.i1056, align 4
  %call4.i1057 = call i32 %75(ptr noundef nonnull %call.i1052) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1057)
  %tobool6.not.i1058 = icmp sgt i32 %call4.i1057, -1
  br i1 %tobool6.not.i1058, label %if.end8.i1063, label %if.then7.i1060

if.then7.i1060:                                   ; preds = %if.end3.i1059
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1057) #7
  br label %dsi_dma_workaround_write.exit1065

if.end8.i1063:                                    ; preds = %if.end3.i1059
  %call9.i1061 = call i32 @dma_sync_wait(ptr noundef nonnull %59, i32 noundef %call4.i1057) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1061)
  %tobool10.not.i1062 = icmp eq i32 %call9.i1061, 0
  br i1 %tobool10.not.i1062, label %if.end8.i1063.dsi_dma_workaround_write.exit1065_crit_edge, label %if.then11.i1064

if.end8.i1063.dsi_dma_workaround_write.exit1065_crit_edge: ; preds = %if.end8.i1063
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1065

if.then11.i1064:                                  ; preds = %if.end8.i1063
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1061) #7
  br label %dsi_dma_workaround_write.exit1065

dsi_dma_workaround_write.exit1065:                ; preds = %if.then11.i1064, %if.end8.i1063.dsi_dma_workaround_write.exit1065_crit_edge, %if.then7.i1060, %if.then2.i1055, %do.body.i1046
  %inc498 = add nuw nsw i32 %i.11312, 1
  %exitcond1315.not = icmp eq i32 %inc498, %pix_fifo_len.0
  br i1 %exitcond1315.not, label %dsi_dma_workaround_write.exit1065.for.end499_crit_edge, label %dsi_dma_workaround_write.exit1065.for.body475_crit_edge

dsi_dma_workaround_write.exit1065.for.body475_crit_edge: ; preds = %dsi_dma_workaround_write.exit1065
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body475

dsi_dma_workaround_write.exit1065.for.end499_crit_edge: ; preds = %dsi_dma_workaround_write.exit1065
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end499

for.end499:                                       ; preds = %dsi_dma_workaround_write.exit1065.for.end499_crit_edge, %for.cond472.preheader.for.end499_crit_edge, %for.cond472.preheader.thread
  %pkth.013251336 = phi i32 [ %or327, %for.cond472.preheader.for.end499_crit_edge ], [ %or186, %for.cond472.preheader.thread ], [ %or327, %dsi_dma_workaround_write.exit1065.for.end499_crit_edge ]
  %rx_len13261335 = phi ptr [ %rx_len, %for.cond472.preheader.for.end499_crit_edge ], [ %rx_len1319, %for.cond472.preheader.thread ], [ %rx_len, %dsi_dma_workaround_write.exit1065.for.end499_crit_edge ]
  %pktc.013271334 = phi i32 [ %pktc.0, %for.cond472.preheader.for.end499_crit_edge ], [ %pktc.01321, %for.cond472.preheader.thread ], [ %pktc.0, %dsi_dma_workaround_write.exit1065.for.end499_crit_edge ]
  %pktc.3.v = phi i32 [ 1025, %for.cond472.preheader.for.end499_crit_edge ], [ 1025, %for.cond472.preheader.thread ], [ 1537, %dsi_dma_workaround_write.exit1065.for.end499_crit_edge ]
  %flags = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags, align 2
  %78 = shl i16 %77, 2
  %79 = and i16 %78, 8
  %80 = zext i16 %79 to i32
  %81 = or i32 %pktc.013271334, %80
  %or508 = or i32 %81, 4
  %pktc.2 = select i1 %call, i32 %or508, i32 %81
  %pktc.3 = or i32 %pktc.2, %pktc.3.v
  %xfer_result = getelementptr i8, ptr %host, i32 208
  %82 = ptrtoint ptr %xfer_result to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %xfer_result, align 4
  %xfer_completion = getelementptr i8, ptr %host, i32 152
  %83 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %xfer_completion, align 4
  %variant716 = getelementptr i8, ptr %host, i32 52
  %84 = ptrtoint ptr %variant716 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %variant716, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool718.not = icmp eq i32 %87, 0
  %cond719 = select i1 %tobool718.not, i32 36, i32 48
  %reg_dma_chan.i1066 = getelementptr i8, ptr %host, i32 36
  %88 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1067 = icmp eq ptr %89, null
  br i1 %tobool.not.i1067, label %do.body.i1070, label %if.end.i1078

do.body.i1070:                                    ; preds = %for.end499
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %regs.i1068 = getelementptr i8, ptr %host, i32 32
  %90 = ptrtoint ptr %regs.i1068 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i1068, align 4
  %add.ptr.i1069 = getelementptr i8, ptr %91, i32 %cond719
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1069, i32 33562624) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1089

if.end.i1078:                                     ; preds = %for.end499
  %reg_dma_mem.i1071 = getelementptr i8, ptr %host, i32 44
  %92 = ptrtoint ptr %reg_dma_mem.i1071 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_dma_mem.i1071, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2097154, ptr %93, align 4
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %89, align 4
  %device_prep_dma_memcpy.i1072 = getelementptr inbounds %struct.dma_device, ptr %96, i32 0, i32 30
  %97 = ptrtoint ptr %device_prep_dma_memcpy.i1072 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device_prep_dma_memcpy.i1072, align 4
  %reg_paddr.i1073 = getelementptr i8, ptr %host, i32 48
  %99 = ptrtoint ptr %reg_paddr.i1073 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %reg_paddr.i1073, align 4
  %add.i1074 = add i32 %100, %cond719
  %reg_dma_paddr.i1075 = getelementptr i8, ptr %host, i32 40
  %101 = ptrtoint ptr %reg_dma_paddr.i1075 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reg_dma_paddr.i1075, align 4
  %call.i1076 = call ptr %98(ptr noundef nonnull %89, i32 noundef %add.i1074, i32 noundef %102, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1077 = icmp eq ptr %call.i1076, null
  br i1 %tobool1.not.i1077, label %if.then2.i1079, label %if.end3.i1083

if.then2.i1079:                                   ; preds = %if.end.i1078
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1089

if.end3.i1083:                                    ; preds = %if.end.i1078
  %tx_submit.i1080 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1076, i32 0, i32 4
  %103 = ptrtoint ptr %tx_submit.i1080 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_submit.i1080, align 4
  %call4.i1081 = call i32 %104(ptr noundef nonnull %call.i1076) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1081)
  %tobool6.not.i1082 = icmp sgt i32 %call4.i1081, -1
  br i1 %tobool6.not.i1082, label %if.end8.i1087, label %if.then7.i1084

if.then7.i1084:                                   ; preds = %if.end3.i1083
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1081) #7
  br label %dsi_dma_workaround_write.exit1089

if.end8.i1087:                                    ; preds = %if.end3.i1083
  %call9.i1085 = call i32 @dma_sync_wait(ptr noundef nonnull %89, i32 noundef %call4.i1081) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1085)
  %tobool10.not.i1086 = icmp eq i32 %call9.i1085, 0
  br i1 %tobool10.not.i1086, label %if.end8.i1087.dsi_dma_workaround_write.exit1089_crit_edge, label %if.then11.i1088

if.end8.i1087.dsi_dma_workaround_write.exit1089_crit_edge: ; preds = %if.end8.i1087
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1089

if.then11.i1088:                                  ; preds = %if.end8.i1087
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1085) #7
  br label %dsi_dma_workaround_write.exit1089

dsi_dma_workaround_write.exit1089:                ; preds = %if.then11.i1088, %if.end8.i1087.dsi_dma_workaround_write.exit1089_crit_edge, %if.then7.i1084, %if.then2.i1079, %do.body.i1070
  %105 = ptrtoint ptr %rx_len13261335 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_len13261335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool721.not = icmp eq i32 %106, 0
  %107 = ptrtoint ptr %variant716 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %variant716, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool730.not = icmp eq i32 %110, 0
  %cond731 = select i1 %tobool730.not, i32 40, i32 52
  %111 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1115 = icmp eq ptr %112, null
  br i1 %tobool721.not, label %if.else727, label %if.then722

if.then722:                                       ; preds = %dsi_dma_workaround_write.exit1089
  br i1 %tobool.not.i1115, label %do.body.i1094, label %if.end.i1102

do.body.i1094:                                    ; preds = %if.then722
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %regs.i1092 = getelementptr i8, ptr %host, i32 32
  %113 = ptrtoint ptr %regs.i1092 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i1092, align 4
  %add.ptr.i1093 = getelementptr i8, ptr %114, i32 %cond731
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1093, i32 -1069604864) #7, !srcloc !262
  br label %if.end732

if.end.i1102:                                     ; preds = %if.then722
  %reg_dma_mem.i1095 = getelementptr i8, ptr %host, i32 44
  %115 = ptrtoint ptr %reg_dma_mem.i1095 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_dma_mem.i1095, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2113472, ptr %116, align 4
  %118 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %112, align 4
  %device_prep_dma_memcpy.i1096 = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 30
  %120 = ptrtoint ptr %device_prep_dma_memcpy.i1096 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device_prep_dma_memcpy.i1096, align 4
  %reg_paddr.i1097 = getelementptr i8, ptr %host, i32 48
  %122 = ptrtoint ptr %reg_paddr.i1097 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reg_paddr.i1097, align 4
  %add.i1098 = add i32 %123, %cond731
  %reg_dma_paddr.i1099 = getelementptr i8, ptr %host, i32 40
  %124 = ptrtoint ptr %reg_dma_paddr.i1099 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %reg_dma_paddr.i1099, align 4
  %call.i1100 = call ptr %121(ptr noundef nonnull %112, i32 noundef %add.i1098, i32 noundef %125, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1101 = icmp eq ptr %call.i1100, null
  br i1 %tobool1.not.i1101, label %if.then2.i1103, label %if.end3.i1107

if.then2.i1103:                                   ; preds = %if.end.i1102
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %if.end732

if.end3.i1107:                                    ; preds = %if.end.i1102
  %tx_submit.i1104 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1100, i32 0, i32 4
  %126 = ptrtoint ptr %tx_submit.i1104 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tx_submit.i1104, align 4
  %call4.i1105 = call i32 %127(ptr noundef nonnull %call.i1100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1105)
  %tobool6.not.i1106 = icmp sgt i32 %call4.i1105, -1
  br i1 %tobool6.not.i1106, label %if.end8.i1111, label %if.then7.i1108

if.then7.i1108:                                   ; preds = %if.end3.i1107
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1105) #7
  br label %if.end732

if.end8.i1111:                                    ; preds = %if.end3.i1107
  %call9.i1109 = call i32 @dma_sync_wait(ptr noundef nonnull %112, i32 noundef %call4.i1105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1109)
  %tobool10.not.i1110 = icmp eq i32 %call9.i1109, 0
  br i1 %tobool10.not.i1110, label %if.end8.i1111.if.end732_crit_edge, label %if.then11.i1112

if.end8.i1111.if.end732_crit_edge:                ; preds = %if.end8.i1111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end732

if.then11.i1112:                                  ; preds = %if.end8.i1111
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1109) #7
  br label %if.end732

if.else727:                                       ; preds = %dsi_dma_workaround_write.exit1089
  br i1 %tobool.not.i1115, label %do.body.i1118, label %if.end.i1126

do.body.i1118:                                    ; preds = %if.else727
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %regs.i1116 = getelementptr i8, ptr %host, i32 32
  %128 = ptrtoint ptr %regs.i1116 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i1116, align 4
  %add.ptr.i1117 = getelementptr i8, ptr %129, i32 %cond731
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1117, i32 -1036058624) #7, !srcloc !262
  br label %if.end732

if.end.i1126:                                     ; preds = %if.else727
  %reg_dma_mem.i1119 = getelementptr i8, ptr %host, i32 44
  %130 = ptrtoint ptr %reg_dma_mem.i1119 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_dma_mem.i1119, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 16322, ptr %131, align 4
  %133 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %112, align 4
  %device_prep_dma_memcpy.i1120 = getelementptr inbounds %struct.dma_device, ptr %134, i32 0, i32 30
  %135 = ptrtoint ptr %device_prep_dma_memcpy.i1120 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device_prep_dma_memcpy.i1120, align 4
  %reg_paddr.i1121 = getelementptr i8, ptr %host, i32 48
  %137 = ptrtoint ptr %reg_paddr.i1121 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %reg_paddr.i1121, align 4
  %add.i1122 = add i32 %138, %cond731
  %reg_dma_paddr.i1123 = getelementptr i8, ptr %host, i32 40
  %139 = ptrtoint ptr %reg_dma_paddr.i1123 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %reg_dma_paddr.i1123, align 4
  %call.i1124 = call ptr %136(ptr noundef nonnull %112, i32 noundef %add.i1122, i32 noundef %140, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1125 = icmp eq ptr %call.i1124, null
  br i1 %tobool1.not.i1125, label %if.then2.i1127, label %if.end3.i1131

if.then2.i1127:                                   ; preds = %if.end.i1126
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %if.end732

if.end3.i1131:                                    ; preds = %if.end.i1126
  %tx_submit.i1128 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1124, i32 0, i32 4
  %141 = ptrtoint ptr %tx_submit.i1128 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tx_submit.i1128, align 4
  %call4.i1129 = call i32 %142(ptr noundef nonnull %call.i1124) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1129)
  %tobool6.not.i1130 = icmp sgt i32 %call4.i1129, -1
  br i1 %tobool6.not.i1130, label %if.end8.i1135, label %if.then7.i1132

if.then7.i1132:                                   ; preds = %if.end3.i1131
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1129) #7
  br label %if.end732

if.end8.i1135:                                    ; preds = %if.end3.i1131
  %call9.i1133 = call i32 @dma_sync_wait(ptr noundef nonnull %112, i32 noundef %call4.i1129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1133)
  %tobool10.not.i1134 = icmp eq i32 %call9.i1133, 0
  br i1 %tobool10.not.i1134, label %if.end8.i1135.if.end732_crit_edge, label %if.then11.i1136

if.end8.i1135.if.end732_crit_edge:                ; preds = %if.end8.i1135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end732

if.then11.i1136:                                  ; preds = %if.end8.i1135
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1133) #7
  br label %if.end732

if.end732:                                        ; preds = %if.then11.i1136, %if.end8.i1135.if.end732_crit_edge, %if.then7.i1132, %if.then2.i1127, %do.body.i1118, %if.then11.i1112, %if.end8.i1111.if.end732_crit_edge, %if.then7.i1108, %if.then2.i1103, %do.body.i1094
  %143 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1139 = icmp eq ptr %144, null
  br i1 %tobool.not.i1139, label %do.body.i1142, label %if.end.i1150

do.body.i1142:                                    ; preds = %if.end732
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %145 = call i32 @llvm.bswap.i32(i32 %pkth.013251336) #7
  %regs.i1140 = getelementptr i8, ptr %host, i32 32
  %146 = ptrtoint ptr %regs.i1140 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i1140, align 4
  %add.ptr.i1141 = getelementptr i8, ptr %147, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1141, i32 %145) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1161

if.end.i1150:                                     ; preds = %if.end732
  %reg_dma_mem.i1143 = getelementptr i8, ptr %host, i32 44
  %148 = ptrtoint ptr %reg_dma_mem.i1143 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg_dma_mem.i1143, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %pkth.013251336, ptr %149, align 4
  %151 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %144, align 4
  %device_prep_dma_memcpy.i1144 = getelementptr inbounds %struct.dma_device, ptr %152, i32 0, i32 30
  %153 = ptrtoint ptr %device_prep_dma_memcpy.i1144 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device_prep_dma_memcpy.i1144, align 4
  %reg_paddr.i1145 = getelementptr i8, ptr %host, i32 48
  %155 = ptrtoint ptr %reg_paddr.i1145 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %reg_paddr.i1145, align 4
  %add.i1146 = add i32 %156, 8
  %reg_dma_paddr.i1147 = getelementptr i8, ptr %host, i32 40
  %157 = ptrtoint ptr %reg_dma_paddr.i1147 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %reg_dma_paddr.i1147, align 4
  %call.i1148 = call ptr %154(ptr noundef nonnull %144, i32 noundef %add.i1146, i32 noundef %158, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1149 = icmp eq ptr %call.i1148, null
  br i1 %tobool1.not.i1149, label %if.then2.i1151, label %if.end3.i1155

if.then2.i1151:                                   ; preds = %if.end.i1150
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1161

if.end3.i1155:                                    ; preds = %if.end.i1150
  %tx_submit.i1152 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1148, i32 0, i32 4
  %159 = ptrtoint ptr %tx_submit.i1152 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tx_submit.i1152, align 4
  %call4.i1153 = call i32 %160(ptr noundef nonnull %call.i1148) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1153)
  %tobool6.not.i1154 = icmp sgt i32 %call4.i1153, -1
  br i1 %tobool6.not.i1154, label %if.end8.i1159, label %if.then7.i1156

if.then7.i1156:                                   ; preds = %if.end3.i1155
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1153) #7
  br label %dsi_dma_workaround_write.exit1161

if.end8.i1159:                                    ; preds = %if.end3.i1155
  %call9.i1157 = call i32 @dma_sync_wait(ptr noundef nonnull %144, i32 noundef %call4.i1153) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1157)
  %tobool10.not.i1158 = icmp eq i32 %call9.i1157, 0
  br i1 %tobool10.not.i1158, label %if.end8.i1159.dsi_dma_workaround_write.exit1161_crit_edge, label %if.then11.i1160

if.end8.i1159.dsi_dma_workaround_write.exit1161_crit_edge: ; preds = %if.end8.i1159
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1161

if.then11.i1160:                                  ; preds = %if.end8.i1159
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1157) #7
  br label %dsi_dma_workaround_write.exit1161

dsi_dma_workaround_write.exit1161:                ; preds = %if.then11.i1160, %if.end8.i1159.dsi_dma_workaround_write.exit1161_crit_edge, %if.then7.i1156, %if.then2.i1151, %do.body.i1142
  %161 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1163 = icmp eq ptr %162, null
  br i1 %tobool.not.i1163, label %do.body.i1166, label %if.end.i1174

do.body.i1166:                                    ; preds = %dsi_dma_workaround_write.exit1161
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %163 = call i32 @llvm.bswap.i32(i32 %pktc.3) #7
  %regs.i1164 = getelementptr i8, ptr %host, i32 32
  %164 = ptrtoint ptr %regs.i1164 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i1164, align 4
  %add.ptr.i1165 = getelementptr i8, ptr %165, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1165, i32 %163) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1185

if.end.i1174:                                     ; preds = %dsi_dma_workaround_write.exit1161
  %reg_dma_mem.i1167 = getelementptr i8, ptr %host, i32 44
  %166 = ptrtoint ptr %reg_dma_mem.i1167 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %reg_dma_mem.i1167, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %pktc.3, ptr %167, align 4
  %169 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %162, align 4
  %device_prep_dma_memcpy.i1168 = getelementptr inbounds %struct.dma_device, ptr %170, i32 0, i32 30
  %171 = ptrtoint ptr %device_prep_dma_memcpy.i1168 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %device_prep_dma_memcpy.i1168, align 4
  %reg_paddr.i1169 = getelementptr i8, ptr %host, i32 48
  %173 = ptrtoint ptr %reg_paddr.i1169 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %reg_paddr.i1169, align 4
  %add.i1170 = add i32 %174, 4
  %reg_dma_paddr.i1171 = getelementptr i8, ptr %host, i32 40
  %175 = ptrtoint ptr %reg_dma_paddr.i1171 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %reg_dma_paddr.i1171, align 4
  %call.i1172 = call ptr %172(ptr noundef nonnull %162, i32 noundef %add.i1170, i32 noundef %176, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1173 = icmp eq ptr %call.i1172, null
  br i1 %tobool1.not.i1173, label %if.then2.i1175, label %if.end3.i1179

if.then2.i1175:                                   ; preds = %if.end.i1174
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1185

if.end3.i1179:                                    ; preds = %if.end.i1174
  %tx_submit.i1176 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1172, i32 0, i32 4
  %177 = ptrtoint ptr %tx_submit.i1176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tx_submit.i1176, align 4
  %call4.i1177 = call i32 %178(ptr noundef nonnull %call.i1172) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1177)
  %tobool6.not.i1178 = icmp sgt i32 %call4.i1177, -1
  br i1 %tobool6.not.i1178, label %if.end8.i1183, label %if.then7.i1180

if.then7.i1180:                                   ; preds = %if.end3.i1179
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1177) #7
  br label %dsi_dma_workaround_write.exit1185

if.end8.i1183:                                    ; preds = %if.end3.i1179
  %call9.i1181 = call i32 @dma_sync_wait(ptr noundef nonnull %162, i32 noundef %call4.i1177) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1181)
  %tobool10.not.i1182 = icmp eq i32 %call9.i1181, 0
  br i1 %tobool10.not.i1182, label %if.end8.i1183.dsi_dma_workaround_write.exit1185_crit_edge, label %if.then11.i1184

if.end8.i1183.dsi_dma_workaround_write.exit1185_crit_edge: ; preds = %if.end8.i1183
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1185

if.then11.i1184:                                  ; preds = %if.end8.i1183
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1181) #7
  br label %dsi_dma_workaround_write.exit1185

dsi_dma_workaround_write.exit1185:                ; preds = %if.then11.i1184, %if.end8.i1183.dsi_dma_workaround_write.exit1185_crit_edge, %if.then7.i1180, %if.then2.i1175, %do.body.i1166
  %call743 = call i32 @wait_for_completion_timeout(ptr noundef %xfer_completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call743)
  %tobool744.not = icmp eq i32 %call743, 0
  br i1 %tobool744.not, label %do.end748, label %if.else762

do.end748:                                        ; preds = %dsi_dma_workaround_write.exit1185
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %180, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #10
  %181 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr, align 4
  %dev753 = getelementptr inbounds %struct.platform_device, ptr %182, i32 0, i32 3
  %regs = getelementptr i8, ptr %host, i32 32
  %183 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs, align 4
  %185 = ptrtoint ptr %variant716 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %variant716, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool756.not = icmp eq i32 %188, 0
  %cond757 = select i1 %tobool756.not, i32 36, i32 48
  %add.ptr758 = getelementptr i8, ptr %184, i32 %cond757
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr758) #7, !srcloc !263
  %190 = call i32 @llvm.bswap.i32(i32 %189)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev753, ptr noundef nonnull @.str.74, i32 noundef %190) #10
  br label %if.end764

if.else762:                                       ; preds = %dsi_dma_workaround_write.exit1185
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %xfer_result to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %xfer_result, align 4
  br label %if.end764

if.end764:                                        ; preds = %if.else762, %do.end748
  %ret.0 = phi i32 [ %192, %if.else762 ], [ -110, %do.end748 ]
  %193 = ptrtoint ptr %variant716 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %variant716, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool767.not = icmp eq i32 %196, 0
  %cond768 = select i1 %tobool767.not, i32 40, i32 52
  %197 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1187 = icmp eq ptr %198, null
  br i1 %tobool.not.i1187, label %do.body.i1190, label %if.end.i1198

do.body.i1190:                                    ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %regs.i1188 = getelementptr i8, ptr %host, i32 32
  %199 = ptrtoint ptr %regs.i1188 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i1188, align 4
  %add.ptr.i1189 = getelementptr i8, ptr %200, i32 %cond768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1189, i32 -1069613056) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1209

if.end.i1198:                                     ; preds = %if.end764
  %reg_dma_mem.i1191 = getelementptr i8, ptr %host, i32 44
  %201 = ptrtoint ptr %reg_dma_mem.i1191 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_dma_mem.i1191, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 16320, ptr %202, align 4
  %204 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %198, align 4
  %device_prep_dma_memcpy.i1192 = getelementptr inbounds %struct.dma_device, ptr %205, i32 0, i32 30
  %206 = ptrtoint ptr %device_prep_dma_memcpy.i1192 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %device_prep_dma_memcpy.i1192, align 4
  %reg_paddr.i1193 = getelementptr i8, ptr %host, i32 48
  %208 = ptrtoint ptr %reg_paddr.i1193 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %reg_paddr.i1193, align 4
  %add.i1194 = add i32 %209, %cond768
  %reg_dma_paddr.i1195 = getelementptr i8, ptr %host, i32 40
  %210 = ptrtoint ptr %reg_dma_paddr.i1195 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %reg_dma_paddr.i1195, align 4
  %call.i1196 = call ptr %207(ptr noundef nonnull %198, i32 noundef %add.i1194, i32 noundef %211, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1197 = icmp eq ptr %call.i1196, null
  br i1 %tobool1.not.i1197, label %if.then2.i1199, label %if.end3.i1203

if.then2.i1199:                                   ; preds = %if.end.i1198
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1209

if.end3.i1203:                                    ; preds = %if.end.i1198
  %tx_submit.i1200 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1196, i32 0, i32 4
  %212 = ptrtoint ptr %tx_submit.i1200 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %tx_submit.i1200, align 4
  %call4.i1201 = call i32 %213(ptr noundef nonnull %call.i1196) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1201)
  %tobool6.not.i1202 = icmp sgt i32 %call4.i1201, -1
  br i1 %tobool6.not.i1202, label %if.end8.i1207, label %if.then7.i1204

if.then7.i1204:                                   ; preds = %if.end3.i1203
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1201) #7
  br label %dsi_dma_workaround_write.exit1209

if.end8.i1207:                                    ; preds = %if.end3.i1203
  %call9.i1205 = call i32 @dma_sync_wait(ptr noundef nonnull %198, i32 noundef %call4.i1201) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1205)
  %tobool10.not.i1206 = icmp eq i32 %call9.i1205, 0
  br i1 %tobool10.not.i1206, label %if.end8.i1207.dsi_dma_workaround_write.exit1209_crit_edge, label %if.then11.i1208

if.end8.i1207.dsi_dma_workaround_write.exit1209_crit_edge: ; preds = %if.end8.i1207
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1209

if.then11.i1208:                                  ; preds = %if.end8.i1207
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1205) #7
  br label %dsi_dma_workaround_write.exit1209

dsi_dma_workaround_write.exit1209:                ; preds = %if.then11.i1208, %if.end8.i1207.dsi_dma_workaround_write.exit1209_crit_edge, %if.then7.i1204, %if.then2.i1199, %do.body.i1190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool769.not = icmp eq i32 %ret.0, 0
  br i1 %tobool769.not, label %land.lhs.true, label %dsi_dma_workaround_write.exit1209.reset_fifo_and_return_crit_edge

dsi_dma_workaround_write.exit1209.reset_fifo_and_return_crit_edge: ; preds = %dsi_dma_workaround_write.exit1209
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_fifo_and_return

land.lhs.true:                                    ; preds = %dsi_dma_workaround_write.exit1209
  %214 = ptrtoint ptr %rx_len13261335 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %rx_len13261335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool775.not = icmp eq i32 %215, 0
  br i1 %tobool775.not, label %land.lhs.true.cleanup927_crit_edge, label %if.then776

land.lhs.true.cleanup927_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup927

if.then776:                                       ; preds = %land.lhs.true
  %regs779 = getelementptr i8, ptr %host, i32 32
  %216 = ptrtoint ptr %regs779 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs779, align 4
  %218 = ptrtoint ptr %variant716 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %variant716, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool782.not = icmp eq i32 %221, 0
  %cond783 = select i1 %tobool782.not, i32 12, i32 20
  %add.ptr784 = getelementptr i8, ptr %217, i32 %cond783
  %222 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr784) #7, !srcloc !263
  %223 = call i32 @llvm.bswap.i32(i32 %222)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !265
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %224 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rx_buf, align 4
  %and788 = and i32 %223, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and788)
  %tobool789.not = icmp eq i32 %and788, 0
  %and848 = lshr i32 %223, 8
  br i1 %tobool789.not, label %do.end846, label %if.then790

if.then790:                                       ; preds = %if.then776
  %shr = and i32 %and848, 65535
  %226 = ptrtoint ptr %rx_len13261335 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rx_len13261335, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %227)
  %cmp809.not = icmp eq i32 %shr, %227
  br i1 %cmp809.not, label %for.cond814.preheader, label %cleanup878

for.cond814.preheader:                            ; preds = %if.then790
  %228 = ptrtoint ptr %rx_len13261335 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %rx_len13261335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp8161313.not = icmp eq i32 %229, 0
  br i1 %cmp8161313.not, label %for.cond814.preheader.cleanup927_crit_edge, label %for.cond814.preheader.for.body818_crit_edge

for.cond814.preheader.for.body818_crit_edge:      ; preds = %for.cond814.preheader
  br label %for.body818

for.cond814.preheader.cleanup927_crit_edge:       ; preds = %for.cond814.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup927

for.body818:                                      ; preds = %for.body818.for.body818_crit_edge, %for.cond814.preheader.for.body818_crit_edge
  %i.21314 = phi i32 [ %inc829, %for.body818.for.body818_crit_edge ], [ 0, %for.cond814.preheader.for.body818_crit_edge ]
  %230 = ptrtoint ptr %regs779 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs779, align 4
  %add.ptr822 = getelementptr i8, ptr %231, i32 36
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr822) #7, !srcloc !263
  %233 = lshr i32 %232, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !266
  %conv826 = trunc i32 %233 to i8
  %arrayidx827 = getelementptr i8, ptr %225, i32 %i.21314
  %234 = ptrtoint ptr %arrayidx827 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv826, ptr %arrayidx827, align 1
  %inc829 = add nuw i32 %i.21314, 1
  %235 = ptrtoint ptr %rx_len13261335 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %rx_len13261335, align 4
  %cmp816 = icmp ult i32 %inc829, %236
  br i1 %cmp816, label %for.body818.for.body818_crit_edge, label %for.body818.cleanup927_crit_edge

for.body818.cleanup927_crit_edge:                 ; preds = %for.body818
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup927

for.body818.for.body818_crit_edge:                ; preds = %for.body818
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body818

do.end846:                                        ; preds = %if.then776
  %conv850 = trunc i32 %and848 to i8
  %237 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv850, ptr %225, align 1
  %238 = ptrtoint ptr %rx_len13261335 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rx_len13261335, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %239)
  %cmp853 = icmp ugt i32 %239, 1
  br i1 %cmp853, label %do.end870, label %do.end846.cleanup927_crit_edge

do.end846.cleanup927_crit_edge:                   ; preds = %do.end846
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup927

do.end870:                                        ; preds = %do.end846
  call void @__sanitizer_cov_trace_pc() #9
  %and872 = lshr i32 %223, 16
  %conv874 = trunc i32 %and872 to i8
  %arrayidx875 = getelementptr i8, ptr %225, i32 1
  %240 = ptrtoint ptr %arrayidx875 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv874, ptr %arrayidx875, align 1
  br label %cleanup927

cleanup878:                                       ; preds = %if.then790
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.76, i32 noundef %shr, i32 noundef %227) #7
  br label %reset_fifo_and_return

reset_fifo_and_return:                            ; preds = %cleanup878, %dsi_dma_workaround_write.exit1209.reset_fifo_and_return_crit_edge
  %ret.5 = phi i32 [ %ret.0, %dsi_dma_workaround_write.exit1209.reset_fifo_and_return_crit_edge ], [ -6, %cleanup878 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.77, i32 noundef %ret.5) #7
  %regs889 = getelementptr i8, ptr %host, i32 32
  %241 = ptrtoint ptr %regs889 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs889, align 4
  %add.ptr894 = getelementptr i8, ptr %242, i32 4
  %243 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr894) #7, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !267
  %244 = and i32 %243, -16777217
  %245 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1211 = icmp eq ptr %246, null
  br i1 %tobool.not.i1211, label %do.body.i1214, label %if.end.i1222

do.body.i1214:                                    ; preds = %reset_fifo_and_return
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %247 = ptrtoint ptr %regs889 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs889, align 4
  %add.ptr.i1213 = getelementptr i8, ptr %248, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1213, i32 %244) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1233

if.end.i1222:                                     ; preds = %reset_fifo_and_return
  %249 = call i32 @llvm.bswap.i32(i32 %244)
  %reg_dma_mem.i1215 = getelementptr i8, ptr %host, i32 44
  %250 = ptrtoint ptr %reg_dma_mem.i1215 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %reg_dma_mem.i1215, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %249, ptr %251, align 4
  %253 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %246, align 4
  %device_prep_dma_memcpy.i1216 = getelementptr inbounds %struct.dma_device, ptr %254, i32 0, i32 30
  %255 = ptrtoint ptr %device_prep_dma_memcpy.i1216 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %device_prep_dma_memcpy.i1216, align 4
  %reg_paddr.i1217 = getelementptr i8, ptr %host, i32 48
  %257 = ptrtoint ptr %reg_paddr.i1217 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %reg_paddr.i1217, align 4
  %add.i1218 = add i32 %258, 4
  %reg_dma_paddr.i1219 = getelementptr i8, ptr %host, i32 40
  %259 = ptrtoint ptr %reg_dma_paddr.i1219 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %reg_dma_paddr.i1219, align 4
  %call.i1220 = call ptr %256(ptr noundef nonnull %246, i32 noundef %add.i1218, i32 noundef %260, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1221 = icmp eq ptr %call.i1220, null
  br i1 %tobool1.not.i1221, label %if.then2.i1223, label %if.end3.i1227

if.then2.i1223:                                   ; preds = %if.end.i1222
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1233

if.end3.i1227:                                    ; preds = %if.end.i1222
  %tx_submit.i1224 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1220, i32 0, i32 4
  %261 = ptrtoint ptr %tx_submit.i1224 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %tx_submit.i1224, align 4
  %call4.i1225 = call i32 %262(ptr noundef nonnull %call.i1220) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1225)
  %tobool6.not.i1226 = icmp sgt i32 %call4.i1225, -1
  br i1 %tobool6.not.i1226, label %if.end8.i1231, label %if.then7.i1228

if.then7.i1228:                                   ; preds = %if.end3.i1227
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1225) #7
  br label %dsi_dma_workaround_write.exit1233

if.end8.i1231:                                    ; preds = %if.end3.i1227
  %call9.i1229 = call i32 @dma_sync_wait(ptr noundef nonnull %246, i32 noundef %call4.i1225) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1229)
  %tobool10.not.i1230 = icmp eq i32 %call9.i1229, 0
  br i1 %tobool10.not.i1230, label %if.end8.i1231.dsi_dma_workaround_write.exit1233_crit_edge, label %if.then11.i1232

if.end8.i1231.dsi_dma_workaround_write.exit1233_crit_edge: ; preds = %if.end8.i1231
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1233

if.then11.i1232:                                  ; preds = %if.end8.i1231
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1229) #7
  br label %dsi_dma_workaround_write.exit1233

dsi_dma_workaround_write.exit1233:                ; preds = %if.then11.i1232, %if.end8.i1231.dsi_dma_workaround_write.exit1233_crit_edge, %if.then7.i1228, %if.then2.i1223, %do.body.i1214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %263(i32 noundef 214748) #7
  %264 = ptrtoint ptr %regs889 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %regs889, align 4
  %266 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #7, !srcloc !263
  %267 = call i32 @llvm.bswap.i32(i32 %266)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !268
  %268 = ptrtoint ptr %variant716 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %variant716, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool916.not = icmp eq i32 %271, 0
  %cond917 = select i1 %tobool916.not, i32 248, i32 240
  %or918 = or i32 %cond917, %267
  %272 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1235 = icmp eq ptr %273, null
  br i1 %tobool.not.i1235, label %do.body.i1237, label %if.end.i1244

do.body.i1237:                                    ; preds = %dsi_dma_workaround_write.exit1233
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %274 = call i32 @llvm.bswap.i32(i32 %or918) #7
  %275 = ptrtoint ptr %regs889 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs889, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %274) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1255

if.end.i1244:                                     ; preds = %dsi_dma_workaround_write.exit1233
  %reg_dma_mem.i1238 = getelementptr i8, ptr %host, i32 44
  %277 = ptrtoint ptr %reg_dma_mem.i1238 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %reg_dma_mem.i1238, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %or918, ptr %278, align 4
  %280 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %273, align 4
  %device_prep_dma_memcpy.i1239 = getelementptr inbounds %struct.dma_device, ptr %281, i32 0, i32 30
  %282 = ptrtoint ptr %device_prep_dma_memcpy.i1239 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %device_prep_dma_memcpy.i1239, align 4
  %reg_paddr.i1240 = getelementptr i8, ptr %host, i32 48
  %284 = ptrtoint ptr %reg_paddr.i1240 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %reg_paddr.i1240, align 4
  %reg_dma_paddr.i1241 = getelementptr i8, ptr %host, i32 40
  %286 = ptrtoint ptr %reg_dma_paddr.i1241 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %reg_dma_paddr.i1241, align 4
  %call.i1242 = call ptr %283(ptr noundef nonnull %273, i32 noundef %285, i32 noundef %287, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1243 = icmp eq ptr %call.i1242, null
  br i1 %tobool1.not.i1243, label %if.then2.i1245, label %if.end3.i1249

if.then2.i1245:                                   ; preds = %if.end.i1244
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1255

if.end3.i1249:                                    ; preds = %if.end.i1244
  %tx_submit.i1246 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1242, i32 0, i32 4
  %288 = ptrtoint ptr %tx_submit.i1246 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %tx_submit.i1246, align 4
  %call4.i1247 = call i32 %289(ptr noundef nonnull %call.i1242) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1247)
  %tobool6.not.i1248 = icmp sgt i32 %call4.i1247, -1
  br i1 %tobool6.not.i1248, label %if.end8.i1253, label %if.then7.i1250

if.then7.i1250:                                   ; preds = %if.end3.i1249
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1247) #7
  br label %dsi_dma_workaround_write.exit1255

if.end8.i1253:                                    ; preds = %if.end3.i1249
  %call9.i1251 = call i32 @dma_sync_wait(ptr noundef nonnull %273, i32 noundef %call4.i1247) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1251)
  %tobool10.not.i1252 = icmp eq i32 %call9.i1251, 0
  br i1 %tobool10.not.i1252, label %if.end8.i1253.dsi_dma_workaround_write.exit1255_crit_edge, label %if.then11.i1254

if.end8.i1253.dsi_dma_workaround_write.exit1255_crit_edge: ; preds = %if.end8.i1253
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1255

if.then11.i1254:                                  ; preds = %if.end8.i1253
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1251) #7
  br label %dsi_dma_workaround_write.exit1255

dsi_dma_workaround_write.exit1255:                ; preds = %if.then11.i1254, %if.end8.i1253.dsi_dma_workaround_write.exit1255_crit_edge, %if.then7.i1250, %if.then2.i1245, %do.body.i1237
  %290 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1257 = icmp eq ptr %291, null
  br i1 %tobool.not.i1257, label %do.body.i1260, label %if.end.i1268

do.body.i1260:                                    ; preds = %dsi_dma_workaround_write.exit1255
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %292 = ptrtoint ptr %regs889 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs889, align 4
  %add.ptr.i1259 = getelementptr i8, ptr %293, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1259, i32 0) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit1279

if.end.i1268:                                     ; preds = %dsi_dma_workaround_write.exit1255
  %reg_dma_mem.i1261 = getelementptr i8, ptr %host, i32 44
  %294 = ptrtoint ptr %reg_dma_mem.i1261 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %reg_dma_mem.i1261, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 0, ptr %295, align 4
  %297 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %291, align 4
  %device_prep_dma_memcpy.i1262 = getelementptr inbounds %struct.dma_device, ptr %298, i32 0, i32 30
  %299 = ptrtoint ptr %device_prep_dma_memcpy.i1262 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %device_prep_dma_memcpy.i1262, align 4
  %reg_paddr.i1263 = getelementptr i8, ptr %host, i32 48
  %301 = ptrtoint ptr %reg_paddr.i1263 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %reg_paddr.i1263, align 4
  %add.i1264 = add i32 %302, 4
  %reg_dma_paddr.i1265 = getelementptr i8, ptr %host, i32 40
  %303 = ptrtoint ptr %reg_dma_paddr.i1265 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %reg_dma_paddr.i1265, align 4
  %call.i1266 = call ptr %300(ptr noundef nonnull %291, i32 noundef %add.i1264, i32 noundef %304, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1267 = icmp eq ptr %call.i1266, null
  br i1 %tobool1.not.i1267, label %if.then2.i1269, label %if.end3.i1273

if.then2.i1269:                                   ; preds = %if.end.i1268
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit1279

if.end3.i1273:                                    ; preds = %if.end.i1268
  %tx_submit.i1270 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1266, i32 0, i32 4
  %305 = ptrtoint ptr %tx_submit.i1270 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %tx_submit.i1270, align 4
  %call4.i1271 = call i32 %306(ptr noundef nonnull %call.i1266) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1271)
  %tobool6.not.i1272 = icmp sgt i32 %call4.i1271, -1
  br i1 %tobool6.not.i1272, label %if.end8.i1277, label %if.then7.i1274

if.then7.i1274:                                   ; preds = %if.end3.i1273
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1271) #7
  br label %dsi_dma_workaround_write.exit1279

if.end8.i1277:                                    ; preds = %if.end3.i1273
  %call9.i1275 = call i32 @dma_sync_wait(ptr noundef nonnull %291, i32 noundef %call4.i1271) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1275)
  %tobool10.not.i1276 = icmp eq i32 %call9.i1275, 0
  br i1 %tobool10.not.i1276, label %if.end8.i1277.dsi_dma_workaround_write.exit1279_crit_edge, label %if.then11.i1278

if.end8.i1277.dsi_dma_workaround_write.exit1279_crit_edge: ; preds = %if.end8.i1277
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit1279

if.then11.i1278:                                  ; preds = %if.end8.i1277
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1275) #7
  br label %dsi_dma_workaround_write.exit1279

dsi_dma_workaround_write.exit1279:                ; preds = %if.then11.i1278, %if.end8.i1277.dsi_dma_workaround_write.exit1279_crit_edge, %if.then7.i1274, %if.then2.i1269, %do.body.i1260
  %307 = ptrtoint ptr %variant716 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %variant716, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool925.not = icmp eq i32 %310, 0
  %cond926 = select i1 %tobool925.not, i32 40, i32 52
  %311 = ptrtoint ptr %reg_dma_chan.i1066 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %reg_dma_chan.i1066, align 4
  %tobool.not.i1281 = icmp eq ptr %312, null
  br i1 %tobool.not.i1281, label %do.body.i1284, label %if.end.i1292

do.body.i1284:                                    ; preds = %dsi_dma_workaround_write.exit1279
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %313 = ptrtoint ptr %regs889 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regs889, align 4
  %add.ptr.i1283 = getelementptr i8, ptr %314, i32 %cond926
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1283, i32 -1069613056) #7, !srcloc !262
  br label %cleanup927

if.end.i1292:                                     ; preds = %dsi_dma_workaround_write.exit1279
  %reg_dma_mem.i1285 = getelementptr i8, ptr %host, i32 44
  %315 = ptrtoint ptr %reg_dma_mem.i1285 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %reg_dma_mem.i1285, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 16320, ptr %316, align 4
  %318 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %312, align 4
  %device_prep_dma_memcpy.i1286 = getelementptr inbounds %struct.dma_device, ptr %319, i32 0, i32 30
  %320 = ptrtoint ptr %device_prep_dma_memcpy.i1286 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %device_prep_dma_memcpy.i1286, align 4
  %reg_paddr.i1287 = getelementptr i8, ptr %host, i32 48
  %322 = ptrtoint ptr %reg_paddr.i1287 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %reg_paddr.i1287, align 4
  %add.i1288 = add i32 %323, %cond926
  %reg_dma_paddr.i1289 = getelementptr i8, ptr %host, i32 40
  %324 = ptrtoint ptr %reg_dma_paddr.i1289 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %reg_dma_paddr.i1289, align 4
  %call.i1290 = call ptr %321(ptr noundef nonnull %312, i32 noundef %add.i1288, i32 noundef %325, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i1291 = icmp eq ptr %call.i1290, null
  br i1 %tobool1.not.i1291, label %if.then2.i1293, label %if.end3.i1297

if.then2.i1293:                                   ; preds = %if.end.i1292
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %cleanup927

if.end3.i1297:                                    ; preds = %if.end.i1292
  %tx_submit.i1294 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i1290, i32 0, i32 4
  %326 = ptrtoint ptr %tx_submit.i1294 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %tx_submit.i1294, align 4
  %call4.i1295 = call i32 %327(ptr noundef nonnull %call.i1290) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i1295)
  %tobool6.not.i1296 = icmp sgt i32 %call4.i1295, -1
  br i1 %tobool6.not.i1296, label %if.end8.i1301, label %if.then7.i1298

if.then7.i1298:                                   ; preds = %if.end3.i1297
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i1295) #7
  br label %cleanup927

if.end8.i1301:                                    ; preds = %if.end3.i1297
  %call9.i1299 = call i32 @dma_sync_wait(ptr noundef nonnull %312, i32 noundef %call4.i1295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i1299)
  %tobool10.not.i1300 = icmp eq i32 %call9.i1299, 0
  br i1 %tobool10.not.i1300, label %if.end8.i1301.cleanup927_crit_edge, label %if.then11.i1302

if.end8.i1301.cleanup927_crit_edge:               ; preds = %if.end8.i1301
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup927

if.then11.i1302:                                  ; preds = %if.end8.i1301
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i1299) #7
  br label %cleanup927

cleanup927:                                       ; preds = %if.then11.i1302, %if.end8.i1301.cleanup927_crit_edge, %if.then7.i1298, %if.then2.i1293, %do.body.i1284, %do.end870, %do.end846.cleanup927_crit_edge, %for.body818.cleanup927_crit_edge, %for.cond814.preheader.cleanup927_crit_edge, %land.lhs.true.cleanup927_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup927_crit_edge ], [ %ret.5, %do.body.i1284 ], [ %ret.5, %if.then2.i1293 ], [ %ret.5, %if.then7.i1298 ], [ %ret.5, %if.end8.i1301.cleanup927_crit_edge ], [ %ret.5, %if.then11.i1302 ], [ 0, %do.end870 ], [ 0, %do.end846.cleanup927_crit_edge ], [ 0, %for.cond814.preheader.cleanup927_crit_edge ], [ 0, %for.body818.cleanup927_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %dma_mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i287 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i287 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i287, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_mask) #7
  %4 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dma_mask, align 4, !annotation !269
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @vc4_dsi_dt_match, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %5 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data3, align 4
  %variant = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %variant, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %bridge_chain = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %bridge_chain, ptr %bridge_chain, align 4
  %prev.i = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bridge_chain, ptr %prev.i, align 4
  %type = getelementptr inbounds %struct.vc4_encoder, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %type, align 4
  %dsi8 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dsi8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %dsi8, align 4
  %encoder = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %encoder, align 4
  %call11 = tail call ptr @vc4_ioremap_regs(ptr noundef %add.ptr, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %regset = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 23
  %base19 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 23, i32 2
  %15 = ptrtoint ptr %base19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call11, ptr %base19, align 4
  %16 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %variant, align 4
  %regs21 = getelementptr inbounds %struct.vc4_dsi_variant, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %regs21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs21, align 4
  %20 = ptrtoint ptr %regset to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %regset, align 4
  %nregs = getelementptr inbounds %struct.vc4_dsi_variant, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %nregs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nregs, align 4
  %nregs26 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 23, i32 1
  %23 = ptrtoint ptr %nregs26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %nregs26, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not = icmp eq i32 %25, 0
  %cond = select i1 %tobool29.not, i32 116, i32 140
  %add.ptr30 = getelementptr i8, ptr %call11, i32 %cond
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 1769169920, i32 %26)
  %cmp.not = icmp eq i32 %26, 1769169920
  br i1 %cmp.not, label %if.end46, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %29 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool40.not = icmp eq i32 %32, 0
  %cond41 = select i1 %tobool40.not, i32 116, i32 140
  %add.ptr42 = getelementptr i8, ptr %28, i32 %cond41
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #7, !srcloc !263
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !271
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %34, i32 noundef 6583145) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end17
  %35 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %variant, align 4
  %broken_axi_workaround = getelementptr inbounds %struct.vc4_dsi_variant, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %broken_axi_workaround to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %broken_axi_workaround, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool48.not = icmp eq i8 %38, 0
  br i1 %tobool48.not, label %if.end46.if.end67_crit_edge, label %if.then49

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then49:                                        ; preds = %if.end46
  %reg_dma_paddr = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 7
  %call.i288 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4, ptr noundef %reg_dma_paddr, i32 noundef 3264, i32 noundef 0) #7
  %reg_dma_mem = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 8
  %39 = ptrtoint ptr %reg_dma_mem to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i288, ptr %reg_dma_mem, align 4
  %tobool52.not = icmp eq ptr %call.i288, null
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end54:                                         ; preds = %if.then49
  %40 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %dma_mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %dma_mask) #7
  %call55 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %dma_mask) #7
  %reg_dma_chan = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %reg_dma_chan to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call55, ptr %reg_dma_chan, align 4
  %cmp.i289 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end54
  %cmp61.not = icmp eq ptr %call55, inttoptr (i32 -517 to ptr)
  br i1 %cmp61.not, label %if.then58.cleanup_crit_edge, label %if.then62

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call55 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %42) #7
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %call.i290 = call ptr @__of_get_address(ptr noundef %44, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %45 = ptrtoint ptr %call.i290 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call.i290, align 4
  %reg_paddr = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 9
  %47 = ptrtoint ptr %reg_paddr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %reg_paddr, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end64, %if.end46.if.end67_crit_edge
  %xfer_completion = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 21
  %48 = ptrtoint ptr %xfer_completion to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %xfer_completion, align 4
  %wait.i = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 21, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #7
  %49 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %variant, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool70.not = icmp eq i32 %52, 0
  %cond71 = select i1 %tobool70.not, i32 40, i32 52
  %reg_dma_chan.i = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 6
  %53 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 %cond71
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1069613056) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit

if.end.i:                                         ; preds = %if.end67
  %reg_dma_mem.i = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 8
  %57 = ptrtoint ptr %reg_dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_dma_mem.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 16320, ptr %58, align 4
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 30
  %62 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %reg_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 9
  %64 = ptrtoint ptr %reg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg_paddr.i, align 4
  %add.i = add i32 %65, %cond71
  %reg_dma_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 7
  %66 = ptrtoint ptr %reg_dma_paddr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg_dma_paddr.i, align 4
  %call.i291 = call ptr %63(ptr noundef nonnull %54, i32 noundef %add.i, i32 noundef %67, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i = icmp eq ptr %call.i291, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i291, i32 0, i32 4
  %68 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_submit.i, align 4
  %call4.i = call i32 %69(ptr noundef nonnull %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool6.not.i = icmp sgt i32 %call4.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i) #7
  br label %dsi_dma_workaround_write.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = call i32 @dma_sync_wait(ptr noundef nonnull %54, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, label %if.then11.i

if.end8.i.dsi_dma_workaround_write.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i) #7
  br label %dsi_dma_workaround_write.exit

dsi_dma_workaround_write.exit:                    ; preds = %if.then11.i, %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, %if.then7.i, %if.then2.i, %do.body.i
  %70 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %variant, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool74.not = icmp eq i32 %73, 0
  %cond75 = select i1 %tobool74.not, i32 36, i32 48
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr83 = getelementptr i8, ptr %75, i32 %cond75
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #7, !srcloc !263
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !273
  %77 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i293 = icmp eq ptr %78, null
  br i1 %tobool.not.i293, label %do.body.i296, label %if.end.i304

do.body.i296:                                     ; preds = %dsi_dma_workaround_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr.i295 = getelementptr i8, ptr %80, i32 %cond75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295, i32 %76) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit315

if.end.i304:                                      ; preds = %dsi_dma_workaround_write.exit
  %81 = call i32 @llvm.bswap.i32(i32 %76)
  %reg_dma_mem.i297 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 8
  %82 = ptrtoint ptr %reg_dma_mem.i297 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_dma_mem.i297, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %83, align 4
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %78, align 4
  %device_prep_dma_memcpy.i298 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 30
  %87 = ptrtoint ptr %device_prep_dma_memcpy.i298 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device_prep_dma_memcpy.i298, align 4
  %reg_paddr.i299 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 9
  %89 = ptrtoint ptr %reg_paddr.i299 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %reg_paddr.i299, align 4
  %add.i300 = add i32 %90, %cond75
  %reg_dma_paddr.i301 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 7
  %91 = ptrtoint ptr %reg_dma_paddr.i301 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %reg_dma_paddr.i301, align 4
  %call.i302 = call ptr %88(ptr noundef nonnull %78, i32 noundef %add.i300, i32 noundef %92, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i303 = icmp eq ptr %call.i302, null
  br i1 %tobool1.not.i303, label %if.then2.i305, label %if.end3.i309

if.then2.i305:                                    ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit315

if.end3.i309:                                     ; preds = %if.end.i304
  %tx_submit.i306 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i302, i32 0, i32 4
  %93 = ptrtoint ptr %tx_submit.i306 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tx_submit.i306, align 4
  %call4.i307 = call i32 %94(ptr noundef nonnull %call.i302) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i307)
  %tobool6.not.i308 = icmp sgt i32 %call4.i307, -1
  br i1 %tobool6.not.i308, label %if.end8.i313, label %if.then7.i310

if.then7.i310:                                    ; preds = %if.end3.i309
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i307) #7
  br label %dsi_dma_workaround_write.exit315

if.end8.i313:                                     ; preds = %if.end3.i309
  %call9.i311 = call i32 @dma_sync_wait(ptr noundef nonnull %78, i32 noundef %call4.i307) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i311)
  %tobool10.not.i312 = icmp eq i32 %call9.i311, 0
  br i1 %tobool10.not.i312, label %if.end8.i313.dsi_dma_workaround_write.exit315_crit_edge, label %if.then11.i314

if.end8.i313.dsi_dma_workaround_write.exit315_crit_edge: ; preds = %if.end8.i313
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit315

if.then11.i314:                                   ; preds = %if.end8.i313
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i311) #7
  br label %dsi_dma_workaround_write.exit315

dsi_dma_workaround_write.exit315:                 ; preds = %if.then11.i314, %if.end8.i313.dsi_dma_workaround_write.exit315_crit_edge, %if.then7.i310, %if.then2.i305, %do.body.i296
  %reg_dma_mem87 = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 8
  %95 = ptrtoint ptr %reg_dma_mem87 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_dma_mem87, align 4
  %tobool88.not = icmp eq ptr %96, null
  %call92 = call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %dsi_dma_workaround_write.exit315
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call92, ptr noundef nonnull @vc4_dsi_irq_defer_to_thread_handler, ptr noundef nonnull @vc4_dsi_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.13, ptr noundef %3) #7
  br label %if.end94

if.else:                                          ; preds = %dsi_dma_workaround_write.exit315
  call void @__sanitizer_cov_trace_pc() #9
  %call.i316 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call92, ptr noundef nonnull @vc4_dsi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %3) #7
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then89
  %ret.0 = phi i32 [ %call91, %if.then89 ], [ %call.i316, %if.else ]
  %97 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %do.end101 [
    i32 0, label %if.end103
    i32 -517, label %if.end94.cleanup_crit_edge
  ]

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %ret.0) #10
  br label %cleanup

if.end103:                                        ; preds = %if.end94
  %call104 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  %escape_clock = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 16
  %98 = ptrtoint ptr %escape_clock to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call104, ptr %escape_clock, align 4
  %cmp.i317 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %if.then107, label %if.end116

if.then107:                                       ; preds = %if.end103
  %cmp110.not = icmp eq ptr %call104, inttoptr (i32 -517 to ptr)
  br i1 %cmp110.not, label %if.then107.cleanup_crit_edge, label %do.end114

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end114:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %call104 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %99) #10
  br label %cleanup

if.end116:                                        ; preds = %if.end103
  %call117 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  %pll_phy_clock = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 17
  %100 = ptrtoint ptr %pll_phy_clock to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call117, ptr %pll_phy_clock, align 4
  %cmp.i318 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i318, label %if.then120, label %if.end129

if.then120:                                       ; preds = %if.end116
  %cmp123.not = icmp eq ptr %call117, inttoptr (i32 -517 to ptr)
  br i1 %cmp123.not, label %if.then120.cleanup_crit_edge, label %do.end127

if.then120.cleanup_crit_edge:                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end127:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %call117 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %101) #10
  br label %cleanup

if.end129:                                        ; preds = %if.end116
  %call130 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.25) #7
  %pixel_clock = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 20
  %102 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call130, ptr %pixel_clock, align 4
  %cmp.i319 = icmp ugt ptr %call130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i319, label %if.then133, label %if.end142

if.then133:                                       ; preds = %if.end129
  %cmp136.not = icmp eq ptr %call130, inttoptr (i32 -517 to ptr)
  br i1 %cmp136.not, label %if.then133.cleanup_crit_edge, label %do.end140

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end140:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %call130 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %103) #10
  br label %cleanup

if.end142:                                        ; preds = %if.end129
  %of_node143 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %104 = ptrtoint ptr %of_node143 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %of_node143, align 8
  %call144 = call ptr @devm_drm_of_get_bridge(ptr noundef %dev, ptr noundef %105, i32 noundef 0, i32 noundef 0) #7
  %bridge = getelementptr inbounds %struct.vc4_dsi, ptr %3, i32 0, i32 3
  %106 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call144, ptr %bridge, align 4
  %cmp.i320 = icmp ugt ptr %call144, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %if.then147, label %if.end150

if.then147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %call144 to i32
  br label %cleanup

if.end150:                                        ; preds = %if.end142
  %108 = ptrtoint ptr %escape_clock to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %escape_clock, align 4
  %call152 = call i32 @clk_set_rate(ptr noundef %109, i32 noundef 100000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end158, label %do.end157

do.end157:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call152) #10
  br label %cleanup

if.end158:                                        ; preds = %if.end150
  %call159 = call fastcc i32 @vc4_dsi_init_phy_clocks(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end162, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end162:                                        ; preds = %if.end158
  %110 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %encoder, align 4
  %call164 = call i32 @drm_simple_encoder_init(ptr noundef %1, ptr noundef %111, i32 noundef 6) #7
  %112 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %encoder, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @vc4_dsi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %115 = load ptr, ptr %encoder, align 4
  %116 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bridge, align 4
  %call168 = call i32 @drm_bridge_attach(ptr noundef %115, ptr noundef %117, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end171:                                        ; preds = %if.end162
  %118 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %encoder, align 4
  %bridge_chain173 = getelementptr inbounds %struct.drm_encoder, ptr %119, i32 0, i32 9
  %120 = ptrtoint ptr %bridge_chain173 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %bridge_chain173, align 4
  %cmp.i.not.i = icmp eq ptr %121, %bridge_chain173
  br i1 %cmp.i.not.i, label %if.end171.list_splice_init.exit_crit_edge, label %if.then.i

if.end171.list_splice_init.exit_crit_edge:        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bridge_chain, align 4
  %prev2.i.i = getelementptr inbounds %struct.drm_encoder, ptr %119, i32 0, i32 9, i32 1
  %124 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %126 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %bridge_chain, ptr %prev3.i.i, align 4
  store ptr %121, ptr %bridge_chain, align 4
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %123, ptr %125, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %128 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev6.i.i, align 4
  %129 = ptrtoint ptr %bridge_chain173 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %bridge_chain173, ptr %bridge_chain173, align 4
  store ptr %bridge_chain173, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end171.list_splice_init.exit_crit_edge
  %130 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %variant, align 4
  %debugfs_name = getelementptr inbounds %struct.vc4_dsi_variant, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %debugfs_name, align 4
  call void @vc4_debugfs_add_regset32(ptr noundef %1, ptr noundef %133, ptr noundef %regset) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %list_splice_init.exit, %if.end162.cleanup_crit_edge, %if.end158.cleanup_crit_edge, %do.end157, %if.then147, %do.end140, %if.then133.cleanup_crit_edge, %do.end127, %if.then120.cleanup_crit_edge, %do.end114, %if.then107.cleanup_crit_edge, %do.end101, %if.end94.cleanup_crit_edge, %if.then62, %if.then58.cleanup_crit_edge, %if.then53, %do.end, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then14 ], [ -19, %do.end ], [ %107, %if.then147 ], [ %call152, %do.end157 ], [ 0, %list_splice_init.exit ], [ -12, %if.then53 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %42, %if.then62 ], [ -517, %if.then58.cleanup_crit_edge ], [ %ret.0, %if.end94.cleanup_crit_edge ], [ %ret.0, %do.end101 ], [ %99, %do.end114 ], [ -517, %if.then107.cleanup_crit_edge ], [ %101, %do.end127 ], [ -517, %if.then120.cleanup_crit_edge ], [ %103, %do.end140 ], [ -517, %if.then133.cleanup_crit_edge ], [ %call159, %if.end158.cleanup_crit_edge ], [ %call168, %if.end162.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_mask) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_dsi_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %bridge_chain = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 4
  %encoder = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %4 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bridge_chain, align 4
  %cmp.i.not.i = icmp eq ptr %5, %bridge_chain
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bridge_chain1 = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %bridge_chain1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge_chain1, align 4
  %prev2.i.i = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bridge_chain1, ptr %prev3.i.i, align 4
  store ptr %5, ptr %bridge_chain1, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %9, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev6.i.i, align 4
  %13 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %bridge_chain, ptr %bridge_chain, align 4
  store ptr %bridge_chain, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %14 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_dma_workaround_write(ptr nocapture noundef readonly %dsi, i32 noundef %offset, i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %reg_dma_chan = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 6
  %0 = ptrtoint ptr %reg_dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_dma_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  %regs = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !262
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_dma_mem = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %5 = ptrtoint ptr %reg_dma_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_dma_mem, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %val, ptr %6, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_prep_dma_memcpy, align 4
  %reg_paddr = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %12 = ptrtoint ptr %reg_paddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_paddr, align 4
  %add = add i32 %13, %offset
  %reg_dma_paddr = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %14 = ptrtoint ptr %reg_dma_paddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_dma_paddr, align 4
  %call = tail call ptr %11(ptr noundef nonnull %1, i32 noundef %add, i32 noundef %15, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_submit, align 4
  %call4 = tail call i32 %17(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %tobool6.not = icmp sgt i32 %call4, -1
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @dma_sync_wait(ptr noundef nonnull %1, i32 noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.then7, %if.then2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_irq_defer_to_thread_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %variant = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 36, i32 48
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %. = select i1 %tobool2.not, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dsi_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %variant = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 36, i32 48
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !263
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !275
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  %cond5 = select i1 %tobool4.not, i32 36, i32 48
  %reg_dma_chan.i = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %cond5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit

if.end.i:                                         ; preds = %entry
  %reg_dma_mem.i = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 8
  %16 = ptrtoint ptr %reg_dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_dma_mem.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %17, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %13, align 4
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 30
  %21 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %reg_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 9
  %23 = ptrtoint ptr %reg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_paddr.i, align 4
  %add.i = add i32 %24, %cond5
  %reg_dma_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 7
  %25 = ptrtoint ptr %reg_dma_paddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_dma_paddr.i, align 4
  %call.i = tail call ptr %22(ptr noundef nonnull %13, i32 noundef %add.i, i32 noundef %26, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_submit.i, align 4
  %call4.i = tail call i32 %28(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool6.not.i = icmp sgt i32 %call4.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i) #7
  br label %dsi_dma_workaround_write.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = tail call i32 @dma_sync_wait(ptr noundef nonnull %13, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, label %if.then11.i

if.end8.i.dsi_dma_workaround_write.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i) #7
  br label %dsi_dma_workaround_write.exit

dsi_dma_workaround_write.exit:                    ; preds = %if.then11.i, %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, %if.then7.i, %if.then2.i, %do.body.i
  %and.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i36 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i36, label %dsi_dma_workaround_write.exit.dsi_handle_error.exit_crit_edge, label %if.end.i37

dsi_dma_workaround_write.exit.dsi_handle_error.exit_crit_edge: ; preds = %dsi_dma_workaround_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit

if.end.i37:                                       ; preds = %dsi_dma_workaround_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %32, ptr noundef nonnull @.str.36) #7
  br label %dsi_handle_error.exit

dsi_handle_error.exit:                            ; preds = %if.end.i37, %dsi_dma_workaround_write.exit.dsi_handle_error.exit_crit_edge
  %ret.0 = phi i32 [ 0, %dsi_dma_workaround_write.exit.dsi_handle_error.exit_crit_edge ], [ 1, %if.end.i37 ]
  %and.i38 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  br i1 %tobool.not.i39, label %dsi_handle_error.exit.dsi_handle_error.exit42_crit_edge, label %if.end.i41

dsi_handle_error.exit.dsi_handle_error.exit42_crit_edge: ; preds = %dsi_handle_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit42

if.end.i41:                                       ; preds = %dsi_handle_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %36, ptr noundef nonnull @.str.37) #7
  br label %dsi_handle_error.exit42

dsi_handle_error.exit42:                          ; preds = %if.end.i41, %dsi_handle_error.exit.dsi_handle_error.exit42_crit_edge
  %ret.1 = phi i32 [ %ret.0, %dsi_handle_error.exit.dsi_handle_error.exit42_crit_edge ], [ 1, %if.end.i41 ]
  %and.i43 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %dsi_handle_error.exit42.dsi_handle_error.exit47_crit_edge, label %if.end.i46

dsi_handle_error.exit42.dsi_handle_error.exit47_crit_edge: ; preds = %dsi_handle_error.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit47

if.end.i46:                                       ; preds = %dsi_handle_error.exit42
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %variant, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %40, ptr noundef nonnull @.str.38) #7
  br label %dsi_handle_error.exit47

dsi_handle_error.exit47:                          ; preds = %if.end.i46, %dsi_handle_error.exit42.dsi_handle_error.exit47_crit_edge
  %ret.2 = phi i32 [ %ret.1, %dsi_handle_error.exit42.dsi_handle_error.exit47_crit_edge ], [ 1, %if.end.i46 ]
  %and.i48 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %dsi_handle_error.exit47.dsi_handle_error.exit52_crit_edge, label %if.end.i51

dsi_handle_error.exit47.dsi_handle_error.exit52_crit_edge: ; preds = %dsi_handle_error.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit52

if.end.i51:                                       ; preds = %dsi_handle_error.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %variant, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %44, ptr noundef nonnull @.str.39) #7
  br label %dsi_handle_error.exit52

dsi_handle_error.exit52:                          ; preds = %if.end.i51, %dsi_handle_error.exit47.dsi_handle_error.exit52_crit_edge
  %ret.3 = phi i32 [ %ret.2, %dsi_handle_error.exit47.dsi_handle_error.exit52_crit_edge ], [ 1, %if.end.i51 ]
  %and.i53 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %dsi_handle_error.exit52.dsi_handle_error.exit57_crit_edge, label %if.end.i56

dsi_handle_error.exit52.dsi_handle_error.exit57_crit_edge: ; preds = %dsi_handle_error.exit52
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit57

if.end.i56:                                       ; preds = %dsi_handle_error.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %variant, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %48, ptr noundef nonnull @.str.40) #7
  br label %dsi_handle_error.exit57

dsi_handle_error.exit57:                          ; preds = %if.end.i56, %dsi_handle_error.exit52.dsi_handle_error.exit57_crit_edge
  %ret.4 = phi i32 [ %ret.3, %dsi_handle_error.exit52.dsi_handle_error.exit57_crit_edge ], [ 1, %if.end.i56 ]
  %and.i58 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %dsi_handle_error.exit57.dsi_handle_error.exit62_crit_edge, label %if.end.i61

dsi_handle_error.exit57.dsi_handle_error.exit62_crit_edge: ; preds = %dsi_handle_error.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit62

if.end.i61:                                       ; preds = %dsi_handle_error.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %variant, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %52, ptr noundef nonnull @.str.41) #7
  br label %dsi_handle_error.exit62

dsi_handle_error.exit62:                          ; preds = %if.end.i61, %dsi_handle_error.exit57.dsi_handle_error.exit62_crit_edge
  %ret.5 = phi i32 [ %ret.4, %dsi_handle_error.exit57.dsi_handle_error.exit62_crit_edge ], [ 1, %if.end.i61 ]
  %and.i63 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64, label %dsi_handle_error.exit62.dsi_handle_error.exit67_crit_edge, label %if.end.i66

dsi_handle_error.exit62.dsi_handle_error.exit67_crit_edge: ; preds = %dsi_handle_error.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit67

if.end.i66:                                       ; preds = %dsi_handle_error.exit62
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %variant, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %56, ptr noundef nonnull @.str.42) #7
  br label %dsi_handle_error.exit67

dsi_handle_error.exit67:                          ; preds = %if.end.i66, %dsi_handle_error.exit62.dsi_handle_error.exit67_crit_edge
  %ret.6 = phi i32 [ %ret.5, %dsi_handle_error.exit62.dsi_handle_error.exit67_crit_edge ], [ 1, %if.end.i66 ]
  %and.i68 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %dsi_handle_error.exit67.dsi_handle_error.exit72_crit_edge, label %if.end.i71

dsi_handle_error.exit67.dsi_handle_error.exit72_crit_edge: ; preds = %dsi_handle_error.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_handle_error.exit72

if.end.i71:                                       ; preds = %dsi_handle_error.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %variant, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %60, ptr noundef nonnull @.str.43) #7
  br label %dsi_handle_error.exit72

dsi_handle_error.exit72:                          ; preds = %if.end.i71, %dsi_handle_error.exit67.dsi_handle_error.exit72_crit_edge
  %ret.7 = phi i32 [ %ret.6, %dsi_handle_error.exit67.dsi_handle_error.exit72_crit_edge ], [ 1, %if.end.i71 ]
  %and = and i32 %7, 2097154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then

if.then:                                          ; preds = %dsi_handle_error.exit72
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_completion = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 21
  tail call void @complete(ptr noundef %xfer_completion) #7
  br label %if.end11

if.else:                                          ; preds = %dsi_handle_error.exit72
  br i1 %tobool.not.i54, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_completion10 = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 21
  tail call void @complete(ptr noundef %xfer_completion10) #7
  %xfer_result = getelementptr inbounds %struct.vc4_dsi, ptr %data, i32 0, i32 22
  %61 = ptrtoint ptr %xfer_result to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -110, ptr %xfer_result, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %if.then
  %ret.8 = phi i32 [ %ret.7, %if.else.if.end11_crit_edge ], [ 1, %if.then9 ], [ 1, %if.then ]
  ret i32 %ret.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_of_get_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_dsi_init_phy_clocks(ptr noundef %dsi) unnamed_addr #0 align 64 {
entry:
  %parent_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  %clk_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #7
  %pll_phy_clock = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 17
  %2 = ptrtoint ptr %pll_phy_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_phy_clock, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %3) #7
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %parent_name, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #7
  %clk_onecell = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 19
  %5 = ptrtoint ptr %clk_onecell to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %clk_onecell, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %call.i, align 4
  %variant = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 10
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %init, i32 12
  %arrayidx = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %8 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk_name) #7
  %9 = call ptr @memset(ptr %clk_name, i32 255, i32 16)
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %13, ptr noundef nonnull @.str.45)
  %mult = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 0, i32 1
  %14 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %mult, align 4
  %div8 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 0, i32 2
  %15 = ptrtoint ptr %div8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %div8, align 4
  %init9 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init9, align 4
  %17 = call ptr @memset(ptr %7, i32 0, i32 16)
  %18 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parent_name, ptr %parent_names, align 4
  %19 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %num_parents, align 4
  %20 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %clk_name, ptr %init, align 4
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @clk_fixed_factor_ops, ptr %ops, align 4
  %call13 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %call13.lcssa = phi i32 [ %call13, %if.end.cleanup_crit_edge ], [ %call13.1, %for.inc.cleanup_crit_edge ], [ %call13.2, %for.inc.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  br label %cleanup25

for.inc:                                          ; preds = %if.end
  %22 = ptrtoint ptr %clk_onecell to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_onecell, align 4
  %arrayidx19 = getelementptr %struct.clk_hw_onecell_data, ptr %23, i32 0, i32 1, i32 0
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %arrayidx19, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  %arrayidx.1 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %25 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk_name) #7
  %26 = call ptr @memset(ptr %clk_name, i32 255, i32 16)
  %27 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %variant, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %call6.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %30, ptr noundef nonnull @.str.46)
  %mult.1 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 1, i32 1
  %31 = ptrtoint ptr %mult.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %mult.1, align 4
  %div8.1 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 1, i32 2
  %32 = ptrtoint ptr %div8.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %div8.1, align 4
  %init9.1 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %init9.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %init, ptr %init9.1, align 4
  %34 = call ptr @memset(ptr %7, i32 0, i32 16)
  %35 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %parent_name, ptr %parent_names, align 4
  %36 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %num_parents, align 4
  %37 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %clk_name, ptr %init, align 4
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @clk_fixed_factor_ops, ptr %ops, align 4
  %call13.1 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %arrayidx.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool14.not.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %39 = ptrtoint ptr %clk_onecell to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_onecell, align 4
  %arrayidx19.1 = getelementptr %struct.clk_hw_onecell_data, ptr %40, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.1, ptr %arrayidx19.1, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  %arrayidx.2 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %42 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clk_name) #7
  %43 = call ptr @memset(ptr %clk_name, i32 255, i32 16)
  %44 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %variant, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %call6.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 16, ptr noundef nonnull @.str.48, i32 noundef %47, ptr noundef nonnull @.str.47)
  %mult.2 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 2, i32 1
  %48 = ptrtoint ptr %mult.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %mult.2, align 4
  %div8.2 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 2, i32 2
  %49 = ptrtoint ptr %div8.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %div8.2, align 4
  %init9.2 = getelementptr %struct.vc4_dsi, ptr %dsi, i32 0, i32 18, i32 2, i32 0, i32 2
  %50 = ptrtoint ptr %init9.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %init, ptr %init9.2, align 4
  %51 = call ptr @memset(ptr %7, i32 0, i32 16)
  %52 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %parent_name, ptr %parent_names, align 4
  %53 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %num_parents, align 4
  %54 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %clk_name, ptr %init, align 4
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @clk_fixed_factor_ops, ptr %ops, align 4
  %call13.2 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %arrayidx.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2)
  %tobool14.not.2 = icmp eq i32 %call13.2, 0
  br i1 %tobool14.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %clk_onecell to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk_onecell, align 4
  %arrayidx19.2 = getelementptr %struct.clk_hw_onecell_data, ptr %57, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx.2, ptr %arrayidx19.2, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %61 = ptrtoint ptr %clk_onecell to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk_onecell, align 4
  %call24 = call i32 @of_clk_add_hw_provider(ptr noundef %60, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %62) #7
  br label %cleanup25

cleanup25:                                        ; preds = %for.inc.2, %cleanup, %entry.cleanup25_crit_edge
  %retval.2 = phi i32 [ %call13.lcssa, %cleanup ], [ %call24, %for.inc.2 ], [ -12, %entry.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_sync_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vc4_dsi_encoder_mode_fixup(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %mode, ptr nocapture noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  %pll_phy_clock = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pll_phy_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_phy_clock, align 4
  %call2 = tail call ptr @clk_get_parent(ptr noundef %3) #7
  %call3 = tail call i32 @clk_get_rate(ptr noundef %call2) #7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %mul = mul i32 %5, 1000
  %divider = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %divider, align 4
  %mul4 = mul i32 %mul, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %mul4)
  %cmp6 = icmp ult i32 %call3, %mul4
  br i1 %cmp6, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %entry
  %div.155 = lshr i32 %call3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.155, i32 %mul4)
  %cmp6.1 = icmp ult i32 %div.155, %mul4
  br i1 %cmp6.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %div.2 = udiv i32 %call3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %mul4)
  %cmp6.2 = icmp ult i32 %div.2, %mul4
  br i1 %cmp6.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %div.356 = lshr i32 %call3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.356, i32 %mul4)
  %cmp6.3 = icmp ult i32 %div.356, %mul4
  br i1 %cmp6.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %div.4 = udiv i32 %call3, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4, i32 %mul4)
  %cmp6.4 = icmp ult i32 %div.4, %mul4
  br i1 %cmp6.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %div.5 = udiv i32 %call3, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div.5, i32 %mul4)
  %cmp6.5 = icmp ult i32 %div.5, %mul4
  br i1 %cmp6.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %div.6 = udiv i32 %call3, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %div.6, i32 %mul4)
  %cmp6.6 = icmp ult i32 %div.6, %mul4
  %spec.select = select i1 %cmp6.6, i32 6, i32 8
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %divider5.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ %spec.select, %for.inc.5 ]
  %div7 = udiv i32 %call3, %divider5.1
  %div9 = udiv i32 %div7, %7
  %div10 = udiv i32 %div9, 1000
  %8 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div10, ptr %adjusted_mode, align 4
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %9 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %htotal, align 2
  %conv = zext i16 %10 to i32
  %mul13 = mul i32 %div10, %conv
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %div15 = sdiv i32 %mul13, %12
  %conv16 = trunc i32 %div15 to i16
  %htotal17 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %13 = ptrtoint ptr %htotal17 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv16, ptr %htotal17, align 2
  %14 = load i16, ptr %htotal, align 2
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %15 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hsync_end, align 4
  %17 = sub i16 %conv16, %14
  %conv23 = add i16 %17, %16
  store i16 %conv23, ptr %hsync_end, align 4
  %18 = load i16, ptr %htotal, align 2
  %sub28 = sub i16 %conv16, %18
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %19 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hsync_start, align 2
  %add30 = add i16 %sub28, %20
  store i16 %add30, ptr %hsync_start, align 2
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_dsi_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bridge_chain = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 4
  %prev = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn47 = load ptr, ptr %prev, align 4
  %iter.048 = getelementptr i8, ptr %.pn47, i32 -132
  %cmp.not49 = icmp eq ptr %.pn47, %bridge_chain
  br i1 %cmp.not49, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.051 = phi ptr [ %iter.0, %for.inc.for.body_crit_edge ], [ %iter.048, %entry.for.body_crit_edge ]
  %.pn50 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn47, %entry.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn50, i32 24
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %disable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %8(ptr noundef %iter.051) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %prev8 = getelementptr inbounds %struct.list_head, ptr %.pn50, i32 0, i32 1
  %9 = ptrtoint ptr %prev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %prev8, align 4
  %iter.0 = getelementptr i8, ptr %.pn, i32 -132
  %cmp.not = icmp eq ptr %.pn, %bridge_chain
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %iter.0.lcssa = phi ptr [ %iter.048, %entry.for.end_crit_edge ], [ %iter.0, %for.inc.for.end_crit_edge ]
  tail call fastcc void @vc4_dsi_ulps(ptr noundef %1, i1 noundef zeroext true)
  %chain_node1252 = getelementptr inbounds %struct.drm_bridge, ptr %iter.0.lcssa, i32 0, i32 3
  %cmp14.not53 = icmp eq ptr %chain_node1252, %bridge_chain
  br i1 %cmp14.not53, label %for.end.for.end28_crit_edge, label %for.end.for.body16_crit_edge

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.body16:                                       ; preds = %for.inc23.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %chain_node1255 = phi ptr [ %15, %for.inc23.for.body16_crit_edge ], [ %chain_node1252, %for.end.for.body16_crit_edge ]
  %iter.154 = phi ptr [ %add.ptr27, %for.inc23.for.body16_crit_edge ], [ %iter.0.lcssa, %for.end.for.body16_crit_edge ]
  %funcs17 = getelementptr inbounds %struct.drm_bridge, ptr %iter.154, i32 0, i32 7
  %10 = ptrtoint ptr %funcs17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs17, align 4
  %post_disable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %post_disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %post_disable, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %for.body16.for.inc23_crit_edge, label %if.then19

for.body16.for.inc23_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23

if.then19:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %iter.154) #7
  br label %for.inc23

for.inc23:                                        ; preds = %if.then19, %for.body16.for.inc23_crit_edge
  %14 = ptrtoint ptr %chain_node1255 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chain_node1255, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 -132
  %cmp14.not = icmp eq ptr %15, %bridge_chain
  br i1 %cmp14.not, label %for.inc23.for.end28_crit_edge, label %for.inc23.for.body16_crit_edge

for.inc23.for.body16_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.inc23.for.end28_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.end28:                                        ; preds = %for.inc23.for.end28_crit_edge, %for.end.for.end28_crit_edge
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %pll_phy_clock = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %pll_phy_clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pll_phy_clock, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  %escape_clock = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %escape_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %escape_clock, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  %pixel_clock = getelementptr inbounds %struct.vc4_dsi, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pixel_clock, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev2, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_dsi_encoder_enable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %dsi1 = getelementptr inbounds %struct.vc4_dsi_encoder, ptr %encoder, i32 0, i32 1
  %4 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adjusted_mode, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %variant = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55, i32 noundef %13) #7
  br label %cleanup

if.end11:                                         ; preds = %entry
  %mul = mul i32 %9, 1000
  %add = add i32 %mul, 1000
  %divider = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 14
  %14 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %divider, align 4
  %mul12 = mul i32 %15, %add
  %pll_phy_clock = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 17
  %16 = ptrtoint ptr %pll_phy_clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pll_phy_clock, align 4
  %call13 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %mul12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.if.end21_crit_edge, label %do.end18

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.60, i32 noundef %mul12, i32 noundef %call13) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.end11.if.end21_crit_edge
  %variant22 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant22, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  %or = select i1 %tobool24.not, i32 1272, i32 1264
  %reg_dma_chan.i = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 6
  %24 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %regs.i = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 5
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit

if.end.i:                                         ; preds = %if.end21
  %reg_dma_mem.i = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 8
  %29 = ptrtoint ptr %reg_dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_dma_mem.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %30, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 4
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 30
  %34 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %reg_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 9
  %36 = ptrtoint ptr %reg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_paddr.i, align 4
  %reg_dma_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 7
  %38 = ptrtoint ptr %reg_dma_paddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_dma_paddr.i, align 4
  %call.i3262 = tail call ptr %35(ptr noundef nonnull %25, i32 noundef %37, i32 noundef %39, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i = icmp eq ptr %call.i3262, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i3262, i32 0, i32 4
  %40 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_submit.i, align 4
  %call4.i = tail call i32 %41(ptr noundef nonnull %call.i3262) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool6.not.i = icmp sgt i32 %call4.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i) #7
  br label %dsi_dma_workaround_write.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = tail call i32 @dma_sync_wait(ptr noundef nonnull %25, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, label %if.then11.i

if.end8.i.dsi_dma_workaround_write.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i) #7
  br label %dsi_dma_workaround_write.exit

dsi_dma_workaround_write.exit:                    ; preds = %if.then11.i, %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, %if.then7.i, %if.then2.i, %do.body.i
  %42 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i3264 = icmp eq ptr %43, null
  br i1 %tobool.not.i3264, label %do.body.i3266, label %if.end.i3273

do.body.i3266:                                    ; preds = %dsi_dma_workaround_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %regs.i3265 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %regs.i3265 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i3265, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 2621440) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit3284

if.end.i3273:                                     ; preds = %dsi_dma_workaround_write.exit
  %reg_dma_mem.i3267 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 8
  %46 = ptrtoint ptr %reg_dma_mem.i3267 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_dma_mem.i3267, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 10240, ptr %47, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %43, align 4
  %device_prep_dma_memcpy.i3268 = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 30
  %51 = ptrtoint ptr %device_prep_dma_memcpy.i3268 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_prep_dma_memcpy.i3268, align 4
  %reg_paddr.i3269 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 9
  %53 = ptrtoint ptr %reg_paddr.i3269 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg_paddr.i3269, align 4
  %reg_dma_paddr.i3270 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 7
  %55 = ptrtoint ptr %reg_dma_paddr.i3270 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_dma_paddr.i3270, align 4
  %call.i3271 = tail call ptr %52(ptr noundef nonnull %43, i32 noundef %54, i32 noundef %56, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i3272 = icmp eq ptr %call.i3271, null
  br i1 %tobool1.not.i3272, label %if.then2.i3274, label %if.end3.i3278

if.then2.i3274:                                   ; preds = %if.end.i3273
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit3284

if.end3.i3278:                                    ; preds = %if.end.i3273
  %tx_submit.i3275 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i3271, i32 0, i32 4
  %57 = ptrtoint ptr %tx_submit.i3275 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_submit.i3275, align 4
  %call4.i3276 = tail call i32 %58(ptr noundef nonnull %call.i3271) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i3276)
  %tobool6.not.i3277 = icmp sgt i32 %call4.i3276, -1
  br i1 %tobool6.not.i3277, label %if.end8.i3282, label %if.then7.i3279

if.then7.i3279:                                   ; preds = %if.end3.i3278
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i3276) #7
  br label %dsi_dma_workaround_write.exit3284

if.end8.i3282:                                    ; preds = %if.end3.i3278
  %call9.i3280 = tail call i32 @dma_sync_wait(ptr noundef nonnull %43, i32 noundef %call4.i3276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i3280)
  %tobool10.not.i3281 = icmp eq i32 %call9.i3280, 0
  br i1 %tobool10.not.i3281, label %if.end8.i3282.dsi_dma_workaround_write.exit3284_crit_edge, label %if.then11.i3283

if.end8.i3282.dsi_dma_workaround_write.exit3284_crit_edge: ; preds = %if.end8.i3282
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit3284

if.then11.i3283:                                  ; preds = %if.end8.i3282
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i3280) #7
  br label %dsi_dma_workaround_write.exit3284

dsi_dma_workaround_write.exit3284:                ; preds = %if.then11.i3283, %if.end8.i3282.dsi_dma_workaround_write.exit3284_crit_edge, %if.then7.i3279, %if.then2.i3274, %do.body.i3266
  %59 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %variant22, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool35.not = icmp eq i32 %62, 0
  %cond36 = select i1 %tobool35.not, i32 44, i32 56
  %regs = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 5
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 %cond36
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !276
  %66 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i3286 = icmp eq ptr %67, null
  br i1 %tobool.not.i3286, label %do.body.i3288, label %if.end.i3295

do.body.i3288:                                    ; preds = %dsi_dma_workaround_write.exit3284
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %cond36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %65) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit3306

if.end.i3295:                                     ; preds = %dsi_dma_workaround_write.exit3284
  %70 = tail call i32 @llvm.bswap.i32(i32 %65)
  %reg_dma_mem.i3289 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 8
  %71 = ptrtoint ptr %reg_dma_mem.i3289 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_dma_mem.i3289, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %72, align 4
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %67, align 4
  %device_prep_dma_memcpy.i3290 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 30
  %76 = ptrtoint ptr %device_prep_dma_memcpy.i3290 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device_prep_dma_memcpy.i3290, align 4
  %reg_paddr.i3291 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 9
  %78 = ptrtoint ptr %reg_paddr.i3291 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reg_paddr.i3291, align 4
  %add.i = add i32 %79, %cond36
  %reg_dma_paddr.i3292 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 7
  %80 = ptrtoint ptr %reg_dma_paddr.i3292 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reg_dma_paddr.i3292, align 4
  %call.i3293 = tail call ptr %77(ptr noundef nonnull %67, i32 noundef %add.i, i32 noundef %81, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i3294 = icmp eq ptr %call.i3293, null
  br i1 %tobool1.not.i3294, label %if.then2.i3296, label %if.end3.i3300

if.then2.i3296:                                   ; preds = %if.end.i3295
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit3306

if.end3.i3300:                                    ; preds = %if.end.i3295
  %tx_submit.i3297 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i3293, i32 0, i32 4
  %82 = ptrtoint ptr %tx_submit.i3297 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_submit.i3297, align 4
  %call4.i3298 = tail call i32 %83(ptr noundef nonnull %call.i3293) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i3298)
  %tobool6.not.i3299 = icmp sgt i32 %call4.i3298, -1
  br i1 %tobool6.not.i3299, label %if.end8.i3304, label %if.then7.i3301

if.then7.i3301:                                   ; preds = %if.end3.i3300
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i3298) #7
  br label %dsi_dma_workaround_write.exit3306

if.end8.i3304:                                    ; preds = %if.end3.i3300
  %call9.i3302 = tail call i32 @dma_sync_wait(ptr noundef nonnull %67, i32 noundef %call4.i3298) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i3302)
  %tobool10.not.i3303 = icmp eq i32 %call9.i3302, 0
  br i1 %tobool10.not.i3303, label %if.end8.i3304.dsi_dma_workaround_write.exit3306_crit_edge, label %if.then11.i3305

if.end8.i3304.dsi_dma_workaround_write.exit3306_crit_edge: ; preds = %if.end8.i3304
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit3306

if.then11.i3305:                                  ; preds = %if.end8.i3304
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i3302) #7
  br label %dsi_dma_workaround_write.exit3306

dsi_dma_workaround_write.exit3306:                ; preds = %if.then11.i3305, %if.end8.i3304.dsi_dma_workaround_write.exit3306_crit_edge, %if.then7.i3301, %if.then2.i3296, %do.body.i3288
  %84 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %variant22, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp = icmp eq i32 %87, 0
  %lanes = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 12
  %88 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lanes, align 4
  br i1 %cmp, label %if.end147, label %if.end832

if.end147:                                        ; preds = %dsi_dma_workaround_write.exit3306
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp173 = icmp ult i32 %89, 2
  %spec.select = select i1 %cmp173, i32 375, i32 119
  %mode_flags = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 15
  %90 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mode_flags, align 4
  %and = shl i32 %91, 11
  %92 = and i32 %and, 2048
  %93 = or i32 %92, %spec.select
  %94 = xor i32 %93, 2048
  %95 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i3308 = icmp eq ptr %96, null
  br i1 %tobool.not.i3308, label %do.body.i3311, label %if.end.i3319

do.body.i3311:                                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %97 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add.ptr.i3310 = getelementptr i8, ptr %99, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3310, i32 %97) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit3330

if.end.i3319:                                     ; preds = %if.end147
  %reg_dma_mem.i3312 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 8
  %100 = ptrtoint ptr %reg_dma_mem.i3312 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_dma_mem.i3312, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %94, ptr %101, align 4
  %103 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %96, align 4
  %device_prep_dma_memcpy.i3313 = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 30
  %105 = ptrtoint ptr %device_prep_dma_memcpy.i3313 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device_prep_dma_memcpy.i3313, align 4
  %reg_paddr.i3314 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 9
  %107 = ptrtoint ptr %reg_paddr.i3314 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %reg_paddr.i3314, align 4
  %add.i3315 = add i32 %108, 100
  %reg_dma_paddr.i3316 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 7
  %109 = ptrtoint ptr %reg_dma_paddr.i3316 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg_dma_paddr.i3316, align 4
  %call.i3317 = tail call ptr %106(ptr noundef nonnull %96, i32 noundef %add.i3315, i32 noundef %110, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i3318 = icmp eq ptr %call.i3317, null
  br i1 %tobool1.not.i3318, label %if.then2.i3320, label %if.end3.i3324

if.then2.i3320:                                   ; preds = %if.end.i3319
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit3330

if.end3.i3324:                                    ; preds = %if.end.i3319
  %tx_submit.i3321 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i3317, i32 0, i32 4
  %111 = ptrtoint ptr %tx_submit.i3321 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_submit.i3321, align 4
  %call4.i3322 = tail call i32 %112(ptr noundef nonnull %call.i3317) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i3322)
  %tobool6.not.i3323 = icmp sgt i32 %call4.i3322, -1
  br i1 %tobool6.not.i3323, label %if.end8.i3328, label %if.then7.i3325

if.then7.i3325:                                   ; preds = %if.end3.i3324
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i3322) #7
  br label %dsi_dma_workaround_write.exit3330

if.end8.i3328:                                    ; preds = %if.end3.i3324
  %call9.i3326 = tail call i32 @dma_sync_wait(ptr noundef nonnull %96, i32 noundef %call4.i3322) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i3326)
  %tobool10.not.i3327 = icmp eq i32 %call9.i3326, 0
  br i1 %tobool10.not.i3327, label %if.end8.i3328.dsi_dma_workaround_write.exit3330_crit_edge, label %if.then11.i3329

if.end8.i3328.dsi_dma_workaround_write.exit3330_crit_edge: ; preds = %if.end8.i3328
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit3330

if.then11.i3329:                                  ; preds = %if.end8.i3328
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i3326) #7
  br label %dsi_dma_workaround_write.exit3330

dsi_dma_workaround_write.exit3330:                ; preds = %if.then11.i3329, %if.end8.i3328.dsi_dma_workaround_write.exit3330_crit_edge, %if.then7.i3325, %if.then2.i3320, %do.body.i3311
  %113 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %variant22, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool187.not = icmp eq i32 %116, 0
  %cond188 = select i1 %tobool187.not, i32 104, i32 116
  %117 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i3332 = icmp eq ptr %118, null
  br i1 %tobool.not.i3332, label %do.body.i3335, label %if.end.i3343

do.body.i3335:                                    ; preds = %dsi_dma_workaround_write.exit3330
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %119 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs, align 4
  %add.ptr.i3334 = getelementptr i8, ptr %120, i32 %cond188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3334, i32 1711669248) #7, !srcloc !262
  br label %if.end882

if.end.i3343:                                     ; preds = %dsi_dma_workaround_write.exit3330
  %reg_dma_mem.i3336 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 8
  %121 = ptrtoint ptr %reg_dma_mem.i3336 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_dma_mem.i3336, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1638, ptr %122, align 4
  %124 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %118, align 4
  %device_prep_dma_memcpy.i3337 = getelementptr inbounds %struct.dma_device, ptr %125, i32 0, i32 30
  %126 = ptrtoint ptr %device_prep_dma_memcpy.i3337 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %device_prep_dma_memcpy.i3337, align 4
  %reg_paddr.i3338 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 9
  %128 = ptrtoint ptr %reg_paddr.i3338 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %reg_paddr.i3338, align 4
  %add.i3339 = add i32 %129, %cond188
  %reg_dma_paddr.i3340 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 7
  %130 = ptrtoint ptr %reg_dma_paddr.i3340 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %reg_dma_paddr.i3340, align 4
  %call.i3341 = tail call ptr %127(ptr noundef nonnull %118, i32 noundef %add.i3339, i32 noundef %131, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i3342 = icmp eq ptr %call.i3341, null
  br i1 %tobool1.not.i3342, label %if.then2.i3344, label %if.end3.i3348

if.then2.i3344:                                   ; preds = %if.end.i3343
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %if.end882

if.end3.i3348:                                    ; preds = %if.end.i3343
  %tx_submit.i3345 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i3341, i32 0, i32 4
  %132 = ptrtoint ptr %tx_submit.i3345 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_submit.i3345, align 4
  %call4.i3346 = tail call i32 %133(ptr noundef nonnull %call.i3341) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i3346)
  %tobool6.not.i3347 = icmp sgt i32 %call4.i3346, -1
  br i1 %tobool6.not.i3347, label %if.end8.i3352, label %if.then7.i3349

if.then7.i3349:                                   ; preds = %if.end3.i3348
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i3346) #7
  br label %if.end882

if.end8.i3352:                                    ; preds = %if.end3.i3348
  %call9.i3350 = tail call i32 @dma_sync_wait(ptr noundef nonnull %118, i32 noundef %call4.i3346) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i3350)
  %tobool10.not.i3351 = icmp eq i32 %call9.i3350, 0
  br i1 %tobool10.not.i3351, label %if.end8.i3352.if.end882_crit_edge, label %if.then11.i3353

if.end8.i3352.if.end882_crit_edge:                ; preds = %if.end8.i3352
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end882

if.then11.i3353:                                  ; preds = %if.end8.i3352
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i3350) #7
  br label %if.end882

if.end832:                                        ; preds = %dsi_dma_workaround_write.exit3306
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %cmp859 = icmp ult i32 %89, 4
  %spec.select3247 = select i1 %cmp859, i32 -613678729, i32 -613678985
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp864 = icmp ult i32 %89, 3
  %or866 = or i32 %spec.select3247, 512
  %afec0389.1 = select i1 %cmp864, i32 %or866, i32 %spec.select3247
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp869 = icmp ult i32 %89, 2
  %or871 = or i32 %afec0389.1, 1024
  %afec0389.2 = select i1 %cmp869, i32 %or871, i32 %afec0389.1
  %or873 = or i32 %afec0389.2, 8192
  %134 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i3356 = icmp eq ptr %135, null
  br i1 %tobool.not.i3356, label %do.body.i3359, label %if.end.i3367

do.body.i3359:                                    ; preds = %if.end832
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %136 = tail call i32 @llvm.bswap.i32(i32 %or873) #7
  %137 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs, align 4
  %add.ptr.i3358 = getelementptr i8, ptr %138, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3358, i32 %136) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit3378

if.end.i3367:                                     ; preds = %if.end832
  %reg_dma_mem.i3360 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 8
  %139 = ptrtoint ptr %reg_dma_mem.i3360 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %reg_dma_mem.i3360, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or873, ptr %140, align 4
  %142 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %135, align 4
  %device_prep_dma_memcpy.i3361 = getelementptr inbounds %struct.dma_device, ptr %143, i32 0, i32 30
  %144 = ptrtoint ptr %device_prep_dma_memcpy.i3361 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %device_prep_dma_memcpy.i3361, align 4
  %reg_paddr.i3362 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 9
  %146 = ptrtoint ptr %reg_paddr.i3362 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %reg_paddr.i3362, align 4
  %add.i3363 = add i32 %147, 112
  %reg_dma_paddr.i3364 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 7
  %148 = ptrtoint ptr %reg_dma_paddr.i3364 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %reg_dma_paddr.i3364, align 4
  %call.i3365 = tail call ptr %145(ptr noundef nonnull %135, i32 noundef %add.i3363, i32 noundef %149, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i3366 = icmp eq ptr %call.i3365, null
  br i1 %tobool1.not.i3366, label %if.then2.i3368, label %if.end3.i3372

if.then2.i3368:                                   ; preds = %if.end.i3367
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit3378

if.end3.i3372:                                    ; preds = %if.end.i3367
  %tx_submit.i3369 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i3365, i32 0, i32 4
  %150 = ptrtoint ptr %tx_submit.i3369 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tx_submit.i3369, align 4
  %call4.i3370 = tail call i32 %151(ptr noundef nonnull %call.i3365) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i3370)
  %tobool6.not.i3371 = icmp sgt i32 %call4.i3370, -1
  br i1 %tobool6.not.i3371, label %if.end8.i3376, label %if.then7.i3373

if.then7.i3373:                                   ; preds = %if.end3.i3372
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i3370) #7
  br label %dsi_dma_workaround_write.exit3378

if.end8.i3376:                                    ; preds = %if.end3.i3372
  %call9.i3374 = tail call i32 @dma_sync_wait(ptr noundef nonnull %135, i32 noundef %call4.i3370) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i3374)
  %tobool10.not.i3375 = icmp eq i32 %call9.i3374, 0
  br i1 %tobool10.not.i3375, label %if.end8.i3376.dsi_dma_workaround_write.exit3378_crit_edge, label %if.then11.i3377

if.end8.i3376.dsi_dma_workaround_write.exit3378_crit_edge: ; preds = %if.end8.i3376
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit3378

if.then11.i3377:                                  ; preds = %if.end8.i3376
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i3374) #7
  br label %dsi_dma_workaround_write.exit3378

dsi_dma_workaround_write.exit3378:                ; preds = %if.then11.i3377, %if.end8.i3376.dsi_dma_workaround_write.exit3378_crit_edge, %if.then7.i3373, %if.then2.i3368, %do.body.i3359
  %152 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %variant22, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool880.not = icmp eq i32 %155, 0
  %cond881 = select i1 %tobool880.not, i32 104, i32 116
  %156 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i3380 = icmp eq ptr %157, null
  br i1 %tobool.not.i3380, label %do.body.i3383, label %if.end.i3391

do.body.i3383:                                    ; preds = %dsi_dma_workaround_write.exit3378
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %158 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs, align 4
  %add.ptr.i3382 = getelementptr i8, ptr %159, i32 %cond881
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3382, i32 0) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit3402

if.end.i3391:                                     ; preds = %dsi_dma_workaround_write.exit3378
  %reg_dma_mem.i3384 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 8
  %160 = ptrtoint ptr %reg_dma_mem.i3384 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %reg_dma_mem.i3384, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %161, align 4
  %163 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %157, align 4
  %device_prep_dma_memcpy.i3385 = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 30
  %165 = ptrtoint ptr %device_prep_dma_memcpy.i3385 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %device_prep_dma_memcpy.i3385, align 4
  %reg_paddr.i3386 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 9
  %167 = ptrtoint ptr %reg_paddr.i3386 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %reg_paddr.i3386, align 4
  %add.i3387 = add i32 %168, %cond881
  %reg_dma_paddr.i3388 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 7
  %169 = ptrtoint ptr %reg_dma_paddr.i3388 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %reg_dma_paddr.i3388, align 4
  %call.i3389 = tail call ptr %166(ptr noundef nonnull %157, i32 noundef %add.i3387, i32 noundef %170, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i3390 = icmp eq ptr %call.i3389, null
  br i1 %tobool1.not.i3390, label %if.then2.i3392, label %if.end3.i3396

if.then2.i3392:                                   ; preds = %if.end.i3391
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit3402

if.end3.i3396:                                    ; preds = %if.end.i3391
  %tx_submit.i3393 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i3389, i32 0, i32 4
  %171 = ptrtoint ptr %tx_submit.i3393 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tx_submit.i3393, align 4
  %call4.i3394 = tail call i32 %172(ptr noundef nonnull %call.i3389) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i3394)
  %tobool6.not.i3395 = icmp sgt i32 %call4.i3394, -1
  br i1 %tobool6.not.i3395, label %if.end8.i3400, label %if.then7.i3397

if.then7.i3397:                                   ; preds = %if.end3.i3396
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i3394) #7
  br label %dsi_dma_workaround_write.exit3402

if.end8.i3400:                                    ; preds = %if.end3.i3396
  %call9.i3398 = tail call i32 @dma_sync_wait(ptr noundef nonnull %157, i32 noundef %call4.i3394) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i3398)
  %tobool10.not.i3399 = icmp eq i32 %call9.i3398, 0
  br i1 %tobool10.not.i3399, label %if.end8.i3400.dsi_dma_workaround_write.exit3402_crit_edge, label %if.then11.i3401

if.end8.i3400.dsi_dma_workaround_write.exit3402_crit_edge: ; preds = %if.end8.i3400
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit3402

if.then11.i3401:                                  ; preds = %if.end8.i3400
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i3398) #7
  br label %dsi_dma_workaround_write.exit3402

dsi_dma_workaround_write.exit3402:                ; preds = %if.then11.i3401, %if.end8.i3400.dsi_dma_workaround_write.exit3402_crit_edge, %if.then7.i3397, %if.then2.i3392, %do.body.i3383
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 214748000) #7
  br label %if.end882

if.end882:                                        ; preds = %dsi_dma_workaround_write.exit3402, %if.then11.i3353, %if.end8.i3352.if.end882_crit_edge, %if.then7.i3349, %if.then2.i3344, %do.body.i3335
  %escape_clock = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 16
  %174 = ptrtoint ptr %escape_clock to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %escape_clock, align 4
  %call.i3403 = tail call i32 @clk_prepare(ptr noundef %175) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3403)
  %tobool.not.i3404 = icmp eq i32 %call.i3403, 0
  br i1 %tobool.not.i3404, label %if.end.i3405, label %if.end882.if.then885_crit_edge

if.end882.if.then885_crit_edge:                   ; preds = %if.end882
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then885

if.end.i3405:                                     ; preds = %if.end882
  %call1.i = tail call i32 @clk_enable(ptr noundef %175) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end886, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i3405
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %175) #7
  br label %if.then885

if.then885:                                       ; preds = %if.then3.i, %if.end882.if.then885_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i3403, %if.end882.if.then885_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

if.end886:                                        ; preds = %if.end.i3405
  %176 = ptrtoint ptr %pll_phy_clock to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pll_phy_clock, align 4
  %call.i3406 = tail call i32 @clk_prepare(ptr noundef %177) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3406)
  %tobool.not.i3407 = icmp eq i32 %call.i3406, 0
  br i1 %tobool.not.i3407, label %if.end.i3410, label %if.end886.if.then890_crit_edge

if.end886.if.then890_crit_edge:                   ; preds = %if.end886
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then890

if.end.i3410:                                     ; preds = %if.end886
  %call1.i3408 = tail call i32 @clk_enable(ptr noundef %177) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3408)
  %tobool2.not.i3409 = icmp eq i32 %call1.i3408, 0
  br i1 %tobool2.not.i3409, label %if.end891, label %if.then3.i3411

if.then3.i3411:                                   ; preds = %if.end.i3410
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %177) #7
  br label %if.then890

if.then890:                                       ; preds = %if.then3.i3411, %if.end886.if.then890_crit_edge
  %retval.0.i3412.ph = phi i32 [ %call1.i3408, %if.then3.i3411 ], [ %call.i3406, %if.end886.if.then890_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63, i32 noundef %retval.0.i3412.ph) #7
  br label %cleanup

if.end891:                                        ; preds = %if.end.i3410
  %178 = ptrtoint ptr %pll_phy_clock to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pll_phy_clock, align 4
  %call893 = tail call i32 @clk_get_rate(ptr noundef %179) #7
  %div3245 = lshr exact i32 %mul12, 3
  %pixel_clock = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 20
  %180 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pixel_clock, align 4
  %call894 = tail call i32 @clk_set_rate(ptr noundef %181, i32 noundef %div3245) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call894)
  %tobool895.not = icmp eq i32 %call894, 0
  br i1 %tobool895.not, label %if.end891.if.end900_crit_edge, label %do.end899

if.end891.if.end900_crit_edge:                    ; preds = %if.end891
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end900

do.end899:                                        ; preds = %if.end891
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.65, i32 noundef %div3245, i32 noundef %call894) #10
  br label %if.end900

if.end900:                                        ; preds = %do.end899, %if.end891.if.end900_crit_edge
  %182 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pixel_clock, align 4
  %call.i3414 = tail call i32 @clk_prepare(ptr noundef %183) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3414)
  %tobool.not.i3415 = icmp eq i32 %call.i3414, 0
  br i1 %tobool.not.i3415, label %if.end.i3418, label %if.end900.if.then904_crit_edge

if.end900.if.then904_crit_edge:                   ; preds = %if.end900
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then904

if.end.i3418:                                     ; preds = %if.end900
  %call1.i3416 = tail call i32 @clk_enable(ptr noundef %183) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3416)
  %tobool2.not.i3417 = icmp eq i32 %call1.i3416, 0
  br i1 %tobool2.not.i3417, label %if.end905, label %if.then3.i3419

if.then3.i3419:                                   ; preds = %if.end.i3418
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %183) #7
  br label %if.then904

if.then904:                                       ; preds = %if.then3.i3419, %if.end900.if.then904_crit_edge
  %retval.0.i3420.ph = phi i32 [ %call1.i3416, %if.then3.i3419 ], [ %call.i3414, %if.end900.if.then904_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.67, i32 noundef %retval.0.i3420.ph) #7
  br label %cleanup

if.end905:                                        ; preds = %if.end.i3418
  %sub = add i32 %call893, 499999999
  %div907 = udiv i32 %sub, %call893
  %184 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %variant22, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool910.not = icmp eq i32 %187, 0
  %cond911 = select i1 %tobool910.not, i32 68, i32 80
  %add.i3422 = add i32 %div907, -1
  %sub.i = add i32 %div907, 261
  %div.i = udiv i32 %sub.i, %div907
  %add3.i = add i32 %div.i, 7
  %188 = and i32 %add3.i, 15872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool931.not = icmp eq i32 %188, 0
  br i1 %tobool931.not, label %if.end905.if.end958_crit_edge, label %do.end952, !prof !260

if.end905.if.end958_crit_edge:                    ; preds = %if.end905
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end958

do.end952:                                        ; preds = %if.end905
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 968, i32 noundef 9, ptr noundef null) #7
  br label %if.end958

if.end958:                                        ; preds = %do.end952, %if.end905.if.end958_crit_edge
  %div48.i = shl i32 %add3.i, 18
  %and985 = and i32 %div48.i, 132120576
  %div.i3429 = udiv i32 %add.i3422, %div907
  %add3.i3430 = add i32 %div.i3429, 15
  %div48.i3431 = and i32 %add3.i3430, -8
  %189 = and i32 %add3.i3430, 8388096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool1006.not = icmp eq i32 %189, 0
  br i1 %tobool1006.not, label %if.end958.if.end1033_crit_edge, label %do.end1027, !prof !260

if.end958.if.end1033_crit_edge:                   ; preds = %if.end958
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1033

do.end1027:                                       ; preds = %if.end958
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 970, i32 noundef 9, ptr noundef null) #7
  br label %if.end1033

if.end1033:                                       ; preds = %do.end1027, %if.end958.if.end1033_crit_edge
  %shl1059 = shl i32 %add3.i3430, 9
  %and1060 = and i32 %shl1059, 258048
  %or1061 = or i32 %and1060, %and985
  %sub.i3437 = add i32 %div907, 37
  %div.i3438 = udiv i32 %sub.i3437, %div907
  %add3.i3439 = add i32 %div.i3438, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add3.i3439)
  %tobool1082.not = icmp ult i32 %add3.i3439, 512
  br i1 %tobool1082.not, label %if.end1033.if.end1109_crit_edge, label %do.end1103, !prof !260

if.end1033.if.end1109_crit_edge:                  ; preds = %if.end1033
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1109

do.end1103:                                       ; preds = %if.end1033
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 972, i32 noundef 9, ptr noundef null) #7
  br label %if.end1109

if.end1109:                                       ; preds = %do.end1103, %if.end1033.if.end1109_crit_edge
  %and1136 = and i32 %add3.i3439, 504
  %or1137 = or i32 %or1061, %and1136
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond911, i32 noundef %or1137)
  %190 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %variant22, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool1140.not = icmp eq i32 %193, 0
  %cond1141 = select i1 %tobool1140.not, i32 72, i32 84
  %sub.i3447 = add i32 %div907, 59
  %div.i3448 = udiv i32 %sub.i3447, %div907
  %add3.i3449 = add i32 %div.i3448, 7
  %194 = and i32 %add3.i3449, 8388096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool1162.not = icmp eq i32 %194, 0
  br i1 %tobool1162.not, label %if.end1109.if.end1189_crit_edge, label %do.end1183, !prof !260

if.end1109.if.end1189_crit_edge:                  ; preds = %if.end1109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1189

do.end1183:                                       ; preds = %if.end1109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 976, i32 noundef 9, ptr noundef null) #7
  br label %if.end1189

if.end1189:                                       ; preds = %do.end1183, %if.end1109.if.end1189_crit_edge
  %shl1215 = shl i32 %add3.i3449, 9
  %and1216 = and i32 %shl1215, 258048
  %add3.i3459 = add i32 %div.i3448, 59
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add3.i3459)
  %tobool1237.not = icmp ult i32 %add3.i3459, 512
  br i1 %tobool1237.not, label %if.end1189.if.end1264_crit_edge, label %do.end1258, !prof !260

if.end1189.if.end1264_crit_edge:                  ; preds = %if.end1189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1264

do.end1258:                                       ; preds = %if.end1189
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 978, i32 noundef 9, ptr noundef null) #7
  br label %if.end1264

if.end1264:                                       ; preds = %do.end1258, %if.end1189.if.end1264_crit_edge
  %and1291 = and i32 %add3.i3459, 504
  %or1292 = or i32 %and1216, %and1291
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond1141, i32 noundef %or1292)
  %195 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %variant22, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool1295.not = icmp eq i32 %198, 0
  %cond1296 = select i1 %tobool1295.not, i32 76, i32 88
  %sub.i3467 = add i32 %div907, 999999
  %div.i3468 = udiv i32 %sub.i3467, %div907
  %add3.i3469 = add i32 %div.i3468, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add3.i3469)
  %tobool1317.not = icmp ult i32 %add3.i3469, 16777216
  br i1 %tobool1317.not, label %if.end1264.if.end1344_crit_edge, label %do.end1338, !prof !260

if.end1264.if.end1344_crit_edge:                  ; preds = %if.end1264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1344

do.end1338:                                       ; preds = %if.end1264
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 982, i32 noundef 9, ptr noundef null) #7
  br label %if.end1344

if.end1344:                                       ; preds = %do.end1338, %if.end1264.if.end1344_crit_edge
  %and1371 = and i32 %add3.i3469, 16777208
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond1296, i32 noundef %and1371)
  %199 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %variant22, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool1374.not = icmp eq i32 %202, 0
  %cond1375 = select i1 %tobool1374.not, i32 80, i32 92
  %sub.i3477 = add i32 %div907, 99
  %div.i3478 = udiv i32 %sub.i3477, %div907
  %add3.i3479 = add i32 %div.i3478, 7
  %203 = and i32 %add3.i3479, 15872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool1396.not = icmp eq i32 %203, 0
  br i1 %tobool1396.not, label %if.end1344.if.end1423_crit_edge, label %do.end1417, !prof !260

if.end1344.if.end1423_crit_edge:                  ; preds = %if.end1344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1423

do.end1417:                                       ; preds = %if.end1344
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 986, i32 noundef 9, ptr noundef null) #7
  br label %if.end1423

if.end1423:                                       ; preds = %do.end1417, %if.end1344.if.end1423_crit_edge
  %div48.i3480 = shl i32 %add3.i3479, 18
  %and1450 = and i32 %div48.i3480, 132120576
  %sub.i3487 = add i32 %div907, 104
  %div.i3488 = udiv i32 %sub.i3487, %div907
  %add3.i3489 = add i32 %div.i3488, 13
  %204 = and i32 %add3.i3489, 8388096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool1471.not = icmp eq i32 %204, 0
  br i1 %tobool1471.not, label %if.end1423.if.end1498_crit_edge, label %do.end1492, !prof !260

if.end1423.if.end1498_crit_edge:                  ; preds = %if.end1423
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1498

do.end1492:                                       ; preds = %if.end1423
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 988, i32 noundef 9, ptr noundef null) #7
  br label %if.end1498

if.end1498:                                       ; preds = %do.end1492, %if.end1423.if.end1498_crit_edge
  %div48.i3490 = shl i32 %add3.i3489, 9
  %and1525 = and i32 %div48.i3490, 258048
  %or1526 = or i32 %and1525, %and1450
  %sub.i3497 = add i32 %div907, 39
  %div.i3498 = udiv i32 %sub.i3497, %div907
  %add3.i3499 = add i32 %div.i3498, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add3.i3499)
  %tobool1547.not = icmp ult i32 %add3.i3499, 512
  br i1 %tobool1547.not, label %if.end1498.if.end1574_crit_edge, label %do.end1568, !prof !260

if.end1498.if.end1574_crit_edge:                  ; preds = %if.end1498
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1574

do.end1568:                                       ; preds = %if.end1498
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 990, i32 noundef 9, ptr noundef null) #7
  br label %if.end1574

if.end1574:                                       ; preds = %do.end1568, %if.end1498.if.end1574_crit_edge
  %and1601 = and i32 %add3.i3499, 504
  %or1602 = or i32 %or1526, %and1601
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond1375, i32 noundef %or1602)
  %205 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %variant22, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool1605.not = icmp eq i32 %208, 0
  %cond1606 = select i1 %tobool1605.not, i32 84, i32 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add3.i3449)
  %tobool1628.not = icmp ult i32 %add3.i3449, 512
  br i1 %tobool1628.not, label %if.end1574.if.end1655_crit_edge, label %do.end1649, !prof !260

if.end1574.if.end1655_crit_edge:                  ; preds = %if.end1574
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1655

do.end1649:                                       ; preds = %if.end1574
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 994, i32 noundef 9, ptr noundef null) #7
  br label %if.end1655

if.end1655:                                       ; preds = %do.end1649, %if.end1574.if.end1655_crit_edge
  %and1683 = and i32 %add3.i3449, 504
  %add3.i3523 = add i32 %div.i3448, 11
  %div48.i3524 = and i32 %add3.i3523, -8
  %209 = tail call i32 @llvm.umax.i32(i32 %div48.i3431, i32 %div48.i3524)
  %210 = and i32 %209, 8388096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool1708.not = icmp eq i32 %210, 0
  br i1 %tobool1708.not, label %if.end1655.if.end1735_crit_edge, label %do.end1729, !prof !260

if.end1655.if.end1735_crit_edge:                  ; preds = %if.end1655
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1735

do.end1729:                                       ; preds = %if.end1655
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %if.end1735

if.end1735:                                       ; preds = %do.end1729, %if.end1655.if.end1735_crit_edge
  %shl1770 = shl i32 %209, 9
  %and1771 = and i32 %shl1770, 258048
  %or1772 = or i32 %and1771, %and1683
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond1606, i32 noundef %or1772)
  %211 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %variant22, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool1842.not = icmp eq i32 %214, 0
  %cond1843 = select i1 %tobool1842.not, i32 88, i32 100
  %sub.i3535 = add i32 %div907, 4999999
  %div.i3536 = udiv i32 %sub.i3535, %div907
  %add3.i3537 = add i32 %div.i3536, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add3.i3537)
  %tobool1864.not = icmp ult i32 %add3.i3537, 16777216
  br i1 %tobool1864.not, label %if.end1735.if.end2301_crit_edge, label %do.end1885, !prof !260

if.end1735.if.end2301_crit_edge:                  ; preds = %if.end1735
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2301

do.end1885:                                       ; preds = %if.end1735
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1011, i32 noundef 9, ptr noundef null) #7
  br label %if.end2301

if.end2301:                                       ; preds = %do.end1885, %if.end1735.if.end2301_crit_edge
  %and1918 = and i32 %add3.i3537, 16777208
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond1843, i32 noundef %and1918)
  %215 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %variant22, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool1921.not = icmp eq i32 %218, 0
  %cond1922 = select i1 %tobool1921.not, i32 92, i32 104
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond1922, i32 noundef 503715846)
  %219 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %variant22, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool2252.not = icmp eq i32 %222, 0
  %cond2253 = select i1 %tobool2252.not, i32 96, i32 108
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2253, i32 noundef 100000)
  %223 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %variant22, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool2331.not = icmp eq i32 %226, 0
  %cond2332 = select i1 %tobool2331.not, i32 64, i32 76
  %lanes2333 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 12
  %227 = ptrtoint ptr %lanes2333 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %lanes2333, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %228)
  %cmp2334 = icmp ugt i32 %228, 1
  %or2336 = select i1 %cmp2334, i32 17, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %228)
  %cmp2338 = icmp ugt i32 %228, 2
  %cond2339 = select i1 %cmp2338, i32 256, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %228)
  %cmp2342 = icmp ugt i32 %228, 3
  %cond2343 = select i1 %cmp2342, i32 4096, i32 0
  %mode_flags2350 = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 15
  %229 = ptrtoint ptr %mode_flags2350 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mode_flags2350, align 4
  %and2351 = and i32 %230, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2351)
  %tobool2352.not = icmp eq i32 %and2351, 0
  %cond2358 = select i1 %tobool2331.not, i32 1024, i32 262144
  %spec.select3253 = select i1 %tobool2352.not, i32 %cond2358, i32 0
  %or2340 = select i1 %tobool2331.not, i32 20736, i32 5308416
  %or2344 = or i32 %or2340, %cond2339
  %or2349 = or i32 %or2344, %or2336
  %or2361 = or i32 %or2349, %cond2343
  %or2535 = or i32 %or2361, %spec.select3253
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2332, i32 noundef %or2535)
  %231 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs, align 4
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #7, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !277
  %234 = or i32 %233, 131072
  %235 = tail call i32 @llvm.bswap.i32(i32 %234)
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef 0, i32 noundef %235)
  %236 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %variant22, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool2554.not = icmp eq i32 %239, 0
  %cond2555 = select i1 %tobool2554.not, i32 48, i32 60
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2555, i32 noundef 0)
  %240 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %variant22, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool2558.not = icmp eq i32 %243, 0
  %cond2559 = select i1 %tobool2558.not, i32 52, i32 64
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2559, i32 noundef 16777215)
  %244 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %variant22, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool2562.not = icmp eq i32 %247, 0
  %cond2563 = select i1 %tobool2562.not, i32 56, i32 68
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2563, i32 noundef 100000)
  %248 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %variant22, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool2566.not = icmp eq i32 %251, 0
  %cond2567 = select i1 %tobool2566.not, i32 60, i32 72
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2567, i32 noundef 100000)
  %252 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %variant22, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool2570.not = icmp eq i32 %255, 0
  %cond2571 = select i1 %tobool2570.not, i32 28, i32 44
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2571, i32 noundef 5)
  %256 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs, align 4
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %259 = or i32 %258, 16777216
  %260 = tail call i32 @llvm.bswap.i32(i32 %259)
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef 0, i32 noundef %260)
  %261 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %variant22, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp2679 = icmp eq i32 %264, 0
  br i1 %cmp2679, label %if.end2301.if.end2698_crit_edge, label %if.else2681

if.end2301.if.end2698_crit_edge:                  ; preds = %if.end2301
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2698

if.else2681:                                      ; preds = %if.end2301
  call void @__sanitizer_cov_trace_pc() #9
  %265 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs, align 4
  %add.ptr2693 = getelementptr i8, ptr %266, i32 112
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2693) #7, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !278
  %268 = and i32 %267, -2097153
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef 112, i32 noundef %269)
  br label %if.end2698

if.end2698:                                       ; preds = %if.else2681, %if.end2301.if.end2698_crit_edge
  tail call fastcc void @vc4_dsi_ulps(ptr noundef %5, i1 noundef zeroext false)
  %bridge_chain = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 4
  %prev = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 4, i32 1
  %270 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %270)
  %.pn3554 = load ptr, ptr %prev, align 4
  %cmp2702.not3556 = icmp eq ptr %.pn3554, %bridge_chain
  br i1 %cmp2702.not3556, label %if.end2698.for.end_crit_edge, label %if.end2698.for.body_crit_edge

if.end2698.for.body_crit_edge:                    ; preds = %if.end2698
  br label %for.body

if.end2698.for.end_crit_edge:                     ; preds = %if.end2698
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end2698.for.body_crit_edge
  %.pn3557 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn3554, %if.end2698.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn3557, i32 24
  %271 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %funcs, align 4
  %pre_enable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %272, i32 0, i32 7
  %273 = ptrtoint ptr %pre_enable to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pre_enable, align 4
  %tobool2705.not = icmp eq ptr %274, null
  br i1 %tobool2705.not, label %for.body.for.inc_crit_edge, label %if.then2706

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then2706:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %iter.03558 = getelementptr i8, ptr %.pn3557, i32 -132
  tail call void %274(ptr noundef %iter.03558) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then2706, %for.body.for.inc_crit_edge
  %prev2712 = getelementptr inbounds %struct.list_head, ptr %.pn3557, i32 0, i32 1
  %275 = ptrtoint ptr %prev2712 to i32
  call void @__asan_load4_noabort(i32 %275)
  %.pn = load ptr, ptr %prev2712, align 4
  %cmp2702.not = icmp eq ptr %.pn, %bridge_chain
  br i1 %cmp2702.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end2698.for.end_crit_edge
  %276 = ptrtoint ptr %mode_flags2350 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %mode_flags2350, align 4
  %and2716 = and i32 %277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2716)
  %tobool2717.not = icmp eq i32 %and2716, 0
  %278 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %variant22, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %279, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool2961.not = icmp eq i32 %281, 0
  %cond2962 = select i1 %tobool2961.not, i32 24, i32 40
  br i1 %tobool2717.not, label %for.end.if.end2963_crit_edge, label %if.then2718

for.end.if.end2963_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2963

if.then2718:                                      ; preds = %for.end
  %282 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %divider, align 4
  %284 = and i32 %283, 523776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool2743.not = icmp eq i32 %284, 0
  br i1 %tobool2743.not, label %if.then2718.do.end2801_crit_edge, label %do.end2764, !prof !260

if.then2718.do.end2801_crit_edge:                 ; preds = %if.then2718
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2801

do.end2764:                                       ; preds = %if.then2718
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %do.end2801

do.end2801:                                       ; preds = %do.end2764, %if.then2718.do.end2801_crit_edge
  %285 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %divider, align 4
  %shl2804 = shl i32 %286, 13
  %and2805 = and i32 %shl2804, 4186112
  %format = getelementptr inbounds %struct.vc4_dsi, ptr %5, i32 0, i32 13
  %287 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %format, align 4
  %289 = and i32 %288, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool2825.not = icmp eq i32 %289, 0
  br i1 %tobool2825.not, label %do.end2801.if.end2930_crit_edge, label %do.end2846, !prof !260

do.end2801.if.end2930_crit_edge:                  ; preds = %do.end2801
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2930

do.end2846:                                       ; preds = %do.end2801
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1081, i32 noundef 9, ptr noundef null) #7
  br label %if.end2930

if.end2930:                                       ; preds = %do.end2846, %do.end2801.if.end2930_crit_edge
  %290 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %format, align 4
  %shl2886 = shl i32 %291, 2
  %and2887 = and i32 %shl2886, 12
  %or2888 = or i32 %and2805, %and2887
  %or2957 = or i32 %or2888, 4113
  br label %if.end2963

if.end2963:                                       ; preds = %if.end2930, %for.end.if.end2963_crit_edge
  %.sink = phi i32 [ %or2957, %if.end2930 ], [ 3, %for.end.if.end2963_crit_edge ]
  tail call fastcc void @dsi_dma_workaround_write(ptr noundef %5, i32 noundef %cond2962, i32 noundef %.sink)
  %292 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_load4_noabort(i32 %292)
  %.pn32463559 = load ptr, ptr %bridge_chain, align 4
  %cmp2971.not3561 = icmp eq ptr %.pn32463559, %bridge_chain
  br i1 %cmp2971.not3561, label %if.end2963.cleanup_crit_edge, label %if.end2963.for.body2974_crit_edge

if.end2963.for.body2974_crit_edge:                ; preds = %if.end2963
  br label %for.body2974

if.end2963.cleanup_crit_edge:                     ; preds = %if.end2963
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body2974:                                     ; preds = %for.inc2981.for.body2974_crit_edge, %if.end2963.for.body2974_crit_edge
  %.pn32463562 = phi ptr [ %.pn3246, %for.inc2981.for.body2974_crit_edge ], [ %.pn32463559, %if.end2963.for.body2974_crit_edge ]
  %funcs2975 = getelementptr i8, ptr %.pn32463562, i32 24
  %293 = ptrtoint ptr %funcs2975 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %funcs2975, align 4
  %enable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %294, i32 0, i32 8
  %295 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %enable, align 4
  %tobool2976.not = icmp eq ptr %296, null
  br i1 %tobool2976.not, label %for.body2974.for.inc2981_crit_edge, label %if.then2977

for.body2974.for.inc2981_crit_edge:               ; preds = %for.body2974
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc2981

if.then2977:                                      ; preds = %for.body2974
  call void @__sanitizer_cov_trace_pc() #9
  %iter.13563 = getelementptr i8, ptr %.pn32463562, i32 -132
  tail call void %296(ptr noundef %iter.13563) #7
  br label %for.inc2981

for.inc2981:                                      ; preds = %if.then2977, %for.body2974.for.inc2981_crit_edge
  %297 = ptrtoint ptr %.pn32463562 to i32
  call void @__asan_load4_noabort(i32 %297)
  %.pn3246 = load ptr, ptr %.pn32463562, align 4
  %cmp2971.not = icmp eq ptr %.pn3246, %bridge_chain
  br i1 %cmp2971.not, label %for.inc2981.cleanup_crit_edge, label %for.inc2981.for.body2974_crit_edge

for.inc2981.for.body2974_crit_edge:               ; preds = %for.inc2981
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body2974

for.inc2981.cleanup_crit_edge:                    ; preds = %for.inc2981
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc2981.cleanup_crit_edge, %if.end2963.cleanup_crit_edge, %if.then904, %if.then890, %if.then885, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_dsi_ulps(ptr noundef readonly %dsi, i1 noundef zeroext %ulps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_flags = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 15
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %variant = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 10
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %phi.bo = select i1 %tobool3.not, i32 514, i32 131074
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond4 = phi i32 [ %phi.bo, %cond.true ], [ 2, %entry.cond.end_crit_edge ]
  %lanes = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 12
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  %cond5 = select i1 %cmp, i32 32, i32 0
  %or6 = or i32 %cond5, %cond4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp8 = icmp ugt i32 %7, 2
  %cond9 = select i1 %cmp8, i32 512, i32 0
  %or10 = or i32 %or6, %cond9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp12 = icmp ugt i32 %7, 3
  %cond13 = select i1 %cmp12, i32 8192, i32 0
  %or14 = or i32 %or10, %cond13
  %8 = shl nuw nsw i32 %and, 8
  %cond20 = select i1 %cmp, i32 134217728, i32 0
  %or17 = or i32 %cond20, %8
  %cond24 = select i1 %cmp8, i32 536870912, i32 0
  %or21 = or i32 %or17, %cond24
  %cond28 = select i1 %cmp12, i32 -2147483648, i32 0
  %or25 = or i32 %or21, %cond28
  %or29 = or i32 %or25, 33554432
  %9 = shl nuw nsw i32 %and, 6
  %cond35 = select i1 %cmp, i32 67108864, i32 0
  %or32 = or i32 %cond35, %9
  %cond39 = select i1 %cmp8, i32 268435456, i32 0
  %or36 = or i32 %or32, %cond39
  %cond43 = select i1 %cmp12, i32 1073741824, i32 0
  %or40 = or i32 %or36, %cond43
  %or44 = or i32 %or40, 16777216
  %regs = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 5
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %variant45 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 10
  %12 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant45, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool47.not = icmp eq i32 %15, 0
  %cond48 = select i1 %tobool47.not, i32 100, i32 112
  %add.ptr = getelementptr i8, ptr %11, i32 %cond48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !263
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !279
  %18 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %variant45, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool52.not = icmp eq i32 %21, 0
  %cond53 = select i1 %tobool52.not, i32 16777216, i32 16384
  %and54 = and i32 %cond53, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55 = icmp eq i32 %and54, 0
  %cmp60 = xor i1 %tobool55, %ulps
  br i1 %cmp60, label %cond.end.cleanup250_crit_edge, label %if.end

cond.end.cleanup250_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup250

if.end:                                           ; preds = %cond.end
  %cond65 = select i1 %tobool52.not, i32 44, i32 56
  %reg_dma_chan.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 6
  %22 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or29) #7
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %cond65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit

if.end.i:                                         ; preds = %if.end
  %reg_dma_mem.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %27 = ptrtoint ptr %reg_dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_dma_mem.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or29, ptr %28, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %23, align 4
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 30
  %32 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %reg_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %34 = ptrtoint ptr %reg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_paddr.i, align 4
  %add.i = add i32 %35, %cond65
  %reg_dma_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %36 = ptrtoint ptr %reg_dma_paddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_dma_paddr.i, align 4
  %call.i = tail call ptr %33(ptr noundef nonnull %23, i32 noundef %add.i, i32 noundef %37, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_submit.i, align 4
  %call4.i = tail call i32 %39(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool6.not.i = icmp sgt i32 %call4.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i) #7
  br label %dsi_dma_workaround_write.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = tail call i32 @dma_sync_wait(ptr noundef nonnull %23, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, label %if.then11.i

if.end8.i.dsi_dma_workaround_write.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i) #7
  br label %dsi_dma_workaround_write.exit

dsi_dma_workaround_write.exit:                    ; preds = %if.then11.i, %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, %if.then7.i, %if.then2.i, %do.body.i
  %40 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %variant45, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool68.not = icmp eq i32 %43, 0
  %cond69 = select i1 %tobool68.not, i32 64, i32 76
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr77 = getelementptr i8, ptr %45, i32 %cond69
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #7, !srcloc !263
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !280
  %or81 = or i32 %47, %or14
  %48 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i326 = icmp eq ptr %49, null
  br i1 %tobool.not.i326, label %do.body.i329, label %if.end.i337

do.body.i329:                                     ; preds = %dsi_dma_workaround_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %or81) #7
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr.i328 = getelementptr i8, ptr %52, i32 %cond69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i328, i32 %50) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit348

if.end.i337:                                      ; preds = %dsi_dma_workaround_write.exit
  %reg_dma_mem.i330 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %53 = ptrtoint ptr %reg_dma_mem.i330 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_dma_mem.i330, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or81, ptr %54, align 4
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %49, align 4
  %device_prep_dma_memcpy.i331 = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 30
  %58 = ptrtoint ptr %device_prep_dma_memcpy.i331 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_prep_dma_memcpy.i331, align 4
  %reg_paddr.i332 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %60 = ptrtoint ptr %reg_paddr.i332 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg_paddr.i332, align 4
  %add.i333 = add i32 %61, %cond69
  %reg_dma_paddr.i334 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %62 = ptrtoint ptr %reg_dma_paddr.i334 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg_dma_paddr.i334, align 4
  %call.i335 = tail call ptr %59(ptr noundef nonnull %49, i32 noundef %add.i333, i32 noundef %63, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i336 = icmp eq ptr %call.i335, null
  br i1 %tobool1.not.i336, label %if.then2.i338, label %if.end3.i342

if.then2.i338:                                    ; preds = %if.end.i337
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit348

if.end3.i342:                                     ; preds = %if.end.i337
  %tx_submit.i339 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i335, i32 0, i32 4
  %64 = ptrtoint ptr %tx_submit.i339 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_submit.i339, align 4
  %call4.i340 = tail call i32 %65(ptr noundef nonnull %call.i335) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i340)
  %tobool6.not.i341 = icmp sgt i32 %call4.i340, -1
  br i1 %tobool6.not.i341, label %if.end8.i346, label %if.then7.i343

if.then7.i343:                                    ; preds = %if.end3.i342
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i340) #7
  br label %dsi_dma_workaround_write.exit348

if.end8.i346:                                     ; preds = %if.end3.i342
  %call9.i344 = tail call i32 @dma_sync_wait(ptr noundef nonnull %49, i32 noundef %call4.i340) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i344)
  %tobool10.not.i345 = icmp eq i32 %call9.i344, 0
  br i1 %tobool10.not.i345, label %if.end8.i346.dsi_dma_workaround_write.exit348_crit_edge, label %if.then11.i347

if.end8.i346.dsi_dma_workaround_write.exit348_crit_edge: ; preds = %if.end8.i346
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit348

if.then11.i347:                                   ; preds = %if.end8.i346
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i344) #7
  br label %dsi_dma_workaround_write.exit348

dsi_dma_workaround_write.exit348:                 ; preds = %if.then11.i347, %if.end8.i346.dsi_dma_workaround_write.exit348_crit_edge, %if.then7.i343, %if.then2.i338, %do.body.i329
  %call82 = tail call i64 @ktime_get_raw() #7
  %add = add i64 %call82, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 707) #7
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %dsi_dma_workaround_write.exit348
  %wait__.0 = phi i32 [ 10, %dsi_dma_workaround_write.exit348 ], [ %spec.select, %cleanup ]
  %call86 = tail call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call86, i64 %add)
  %cmp3.i.i = icmp sgt i64 %call86, %add
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !281
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %68 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %variant45, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool94.not = icmp eq i32 %71, 0
  %cond95 = select i1 %tobool94.not, i32 44, i32 56
  %add.ptr96 = getelementptr i8, ptr %67, i32 %cond95
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #7, !srcloc !263
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  %and100 = and i32 %73, %or29
  call void @__sanitizer_cov_trace_cmp4(i32 %and100, i32 %or29)
  %cmp101 = icmp eq i32 %and100, %or29
  %brmerge = select i1 %cmp101, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %wait__.0, 1
  tail call void @usleep_range_state(i32 noundef %wait__.0, i32 noundef %mul, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.0)
  %cmp108 = icmp slt i32 %wait__.0, 1000
  %spec.select = select i1 %cmp108, i32 %mul, i32 %wait__.0
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp101, label %if.end145, label %do.end117

do.end117:                                        ; preds = %for.end
  %74 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dsi, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %78 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %variant45, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool123.not = icmp eq i32 %81, 0
  %cond124 = select i1 %tobool123.not, i32 44, i32 56
  %add.ptr125 = getelementptr i8, ptr %77, i32 %cond124
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #7, !srcloc !263
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %83) #10
  %84 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %variant45, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool131.not = icmp eq i32 %87, 0
  %cond132 = select i1 %tobool131.not, i32 64, i32 76
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %add.ptr140 = getelementptr i8, ptr %89, i32 %cond132
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #7, !srcloc !263
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !284
  %neg = xor i32 %or14, -1
  %and144 = and i32 %91, %neg
  %92 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i350 = icmp eq ptr %93, null
  br i1 %tobool.not.i350, label %do.body.i353, label %if.end.i361

do.body.i353:                                     ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %94 = tail call i32 @llvm.bswap.i32(i32 %and144) #7
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr.i352 = getelementptr i8, ptr %96, i32 %cond132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i352, i32 %94) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit372

if.end.i361:                                      ; preds = %do.end117
  %reg_dma_mem.i354 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %97 = ptrtoint ptr %reg_dma_mem.i354 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_dma_mem.i354, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and144, ptr %98, align 4
  %100 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %93, align 4
  %device_prep_dma_memcpy.i355 = getelementptr inbounds %struct.dma_device, ptr %101, i32 0, i32 30
  %102 = ptrtoint ptr %device_prep_dma_memcpy.i355 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device_prep_dma_memcpy.i355, align 4
  %reg_paddr.i356 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %104 = ptrtoint ptr %reg_paddr.i356 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reg_paddr.i356, align 4
  %add.i357 = add i32 %105, %cond132
  %reg_dma_paddr.i358 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %106 = ptrtoint ptr %reg_dma_paddr.i358 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reg_dma_paddr.i358, align 4
  %call.i359 = tail call ptr %103(ptr noundef nonnull %93, i32 noundef %add.i357, i32 noundef %107, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i360 = icmp eq ptr %call.i359, null
  br i1 %tobool1.not.i360, label %if.then2.i362, label %if.end3.i366

if.then2.i362:                                    ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit372

if.end3.i366:                                     ; preds = %if.end.i361
  %tx_submit.i363 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i359, i32 0, i32 4
  %108 = ptrtoint ptr %tx_submit.i363 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx_submit.i363, align 4
  %call4.i364 = tail call i32 %109(ptr noundef nonnull %call.i359) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i364)
  %tobool6.not.i365 = icmp sgt i32 %call4.i364, -1
  br i1 %tobool6.not.i365, label %if.end8.i370, label %if.then7.i367

if.then7.i367:                                    ; preds = %if.end3.i366
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i364) #7
  br label %dsi_dma_workaround_write.exit372

if.end8.i370:                                     ; preds = %if.end3.i366
  %call9.i368 = tail call i32 @dma_sync_wait(ptr noundef nonnull %93, i32 noundef %call4.i364) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i368)
  %tobool10.not.i369 = icmp eq i32 %call9.i368, 0
  br i1 %tobool10.not.i369, label %if.end8.i370.dsi_dma_workaround_write.exit372_crit_edge, label %if.then11.i371

if.end8.i370.dsi_dma_workaround_write.exit372_crit_edge: ; preds = %if.end8.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit372

if.then11.i371:                                   ; preds = %if.end8.i370
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i368) #7
  br label %dsi_dma_workaround_write.exit372

dsi_dma_workaround_write.exit372:                 ; preds = %if.then11.i371, %if.end8.i370.dsi_dma_workaround_write.exit372_crit_edge, %if.then7.i367, %if.then2.i362, %do.body.i353
  tail call fastcc void @vc4_dsi_latch_ulps(ptr noundef %dsi, i1 noundef zeroext false)
  br label %cleanup250

if.end145:                                        ; preds = %for.end
  tail call fastcc void @vc4_dsi_latch_ulps(ptr noundef %dsi, i1 noundef zeroext %ulps)
  %110 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %variant45, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool149.not = icmp eq i32 %113, 0
  %cond150 = select i1 %tobool149.not, i32 44, i32 56
  %114 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i374 = icmp eq ptr %115, null
  br i1 %tobool.not.i374, label %do.body.i377, label %if.end.i385

do.body.i377:                                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %116 = tail call i32 @llvm.bswap.i32(i32 %or44) #7
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %add.ptr.i376 = getelementptr i8, ptr %118, i32 %cond150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i376, i32 %116) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit396

if.end.i385:                                      ; preds = %if.end145
  %reg_dma_mem.i378 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %119 = ptrtoint ptr %reg_dma_mem.i378 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg_dma_mem.i378, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or44, ptr %120, align 4
  %122 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %115, align 4
  %device_prep_dma_memcpy.i379 = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 30
  %124 = ptrtoint ptr %device_prep_dma_memcpy.i379 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device_prep_dma_memcpy.i379, align 4
  %reg_paddr.i380 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %126 = ptrtoint ptr %reg_paddr.i380 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %reg_paddr.i380, align 4
  %add.i381 = add i32 %127, %cond150
  %reg_dma_paddr.i382 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %128 = ptrtoint ptr %reg_dma_paddr.i382 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %reg_dma_paddr.i382, align 4
  %call.i383 = tail call ptr %125(ptr noundef nonnull %115, i32 noundef %add.i381, i32 noundef %129, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i384 = icmp eq ptr %call.i383, null
  br i1 %tobool1.not.i384, label %if.then2.i386, label %if.end3.i390

if.then2.i386:                                    ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit396

if.end3.i390:                                     ; preds = %if.end.i385
  %tx_submit.i387 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i383, i32 0, i32 4
  %130 = ptrtoint ptr %tx_submit.i387 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tx_submit.i387, align 4
  %call4.i388 = tail call i32 %131(ptr noundef nonnull %call.i383) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i388)
  %tobool6.not.i389 = icmp sgt i32 %call4.i388, -1
  br i1 %tobool6.not.i389, label %if.end8.i394, label %if.then7.i391

if.then7.i391:                                    ; preds = %if.end3.i390
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i388) #7
  br label %dsi_dma_workaround_write.exit396

if.end8.i394:                                     ; preds = %if.end3.i390
  %call9.i392 = tail call i32 @dma_sync_wait(ptr noundef nonnull %115, i32 noundef %call4.i388) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i392)
  %tobool10.not.i393 = icmp eq i32 %call9.i392, 0
  br i1 %tobool10.not.i393, label %if.end8.i394.dsi_dma_workaround_write.exit396_crit_edge, label %if.then11.i395

if.end8.i394.dsi_dma_workaround_write.exit396_crit_edge: ; preds = %if.end8.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit396

if.then11.i395:                                   ; preds = %if.end8.i394
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i392) #7
  br label %dsi_dma_workaround_write.exit396

dsi_dma_workaround_write.exit396:                 ; preds = %if.then11.i395, %if.end8.i394.dsi_dma_workaround_write.exit396_crit_edge, %if.then7.i391, %if.then2.i386, %do.body.i377
  %132 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %variant45, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool153.not = icmp eq i32 %135, 0
  %cond154 = select i1 %tobool153.not, i32 64, i32 76
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %add.ptr162 = getelementptr i8, ptr %137, i32 %cond154
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #7, !srcloc !263
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !285
  %neg166 = xor i32 %or14, -1
  %and167 = and i32 %139, %neg166
  %140 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i398 = icmp eq ptr %141, null
  br i1 %tobool.not.i398, label %do.body.i401, label %if.end.i409

do.body.i401:                                     ; preds = %dsi_dma_workaround_write.exit396
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %142 = tail call i32 @llvm.bswap.i32(i32 %and167) #7
  %143 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs, align 4
  %add.ptr.i400 = getelementptr i8, ptr %144, i32 %cond154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i400, i32 %142) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit420

if.end.i409:                                      ; preds = %dsi_dma_workaround_write.exit396
  %reg_dma_mem.i402 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %145 = ptrtoint ptr %reg_dma_mem.i402 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg_dma_mem.i402, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %and167, ptr %146, align 4
  %148 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %141, align 4
  %device_prep_dma_memcpy.i403 = getelementptr inbounds %struct.dma_device, ptr %149, i32 0, i32 30
  %150 = ptrtoint ptr %device_prep_dma_memcpy.i403 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device_prep_dma_memcpy.i403, align 4
  %reg_paddr.i404 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %152 = ptrtoint ptr %reg_paddr.i404 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %reg_paddr.i404, align 4
  %add.i405 = add i32 %153, %cond154
  %reg_dma_paddr.i406 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %154 = ptrtoint ptr %reg_dma_paddr.i406 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %reg_dma_paddr.i406, align 4
  %call.i407 = tail call ptr %151(ptr noundef nonnull %141, i32 noundef %add.i405, i32 noundef %155, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i408 = icmp eq ptr %call.i407, null
  br i1 %tobool1.not.i408, label %if.then2.i410, label %if.end3.i414

if.then2.i410:                                    ; preds = %if.end.i409
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit420

if.end3.i414:                                     ; preds = %if.end.i409
  %tx_submit.i411 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i407, i32 0, i32 4
  %156 = ptrtoint ptr %tx_submit.i411 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tx_submit.i411, align 4
  %call4.i412 = tail call i32 %157(ptr noundef nonnull %call.i407) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i412)
  %tobool6.not.i413 = icmp sgt i32 %call4.i412, -1
  br i1 %tobool6.not.i413, label %if.end8.i418, label %if.then7.i415

if.then7.i415:                                    ; preds = %if.end3.i414
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i412) #7
  br label %dsi_dma_workaround_write.exit420

if.end8.i418:                                     ; preds = %if.end3.i414
  %call9.i416 = tail call i32 @dma_sync_wait(ptr noundef nonnull %141, i32 noundef %call4.i412) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i416)
  %tobool10.not.i417 = icmp eq i32 %call9.i416, 0
  br i1 %tobool10.not.i417, label %if.end8.i418.dsi_dma_workaround_write.exit420_crit_edge, label %if.then11.i419

if.end8.i418.dsi_dma_workaround_write.exit420_crit_edge: ; preds = %if.end8.i418
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit420

if.then11.i419:                                   ; preds = %if.end8.i418
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i416) #7
  br label %dsi_dma_workaround_write.exit420

dsi_dma_workaround_write.exit420:                 ; preds = %if.then11.i419, %if.end8.i418.dsi_dma_workaround_write.exit420_crit_edge, %if.then7.i415, %if.then2.i410, %do.body.i401
  %call169 = tail call i64 @ktime_get_raw() #7
  %add170 = add i64 %call169, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 726) #7
  br label %for.cond179

for.cond179:                                      ; preds = %cleanup209, %dsi_dma_workaround_write.exit420
  %wait__171.0 = phi i32 [ 10, %dsi_dma_workaround_write.exit420 ], [ %spec.select321, %cleanup209 ]
  %call181 = tail call i64 @ktime_get_raw() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call181, i64 %add170)
  %cmp3.i.i421 = icmp sgt i64 %call181, %add170
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !286
  %158 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs, align 4
  %160 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %variant45, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool189.not = icmp eq i32 %163, 0
  %cond190 = select i1 %tobool189.not, i32 44, i32 56
  %add.ptr191 = getelementptr i8, ptr %159, i32 %cond190
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr191) #7, !srcloc !263
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !287
  %and195 = and i32 %165, %or44
  call void @__sanitizer_cov_trace_cmp4(i32 %and195, i32 %or44)
  %cmp196 = icmp eq i32 %and195, %or44
  %brmerge323 = select i1 %cmp196, i1 true, i1 %cmp3.i.i421
  br i1 %brmerge323, label %for.end212, label %cleanup209

cleanup209:                                       ; preds = %for.cond179
  call void @__sanitizer_cov_trace_pc() #9
  %mul203 = shl i32 %wait__171.0, 1
  tail call void @usleep_range_state(i32 noundef %wait__171.0, i32 noundef %mul203, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__171.0)
  %cmp204 = icmp slt i32 %wait__171.0, 1000
  %spec.select321 = select i1 %cmp204, i32 %mul203, i32 %wait__171.0
  br label %for.cond179

for.end212:                                       ; preds = %for.cond179
  br i1 %cmp196, label %for.end212.cleanup250_crit_edge, label %do.end218

for.end212.cleanup250_crit_edge:                  ; preds = %for.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup250

do.end218:                                        ; preds = %for.end212
  %166 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dsi, align 4
  %dev220 = getelementptr inbounds %struct.platform_device, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs, align 4
  %170 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %variant45, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool226.not = icmp eq i32 %173, 0
  %cond227 = select i1 %tobool226.not, i32 44, i32 56
  %add.ptr228 = getelementptr i8, ptr %169, i32 %cond227
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228) #7, !srcloc !263
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev220, ptr noundef nonnull @.str.53, i32 noundef %175) #10
  %176 = ptrtoint ptr %variant45 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %variant45, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool234.not = icmp eq i32 %179, 0
  %cond235 = select i1 %tobool234.not, i32 64, i32 76
  %180 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs, align 4
  %add.ptr243 = getelementptr i8, ptr %181, i32 %cond235
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243) #7, !srcloc !263
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !289
  %and248 = and i32 %183, %neg166
  %184 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i423 = icmp eq ptr %185, null
  br i1 %tobool.not.i423, label %do.body.i426, label %if.end.i434

do.body.i426:                                     ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %186 = tail call i32 @llvm.bswap.i32(i32 %and248) #7
  %187 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs, align 4
  %add.ptr.i425 = getelementptr i8, ptr %188, i32 %cond235
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 %186) #7, !srcloc !262
  br label %cleanup250

if.end.i434:                                      ; preds = %do.end218
  %reg_dma_mem.i427 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %189 = ptrtoint ptr %reg_dma_mem.i427 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %reg_dma_mem.i427, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %and248, ptr %190, align 4
  %192 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %185, align 4
  %device_prep_dma_memcpy.i428 = getelementptr inbounds %struct.dma_device, ptr %193, i32 0, i32 30
  %194 = ptrtoint ptr %device_prep_dma_memcpy.i428 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %device_prep_dma_memcpy.i428, align 4
  %reg_paddr.i429 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %196 = ptrtoint ptr %reg_paddr.i429 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %reg_paddr.i429, align 4
  %add.i430 = add i32 %197, %cond235
  %reg_dma_paddr.i431 = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %198 = ptrtoint ptr %reg_dma_paddr.i431 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %reg_dma_paddr.i431, align 4
  %call.i432 = tail call ptr %195(ptr noundef nonnull %185, i32 noundef %add.i430, i32 noundef %199, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i433 = icmp eq ptr %call.i432, null
  br i1 %tobool1.not.i433, label %if.then2.i435, label %if.end3.i439

if.then2.i435:                                    ; preds = %if.end.i434
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %cleanup250

if.end3.i439:                                     ; preds = %if.end.i434
  %tx_submit.i436 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i432, i32 0, i32 4
  %200 = ptrtoint ptr %tx_submit.i436 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %tx_submit.i436, align 4
  %call4.i437 = tail call i32 %201(ptr noundef nonnull %call.i432) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i437)
  %tobool6.not.i438 = icmp sgt i32 %call4.i437, -1
  br i1 %tobool6.not.i438, label %if.end8.i443, label %if.then7.i440

if.then7.i440:                                    ; preds = %if.end3.i439
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i437) #7
  br label %cleanup250

if.end8.i443:                                     ; preds = %if.end3.i439
  %call9.i441 = tail call i32 @dma_sync_wait(ptr noundef nonnull %185, i32 noundef %call4.i437) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i441)
  %tobool10.not.i442 = icmp eq i32 %call9.i441, 0
  br i1 %tobool10.not.i442, label %if.end8.i443.cleanup250_crit_edge, label %if.then11.i444

if.end8.i443.cleanup250_crit_edge:                ; preds = %if.end8.i443
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup250

if.then11.i444:                                   ; preds = %if.end8.i443
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i441) #7
  br label %cleanup250

cleanup250:                                       ; preds = %if.then11.i444, %if.end8.i443.cleanup250_crit_edge, %if.then7.i440, %if.then2.i435, %do.body.i426, %for.end212.cleanup250_crit_edge, %dsi_dma_workaround_write.exit372, %cond.end.cleanup250_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_dsi_latch_ulps(ptr nocapture noundef readonly %dsi, i1 noundef zeroext %latch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %variant = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 10
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 100, i32 112
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !263
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !290
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  %cond6 = select i1 %tobool5.not, i32 16777216, i32 16384
  %or = or i32 %cond6, %7
  %neg = select i1 %tobool5.not, i32 -16777217, i32 -16385
  %and = and i32 %neg, %7
  %afec0.0 = select i1 %latch, i32 %or, i32 %and
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  %cond14 = select i1 %tobool13.not, i32 100, i32 112
  %reg_dma_chan.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 6
  %16 = ptrtoint ptr %reg_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_dma_chan.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %afec0.0) #7
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %cond14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #7, !srcloc !262
  br label %dsi_dma_workaround_write.exit

if.end.i:                                         ; preds = %entry
  %reg_dma_mem.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 8
  %21 = ptrtoint ptr %reg_dma_mem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_dma_mem.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %afec0.0, ptr %22, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 4
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 30
  %26 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %reg_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 9
  %28 = ptrtoint ptr %reg_paddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_paddr.i, align 4
  %add.i = add i32 %29, %cond14
  %reg_dma_paddr.i = getelementptr inbounds %struct.vc4_dsi, ptr %dsi, i32 0, i32 7
  %30 = ptrtoint ptr %reg_dma_paddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_dma_paddr.i, align 4
  %call.i = tail call ptr %27(ptr noundef nonnull %17, i32 noundef %add.i, i32 noundef %31, i32 noundef 4, i32 noundef 0) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %dsi_dma_workaround_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_submit.i, align 4
  %call4.i = tail call i32 %33(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %tobool6.not.i = icmp sgt i32 %call4.i, -1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call4.i) #7
  br label %dsi_dma_workaround_write.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = tail call i32 @dma_sync_wait(ptr noundef nonnull %17, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, label %if.then11.i

if.end8.i.dsi_dma_workaround_write.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_dma_workaround_write.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call9.i) #7
  br label %dsi_dma_workaround_write.exit

dsi_dma_workaround_write.exit:                    ; preds = %if.then11.i, %if.end8.i.dsi_dma_workaround_write.exit_crit_edge, %if.then7.i, %if.then2.i, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !113, !114, !116, !117, !118, !120, !122, !124, !125, !126, !128, !130, !131, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1693, i32 11}
!2 = !{ptr @vc4_dsi_driver, !3, !"vc4_dsi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1689, i32 24}
!4 = !{ptr @vc4_dsi_host_ops, !5, !"vc4_dsi_host_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1311, i32 39}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1288, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vc4_dsi_host_attach._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @vc4_dsi_host_attach._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1294, i32 3}
!16 = !{ptr @vc4_dsi_host_attach._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vc4_dsi_host_attach._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @vc4_dsi_ops, !19, !"vc4_dsi_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1657, i32 35}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1525, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vc4_dsi_bind._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @vc4_dsi_bind._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1539, i32 4}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1549, i32 5}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1573, i32 7}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1579, i32 4}
!33 = !{ptr @vc4_dsi_bind._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @vc4_dsi_bind._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1583, i32 40}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1587, i32 4}
!39 = !{ptr @vc4_dsi_bind._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vc4_dsi_bind._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1591, i32 41}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1595, i32 4}
!45 = !{ptr @vc4_dsi_bind._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vc4_dsi_bind._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1599, i32 39}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1603, i32 4}
!51 = !{ptr @vc4_dsi_bind._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vc4_dsi_bind._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1614, i32 3}
!55 = !{ptr @vc4_dsi_bind._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vc4_dsi_bind._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @init_completion.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/linux/completion.h", i32 87, i32 2}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 582, i32 3}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 589, i32 3}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 594, i32 3}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1393, i32 28}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1395, i32 27}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1397, i32 28}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1399, i32 28}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1401, i32 23}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1403, i32 23}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1405, i32 21}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1407, i32 21}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1359, i32 2}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1435, i32 5}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1436, i32 5}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1437, i32 5}
!90 = !{ptr @vc4_dsi_init_phy_clocks.phy_clocks, !91, !"phy_clocks", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1434, i32 4}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1457, i32 5}
!94 = !{ptr @vc4_dsi_encoder_helper_funcs, !95, !"vc4_dsi_encoder_helper_funcs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1317, i32 46}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 709, i32 3}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vc4_dsi_ulps._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @vc4_dsi_ulps._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 728, i32 3}
!104 = !{ptr @vc4_dsi_ulps._entry.52, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @vc4_dsi_ulps._entry_ptr.54, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 851, i32 3}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 857, i32 3}
!110 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @vc4_dsi_encoder_enable._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @vc4_dsi_encoder_enable._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 868, i32 3}
!116 = !{ptr @vc4_dsi_encoder_enable._entry.59, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @vc4_dsi_encoder_enable._entry_ptr.61, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 929, i32 3}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 935, i32 3}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 951, i32 3}
!124 = !{ptr @vc4_dsi_encoder_enable._entry.64, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @vc4_dsi_encoder_enable._entry_ptr.66, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 957, i32 3}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1099, i32 3}
!130 = !{ptr @vc4_dsi_encoder_enable._entry.68, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @vc4_dsi_encoder_enable._entry_ptr.70, !129, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1140, i32 3}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1202, i32 3}
!136 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @vc4_dsi_host_transfer._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @vc4_dsi_host_transfer._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1203, i32 3}
!141 = !{ptr @vc4_dsi_host_transfer._entry.73, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @vc4_dsi_host_transfer._entry_ptr.75, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1224, i32 5}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1247, i32 2}
!147 = !{ptr @vc4_dsi_dt_match, !148, !"vc4_dsi_dt_match", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1345, i32 34}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1325, i32 19}
!151 = !{ptr @bcm2711_dsi1_variant, !152, !"bcm2711_dsi1_variant", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1323, i32 37}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 643, i32 2}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 644, i32 2}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 645, i32 2}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 646, i32 2}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 647, i32 2}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 648, i32 2}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 649, i32 2}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 650, i32 2}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 651, i32 2}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 652, i32 2}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 653, i32 2}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 654, i32 2}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 655, i32 2}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 656, i32 2}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 657, i32 2}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 658, i32 2}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 659, i32 2}
!187 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 660, i32 2}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 661, i32 2}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 662, i32 2}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 663, i32 2}
!195 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 664, i32 2}
!197 = !{ptr @dsi1_regs, !198, !"dsi1_regs", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 642, i32 35}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1332, i32 19}
!201 = !{ptr @bcm2835_dsi0_variant, !202, !"bcm2835_dsi0_variant", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1330, i32 37}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 618, i32 2}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 619, i32 2}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 620, i32 2}
!209 = !{ptr @.str.105, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 621, i32 2}
!211 = !{ptr @.str.106, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 622, i32 2}
!213 = !{ptr @.str.107, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 623, i32 2}
!215 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 624, i32 2}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 625, i32 2}
!219 = !{ptr @.str.110, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 626, i32 2}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 627, i32 2}
!223 = !{ptr @.str.112, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 628, i32 2}
!225 = !{ptr @.str.113, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 629, i32 2}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 630, i32 2}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 631, i32 2}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 632, i32 2}
!233 = !{ptr @.str.117, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 633, i32 2}
!235 = !{ptr @.str.118, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 634, i32 2}
!237 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 635, i32 2}
!239 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 636, i32 2}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 637, i32 2}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 638, i32 2}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 639, i32 2}
!247 = !{ptr @dsi0_regs, !248, !"dsi0_regs", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 617, i32 35}
!249 = !{ptr @bcm2835_dsi1_variant, !250, !"bcm2835_dsi1_variant", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/vc4/vc4_dsi.c", i32 1337, i32 37}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{i64 2157278215}
!262 = !{i64 6470998}
!263 = !{i64 6471416}
!264 = !{i64 2162323129}
!265 = !{i64 2162325491}
!266 = !{i64 2162371062}
!267 = !{i64 2162454663}
!268 = !{i64 2162462207}
!269 = !{!"auto-init"}
!270 = !{i64 2162477612}
!271 = !{i64 2162480242}
!272 = !{i8 0, i8 2}
!273 = !{i64 2162483801}
!274 = !{i64 2162472184}
!275 = !{i64 2162472972}
!276 = !{i64 2157321186}
!277 = !{i64 2161057354}
!278 = !{i64 2161183727}
!279 = !{i64 2157286515}
!280 = !{i64 2157288542}
!281 = !{i64 2157291327}
!282 = !{i64 2157291007}
!283 = !{i64 2157293917}
!284 = !{i64 2157295433}
!285 = !{i64 2157297175}
!286 = !{i64 2157299961}
!287 = !{i64 2157299641}
!288 = !{i64 2157302551}
!289 = !{i64 2157304067}
!290 = !{i64 2157283349}
