; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/kmb/kmb_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/kmb/kmb_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.mipi_tx_frame_section_cfg = type { i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.mipi_tx_frame_cfg = type { [4 x ptr], i32, i32, i32, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_tx_dsi_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mipi_hs_freq_range_cfg = type { i16, i8 }
%struct.vco_params = type { i32, i32, i32 }
%struct.kmb_dsi = type { %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.mipi_tx_frame_timing_cfg = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8 }
%struct.mipi_tx_frame_sect_phcfg = type { i32, i32, i32, i8, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }

@dsi_host = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmb_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @kmb_dsi_host_attach, ptr @kmb_dsi_host_detach, ptr @kmb_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@dsi_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get dsi_out node info from DT\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get bridge info from DT\0A\00", [61 x i8] zeroinitializer }, align 32
@adv_bridge = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Wait for external bridge driver DT\0A\00", [60 x i8] zeroinitializer }, align 32
@mipi_tx_init_cfg.0 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mipi_tx_init_cfg.1 = internal global { i32, [28 x i8] } { i32 891, [28 x i8] zeroinitializer }, align 32
@mipi_tx_frame0_sect_cfg = internal global { %struct.mipi_tx_frame_section_cfg, [44 x i8] } { %struct.mipi_tx_frame_section_cfg { i32 0, i16 0, i16 1920, i16 1080, i8 0, i8 0, i8 0, i8 0, i8 62, i8 1, i8 0 }, [44 x i8] zeroinitializer }, align 32
@mipitx_frame0_cfg = internal global { %struct.mipi_tx_frame_cfg, [60 x i8] } { %struct.mipi_tx_frame_cfg { [4 x ptr] [ptr @mipi_tx_frame0_sect_cfg, ptr null, ptr null, ptr null], i32 44, i32 148, i32 88, i16 5, i16 36, i16 4 }, [60 x i8] zeroinitializer }, align 32
@kmb_dsi_mode_set.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 1, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmb_drm\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmb_dsi_mode_set\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/kmb/kmb_dsi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"data_rate=%u active_lanes=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@kmb_dsi_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1404, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mipi hw initialized\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kmb_dsi_mode_set._entry_ptr = internal global ptr @kmb_dsi_mode_set._entry, section ".printk_index", align 4
@kmb_dsi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1416, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate kmb_dsi\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kmb_dsi_init\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@kmb_dsi_init._entry_ptr = internal global ptr @kmb_dsi_init._entry, section ".printk_index", align 4
@kmb_dsi_encoder_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 1441, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init encoder %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmb_dsi_encoder_init\00", [43 x i8] zeroinitializer }, align 32
@kmb_dsi_encoder_init._entry_ptr = internal global ptr @kmb_dsi_encoder_init._entry, section ".printk_index", align 4
@kmb_dsi_encoder_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 1452, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[drm] Bridge attached : SUCCESS\00", [32 x i8] zeroinitializer }, align 32
@kmb_dsi_encoder_init._entry_ptr.17 = internal global ptr @kmb_dsi_encoder_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to create bridge connector\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mipi\00", [27 x i8] zeroinitializer }, align 32
@kmb_dsi_map_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 1471, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get resource for mipi\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmb_dsi_map_mmio\00", [47 x i8] zeroinitializer }, align 32
@kmb_dsi_map_mmio._entry_ptr = internal global ptr @kmb_dsi_map_mmio._entry, section ".printk_index", align 4
@kmb_dsi_map_mmio._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 1476, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to ioremap mipi registers\00", [63 x i8] zeroinitializer }, align 32
@kmb_dsi_map_mmio._entry_ptr.24 = internal global ptr @kmb_dsi_map_mmio._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mipi\00", [23 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 1516, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"devm_clk_get() failed clk_mipi\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmb_dsi_clk_init\00", [47 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry_ptr = internal global ptr @kmb_dsi_clk_init._entry, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mipi_ecfg\00", [18 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.5, i32 1522, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"devm_clk_get() failed clk_mipi_ecfg\0A\00", [59 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry_ptr.31 = internal global ptr @kmb_dsi_clk_init._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mipi_cfg\00", [19 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.5, i32 1528, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"devm_clk_get() failed clk_mipi_cfg\0A\00", [60 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry_ptr.35 = internal global ptr @kmb_dsi_clk_init._entry.33, section ".printk_index", align 4
@kmb_dsi_clk_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str.5, i32 1535, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set to clk_mipi to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry_ptr.38 = internal global ptr @kmb_dsi_clk_init._entry.36, section ".printk_index", align 4
@kmb_dsi_clk_init.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.5, ptr @.str.39, i8 1, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mipi = %ld\0A\00", [16 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.5, i32 1547, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set to clk_mipi_ecfg to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry_ptr.42 = internal global ptr @kmb_dsi_clk_init._entry.40, section ".printk_index", align 4
@kmb_dsi_clk_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.5, i32 1559, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set clk_mipi_cfg to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_init._entry_ptr.45 = internal global ptr @kmb_dsi_clk_init._entry.43, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mipitx_dsi_cfg = internal constant { %struct.mipi_tx_dsi_cfg, [23 x i8] } { %struct.mipi_tx_dsi_cfg { i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1 }, [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DSI: Invalid data_mode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DSI: Invalid data_type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.5, ptr @.str.49, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mipi_tx_fg_section_cfg_regs\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ctrl=%d frame_id=%d section=%d cfg=%x packed=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.5, ptr @.str.50, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unpacked_bytes = %d, wordcount = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.51, ptr @.str.5, ptr @.str.52, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mipi_tx_fg_cfg_regs\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ppl_llp_ratio=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.51, ptr @.str.5, ptr @.str.53, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bpp=%d sysclk=%d lane-rate=%d active-lanes=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@mipi_tx_ctrl_cfg.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.54, ptr @.str.5, ptr @.str.55, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mipi_tx_ctrl_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sync_cfg=%d fg_en=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mipi_hs_freq_range = internal constant { [63 x %struct.mipi_hs_freq_range_cfg], [36 x i8] } { [63 x %struct.mipi_hs_freq_range_cfg] [%struct.mipi_hs_freq_range_cfg { i16 80, i8 0 }, %struct.mipi_hs_freq_range_cfg { i16 90, i8 16 }, %struct.mipi_hs_freq_range_cfg { i16 100, i8 32 }, %struct.mipi_hs_freq_range_cfg { i16 110, i8 48 }, %struct.mipi_hs_freq_range_cfg { i16 120, i8 1 }, %struct.mipi_hs_freq_range_cfg { i16 130, i8 17 }, %struct.mipi_hs_freq_range_cfg { i16 140, i8 33 }, %struct.mipi_hs_freq_range_cfg { i16 150, i8 49 }, %struct.mipi_hs_freq_range_cfg { i16 160, i8 2 }, %struct.mipi_hs_freq_range_cfg { i16 170, i8 18 }, %struct.mipi_hs_freq_range_cfg { i16 180, i8 34 }, %struct.mipi_hs_freq_range_cfg { i16 190, i8 50 }, %struct.mipi_hs_freq_range_cfg { i16 205, i8 3 }, %struct.mipi_hs_freq_range_cfg { i16 220, i8 19 }, %struct.mipi_hs_freq_range_cfg { i16 235, i8 35 }, %struct.mipi_hs_freq_range_cfg { i16 250, i8 51 }, %struct.mipi_hs_freq_range_cfg { i16 275, i8 4 }, %struct.mipi_hs_freq_range_cfg { i16 300, i8 20 }, %struct.mipi_hs_freq_range_cfg { i16 325, i8 37 }, %struct.mipi_hs_freq_range_cfg { i16 350, i8 53 }, %struct.mipi_hs_freq_range_cfg { i16 400, i8 5 }, %struct.mipi_hs_freq_range_cfg { i16 450, i8 22 }, %struct.mipi_hs_freq_range_cfg { i16 500, i8 38 }, %struct.mipi_hs_freq_range_cfg { i16 550, i8 55 }, %struct.mipi_hs_freq_range_cfg { i16 600, i8 7 }, %struct.mipi_hs_freq_range_cfg { i16 650, i8 24 }, %struct.mipi_hs_freq_range_cfg { i16 700, i8 40 }, %struct.mipi_hs_freq_range_cfg { i16 750, i8 57 }, %struct.mipi_hs_freq_range_cfg { i16 800, i8 9 }, %struct.mipi_hs_freq_range_cfg { i16 850, i8 25 }, %struct.mipi_hs_freq_range_cfg { i16 900, i8 41 }, %struct.mipi_hs_freq_range_cfg { i16 1000, i8 10 }, %struct.mipi_hs_freq_range_cfg { i16 1050, i8 26 }, %struct.mipi_hs_freq_range_cfg { i16 1100, i8 42 }, %struct.mipi_hs_freq_range_cfg { i16 1150, i8 59 }, %struct.mipi_hs_freq_range_cfg { i16 1200, i8 11 }, %struct.mipi_hs_freq_range_cfg { i16 1250, i8 27 }, %struct.mipi_hs_freq_range_cfg { i16 1300, i8 43 }, %struct.mipi_hs_freq_range_cfg { i16 1350, i8 60 }, %struct.mipi_hs_freq_range_cfg { i16 1400, i8 12 }, %struct.mipi_hs_freq_range_cfg { i16 1450, i8 28 }, %struct.mipi_hs_freq_range_cfg { i16 1500, i8 44 }, %struct.mipi_hs_freq_range_cfg { i16 1550, i8 61 }, %struct.mipi_hs_freq_range_cfg { i16 1600, i8 13 }, %struct.mipi_hs_freq_range_cfg { i16 1650, i8 29 }, %struct.mipi_hs_freq_range_cfg { i16 1700, i8 46 }, %struct.mipi_hs_freq_range_cfg { i16 1750, i8 62 }, %struct.mipi_hs_freq_range_cfg { i16 1800, i8 14 }, %struct.mipi_hs_freq_range_cfg { i16 1850, i8 30 }, %struct.mipi_hs_freq_range_cfg { i16 1900, i8 47 }, %struct.mipi_hs_freq_range_cfg { i16 1950, i8 63 }, %struct.mipi_hs_freq_range_cfg { i16 2000, i8 15 }, %struct.mipi_hs_freq_range_cfg { i16 2050, i8 64 }, %struct.mipi_hs_freq_range_cfg { i16 2100, i8 65 }, %struct.mipi_hs_freq_range_cfg { i16 2150, i8 66 }, %struct.mipi_hs_freq_range_cfg { i16 2200, i8 67 }, %struct.mipi_hs_freq_range_cfg { i16 2250, i8 68 }, %struct.mipi_hs_freq_range_cfg { i16 2300, i8 69 }, %struct.mipi_hs_freq_range_cfg { i16 2350, i8 70 }, %struct.mipi_hs_freq_range_cfg { i16 2400, i8 71 }, %struct.mipi_hs_freq_range_cfg { i16 2450, i8 72 }, %struct.mipi_hs_freq_range_cfg { i16 2500, i8 73 }, %struct.mipi_hs_freq_range_cfg zeroinitializer], [36 x i8] zeroinitializer }, align 32
@mipi_tx_pll_setup.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.56, ptr @.str.5, ptr @.str.57, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mipi_tx_pll_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m = %d n = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@vco_table = internal constant { [10 x %struct.vco_params], [40 x i8] } { [10 x %struct.vco_params] [%struct.vco_params { i32 52, i32 63, i32 8 }, %struct.vco_params { i32 80, i32 57, i32 8 }, %struct.vco_params { i32 105, i32 47, i32 4 }, %struct.vco_params { i32 160, i32 41, i32 4 }, %struct.vco_params { i32 210, i32 31, i32 2 }, %struct.vco_params { i32 320, i32 25, i32 2 }, %struct.vco_params { i32 420, i32 15, i32 1 }, %struct.vco_params { i32 630, i32 9, i32 1 }, %struct.vco_params { i32 1100, i32 3, i32 1 }, %struct.vco_params { i32 65535, i32 1, i32 1 }], [40 x i8] zeroinitializer }, align 32
@mipi_tx_get_vco_params.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid vco freq = %u for PLL setup\0A\00", [59 x i8] zeroinitializer }, align 32
@dphy_wait_fsm.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dphy_wait_fsm\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: dphy %d val = %x\00", [43 x i8] zeroinitializer }, align 32
@dphy_wait_fsm.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.5, ptr @.str.61, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"* DPHY %d WAIT_FSM %s *\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@wait_init_done.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wait_init_done\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"! WAIT_INIT_DONE: TIMING OUT!(err_stat=%d)\00", [53 x i8] zeroinitializer }, align 32
@wait_init_done.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.64, ptr @.str.5, ptr @.str.66, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"* DPHY %d INIT - %s *\00", [42 x i8] zeroinitializer }, align 32
@wait_pll_lock.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.67, ptr @.str.5, ptr @.str.68, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wait_pll_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: timing out\00", [17 x i8] zeroinitializer }, align 32
@wait_pll_lock.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.67, ptr @.str.5, ptr @.str.69, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"* PLL Locked for DPHY %d - %s *\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel,keembay-msscam\00", [43 x i8] zeroinitializer }, align 32
@connect_lcd_to_mipi.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"connect_lcd_to_mipi\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get msscam syscon\00", [36 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 1489, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable MIPI clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kmb_dsi_clk_enable\00", [45 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_enable._entry_ptr = internal global ptr @kmb_dsi_clk_enable._entry, section ".printk_index", align 4
@kmb_dsi_clk_enable._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.5, i32 1495, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable MIPI_ECFG clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_enable._entry_ptr.77 = internal global ptr @kmb_dsi_clk_enable._entry.75, section ".printk_index", align 4
@kmb_dsi_clk_enable._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.5, i32 1501, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enable MIPI_CFG clock: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_enable._entry_ptr.80 = internal global ptr @kmb_dsi_clk_enable._entry.78, section ".printk_index", align 4
@kmb_dsi_clk_enable._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.5, i32 1505, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SUCCESS : enabled MIPI clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@kmb_dsi_clk_enable._entry_ptr.83 = internal global ptr @kmb_dsi_clk_enable._entry.81, section ".printk_index", align 4
@switch.table.kmb_dsi_mode_set = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 16, i32 32, i32 32], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 12, i64 13, i64 14, i64 28, i64 30, i64 44, i64 46, i64 61, i64 62]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"dsi_host\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 24, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"kmb_dsi_host_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 210, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"dsi_device\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 25, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 243, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 249, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"adv_bridge\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 26, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 257, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"mipi_tx_init_cfg.0\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"mipi_tx_init_cfg.1\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"mipi_tx_frame0_sect_cfg\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 33, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"mipitx_frame0_cfg\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 41, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1384, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1404, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1416, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1441, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1452, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1455, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1469, i32 9 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1471, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1476, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1514, i32 40 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1516, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1520, i32 45 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1522, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1526, i32 44 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1528, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1534, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1538, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1546, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1558, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"mipitx_dsi_cfg\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 54, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 282, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 362, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 411, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 431, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 516, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 517, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 685, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [19 x i8] c"mipi_hs_freq_range\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 110, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 935, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [10 x i8] c"vco_table\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 96, i32 32 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 859, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1232, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1233, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1254, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1261, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1275, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1280, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1339, i32 46 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1341, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1489, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1495, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1501, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.352 = private constant [33 x i8] c"../drivers/gpu/drm/kmb/kmb_dsi.c\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1505, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [30 x i8] c"switch.table.kmb_dsi_mode_set\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @kmb_dsi_clk_enable._entry, ptr @kmb_dsi_clk_enable._entry.75, ptr @kmb_dsi_clk_enable._entry.78, ptr @kmb_dsi_clk_enable._entry.81, ptr @kmb_dsi_clk_enable._entry_ptr, ptr @kmb_dsi_clk_enable._entry_ptr.77, ptr @kmb_dsi_clk_enable._entry_ptr.80, ptr @kmb_dsi_clk_enable._entry_ptr.83, ptr @kmb_dsi_clk_init._entry, ptr @kmb_dsi_clk_init._entry.29, ptr @kmb_dsi_clk_init._entry.33, ptr @kmb_dsi_clk_init._entry.36, ptr @kmb_dsi_clk_init._entry.40, ptr @kmb_dsi_clk_init._entry.43, ptr @kmb_dsi_clk_init._entry_ptr, ptr @kmb_dsi_clk_init._entry_ptr.31, ptr @kmb_dsi_clk_init._entry_ptr.35, ptr @kmb_dsi_clk_init._entry_ptr.38, ptr @kmb_dsi_clk_init._entry_ptr.42, ptr @kmb_dsi_clk_init._entry_ptr.45, ptr @kmb_dsi_encoder_init._entry, ptr @kmb_dsi_encoder_init._entry.15, ptr @kmb_dsi_encoder_init._entry_ptr, ptr @kmb_dsi_encoder_init._entry_ptr.17, ptr @kmb_dsi_init._entry, ptr @kmb_dsi_init._entry_ptr, ptr @kmb_dsi_map_mmio._entry, ptr @kmb_dsi_map_mmio._entry.22, ptr @kmb_dsi_map_mmio._entry_ptr, ptr @kmb_dsi_map_mmio._entry_ptr.24, ptr @kmb_dsi_mode_set._entry, ptr @kmb_dsi_mode_set._entry_ptr, ptr @dsi_host, ptr @kmb_dsi_host_ops, ptr @dsi_device, ptr @.str, ptr @.str.1, ptr @adv_bridge, ptr @.str.2, ptr @mipi_tx_init_cfg.0, ptr @mipi_tx_init_cfg.1, ptr @mipi_tx_frame0_sect_cfg, ptr @mipitx_frame0_cfg, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @mipitx_dsi_cfg, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @mipi_hs_freq_range, ptr @.str.56, ptr @.str.57, ptr @vco_table, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @switch.table.kmb_dsi_mode_set], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_host to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_bridge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_tx_init_cfg.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_tx_init_cfg.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_tx_frame0_sect_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipitx_frame0_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_encoder_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_encoder_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_map_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_map_mmio._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipitx_dsi_cfg to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_hs_freq_range to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vco_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_enable._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_enable._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmb_dsi_clk_enable._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kmb_dsi_mode_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmb_dsi_host_unregister(ptr nocapture noundef readonly %kmb_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_mipi.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 7
  %0 = ptrtoint ptr %clk_mipi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_mipi.i, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %clk_mipi_ecfg.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 8
  %2 = ptrtoint ptr %clk_mipi_ecfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_mipi_ecfg.i, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %clk_mipi_cfg.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 9
  %4 = ptrtoint ptr %clk_mipi_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_mipi_cfg.i, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %host = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 3
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  tail call void @mipi_dsi_host_unregister(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmb_dsi_host_bridge_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dsi_host, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #10
  store ptr %call7.i.i, ptr @dsi_host, align 4
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ops = getelementptr inbounds %struct.mipi_dsi_host, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_dsi_host_ops, ptr %ops, align 4
  %3 = load ptr, ptr @dsi_device, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 984) #10
  store ptr %call7.i.i32, ptr @dsi_device, align 4
  %tobool6.not = icmp eq ptr %call7.i.i32, null
  br i1 %tobool6.not, label %if.then7, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load ptr, ptr @dsi_host, align 4
  tail call void @kfree(ptr noundef %5) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %6 = load ptr, ptr @dsi_host, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %6, align 4
  %call11 = tail call i32 @mipi_dsi_host_register(ptr noundef %6) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %entry.if.end12_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call13 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %9, i32 noundef 0, i32 noundef 1) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call13) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %call13) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call17) #7
  store ptr %call21, ptr @adv_bridge, align 4
  tail call void @of_node_put(ptr noundef nonnull %call13) #7
  tail call void @of_node_put(ptr noundef nonnull %call17) #7
  %10 = load ptr, ptr @adv_bridge, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %if.then19, %if.then15, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %if.then23 ], [ -22, %if.then19 ], [ -22, %if.then15 ], [ -12, %if.then7 ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmb_dsi_mode_set(ptr noundef %kmb_dsi, ptr noundef %mode, i32 noundef %sys_clk_mhz, ptr noundef %old_state) local_unnamed_addr #0 align 64 {
entry:
  %fg_t_cfg.i.i = alloca %struct.mipi_tx_frame_timing_cfg, align 4
  %ph_cfg.i.i = alloca %struct.mipi_tx_frame_sect_phcfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_clk_mhz1 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 10
  %0 = ptrtoint ptr %sys_clk_mhz1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sys_clk_mhz, ptr %sys_clk_mhz1, align 4
  store i1 false, ptr @mipi_tx_init_cfg.0, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %1 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %crtc_hdisplay, align 4
  store i16 %2, ptr getelementptr inbounds (%struct.mipi_tx_frame_section_cfg, ptr @mipi_tx_frame0_sect_cfg, i32 0, i32 2), align 2
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %3 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %crtc_vdisplay, align 2
  store i16 %4, ptr getelementptr inbounds (%struct.mipi_tx_frame_section_cfg, ptr @mipi_tx_frame0_sect_cfg, i32 0, i32 3), align 4
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %5 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %crtc_vsync_end, align 2
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %7 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %crtc_vsync_start, align 4
  %sub = sub i16 %6, %8
  store i16 %sub, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 4), align 4
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %9 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_vtotal, align 4
  %sub7 = sub i16 %10, %6
  store i16 %sub7, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 5), align 2
  %sub13 = sub i16 %8, %4
  store i16 %sub13, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 6), align 4
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %11 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_hsync_end, align 4
  %conv15 = zext i16 %12 to i32
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %13 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_hsync_start, align 2
  %conv16 = zext i16 %14 to i32
  %sub17 = sub nsw i32 %conv15, %conv16
  store i32 %sub17, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 1), align 4
  %crtc_htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %15 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_htotal, align 2
  %conv18 = zext i16 %16 to i32
  %sub21 = sub nsw i32 %conv18, %conv15
  store i32 %sub21, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 2), align 4
  %17 = load i16, ptr %crtc_hdisplay, align 4
  %conv25 = zext i16 %17 to i32
  %sub26 = sub nsw i32 %conv16, %conv25
  store i32 %sub26, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 3), align 4
  %conv28 = zext i16 %10 to i32
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #7
  %mul = mul nuw nsw i32 %conv28, 24
  %mul31 = mul i32 %mul, %conv18
  %mul32 = mul i32 %mul31, %call
  %.b85 = load i1, ptr @mipi_tx_init_cfg.0, align 4
  %18 = select i1 %.b85, i32 1, i32 2
  %div86 = lshr i32 %mul32, %18
  %div34 = udiv i32 %div86, 1000000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmb_dsi_mode_set.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmb_dsi_mode_set, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %.b84 = load i1, ptr @mipi_tx_init_cfg.0, align 4
  %conv40 = select i1 %.b84, i32 2, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kmb_dsi_mode_set.__UNIQUE_ID_ddebug320, ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef %div34, i32 noundef %conv40) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000000, i32 %div86)
  %cmp = icmp ult i32 %div86, 800000000
  br i1 %cmp, label %if.then42, label %do.end.if.end46_crit_edge

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then42:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mipi_tx_init_cfg.0, align 4
  %21 = shl nuw nsw i32 %div34, 1
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %do.end.if.end46_crit_edge
  %storemerge = phi i32 [ %21, %if.then42 ], [ %div34, %do.end.if.end46_crit_edge ]
  store i32 %storemerge, ptr @mipi_tx_init_cfg.1, align 4
  %22 = getelementptr inbounds i8, ptr %ph_cfg.i.i, i32 12
  %data_mode16.i.i = getelementptr inbounds %struct.mipi_tx_frame_sect_phcfg, ptr %ph_cfg.i.i, i32 0, i32 1
  %data_type19.i.i = getelementptr inbounds %struct.mipi_tx_frame_sect_phcfg, ptr %ph_cfg.i.i, i32 0, i32 2
  %dma_packed20.i.i = getelementptr inbounds %struct.mipi_tx_frame_sect_phcfg, ptr %ph_cfg.i.i, i32 0, i32 4
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %if.end46
  %indvars.iv.i = phi i32 [ 0, %if.end46 ], [ %indvars.iv.next.i, %for.inc.i.for.body6.i_crit_edge ]
  %word_count.040.i = phi i32 [ 0, %if.end46 ], [ %word_count.2.i, %for.inc.i.for.body6.i_crit_edge ]
  %bits_per_pclk.039.i = phi i32 [ 0, %if.end46 ], [ %bits_per_pclk.2.i, %for.inc.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr [4 x ptr], ptr @mipitx_frame0_cfg, i32 0, i32 %indvars.iv.i
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %24, null
  br i1 %tobool9.not.i, label %for.body6.i.for.inc.i_crit_edge, label %if.end11.i

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body6.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ph_cfg.i.i) #7
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %22, align 4
  %data_type.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %24, i32 0, i32 8
  %26 = ptrtoint ptr %data_type.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data_type.i.i, align 2
  %data_mode.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %24, i32 0, i32 9
  %28 = ptrtoint ptr %data_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data_mode.i.i, align 1
  %conv1.i.i = zext i8 %29 to i32
  %30 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %if.end11.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge [
    i8 61, label %sw.bb.i.i.i
    i8 44, label %sw.bb2.i.i.i
    i8 12, label %if.end11.i.sw.bb13.i.i.i_crit_edge
    i8 28, label %if.end11.i.sw.bb13.i.i.i_crit_edge87
    i8 14, label %sw.bb21.i.i.i
    i8 30, label %if.end11.i.if.end.i.i_crit_edge
    i8 46, label %if.end11.i.sw.bb37.i.i.i_crit_edge
    i8 62, label %if.end11.i.sw.bb37.i.i.i_crit_edge88
    i8 13, label %sw.bb42.i.i.i
  ]

if.end11.i.sw.bb37.i.i.i_crit_edge88:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37.i.i.i

if.end11.i.sw.bb37.i.i.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37.i.i.i

if.end11.i.if.end.i.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end11.i.sw.bb13.i.i.i_crit_edge87:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i.i

if.end11.i.sw.bb13.i.i.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i.i

if.end11.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_tx_fg_section_cfg.exit.thread.sink.split.i

sw.bb.i.i.i:                                      ; preds = %if.end11.i
  %data_mode.off.i.i.i = add nsw i32 %conv1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %data_mode.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %data_mode.off.i.i.i, 3
  br i1 %switch.i.i.i, label %sw.bb.i.i.i.if.end.i.i_crit_edge, label %sw.bb.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge

sw.bb.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_tx_fg_section_cfg.exit.thread.sink.split.i

sw.bb.i.i.i.if.end.i.i_crit_edge:                 ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end11.i
  %31 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %29, label %sw.bb2.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge [
    i8 2, label %sw.bb2.i.i.i.if.end.i.i_crit_edge
    i8 3, label %sw.bb8.i.i.i
  ]

sw.bb2.i.i.i.if.end.i.i_crit_edge:                ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

sw.bb2.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge: ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_tx_fg_section_cfg.exit.thread.sink.split.i

sw.bb8.i.i.i:                                     ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

sw.bb13.i.i.i:                                    ; preds = %if.end11.i.sw.bb13.i.i.i_crit_edge, %if.end11.i.sw.bb13.i.i.i_crit_edge87
  %data_mode.off57.i.i.i = add nsw i32 %conv1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %data_mode.off57.i.i.i)
  %switch58.i.i.i = icmp ult i32 %data_mode.off57.i.i.i, 3
  br i1 %switch58.i.i.i, label %sw.bb13.i.i.i.if.end.i.i_crit_edge, label %sw.bb13.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge

sw.bb13.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge: ; preds = %sw.bb13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_tx_fg_section_cfg.exit.thread.sink.split.i

sw.bb13.i.i.i.if.end.i.i_crit_edge:               ; preds = %sw.bb13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

sw.bb21.i.i.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %32 = icmp ult i8 %29, 4
  br i1 %32, label %switch.lookup, label %sw.bb21.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge

sw.bb21.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge: ; preds = %sw.bb21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_tx_fg_section_cfg.exit.thread.sink.split.i

sw.bb37.i.i.i:                                    ; preds = %if.end11.i.sw.bb37.i.i.i_crit_edge, %if.end11.i.sw.bb37.i.i.i_crit_edge88
  br label %if.end.i.i

sw.bb42.i.i.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

switch.lookup:                                    ; preds = %sw.bb21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = sext i8 %29 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.kmb_dsi_mode_set, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %switch.lookup, %sw.bb42.i.i.i, %sw.bb37.i.i.i, %sw.bb13.i.i.i.if.end.i.i_crit_edge, %sw.bb8.i.i.i, %sw.bb2.i.i.i.if.end.i.i_crit_edge, %sw.bb.i.i.i.if.end.i.i_crit_edge, %if.end11.i.if.end.i.i_crit_edge
  %data_type_parameters.sroa.10.0.ph.i.i = phi i32 [ 18, %if.end11.i.if.end.i.i_crit_edge ], [ 24, %sw.bb13.i.i.i.if.end.i.i_crit_edge ], [ 16, %sw.bb2.i.i.i.if.end.i.i_crit_edge ], [ 24, %sw.bb.i.i.i.if.end.i.i_crit_edge ], [ 32, %sw.bb8.i.i.i ], [ 24, %sw.bb37.i.i.i ], [ 30, %sw.bb42.i.i.i ], [ %switch.load, %switch.lookup ]
  %data_type_parameters.sroa.5.0.ph.i.i = phi i32 [ 9, %if.end11.i.if.end.i.i_crit_edge ], [ 6, %sw.bb13.i.i.i.if.end.i.i_crit_edge ], [ 4, %sw.bb2.i.i.i.if.end.i.i_crit_edge ], [ 3, %sw.bb.i.i.i.if.end.i.i_crit_edge ], [ 4, %sw.bb8.i.i.i ], [ 3, %sw.bb37.i.i.i ], [ 15, %sw.bb42.i.i.i ], [ 2, %switch.lookup ]
  %data_type_parameters.sroa.0.0.ph.i.i = phi i16 [ 4, %if.end11.i.if.end.i.i_crit_edge ], [ 2, %sw.bb13.i.i.i.if.end.i.i_crit_edge ], [ 2, %sw.bb2.i.i.i.if.end.i.i_crit_edge ], [ 2, %sw.bb.i.i.i.if.end.i.i_crit_edge ], [ 2, %sw.bb8.i.i.i ], [ 1, %sw.bb37.i.i.i ], [ 4, %sw.bb42.i.i.i ], [ 1, %switch.lookup ]
  %width_pixels.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %24, i32 0, i32 2
  %35 = ptrtoint ptr %width_pixels.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %width_pixels.i.i, align 2
  %.frozen = freeze i16 %36
  %div.i52.i.i = udiv i16 %.frozen, %data_type_parameters.sroa.0.0.ph.i.i
  %37 = mul i16 %div.i52.i.i, %data_type_parameters.sroa.0.0.ph.i.i
  %rem51.i.i.decomposed = sub i16 %.frozen, %37
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem51.i.i.decomposed)
  %cmp.not.i.i = icmp eq i16 %rem51.i.i.decomposed, 0
  br i1 %cmp.not.i.i, label %mipi_tx_fg_section_cfg.exit.i, label %if.end.i.i.mipi_tx_fg_section_cfg.exit.thread.i_crit_edge

if.end.i.i.mipi_tx_fg_section_cfg.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_tx_fg_section_cfg.exit.thread.i

mipi_tx_fg_section_cfg.exit.thread.sink.split.i:  ; preds = %sw.bb21.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge, %sw.bb13.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge, %sw.bb2.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge, %sw.bb.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge, %if.end11.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge
  %.lcssa82.sink = phi i8 [ %27, %if.end11.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ %29, %sw.bb.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ %29, %sw.bb2.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ %29, %sw.bb13.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ %29, %sw.bb21.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ]
  %.str.47.sink.i = phi ptr [ @.str.47, %if.end11.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ @.str.46, %sw.bb.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ @.str.46, %sw.bb2.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ @.str.46, %sw.bb13.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ], [ @.str.46, %sw.bb21.i.i.i.mipi_tx_fg_section_cfg.exit.thread.sink.split.i_crit_edge ]
  %conv1.i.i.le = zext i8 %.lcssa82.sink to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.47.sink.i, i32 noundef %conv1.i.i.le) #7
  br label %mipi_tx_fg_section_cfg.exit.thread.i

mipi_tx_fg_section_cfg.exit.thread.i:             ; preds = %mipi_tx_fg_section_cfg.exit.thread.sink.split.i, %if.end.i.i.mipi_tx_fg_section_cfg.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ph_cfg.i.i) #7
  br label %mipi_tx_init_cntrl.exit

mipi_tx_fg_section_cfg.exit.i:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i.zext.i.i = zext i16 %div.i52.i.i to i32
  %mul.i.i.i = mul nuw nsw i32 %data_type_parameters.sroa.5.0.ph.i.i, %div.i.zext.i.i
  %and.i.i.i = and i32 %mul.i.i.i, 65535
  %mul.i39.i.i = shl nuw nsw i32 %and.i.i.i, 3
  %div.i41.i.i = udiv i32 %mul.i39.i.i, %data_type_parameters.sroa.10.0.ph.i.i
  %mul1.i.i.i = shl nuw nsw i32 %div.i41.i.i, 2
  %38 = ptrtoint ptr %ph_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i.i.i, ptr %ph_cfg.i.i, align 4
  %39 = ptrtoint ptr %data_mode16.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv1.i.i, ptr %data_mode16.i.i, align 4
  %conv18.i.i = zext i8 %27 to i32
  %40 = ptrtoint ptr %data_type19.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv18.i.i, ptr %data_type19.i.i, align 4
  %dma_packed.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %24, i32 0, i32 4
  %41 = ptrtoint ptr %dma_packed.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dma_packed.i.i, align 2
  %43 = ptrtoint ptr %dma_packed20.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %dma_packed20.i.i, align 1
  %44 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %22, align 4
  %height_lines.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %24, i32 0, i32 3
  %45 = ptrtoint ptr %height_lines.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %height_lines.i.i, align 4
  %conv21.i.i = zext i16 %46 to i32
  %47 = trunc i32 %indvars.iv.i to i8
  call fastcc void @mipi_tx_fg_section_cfg_regs(ptr noundef %kmb_dsi, i8 noundef zeroext 0, i8 noundef zeroext %47, i32 noundef %conv21.i.i, i32 noundef %mul1.i.i.i, ptr noundef nonnull %ph_cfg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ph_cfg.i.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %mipi_tx_fg_section_cfg.exit.i, %for.body6.i.for.inc.i_crit_edge
  %bits_per_pclk.2.i = phi i32 [ %bits_per_pclk.039.i, %for.body6.i.for.inc.i_crit_edge ], [ %data_type_parameters.sroa.10.0.ph.i.i, %mipi_tx_fg_section_cfg.exit.i ]
  %word_count.2.i = phi i32 [ %word_count.040.i, %for.body6.i.for.inc.i_crit_edge ], [ %and.i.i.i, %mipi_tx_fg_section_cfg.exit.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

for.end.i:                                        ; preds = %for.inc.i
  %.b83 = load i1, ptr @mipi_tx_init_cfg.0, align 4
  %48 = select i1 %.b83, i8 2, i8 4
  %49 = load i32, ptr @mipi_tx_init_cfg.1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fg_t_cfg.i.i) #7
  %50 = getelementptr inbounds i8, ptr %fg_t_cfg.i.i, i32 32
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !185
  %52 = load ptr, ptr @mipitx_frame0_cfg, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %for.end.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.end.i.for.inc.i.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %height_lines.i1.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %height_lines.i1.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %height_lines.i1.i, align 4
  %conv.i2.i = zext i16 %54 to i32
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.end.i.for.inc.i.i_crit_edge
  %fg_num_lines.1.i.i = phi i32 [ %conv.i2.i, %if.then.i.i ], [ 0, %for.end.i.for.inc.i.i_crit_edge ]
  %55 = load ptr, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 0, i32 1), align 4
  %tobool.not.1.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %height_lines.1.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %height_lines.1.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %height_lines.1.i.i, align 4
  %conv.1.i.i = zext i16 %57 to i32
  %add.1.i.i = add nuw nsw i32 %fg_num_lines.1.i.i, %conv.1.i.i
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %fg_num_lines.1.1.i.i = phi i32 [ %add.1.i.i, %if.then.1.i.i ], [ %fg_num_lines.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %58 = load ptr, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 0, i32 2), align 4
  %tobool.not.2.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %height_lines.2.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %height_lines.2.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %height_lines.2.i.i, align 4
  %conv.2.i.i = zext i16 %60 to i32
  %add.2.i.i = add nuw nsw i32 %fg_num_lines.1.1.i.i, %conv.2.i.i
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %fg_num_lines.1.2.i.i = phi i32 [ %add.2.i.i, %if.then.2.i.i ], [ %fg_num_lines.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %61 = load ptr, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 0, i32 3), align 4
  %tobool.not.3.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.if.end26.i_crit_edge, label %if.then.3.i.i

for.inc.2.i.i.if.end26.i_crit_edge:               ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %height_lines.3.i.i = getelementptr inbounds %struct.mipi_tx_frame_section_cfg, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %height_lines.3.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %height_lines.3.i.i, align 4
  %conv.3.i.i = zext i16 %63 to i32
  %add.3.i.i = add nuw nsw i32 %fg_num_lines.1.2.i.i, %conv.3.i.i
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then.3.i.i, %for.inc.2.i.i.if.end26.i_crit_edge
  %fg_num_lines.1.3.i.i = phi i32 [ %add.3.i.i, %if.then.3.i.i ], [ %fg_num_lines.1.2.i.i, %for.inc.2.i.i.if.end26.i_crit_edge ]
  %64 = ptrtoint ptr %fg_t_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %bits_per_pclk.2.i, ptr %fg_t_cfg.i.i, align 4
  %lane_rate_mbps4.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %lane_rate_mbps4.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %49, ptr %lane_rate_mbps4.i.i, align 4
  %66 = load i32, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 1), align 4
  %hsync_width5.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %hsync_width5.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %hsync_width5.i.i, align 4
  %68 = load i32, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 2), align 4
  %h_backporch6.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %h_backporch6.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %h_backporch6.i.i, align 4
  %70 = load i32, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 3), align 4
  %h_frontporch7.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %h_frontporch7.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %h_frontporch7.i.i, align 4
  %h_active.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %h_active.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %word_count.2.i, ptr %h_active.i.i, align 4
  %73 = load i16, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 4), align 4
  %vsync_width8.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %vsync_width8.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %vsync_width8.i.i, align 4
  %75 = load i16, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 5), align 2
  %v_backporch9.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %v_backporch9.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %v_backporch9.i.i, align 2
  %77 = load i16, ptr getelementptr inbounds (%struct.mipi_tx_frame_cfg, ptr @mipitx_frame0_cfg, i32 0, i32 6), align 4
  %v_frontporch10.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 8
  %78 = ptrtoint ptr %v_frontporch10.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %v_frontporch10.i.i, align 4
  %conv11.i.i = trunc i32 %fg_num_lines.1.3.i.i to i16
  %v_active.i.i = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_t_cfg.i.i, i32 0, i32 9
  %79 = ptrtoint ptr %v_active.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv11.i.i, ptr %v_active.i.i, align 2
  %80 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %48, ptr %50, align 4
  call fastcc void @mipi_tx_fg_cfg_regs(ptr noundef %kmb_dsi, i8 noundef zeroext 0, ptr noundef nonnull %fg_t_cfg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fg_t_cfg.i.i) #7
  %.b = load i1, ptr @mipi_tx_init_cfg.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %mipi_mmio.i.i.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %81 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %82, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %83 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i39.i.i = getelementptr i8, ptr %84, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 0) #7, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i41.i.i = getelementptr i8, ptr %86, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i.i, i32 0) #7, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %87 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i43.i.i = getelementptr i8, ptr %88, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i.i, i32 0) #7, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %89 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i45.i.i = getelementptr i8, ptr %90, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 0) #7, !srcloc !187
  %sub.i.i = select i1 %.b, i32 254, i32 510
  %91 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %92, i32 7576
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %94 = and i32 %93, 65535
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %or.i.i.i = or i32 %95, %sub.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %97 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i13.i.i.i = getelementptr i8, ptr %98, i32 7576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i.i, i32 %96) #7, !srcloc !187
  %mul8.i.i = shl nuw nsw i32 %sub.i.i, 3
  %99 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i.i47.i.i = getelementptr i8, ptr %100, i32 7584
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %102 = and i32 %101, 65535
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %or.i52.i.i = or i32 %103, %mul8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i52.i.i) #7
  %105 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i13.i53.i.i = getelementptr i8, ptr %106, i32 7584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i53.i.i, i32 %104) #7, !srcloc !187
  %107 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i.i55.i.i = getelementptr i8, ptr %108, i32 7572
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55.i.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %110 = or i32 %109, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %mipi_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mipi_mmio.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %112, i32 7572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %110) #7, !srcloc !187
  tail call fastcc void @mipi_tx_ctrl_cfg(ptr noundef %kmb_dsi, i8 noundef zeroext 0) #7
  br label %mipi_tx_init_cntrl.exit

mipi_tx_init_cntrl.exit:                          ; preds = %if.end26.i, %mipi_tx_fg_section_cfg.exit.thread.i
  tail call fastcc void @mipi_tx_init_dphy(ptr noundef %kmb_dsi)
  tail call fastcc void @connect_lcd_to_mipi(ptr noundef %kmb_dsi, ptr noundef %old_state)
  %dev52 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %113 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev52, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.7) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mipi_tx_init_dphy(ptr noundef %kmb_dsi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @mipi_tx_init_cfg.0, align 4
  %conv = select i1 %.b, i32 2, i32 4
  br i1 %.b, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -2
  tail call fastcc void @dphy_init_sequence(ptr noundef %kmb_dsi, i32 noundef 7, i32 noundef %sub, i32 noundef 0)
  tail call fastcc void @dphy_wait_fsm(ptr noundef %kmb_dsi, i32 noundef 7, i32 noundef 5)
  tail call fastcc void @dphy_init_sequence(ptr noundef %kmb_dsi, i32 noundef 6, i32 noundef 2, i32 noundef 1)
  %mipi_mmio.i.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond11.i.do.body.i_crit_edge, %if.then
  %i.0.i = phi i32 [ 0, %if.then ], [ %inc.i, %do.cond11.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 312
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %i.0.i)
  %exitcond.i = icmp eq i32 %i.0.i, 600
  br i1 %exitcond.i, label %if.then.i, label %do.cond11.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_init_done.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then8.i)) #7
          to label %do.body14.i [label %if.then8.i], !srcloc !184

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %6, i32 332
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #7, !srcloc !188
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_init_done.__UNIQUE_ID_ddebug315, ptr noundef %4, ptr noundef nonnull @.str.65, i32 noundef %8) #7
  br label %do.body14.i

do.cond11.i:                                      ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %9 = and i32 %2, 12288
  %cmp12.not.i = icmp eq i32 %9, 12288
  br i1 %cmp12.not.i, label %do.cond11.i.do.body14.i_crit_edge, label %do.cond11.i.do.body.i_crit_edge

do.cond11.i.do.body.i_crit_edge:                  ; preds = %do.cond11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.cond11.i.do.body14.i_crit_edge:                ; preds = %do.cond11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.cond11.i.do.body14.i_crit_edge, %if.then8.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_init_done.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then26.i)) #7
          to label %wait_init_done.exit [label %if.then26.i], !srcloc !184

if.then26.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %i.0.i)
  %cmp52.i = icmp ugt i32 %i.0.i, 599
  %dev27.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %10 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev27.i, align 4
  %cond.i = select i1 %cmp52.i, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_init_done.__UNIQUE_ID_ddebug316, ptr noundef %11, ptr noundef nonnull @.str.66, i32 noundef 6, ptr noundef nonnull %cond.i) #7
  br label %wait_init_done.exit

wait_init_done.exit:                              ; preds = %if.then26.i, %do.body14.i
  %.b130 = load i1, ptr @mipi_tx_init_cfg.0, align 4
  %sub.i = select i1 %.b130, i32 0, i32 3
  br label %do.body.i5

do.body.i5:                                       ; preds = %do.cond11.i14.do.body.i5_crit_edge, %wait_init_done.exit
  %i.0.i2 = phi i32 [ 0, %wait_init_done.exit ], [ %inc.i10, %do.cond11.i14.do.body.i5_crit_edge ]
  %12 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %13, i32 312
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %i.0.i2)
  %exitcond.i4 = icmp eq i32 %i.0.i2, 600
  br i1 %exitcond.i4, label %if.then.i6, label %do.cond11.i14

if.then.i6:                                       ; preds = %do.body.i5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_init_done.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then8.i9)) #7
          to label %do.body14.i16 [label %if.then8.i9], !srcloc !184

if.then8.i9:                                      ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i7 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i7, align 4
  %17 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i43.i8 = getelementptr i8, ptr %18, i32 332
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i8) #7, !srcloc !188
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_init_done.__UNIQUE_ID_ddebug315, ptr noundef %16, ptr noundef nonnull @.str.65, i32 noundef %20) #7
  br label %do.body14.i16

do.cond11.i14:                                    ; preds = %do.body.i5
  %inc.i10 = add nuw nsw i32 %i.0.i2, 1
  %21 = lshr i32 %14, 4
  %and3.i12 = and i32 %sub.i, %21
  %cmp12.not.i13 = icmp eq i32 %and3.i12, %sub.i
  br i1 %cmp12.not.i13, label %do.cond11.i14.do.body14.i16_crit_edge, label %do.cond11.i14.do.body.i5_crit_edge

do.cond11.i14.do.body.i5_crit_edge:               ; preds = %do.cond11.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i5

do.cond11.i14.do.body14.i16_crit_edge:            ; preds = %do.cond11.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14.i16

do.body14.i16:                                    ; preds = %do.cond11.i14.do.body14.i16_crit_edge, %if.then8.i9, %if.then.i6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_init_done.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then26.i20)) #7
          to label %do.body.i25 [label %if.then26.i20], !srcloc !184

if.then26.i20:                                    ; preds = %do.body14.i16
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %i.0.i2)
  %cmp52.i17 = icmp ugt i32 %i.0.i2, 599
  %dev27.i18 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %22 = ptrtoint ptr %dev27.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27.i18, align 4
  %cond.i19 = select i1 %cmp52.i17, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_init_done.__UNIQUE_ID_ddebug316, ptr noundef %23, ptr noundef nonnull @.str.66, i32 noundef 7, ptr noundef nonnull %cond.i19) #7
  br label %do.body.i25

do.body.i25:                                      ; preds = %do.cond6.i.do.body.i25_crit_edge, %if.then26.i20, %do.body14.i16
  %i.0.i23 = phi i32 [ %inc.i28, %do.cond6.i.do.body.i25_crit_edge ], [ 0, %do.body14.i16 ], [ 0, %if.then26.i20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %i.0.i23)
  %exitcond.i24 = icmp eq i32 %i.0.i23, 600
  br i1 %exitcond.i24, label %if.then.i26, label %do.cond6.i

if.then.i26:                                      ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_pll_lock.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then4.i)) #7
          to label %do.body12.i [label %if.then4.i], !srcloc !184

if.then4.i:                                       ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i27 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_pll_lock.__UNIQUE_ID_ddebug317, ptr noundef %25, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #7
  br label %do.body12.i

do.cond6.i:                                       ; preds = %do.body.i25
  %inc.i28 = add nuw nsw i32 %i.0.i23, 1
  %26 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %27, i32 392
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %29 = and i32 %28, 16777216
  %tobool8.not.i = icmp eq i32 %29, 0
  br i1 %tobool8.not.i, label %do.cond6.i.do.body.i25_crit_edge, label %do.cond6.i.do.body12.i_crit_edge

do.cond6.i.do.body12.i_crit_edge:                 ; preds = %do.cond6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

do.cond6.i.do.body.i25_crit_edge:                 ; preds = %do.cond6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i25

do.body12.i:                                      ; preds = %do.cond6.i.do.body12.i_crit_edge, %if.then4.i, %if.then.i26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_pll_lock.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then24.i)) #7
          to label %do.body.i35 [label %if.then24.i], !srcloc !184

if.then24.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %i.0.i23)
  %cmp44.i = icmp ugt i32 %i.0.i23, 599
  %dev25.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %30 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev25.i, align 4
  %cond.i31 = select i1 %cmp44.i, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_pll_lock.__UNIQUE_ID_ddebug318, ptr noundef %31, ptr noundef nonnull @.str.69, i32 noundef 6, ptr noundef nonnull %cond.i31) #7
  br label %do.body.i35

do.body.i35:                                      ; preds = %do.cond6.i43.do.body.i35_crit_edge, %if.then24.i, %do.body12.i
  %i.0.i33 = phi i32 [ %inc.i39, %do.cond6.i43.do.body.i35_crit_edge ], [ 0, %do.body12.i ], [ 0, %if.then24.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %i.0.i33)
  %exitcond.i34 = icmp eq i32 %i.0.i33, 600
  br i1 %exitcond.i34, label %if.then.i36, label %do.cond6.i43

if.then.i36:                                      ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_pll_lock.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then4.i38)) #7
          to label %do.body12.i45 [label %if.then4.i38], !srcloc !184

if.then4.i38:                                     ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i37 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_pll_lock.__UNIQUE_ID_ddebug317, ptr noundef %33, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #7
  br label %do.body12.i45

do.cond6.i43:                                     ; preds = %do.body.i35
  %inc.i39 = add nuw nsw i32 %i.0.i33, 1
  %34 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %35, i32 392
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %37 = and i32 %36, 33554432
  %tobool8.not.i42 = icmp eq i32 %37, 0
  br i1 %tobool8.not.i42, label %do.cond6.i43.do.body.i35_crit_edge, label %do.cond6.i43.do.body12.i45_crit_edge

do.cond6.i43.do.body12.i45_crit_edge:             ; preds = %do.cond6.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i45

do.cond6.i43.do.body.i35_crit_edge:               ; preds = %do.cond6.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i35

do.body12.i45:                                    ; preds = %do.cond6.i43.do.body12.i45_crit_edge, %if.then4.i38, %if.then.i36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_pll_lock.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then24.i49)) #7
          to label %wait_pll_lock.exit50 [label %if.then24.i49], !srcloc !184

if.then24.i49:                                    ; preds = %do.body12.i45
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %i.0.i33)
  %cmp44.i46 = icmp ugt i32 %i.0.i33, 599
  %dev25.i47 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %38 = ptrtoint ptr %dev25.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev25.i47, align 4
  %cond.i48 = select i1 %cmp44.i46, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_pll_lock.__UNIQUE_ID_ddebug318, ptr noundef %39, ptr noundef nonnull @.str.69, i32 noundef 7, ptr noundef nonnull %cond.i48) #7
  br label %wait_pll_lock.exit50

wait_pll_lock.exit50:                             ; preds = %if.then24.i49, %do.body12.i45
  tail call fastcc void @dphy_wait_fsm(ptr noundef %kmb_dsi, i32 noundef 6, i32 noundef 7)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call fastcc void @dphy_init_sequence(ptr noundef %kmb_dsi, i32 noundef 6, i32 noundef %conv, i32 noundef 1)
  tail call fastcc void @dphy_wait_fsm(ptr noundef %kmb_dsi, i32 noundef 6, i32 noundef 7)
  %.b131 = load i1, ptr @mipi_tx_init_cfg.0, align 4
  %sub.i52 = select i1 %.b131, i32 3, i32 15
  %mipi_mmio.i.i53 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  br label %do.body.i58

do.body.i58:                                      ; preds = %do.cond11.i67.do.body.i58_crit_edge, %if.else
  %i.0.i55 = phi i32 [ 0, %if.else ], [ %inc.i63, %do.cond11.i67.do.body.i58_crit_edge ]
  %40 = ptrtoint ptr %mipi_mmio.i.i53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mipi_mmio.i.i53, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %41, i32 312
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %i.0.i55)
  %exitcond.i57 = icmp eq i32 %i.0.i55, 600
  br i1 %exitcond.i57, label %if.then.i59, label %do.cond11.i67

if.then.i59:                                      ; preds = %do.body.i58
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_init_done.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then8.i62)) #7
          to label %do.body14.i69 [label %if.then8.i62], !srcloc !184

if.then8.i62:                                     ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i60 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %43 = ptrtoint ptr %dev.i60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i60, align 4
  %45 = ptrtoint ptr %mipi_mmio.i.i53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mipi_mmio.i.i53, align 4
  %add.ptr.i43.i61 = getelementptr i8, ptr %46, i32 332
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i61) #7, !srcloc !188
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_init_done.__UNIQUE_ID_ddebug315, ptr noundef %44, ptr noundef nonnull @.str.65, i32 noundef %48) #7
  br label %do.body14.i69

do.cond11.i67:                                    ; preds = %do.body.i58
  %inc.i63 = add nuw nsw i32 %i.0.i55, 1
  %49 = lshr i32 %42, 12
  %and3.i65 = and i32 %49, 3
  %cmp12.not.i66 = icmp eq i32 %and3.i65, %sub.i52
  br i1 %cmp12.not.i66, label %do.cond11.i67.do.body14.i69_crit_edge, label %do.cond11.i67.do.body.i58_crit_edge

do.cond11.i67.do.body.i58_crit_edge:              ; preds = %do.cond11.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i58

do.cond11.i67.do.body14.i69_crit_edge:            ; preds = %do.cond11.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14.i69

do.body14.i69:                                    ; preds = %do.cond11.i67.do.body14.i69_crit_edge, %if.then8.i62, %if.then.i59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_init_done.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then26.i73)) #7
          to label %do.body.i78 [label %if.then26.i73], !srcloc !184

if.then26.i73:                                    ; preds = %do.body14.i69
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %i.0.i55)
  %cmp52.i70 = icmp ugt i32 %i.0.i55, 599
  %dev27.i71 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %50 = ptrtoint ptr %dev27.i71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev27.i71, align 4
  %cond.i72 = select i1 %cmp52.i70, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_init_done.__UNIQUE_ID_ddebug316, ptr noundef %51, ptr noundef nonnull @.str.66, i32 noundef 6, ptr noundef nonnull %cond.i72) #7
  br label %do.body.i78

do.body.i78:                                      ; preds = %do.cond6.i86.do.body.i78_crit_edge, %if.then26.i73, %do.body14.i69
  %i.0.i76 = phi i32 [ %inc.i82, %do.cond6.i86.do.body.i78_crit_edge ], [ 0, %do.body14.i69 ], [ 0, %if.then26.i73 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %i.0.i76)
  %exitcond.i77 = icmp eq i32 %i.0.i76, 600
  br i1 %exitcond.i77, label %if.then.i79, label %do.cond6.i86

if.then.i79:                                      ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_pll_lock.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then4.i81)) #7
          to label %do.body12.i88 [label %if.then4.i81], !srcloc !184

if.then4.i81:                                     ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i80 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_pll_lock.__UNIQUE_ID_ddebug317, ptr noundef %53, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #7
  br label %do.body12.i88

do.cond6.i86:                                     ; preds = %do.body.i78
  %inc.i82 = add nuw nsw i32 %i.0.i76, 1
  %54 = ptrtoint ptr %mipi_mmio.i.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mipi_mmio.i.i53, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %55, i32 392
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i83) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %57 = and i32 %56, 16777216
  %tobool8.not.i85 = icmp eq i32 %57, 0
  br i1 %tobool8.not.i85, label %do.cond6.i86.do.body.i78_crit_edge, label %do.cond6.i86.do.body12.i88_crit_edge

do.cond6.i86.do.body12.i88_crit_edge:             ; preds = %do.cond6.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i88

do.cond6.i86.do.body.i78_crit_edge:               ; preds = %do.cond6.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i78

do.body12.i88:                                    ; preds = %do.cond6.i86.do.body12.i88_crit_edge, %if.then4.i81, %if.then.i79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_pll_lock.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_init_dphy, %if.then24.i92)) #7
          to label %if.end [label %if.then24.i92], !srcloc !184

if.then24.i92:                                    ; preds = %do.body12.i88
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %i.0.i76)
  %cmp44.i89 = icmp ugt i32 %i.0.i76, 599
  %dev25.i90 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %58 = ptrtoint ptr %dev25.i90 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev25.i90, align 4
  %cond.i91 = select i1 %cmp44.i89, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_pll_lock.__UNIQUE_ID_ddebug318, ptr noundef %59, ptr noundef nonnull @.str.69, i32 noundef 6, ptr noundef nonnull %cond.i91) #7
  br label %if.end

if.end:                                           ; preds = %if.then24.i92, %do.body12.i88, %wait_pll_lock.exit50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @connect_lcd_to_mipi(ptr nocapture noundef readonly %kmb_dsi, ptr noundef %old_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.70) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @connect_lcd_to_mipi.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@connect_lcd_to_mipi, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !184

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @connect_lcd_to_mipi.__UNIQUE_ID_ddebug319, ptr noundef %1, ptr noundef nonnull @.str.72) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @adv_bridge, align 4
  tail call void @drm_atomic_bridge_chain_enable(ptr noundef %2, ptr noundef %old_state) #7
  %call7 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 0, i32 noundef 0) #7
  %call8 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 4, i32 noundef 1) #7
  %call9 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 12, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kmb_dsi_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @get_device(ptr noundef %dev1) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %call, i32 noundef 112, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @dsi_host, align 4
  %host = getelementptr inbounds %struct.kmb_dsi, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %host, align 4
  %ops = getelementptr inbounds %struct.mipi_dsi_host, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kmb_dsi_host_ops, ptr %ops, align 4
  %3 = load ptr, ptr @dsi_device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %3, align 8
  %device = getelementptr inbounds %struct.kmb_dsi, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %device, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ %call.i, %if.end ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmb_dsi_encoder_init(ptr noundef %dev, ptr noundef %kmb_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %kmb_dsi, i32 0, i32 6
  %0 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %possible_crtcs, align 4
  %possible_clones = getelementptr inbounds %struct.drm_encoder, ptr %kmb_dsi, i32 0, i32 7
  %1 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %possible_clones, align 4
  %call = tail call i32 @drm_simple_encoder_init(ptr noundef %dev, ptr noundef %kmb_dsi, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @adv_bridge, align 4
  %call2 = tail call i32 @drm_bridge_attach(ptr noundef %kmb_dsi, ptr noundef %4, ptr noundef null, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_encoder_cleanup(ptr noundef %kmb_dsi) #7
  br label %cleanup

do.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.16) #11
  %call10 = tail call ptr @drm_bridge_connector_init(ptr noundef %dev, ptr noundef %kmb_dsi) #7
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #7
  tail call void @drm_encoder_cleanup(ptr noundef %kmb_dsi) #7
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call10, ptr noundef %kmb_dsi) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.then4 ], [ %7, %if.then12 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmb_dsi_map_mmio(ptr nocapture noundef %kmb_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pdev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.19) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef nonnull %call) #7
  %mipi_mmio = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %4 = ptrtoint ptr %mipi_mmio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %mipi_mmio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #11
  %5 = ptrtoint ptr %mipi_mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mipi_mmio, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %do.end8 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kmb_dsi_clk_init(ptr nocapture noundef %kmb_dsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.25) #7
  %clk_mipi = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 7
  %2 = ptrtoint ptr %clk_mipi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %clk_mipi, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #11
  %3 = ptrtoint ptr %clk_mipi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_mipi, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.28) #7
  %clk_mipi_ecfg = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 8
  %6 = ptrtoint ptr %clk_mipi_ecfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %clk_mipi_ecfg, align 4
  %cmp.i108 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #11
  %7 = ptrtoint ptr %clk_mipi_ecfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_mipi_ecfg, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.32) #7
  %clk_mipi_cfg = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 9
  %10 = ptrtoint ptr %clk_mipi_cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %clk_mipi_cfg, align 4
  %cmp.i109 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34) #11
  %11 = ptrtoint ptr %clk_mipi_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_mipi_cfg, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %clk_mipi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_mipi, align 4
  %call27 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef 24000000) #7
  %16 = ptrtoint ptr %clk_mipi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_mipi, align 4
  %call29 = tail call i32 @clk_get_rate(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call29)
  %cmp.not = icmp eq i32 %call29, 24000000
  br i1 %cmp.not, label %do.body35, label %do.end33

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef 24000000) #11
  br label %cleanup

do.body35:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kmb_dsi_clk_init.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kmb_dsi_clk_init, %if.then39)) #7
          to label %do.end44 [label %if.then39], !srcloc !184

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %clk_mipi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_mipi, align 4
  %call41 = tail call i32 @clk_get_rate(ptr noundef %19) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kmb_dsi_clk_init.__UNIQUE_ID_ddebug321, ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %call41) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body35
  %20 = ptrtoint ptr %clk_mipi_ecfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_mipi_ecfg, align 4
  %call46 = tail call i32 @clk_get_rate(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 24000000
  br i1 %cmp47.not, label %do.end44.if.end59_crit_edge, label %if.then48

do.end44.if.end59_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then48:                                        ; preds = %do.end44
  %22 = ptrtoint ptr %clk_mipi_ecfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_mipi_ecfg, align 4
  %call50 = tail call i32 @clk_set_rate(ptr noundef %23, i32 noundef 24000000) #7
  %24 = ptrtoint ptr %clk_mipi_ecfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_mipi_ecfg, align 4
  %call52 = tail call i32 @clk_get_rate(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call52)
  %cmp53.not = icmp eq i32 %call52, 24000000
  br i1 %cmp53.not, label %if.then48.if.end59_crit_edge, label %do.end57

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end57:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef 24000000) #11
  br label %cleanup

if.end59:                                         ; preds = %if.then48.if.end59_crit_edge, %do.end44.if.end59_crit_edge
  %26 = ptrtoint ptr %clk_mipi_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_mipi_cfg, align 4
  %call61 = tail call i32 @clk_get_rate(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 24000000
  br i1 %cmp62.not, label %if.end59.if.end74_crit_edge, label %if.then63

if.end59.if.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then63:                                        ; preds = %if.end59
  %28 = ptrtoint ptr %clk_mipi_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_mipi_cfg, align 4
  %call65 = tail call i32 @clk_set_rate(ptr noundef %29, i32 noundef 24000000) #7
  %30 = ptrtoint ptr %clk_mipi_cfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_mipi_cfg, align 4
  %call67 = tail call i32 @clk_get_rate(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 24000000
  br i1 %cmp68.not, label %if.then63.if.end74_crit_edge, label %do.end72

if.then63.if.end74_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end72:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef 24000000) #11
  br label %cleanup

if.end74:                                         ; preds = %if.then63.if.end74_crit_edge, %if.end59.if.end74_crit_edge
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  %34 = ptrtoint ptr %clk_mipi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_mipi, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end74.do.end.i_crit_edge

if.end74.do.end.i_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end74
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %35) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %if.end74.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end74.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.73, i32 noundef %retval.0.i.ph.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  %36 = ptrtoint ptr %clk_mipi_ecfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_mipi_ecfg, align 4
  %call.i34.i = tail call i32 @clk_prepare(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool.not.i35.i, label %if.end.i38.i, label %if.end.i.do.end7.i_crit_edge

if.end.i.do.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.end.i38.i:                                     ; preds = %if.end.i
  %call1.i36.i = tail call i32 @clk_enable(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36.i)
  %tobool2.not.i37.i = icmp eq i32 %call1.i36.i, 0
  br i1 %tobool2.not.i37.i, label %if.end8.i, label %if.then3.i39.i

if.then3.i39.i:                                   ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %37) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then3.i39.i, %if.end.i.do.end7.i_crit_edge
  %retval.0.i40.ph.i = phi i32 [ %call1.i36.i, %if.then3.i39.i ], [ %call.i34.i, %if.end.i.do.end7.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.76, i32 noundef %retval.0.i40.ph.i) #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i38.i
  %38 = ptrtoint ptr %clk_mipi_cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_mipi_cfg, align 4
  %call.i42.i = tail call i32 @clk_prepare(ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool.not.i43.i, label %if.end.i46.i, label %if.end8.i.do.end14.i_crit_edge

if.end8.i.do.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i

if.end.i46.i:                                     ; preds = %if.end8.i
  %call1.i44.i = tail call i32 @clk_enable(ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i)
  %tobool2.not.i45.i = icmp eq i32 %call1.i44.i, 0
  br i1 %tobool2.not.i45.i, label %do.end18.i, label %if.then3.i47.i

if.then3.i47.i:                                   ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %39) #7
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then3.i47.i, %if.end8.i.do.end14.i_crit_edge
  %retval.0.i48.ph.i = phi i32 [ %call1.i44.i, %if.then3.i47.i ], [ %call.i42.i, %if.end8.i.do.end14.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.79, i32 noundef %retval.0.i48.ph.i) #11
  br label %cleanup

do.end18.i:                                       ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.82) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end18.i, %do.end14.i, %do.end7.i, %do.end.i, %do.end72, %do.end57, %do.end33, %do.end22, %do.end12, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %9, %do.end12 ], [ %13, %do.end22 ], [ -1, %do.end33 ], [ -1, %do.end57 ], [ -1, %do.end72 ], [ %retval.0.i.ph.i, %do.end.i ], [ %retval.0.i40.ph.i, %do.end7.i ], [ %retval.0.i48.ph.i, %do.end14.i ], [ 0, %do.end18.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_dsi_host_attach(ptr nocapture noundef readnone %host, ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_dsi_host_detach(ptr nocapture noundef readnone %host, ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmb_dsi_host_transfer(ptr nocapture noundef readnone %host, ptr nocapture noundef readnone %msg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mipi_tx_ctrl_cfg(ptr nocapture noundef readonly %kmb_dsi, i8 noundef zeroext %fg_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %fg_id to i32
  %shl = shl nuw i32 1, %conv
  %shl52 = shl i32 %shl, 23
  %shl57 = shl i32 %shl, 19
  %shl63 = shl i32 %shl, 28
  %or53 = or i32 %shl57, %shl52
  %sync_cfg.10 = or i32 %or53, %shl63
  %sync_cfg.11 = or i32 %sync_cfg.10, 496
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_tx_ctrl_cfg.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_ctrl_cfg, %if.then69)) #7
          to label %do.end [label %if.then69], !srcloc !184

if.then69:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_tx_ctrl_cfg.__UNIQUE_ID_ddebug311, ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %sync_cfg.11, i32 noundef %shl) #7
  br label %do.end

do.end:                                           ; preds = %if.then69, %entry
  %shl72 = shl nuw nsw i32 %conv, 8
  %.b = load i1, ptr @mipi_tx_init_cfg.0, align 4
  %shl75 = select i1 %.b, i32 16, i32 48
  %or73 = or i32 %shl75, %shl72
  %or89 = or i32 %or73, 4390921
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %sync_cfg.11) #7
  %mipi_mmio.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %3 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or89) #7
  %6 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %7, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %5) #7, !srcloc !187
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mipi_tx_fg_section_cfg_regs(ptr nocapture noundef readonly %kmb_dsi, i8 noundef zeroext %frame_id, i8 noundef zeroext %section, i32 noundef %height_lines, i32 noundef %unpacked_bytes, ptr nocapture noundef readonly %ph_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ph_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ph_cfg, align 4
  %and = and i32 %1, 65535
  %data_type = getelementptr inbounds %struct.mipi_tx_frame_sect_phcfg, ptr %ph_cfg, i32 0, i32 2
  %2 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_type, align 4
  %and1 = shl i32 %3, 16
  %shl2 = and i32 %and1, 4128768
  %or = or i32 %and, %shl2
  %vchannel = getelementptr inbounds %struct.mipi_tx_frame_sect_phcfg, ptr %ph_cfg, i32 0, i32 3
  %4 = ptrtoint ptr %vchannel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vchannel, align 4
  %6 = and i8 %5, 3
  %and3 = zext i8 %6 to i32
  %shl4 = shl nuw nsw i32 %and3, 22
  %or5 = or i32 %shl4, %or
  %data_mode = getelementptr inbounds %struct.mipi_tx_frame_sect_phcfg, ptr %ph_cfg, i32 0, i32 1
  %7 = ptrtoint ptr %data_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_mode, align 4
  %and6 = shl i32 %8, 24
  %shl7 = and i32 %and6, 50331648
  %or8 = or i32 %or5, %shl7
  %dma_packed = getelementptr inbounds %struct.mipi_tx_frame_sect_phcfg, ptr %ph_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %dma_packed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dma_packed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %or9 = or i32 %or8, 67108864
  %spec.select = select i1 %tobool.not, i32 %or8, i32 %or9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_fg_section_cfg_regs, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !184

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %conv14 = zext i8 %frame_id to i32
  %conv15 = zext i8 %section to i32
  %13 = ptrtoint ptr %dma_packed to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dma_packed, align 1
  %conv17 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug307, ptr noundef %12, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %spec.select, i32 noundef %conv17) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %entry
  %conv20 = zext i8 %frame_id to i32
  %mul21 = mul nuw nsw i32 %conv20, 44
  %conv23 = zext i8 %section to i32
  %mul24 = shl nuw nsw i32 %conv23, 3
  %add22 = add nuw nsw i32 %mul24, %mul21
  %add25 = add nuw nsw i32 %add22, 7232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #7
  %mipi_mmio.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %16 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #7, !srcloc !187
  %add31 = add nuw nsw i32 %mul21, 7264
  %18 = shl nuw nsw i32 %conv23, 1
  %mul33 = and i32 %18, 508
  %add34 = add nuw nsw i32 %add31, %mul33
  %rem = shl nuw nsw i32 %conv23, 4
  %mul36 = and i32 %rem, 16
  %19 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %add34
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !188
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and.i = and i32 %unpacked_bytes, 65535
  %shl1.i = shl nuw i32 65535, %mul36
  %neg.i = xor i32 %shl1.i, -1
  %and2.i = and i32 %22, %neg.i
  %shl3.i = shl nuw i32 %and.i, %mul36
  %or.i = or i32 %and2.i, %shl3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %24 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %25, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %23) #7, !srcloc !187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_fg_section_cfg_regs, %if.then49)) #7
          to label %do.end54 [label %if.then49], !srcloc !184

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev50 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %26 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev50, align 4
  %28 = ptrtoint ptr %ph_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ph_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug308, ptr noundef %27, ptr noundef nonnull @.str.50, i32 noundef %unpacked_bytes, i32 noundef %29) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %do.end
  %add63 = add nuw nsw i32 %add22, 7236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %height_lines) #7
  %31 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %32, i32 %add63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %30) #7, !srcloc !187
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mipi_tx_fg_cfg_regs(ptr nocapture noundef readonly %kmb_dsi, i8 noundef zeroext %frame_gen, ptr nocapture noundef readonly %fg_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_clk_mhz = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 10
  %0 = ptrtoint ptr %sys_clk_mhz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sys_clk_mhz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %1)
  %cmp = icmp eq i32 %1, 500
  %sub3 = add i32 %1, -60
  %sysclk.0 = select i1 %cmp, i32 450, i32 %sub3
  %2 = ptrtoint ptr %fg_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fg_cfg, align 4
  %div224 = lshr i32 %3, 3
  %mul = mul i32 %sysclk.0, 1000
  %mul4 = mul i32 %mul, %div224
  %lane_rate_mbps = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 1
  %4 = ptrtoint ptr %lane_rate_mbps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lane_rate_mbps, align 4
  %div5225 = lshr i32 %5, 3
  %active_lanes = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 10
  %6 = ptrtoint ptr %active_lanes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active_lanes, align 4
  %conv = zext i8 %7 to i32
  %mul6 = mul i32 %div5225, %conv
  %div7 = udiv i32 %mul4, %mul6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_fg_cfg_regs, %if.then10)) #7
          to label %do.body12 [label %if.then10], !srcloc !184

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug309, ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef %div7) #7
  br label %do.body12

do.body12:                                        ; preds = %if.then10, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_fg_cfg_regs, %if.then24)) #7
          to label %do.end32 [label %if.then24], !srcloc !184

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %10 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev25, align 4
  %12 = ptrtoint ptr %fg_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fg_cfg, align 4
  %14 = ptrtoint ptr %lane_rate_mbps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lane_rate_mbps, align 4
  %16 = ptrtoint ptr %active_lanes to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active_lanes, align 4
  %conv29 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug310, ptr noundef %11, ptr noundef nonnull @.str.53, i32 noundef %13, i32 noundef %sysclk.0, i32 noundef %15, i32 noundef %conv29) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then24, %do.body12
  %conv35 = zext i8 %frame_gen to i32
  %mul36 = mul nuw nsw i32 %conv35, 44
  %add37 = add nuw nsw i32 %mul36, 7272
  %v_active = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 9
  %18 = ptrtoint ptr %v_active to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %v_active, align 2
  %conv38 = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv38) #7
  %mipi_mmio.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %21 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #7, !srcloc !187
  %rem = shl nuw nsw i32 %conv35, 4
  %mul40 = and i32 %rem, 16
  %23 = shl nuw nsw i32 %conv35, 1
  %mul46 = and i32 %23, 508
  %add47 = add nuw nsw i32 %mul46, 7428
  %vsync_width = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 6
  %24 = ptrtoint ptr %vsync_width to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_width, align 4
  %conv48 = zext i16 %25 to i32
  %26 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %add47
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !188
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %shl1.i = shl nuw i32 65535, %mul40
  %neg.i = xor i32 %shl1.i, -1
  %and2.i = and i32 %29, %neg.i
  %shl3.i = shl nuw i32 %conv48, %mul40
  %or.i = or i32 %and2.i, %shl3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %31 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %32, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %30) #7, !srcloc !187
  %add55 = add nuw nsw i32 %mul46, 7532
  %v_backporch = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 7
  %33 = ptrtoint ptr %v_backporch to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %v_backporch, align 2
  %conv56 = zext i16 %34 to i32
  %35 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i.i235 = getelementptr i8, ptr %36, i32 %add55
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i235) #7, !srcloc !188
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and2.i239 = and i32 %38, %neg.i
  %shl3.i240 = shl nuw i32 %conv56, %mul40
  %or.i241 = or i32 %and2.i239, %shl3.i240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i241) #7
  %40 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i13.i242 = getelementptr i8, ptr %41, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i242, i32 %39) #7, !srcloc !187
  %add63 = add nuw nsw i32 %mul46, 7540
  %v_frontporch = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 8
  %42 = ptrtoint ptr %v_frontporch to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %v_frontporch, align 4
  %conv64 = zext i16 %43 to i32
  %44 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i.i244 = getelementptr i8, ptr %45, i32 %add63
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i244) #7, !srcloc !188
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and2.i248 = and i32 %47, %neg.i
  %shl3.i249 = shl nuw i32 %conv64, %mul40
  %or.i250 = or i32 %and2.i248, %shl3.i249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i250) #7
  %49 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i13.i251 = getelementptr i8, ptr %50, i32 %add63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i251, i32 %48) #7, !srcloc !187
  %add71 = add nuw nsw i32 %mul46, 7548
  %51 = ptrtoint ptr %v_active to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %v_active, align 2
  %conv73 = zext i16 %52 to i32
  %53 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i.i253 = getelementptr i8, ptr %54, i32 %add71
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i253) #7, !srcloc !188
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and2.i257 = and i32 %56, %neg.i
  %shl3.i258 = shl nuw i32 %conv73, %mul40
  %or.i259 = or i32 %and2.i257, %shl3.i258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i259) #7
  %58 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i13.i260 = getelementptr i8, ptr %59, i32 %add71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i260, i32 %57) #7, !srcloc !187
  %mul78 = shl nuw nsw i32 %conv35, 2
  %add79 = add nuw nsw i32 %mul78, 7436
  %hsync_width = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 2
  %60 = ptrtoint ptr %hsync_width to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hsync_width, align 4
  %mul80 = mul i32 %61, %div7
  %div81 = udiv i32 %mul80, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %div81) #7
  %63 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i262 = getelementptr i8, ptr %64, i32 %add79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %62) #7, !srcloc !187
  %add87 = add nuw nsw i32 %mul78, 7452
  %h_backporch = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 3
  %65 = ptrtoint ptr %h_backporch to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %h_backporch, align 4
  %mul88 = mul i32 %66, %div7
  %div89 = udiv i32 %mul88, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %div89) #7
  %68 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i264 = getelementptr i8, ptr %69, i32 %add87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264, i32 %67) #7, !srcloc !187
  %add95 = add nuw nsw i32 %mul78, 7468
  %h_frontporch = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 4
  %70 = ptrtoint ptr %h_frontporch to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %h_frontporch, align 4
  %mul96 = mul i32 %71, %div7
  %div97 = udiv i32 %mul96, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %div97) #7
  %73 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %74, i32 %add95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266, i32 %72) #7, !srcloc !187
  %add103 = add nuw nsw i32 %mul78, 7556
  %h_active = getelementptr inbounds %struct.mipi_tx_frame_timing_cfg, ptr %fg_cfg, i32 0, i32 5
  %75 = ptrtoint ptr %h_active to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %h_active, align 4
  %mul105 = mul i32 %mul, %76
  %77 = ptrtoint ptr %lane_rate_mbps to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %lane_rate_mbps, align 4
  %div107227 = lshr i32 %78, 3
  %79 = ptrtoint ptr %active_lanes to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %active_lanes, align 4
  %conv109 = zext i8 %80 to i32
  %mul110 = mul i32 %div107227, %conv109
  %div111 = udiv i32 %mul105, %mul110
  %div112 = udiv i32 %div111, 1000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %81 = tail call i32 @llvm.bswap.i32(i32 %div112) #7
  %82 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i268 = getelementptr i8, ptr %83, i32 %add103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268, i32 %81) #7, !srcloc !187
  %add118 = add nuw nsw i32 %mul78, 7484
  %84 = ptrtoint ptr %hsync_width to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hsync_width, align 4
  %86 = ptrtoint ptr %fg_cfg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fg_cfg, align 4
  %div121228 = lshr i32 %87, 3
  %mul122 = mul i32 %div121228, %85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %mul122) #7
  %89 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %90, i32 %add118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %88) #7, !srcloc !187
  %add128 = add nuw nsw i32 %mul78, 7500
  %91 = ptrtoint ptr %h_backporch to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %h_backporch, align 4
  %93 = ptrtoint ptr %fg_cfg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fg_cfg, align 4
  %div131229 = lshr i32 %94, 3
  %mul132 = mul i32 %div131229, %92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %95 = tail call i32 @llvm.bswap.i32(i32 %mul132) #7
  %96 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i272 = getelementptr i8, ptr %97, i32 %add128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272, i32 %95) #7, !srcloc !187
  %add138 = add nuw nsw i32 %mul78, 7516
  %98 = ptrtoint ptr %h_frontporch to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %h_frontporch, align 4
  %100 = ptrtoint ptr %fg_cfg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fg_cfg, align 4
  %div141230 = lshr i32 %101, 3
  %mul142 = mul i32 %div141230, %99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %102 = tail call i32 @llvm.bswap.i32(i32 %mul142) #7
  %103 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i274 = getelementptr i8, ptr %104, i32 %add138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 %102) #7, !srcloc !187
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dphy_init_sequence(ptr noundef readonly %kmb_dsi, i32 noundef %dphy_no, i32 noundef %active_lanes, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %dphy_no, 12
  %mipi_mmio.i.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %0 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !188
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %shl.i = shl nuw i32 1, %add
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %5 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %6, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %4) #7, !srcloc !187
  %7 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %8, i32 260
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2) #7, !srcloc !188
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %shl.i3 = shl nuw i32 1, %dphy_no
  %neg.i4 = xor i32 %shl.i3, -1
  %and.i5 = and i32 %10, %neg.i4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i5) #7
  %12 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i6 = getelementptr i8, ptr %13, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i6, i32 %11) #7, !srcloc !187
  %14 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 260
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %17 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %18, i32 340
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #7, !srcloc !188
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and.i11 = and i32 %20, %neg.i4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i11) #7
  %22 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i12 = getelementptr i8, ptr %23, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i12, i32 %21) #7, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #7
  %25 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %26, i32 340
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #7, !srcloc !188
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %or.i = or i32 %28, %shl.i3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %30 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i16 = getelementptr i8, ptr %31, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i16, i32 %29) #7, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #7
  %33 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %34, i32 340
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #7, !srcloc !188
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and.i21 = and i32 %36, %neg.i4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %and.i21) #7
  %38 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i22 = getelementptr i8, ptr %39, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i22, i32 %37) #7, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %. = zext i1 %cmp to i32
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 12, i32 noundef %.)
  %41 = load i32, ptr @mipi_tx_init_cfg.1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.02.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x %struct.mipi_hs_freq_range_cfg], ptr @mipi_hs_freq_range, i32 0, i32 %i.02.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv.i)
  %cmp1.i = icmp ugt i32 %41, %conv.i
  br i1 %cmp1.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %hsfreqrange_code.i = getelementptr [63 x %struct.mipi_hs_freq_range_cfg], ptr @mipi_hs_freq_range, i32 0, i32 %i.02.i, i32 1
  %44 = ptrtoint ptr %hsfreqrange_code.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hsfreqrange_code.i, align 2
  %46 = or i8 %45, -128
  %or.i23 = zext i8 %46 to i32
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 68, i32 noundef %or.i23) #7
  br label %set_lane_data_rate.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 63
  br i1 %exitcond.not.i, label %for.inc.i.set_lane_data_rate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.set_lane_data_rate.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lane_data_rate.exit

set_lane_data_rate.exit:                          ; preds = %for.inc.i.set_lane_data_rate.exit_crit_edge, %if.end.i
  %47 = load i32, ptr @mipi_tx_init_cfg.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %47)
  %cmp2 = icmp ugt i32 %47, 1500
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %set_lane_data_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 160, i32 noundef 2) #7
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 163, i32 noundef 0) #7
  br label %if.end10

if.else4:                                         ; preds = %set_lane_data_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %47)
  %cmp6 = icmp ugt i32 %47, 1000
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 160, i32 noundef 67) #7
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 163, i32 noundef 1) #7
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 164, i32 noundef 47) #7
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 164, i32 noundef 156) #7
  br label %if.end10

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 164, i32 noundef 35) #7
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 164, i32 noundef 148) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then7, %if.then3
  %rem = shl i32 %dphy_no, 3
  %mul14 = and i32 %rem, 24
  %48 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %49, i32 288
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #7, !srcloc !188
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %shl1.i = shl nuw nsw i32 63, %mul14
  %neg.i26 = xor i32 %shl1.i, -1
  %and2.i = and i32 %51, %neg.i26
  %shl3.i = shl nuw nsw i32 28, %mul14
  %or.i27 = or i32 %shl3.i, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i27) #7
  %53 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %54, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %52) #7, !srcloc !187
  %55 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %56, i32 396
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #7, !srcloc !188
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %or.i31 = or i32 %58, %shl.i3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i31) #7
  %60 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i32 = getelementptr i8, ptr %61, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i32, i32 %59) #7, !srcloc !187
  br i1 %cmp, label %if.then16, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 31, i32 noundef 1) #7
  %62 = load i32, ptr @mipi_tx_init_cfg.1, align 4
  %div11.i = lshr i32 %62, 1
  tail call fastcc void @mipi_tx_pll_setup(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 24, i32 noundef %div11.i) #7
  %63 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %64, i32 264
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %66 = and i32 %65, -3073
  %67 = or i32 %66, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %69, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 %67) #7, !srcloc !187
  %70 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %71, i32 264
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %73 = or i32 %72, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %75, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %73) #7, !srcloc !187
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end10.if.end17_crit_edge
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 0, i32 noundef 0)
  %76 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %77, i32 268
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #7, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %79 = and i32 %78, 16711679
  %80 = or i32 %79, 1056964608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %81 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i13.i37 = getelementptr i8, ptr %82, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i37, i32 %80) #7, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748) #7
  %84 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %85, i32 268
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #7, !srcloc !188
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %or.i41 = or i32 %87, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i41) #7
  %89 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i42 = getelementptr i8, ptr %90, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i42, i32 %88) #7, !srcloc !187
  %mul19 = shl i32 %dphy_no, 1
  %notmask = shl nsw i32 -1, %active_lanes
  %91 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %92, i32 256
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #7, !srcloc !188
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %sub20 = and i32 %notmask, 3
  %and.i45 = xor i32 %sub20, 3
  %shl1.i46 = shl i32 3, %mul19
  %neg.i47 = xor i32 %shl1.i46, -1
  %and2.i48 = and i32 %94, %neg.i47
  %shl3.i49 = shl i32 %and.i45, %mul19
  %or.i50 = or i32 %and2.i48, %shl3.i49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %95 = tail call i32 @llvm.bswap.i32(i32 %or.i50) #7
  %96 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i13.i51 = getelementptr i8, ptr %97, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i51, i32 %95) #7, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748) #7
  %99 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %100, i32 260
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #7, !srcloc !188
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %or.i55 = or i32 %102, %shl.i3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i55) #7
  %104 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i56 = getelementptr i8, ptr %105, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i56, i32 %103) #7, !srcloc !187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748) #7
  %107 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %108, i32 260
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #7, !srcloc !188
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %or.i60 = or i32 %110, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %111 = tail call i32 @llvm.bswap.i32(i32 %or.i60) #7
  %112 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i61 = getelementptr i8, ptr %113, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i61, i32 %111) #7, !srcloc !187
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dphy_wait_fsm(ptr nocapture noundef readonly %kmb_dsi, i32 noundef %dphy_no, i32 noundef %fsm_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mipi_mmio.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %rem = shl i32 %dphy_no, 3
  %mul = and i32 %rem, 24
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 3, i32 noundef 128)
  %0 = ptrtoint ptr %mipi_mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 364
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !188
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %shr = lshr i32 %3, %mul
  %and = and i32 %shr, 255
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %i.0)
  %cmp = icmp ugt i32 %i.0, 599
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %fsm_state)
  %cmp1.not = icmp eq i32 %and, %fsm_state
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %or.cond, label %do.body2, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body2:                                         ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dphy_wait_fsm.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dphy_wait_fsm, %if.then6)) #7
          to label %do.body10 [label %if.then6], !srcloc !184

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dphy_wait_fsm.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef %dphy_no, i32 noundef %and) #7
  br label %do.body10

do.body10:                                        ; preds = %if.then6, %do.body2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dphy_wait_fsm.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dphy_wait_fsm, %if.then22)) #7
          to label %do.end27 [label %if.then22], !srcloc !184

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %6 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev23, align 4
  %cond = select i1 %cmp, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dphy_wait_fsm.__UNIQUE_ID_ddebug314, ptr noundef %7, ptr noundef nonnull @.str.61, i32 noundef %dphy_no, ptr noundef nonnull %cond) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_mode_send(ptr nocapture noundef readonly %kmb_dsi, i32 noundef %dphy_no, i32 noundef %test_code, i32 noundef %test_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mipi_mmio.i.i = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 6
  %0 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 344
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !188
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %shl.i = shl nuw i32 1, %dphy_no
  %or.i = or i32 %3, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %5 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %6, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %4) #7, !srcloc !187
  %rem = shl i32 %dphy_no, 3
  %mul = and i32 %rem, 24
  %shl = shl i32 %test_code, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  %8 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !187
  %add = add i32 %dphy_no, 12
  %10 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %11, i32 344
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #7, !srcloc !188
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %shl.i28 = shl nuw i32 1, %add
  %or.i29 = or i32 %13, %shl.i28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i29) #7
  %15 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i30 = getelementptr i8, ptr %16, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i30, i32 %14) #7, !srcloc !187
  %17 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %18, i32 344
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #7, !srcloc !188
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %20, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %22 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i34 = getelementptr i8, ptr %23, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i34, i32 %21) #7, !srcloc !187
  %24 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %25, i32 344
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #7, !srcloc !188
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %neg.i38 = xor i32 %shl.i28, -1
  %and.i39 = and i32 %27, %neg.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i39) #7
  %29 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i40 = getelementptr i8, ptr %30, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i40, i32 %28) #7, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test_code)
  %tobool.not = icmp eq i32 %test_code, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %32, i32 344
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #7, !srcloc !188
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and.i45 = and i32 %34, %neg.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i45) #7
  %36 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i46 = getelementptr i8, ptr %37, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i46, i32 %35) #7, !srcloc !187
  %38 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %39, i32 344
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #7, !srcloc !188
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and.i51 = and i32 %41, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i51) #7
  %43 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i52 = getelementptr i8, ptr %44, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i52, i32 %42) #7, !srcloc !187
  %shl7 = shl i32 %test_data, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %shl7) #7
  %46 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %47, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %45) #7, !srcloc !187
  %48 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %49, i32 344
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #7, !srcloc !188
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %or.i58 = or i32 %51, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i58) #7
  %53 = ptrtoint ptr %mipi_mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mipi_mmio.i.i, align 4
  %add.ptr.i4.i59 = getelementptr i8, ptr %54, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i59, i32 %52) #7, !srcloc !187
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mipi_tx_pll_setup(ptr nocapture noundef readonly %kmb_dsi, i32 noundef %dphy_no, i32 noundef %ref_clk_mhz, i32 noundef %target_freq_mhz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %target_freq_mhz)
  %cmp2.i = icmp ult i32 %target_freq_mhz, 52
  br i1 %cmp2.i, label %entry.if.then.i_crit_edge, label %for.cond.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %target_freq_mhz)
  %cmp2.1.i = icmp ult i32 %target_freq_mhz, 80
  br i1 %cmp2.1.i, label %for.cond.i.if.then.i_crit_edge, label %for.cond.1.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %target_freq_mhz)
  %cmp2.2.i = icmp ult i32 %target_freq_mhz, 105
  br i1 %cmp2.2.i, label %for.cond.1.i.if.then.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.then.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %target_freq_mhz)
  %cmp2.3.i = icmp ult i32 %target_freq_mhz, 160
  br i1 %cmp2.3.i, label %for.cond.2.i.if.then.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.then.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %target_freq_mhz)
  %cmp2.4.i = icmp ult i32 %target_freq_mhz, 210
  br i1 %cmp2.4.i, label %for.cond.3.i.if.then.i_crit_edge, label %for.cond.4.i

for.cond.3.i.if.then.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %target_freq_mhz)
  %cmp2.5.i = icmp ult i32 %target_freq_mhz, 320
  br i1 %cmp2.5.i, label %for.cond.4.i.if.then.i_crit_edge, label %for.cond.5.i

for.cond.4.i.if.then.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %target_freq_mhz)
  %cmp2.6.i = icmp ult i32 %target_freq_mhz, 420
  br i1 %cmp2.6.i, label %for.cond.5.i.if.then.i_crit_edge, label %for.cond.6.i

for.cond.5.i.if.then.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 630, i32 %target_freq_mhz)
  %cmp2.7.i = icmp ult i32 %target_freq_mhz, 630
  br i1 %cmp2.7.i, label %for.cond.6.i.if.then.i_crit_edge, label %for.cond.7.i

for.cond.6.i.if.then.i_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100, i32 %target_freq_mhz)
  %cmp2.8.i = icmp ult i32 %target_freq_mhz, 1100
  br i1 %cmp2.8.i, label %for.cond.7.i.if.then.i_crit_edge, label %for.cond.8.i

for.cond.7.i.if.then.i_crit_edge:                 ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %target_freq_mhz)
  %cmp2.9.i = icmp ult i32 %target_freq_mhz, 65535
  br i1 %cmp2.9.i, label %for.cond.8.i.if.then.i_crit_edge, label %for.cond.9.i

for.cond.8.i.if.then.i_crit_edge:                 ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %.b46.i = load i1, ptr @mipi_tx_get_vco_params.__already_done, align 1
  br i1 %.b46.i, label %for.cond.9.i.mipi_tx_get_vco_params.exit_crit_edge, label %if.then8.i, !prof !190

for.cond.9.i.mipi_tx_get_vco_params.exit_crit_edge: ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_tx_get_vco_params.exit

if.then.i:                                        ; preds = %for.cond.8.i.if.then.i_crit_edge, %for.cond.7.i.if.then.i_crit_edge, %for.cond.6.i.if.then.i_crit_edge, %for.cond.5.i.if.then.i_crit_edge, %for.cond.4.i.if.then.i_crit_edge, %for.cond.3.i.if.then.i_crit_edge, %for.cond.2.i.if.then.i_crit_edge, %for.cond.1.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %arrayidx.lcssa.i = phi ptr [ @vco_table, %entry.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 1), %for.cond.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 2), %for.cond.1.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 3), %for.cond.2.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 4), %for.cond.3.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 5), %for.cond.4.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 6), %for.cond.5.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 7), %for.cond.6.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 8), %for.cond.7.i.if.then.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.vco_params], ptr @vco_table, i32 0, i32 9), %for.cond.8.i.if.then.i_crit_edge ]
  %vco_p.sroa.7.0.arrayidx.lcssa.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.lcssa.i, i32 4
  %0 = ptrtoint ptr %vco_p.sroa.7.0.arrayidx.lcssa.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %vco_p.sroa.7.0.copyload80 = load i32, ptr %vco_p.sroa.7.0.arrayidx.lcssa.i.sroa_idx, align 4
  %vco_p.sroa.8.0.arrayidx.lcssa.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.lcssa.i, i32 8
  %1 = ptrtoint ptr %vco_p.sroa.8.0.arrayidx.lcssa.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %vco_p.sroa.8.0.copyload81 = load i32, ptr %vco_p.sroa.8.0.arrayidx.lcssa.i.sroa_idx, align 4
  %phi.bo = or i32 %vco_p.sroa.7.0.copyload80, 64
  br label %mipi_tx_get_vco_params.exit

if.then8.i:                                       ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mipi_tx_get_vco_params.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 859, i32 noundef 9, ptr noundef nonnull @.str.58, i32 noundef %target_freq_mhz) #7
  br label %mipi_tx_get_vco_params.exit

mipi_tx_get_vco_params.exit:                      ; preds = %if.then8.i, %if.then.i, %for.cond.9.i.mipi_tx_get_vco_params.exit_crit_edge
  %vco_p.sroa.8.0 = phi i32 [ %vco_p.sroa.8.0.copyload81, %if.then.i ], [ 1, %for.cond.9.i.mipi_tx_get_vco_params.exit_crit_edge ], [ 1, %if.then8.i ]
  %vco_p.sroa.7.0 = phi i32 [ %phi.bo, %if.then.i ], [ 64, %for.cond.9.i.mipi_tx_get_vco_params.exit_crit_edge ], [ 64, %if.then8.i ]
  %mul = mul i32 %ref_clk_mhz, 1000
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %mipi_tx_get_vco_params.exit
  %best_n.090 = phi i32 [ 0, %mipi_tx_get_vco_params.exit ], [ %best_n.3, %for.inc20.for.body_crit_edge ]
  %best_m.089 = phi i32 [ 0, %mipi_tx_get_vco_params.exit ], [ %best_m.3, %for.inc20.for.body_crit_edge ]
  %n.088 = phi i32 [ 0, %mipi_tx_get_vco_params.exit ], [ %add2, %for.inc20.for.body_crit_edge ]
  %best_freq_delta.087 = phi i32 [ 3000, %mipi_tx_get_vco_params.exit ], [ %best_freq_delta.3, %for.inc20.for.body_crit_edge ]
  %add = add i32 %n.088, %mul
  %add2 = add nuw nsw i32 %n.088, 1
  %div3 = udiv i32 %add, %add2
  %2 = add i32 %div3, -8001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6001, i32 %2)
  %3 = icmp ult i32 %2, -6001
  br i1 %3, label %for.body.for.inc20_crit_edge, label %for.body.for.body8_crit_edge

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body.for.inc20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %best_n.186 = phi i32 [ %best_n.2, %for.inc.for.body8_crit_edge ], [ %best_n.090, %for.body.for.body8_crit_edge ]
  %best_m.185 = phi i32 [ %best_m.2, %for.inc.for.body8_crit_edge ], [ %best_m.089, %for.body.for.body8_crit_edge ]
  %best_freq_delta.184 = phi i32 [ %best_freq_delta.2, %for.inc.for.body8_crit_edge ], [ %best_freq_delta.087, %for.body.for.body8_crit_edge ]
  %m.083 = phi i32 [ %inc, %for.inc.for.body8_crit_edge ], [ 62, %for.body.for.body8_crit_edge ]
  %add9 = add nuw nsw i32 %m.083, 2
  %mul10 = mul i32 %add9, %div3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250999, i32 %mul10)
  %cmp12 = icmp ugt i32 %mul10, 1250999
  br i1 %cmp12, label %for.body8.for.inc_crit_edge, label %if.end14

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14:                                         ; preds = %for.body8
  %div11 = udiv i32 %mul10, 1000
  %sub = sub i32 %div11, %target_freq_mhz
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %best_freq_delta.184)
  %cmp17 = icmp ult i32 %4, %best_freq_delta.184
  br i1 %cmp17, label %if.then18, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.end14.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  %best_freq_delta.2 = phi i32 [ %best_freq_delta.184, %for.body8.for.inc_crit_edge ], [ %4, %if.then18 ], [ %best_freq_delta.184, %if.end14.for.inc_crit_edge ]
  %best_m.2 = phi i32 [ %best_m.185, %for.body8.for.inc_crit_edge ], [ %m.083, %if.then18 ], [ %best_m.185, %if.end14.for.inc_crit_edge ]
  %best_n.2 = phi i32 [ %best_n.186, %for.body8.for.inc_crit_edge ], [ %n.088, %if.then18 ], [ %best_n.186, %if.end14.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %m.083, 1
  %exitcond.not = icmp eq i32 %inc, 624
  br i1 %exitcond.not, label %for.inc.for.inc20_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.inc.for.inc20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20

for.inc20:                                        ; preds = %for.inc.for.inc20_crit_edge, %for.body.for.inc20_crit_edge
  %best_freq_delta.3 = phi i32 [ %best_freq_delta.087, %for.body.for.inc20_crit_edge ], [ %best_freq_delta.2, %for.inc.for.inc20_crit_edge ]
  %best_m.3 = phi i32 [ %best_m.089, %for.body.for.inc20_crit_edge ], [ %best_m.2, %for.inc.for.inc20_crit_edge ]
  %best_n.3 = phi i32 [ %best_n.090, %for.body.for.inc20_crit_edge ], [ %best_n.2, %for.inc.for.inc20_crit_edge ]
  %exitcond91.not = icmp eq i32 %add2, 16
  br i1 %exitcond91.not, label %for.end22, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end22:                                        ; preds = %for.inc20
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 18, i32 noundef %vco_p.sroa.7.0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipi_tx_pll_setup.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipi_tx_pll_setup, %if.then26)) #7
          to label %do.end [label %if.then26], !srcloc !184

if.then26:                                        ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kmb_dsi, ptr %kmb_dsi, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipi_tx_pll_setup.__UNIQUE_ID_ddebug312, ptr noundef %6, ptr noundef nonnull @.str.57, i32 noundef %best_m.3, i32 noundef %best_n.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then26, %for.end22
  %and = and i32 %best_n.3, 15
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 23, i32 noundef %and)
  %and28 = and i32 %best_m.3, 31
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 24, i32 noundef %and28)
  %shr = lshr i32 %best_m.3, 5
  %and29 = and i32 %shr, 31
  %or30 = or i32 %and29, 128
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 24, i32 noundef %or30)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 25, i32 noundef 48)
  %mul31 = mul i32 %vco_p.sroa.8.0, %target_freq_mhz
  call void @__sanitizer_cov_trace_const_cmp4(i32 1150, i32 %mul31)
  %cmp32 = icmp ugt i32 %mul31, 1150
  %cond33 = select i1 %cmp32, i32 12, i32 11
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 14, i32 noundef %cond33)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 15, i32 noundef 0)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 19, i32 noundef 16)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 28, i32 noundef 16)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 20, i32 noundef 2)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 21, i32 noundef 96)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 22, i32 noundef 3)
  tail call fastcc void @test_mode_send(ptr noundef %kmb_dsi, i32 noundef %dphy_no, i32 noundef 29, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_bridge_chain_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !122, !123, !124, !126, !127, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !152, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 243, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 249, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 257, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1384, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @kmb_dsi_mode_set.__UNIQUE_ID_ddebug320, !7, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1404, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @kmb_dsi_mode_set._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @kmb_dsi_mode_set._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1416, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @kmb_dsi_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @kmb_dsi_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1441, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @kmb_dsi_encoder_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @kmb_dsi_encoder_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1452, i32 2}
!31 = !{ptr @kmb_dsi_encoder_init._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @kmb_dsi_encoder_init._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1455, i32 3}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1469, i32 9}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1471, i32 3}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @kmb_dsi_map_mmio._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @kmb_dsi_map_mmio._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1476, i32 3}
!44 = !{ptr @kmb_dsi_map_mmio._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @kmb_dsi_map_mmio._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1514, i32 40}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1516, i32 3}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @kmb_dsi_clk_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @kmb_dsi_clk_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1520, i32 45}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1522, i32 3}
!57 = !{ptr @kmb_dsi_clk_init._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @kmb_dsi_clk_init._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1526, i32 44}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1528, i32 3}
!63 = !{ptr @kmb_dsi_clk_init._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @kmb_dsi_clk_init._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1534, i32 3}
!67 = !{ptr @kmb_dsi_clk_init._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @kmb_dsi_clk_init._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1538, i32 2}
!71 = !{ptr @kmb_dsi_clk_init.__UNIQUE_ID_ddebug321, !70, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1546, i32 4}
!74 = !{ptr @kmb_dsi_clk_init._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @kmb_dsi_clk_init._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1558, i32 4}
!78 = !{ptr @kmb_dsi_clk_init._entry.43, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @kmb_dsi_clk_init._entry_ptr.45, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @dsi_host, !81, !"dsi_host", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 24, i32 30}
!82 = !{ptr @dsi_device, !83, !"dsi_device", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 25, i32 32}
!84 = !{ptr @adv_bridge, !85, !"adv_bridge", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 26, i32 27}
!86 = !{ptr @kmb_dsi_host_ops, !87, !"kmb_dsi_host_ops", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 210, i32 39}
!88 = distinct !{null, !89, !"mipi_tx_init_cfg", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 66, i32 29}
!90 = !{ptr @mipitx_dsi_cfg, !91, !"mipitx_dsi_cfg", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 54, i32 37}
!92 = !{ptr @mipi_tx_frame0_sect_cfg, !93, !"mipi_tx_frame0_sect_cfg", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 33, i32 41}
!94 = !{ptr @mipitx_frame0_cfg, !95, !"mipitx_frame0_cfg", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 41, i32 33}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 282, i32 4}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 362, i32 3}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 411, i32 2}
!102 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug307, !101, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 431, i32 2}
!106 = !{ptr @mipi_tx_fg_section_cfg_regs.__UNIQUE_ID_ddebug308, !105, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 516, i32 2}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug309, !108, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 517, i32 2}
!113 = !{ptr @mipi_tx_fg_cfg_regs.__UNIQUE_ID_ddebug310, !112, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 685, i32 2}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mipi_tx_ctrl_cfg.__UNIQUE_ID_ddebug311, !115, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!118 = !{ptr @mipi_hs_freq_range, !119, !"mipi_hs_freq_range", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 110, i32 1}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 935, i32 2}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @mipi_tx_pll_setup.__UNIQUE_ID_ddebug312, !121, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 859, i32 2}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @vco_table, !128, !"vco_table", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 96, i32 32}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1232, i32 2}
!131 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @dphy_wait_fsm.__UNIQUE_ID_ddebug313, !130, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1233, i32 2}
!135 = !{ptr @dphy_wait_fsm.__UNIQUE_ID_ddebug314, !134, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!136 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1254, i32 4}
!140 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @wait_init_done.__UNIQUE_ID_ddebug315, !139, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1261, i32 2}
!144 = !{ptr @wait_init_done.__UNIQUE_ID_ddebug316, !143, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1275, i32 4}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @wait_pll_lock.__UNIQUE_ID_ddebug317, !146, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1280, i32 2}
!151 = !{ptr @wait_pll_lock.__UNIQUE_ID_ddebug318, !150, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1339, i32 46}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1341, i32 3}
!156 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @connect_lcd_to_mipi.__UNIQUE_ID_ddebug319, !155, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1489, i32 3}
!160 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @kmb_dsi_clk_enable._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @kmb_dsi_clk_enable._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1495, i32 3}
!165 = !{ptr @kmb_dsi_clk_enable._entry.75, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @kmb_dsi_clk_enable._entry_ptr.77, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1501, i32 3}
!169 = !{ptr @kmb_dsi_clk_enable._entry.78, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @kmb_dsi_clk_enable._entry_ptr.80, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/kmb/kmb_dsi.c", i32 1505, i32 2}
!173 = !{ptr @kmb_dsi_clk_enable._entry.81, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @kmb_dsi_clk_enable._entry_ptr.83, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2148766272, i64 2148766277, i64 2148766290, i64 2148766334, i64 2148766368, i64 2148766389}
!185 = !{!"auto-init"}
!186 = !{i64 2156769263}
!187 = !{i64 4946199}
!188 = !{i64 4946617}
!189 = !{i64 2156770136}
!190 = !{!"branch_weights", i32 2000, i32 1}
