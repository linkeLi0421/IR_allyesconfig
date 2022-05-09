; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/nwl-dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/nwl-dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.nwl_dsi = type { %struct.drm_bridge, %struct.mipi_dsi_host, ptr, ptr, ptr, %union.phy_configure_opts, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.drm_display_mode, i32, i32, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nwl_dsi_transfer = type { ptr, %struct.mipi_dsi_packet, %struct.completion, i32, i32, i8, i8, i16, i32, i32 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@__initcall__kmod_nwl_dsi__348_1235_nwl_dsi_driver_init6 = internal global ptr @nwl_dsi_driver_init, section ".initcall6.init", align 4
@nwl_dsi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nwl_dsi_probe, ptr @nwl_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nwl_dsi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nwl_dsi_driver_exit = internal global ptr @nwl_dsi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author349 = internal constant [33 x i8] c"nwl_dsi.author=NXP Semiconductor\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [26 x i8] c"nwl_dsi.author=Purism SPC\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [52 x i8] c"nwl_dsi.description=Northwest Logic MIPI-DSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [44 x i8] c"nwl_dsi.file=drivers/gpu/drm/bridge/nwl-dsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [20 x i8] c"nwl_dsi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nwl-dsi\00", [24 x i8] zeroinitializer }, align 32
@nwl_dsi_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-nwl-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to request IRQ %d: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nwl_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @nwl_dsi_host_attach, ptr null, ptr @nwl_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Failed to register MIPI host: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@nwl_dsi_quirks_match = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.44, ptr null, ptr @.str.45, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nwl_dsi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @nwl_dsi_bridge_attach, ptr @nwl_dsi_bridge_detach, ptr @nwl_dsi_bridge_mode_valid, ptr null, ptr null, ptr null, ptr @nwl_dsi_bridge_mode_set, ptr null, ptr null, ptr null, ptr @nwl_dsi_bridge_atomic_enable, ptr @nwl_dsi_bridge_atomic_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr @nwl_bridge_atomic_get_input_bus_fmts, ptr @nwl_dsi_bridge_atomic_check, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nwl_dsi_timings = internal constant { %struct.drm_bridge_timings, [16 x i8] } { %struct.drm_bridge_timings { i32 1, i32 0, i32 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* Could not get PHY: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcdif\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Failed to get lcdif clock: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to get core clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_ref\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to get phy_ref clock: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_esc\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Failed to get rx_esc clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_esc\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Failed to get tx_esc clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* Failed to get mux: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nwl_dsi_parse_dt._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nwl_dsi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 16, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 684, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nwl_dsi:1061:(&nwl_dsi_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* Failed to create NWL DSI regmap: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to get device IRQ: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Failed to get pclk reset: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"byte\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Failed to get byte reset: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"esc\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to get esc reset: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dpi\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to get dpi reset: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@nwl_dsi_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nwl_dsi_irq_handler = private unnamed_addr constant [20 x i8] c"nwl_dsi_irq_handler\00", align 1
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"*ERROR* tx fifo overflow\0A\00", [38 x i8] zeroinitializer }, align 32
@nwl_dsi_irq_handler._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"*ERROR* HS tx timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* Failed to read NWL DSI reg 0x%x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* [%02X] Channel mismatch (%u != %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* [%02X] DSI error report: 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"*ERROR* [%02X] Receive buffer too small: %zu (< %u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lanes=%u, format=0x%x flags=0x%lx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* Failed to enable rx_esc clk: %zd\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabled rx_esc clk @%lu Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* [%02X] DSI transfer timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Using hs mode workaround for cmd 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* Failed to write NWL DSI reg 0x%x: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i.MX8MQ\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHY at ref rate: %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Failed to deassert PCLK: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Failed to deassert ESC: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Failed to deassert BYTE: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LP clk is @%lu Hz\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* Need DSI lanes: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Failed to init DSI phy: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to configure DSI phy: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to enable tx_esc clk: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabled tx_esc clk @%lu Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Failed to set up DSI: %d\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Failed to set up DPI: %d\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to power on DPHY (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSI Lanes %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cfg_t_pre: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cfg_tx_gap (pre): 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cfg_t_post: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cfg_tx_gap: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cfg_twakeup: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfront_porch = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hback_porch = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hsync_len = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdisplay = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vfront_porch = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vback_porch = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vsync_len = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vactive = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock = %d kHz\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Invalid color format 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pixel fmt = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Failed to deassert DPI: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* Failed to assert DPI: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* Failed to assert ESC: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Failed to assert BYTE: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Failed to assert PCLK: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disabling clocks and phy\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* No valid input endpoint found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using %s as input source\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCSS\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LCDIF\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Failed to select input: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to deselect input: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.nwl_dsi_bridge_mode_valid = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.nwl_dsi_bridge_mode_set = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.nwl_dsi_bridge_mode_set.88 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.nwl_dsi_bridge_mode_set.89 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 17, i64 18, i64 33, i64 34]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4105, i64 4106, i64 4119]
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"nwl_dsi_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1226, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1231, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"nwl_dsi_dt_ids\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1148, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1180, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"nwl_dsi_host_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 631, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1189, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"nwl_dsi_quirks_match\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1154, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"nwl_dsi_bridge_funcs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 974, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"nwl_dsi_timings\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1144, i32 40 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 995, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 999, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1003, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1006, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1012, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1015, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1021, i32 31 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1024, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1030, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1033, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1039, i32 31 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1042, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1052, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"nwl_dsi_regmap_config\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 116, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1061, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1064, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1071, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1076, i32 61 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1078, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1082, i32 61 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1084, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1088, i32 60 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1090, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1094, i32 60 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1096, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 644, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 647, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 163, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 396, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 423, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 430, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 357, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 607, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 611, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 619, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 87, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 554, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 146, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1155, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1155, i32 14 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 857, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 874, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 884, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 889, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 795, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 664, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 670, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 676, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 682, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 686, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 691, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 697, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 703, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 221, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 234, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 237, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 239, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 242, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 251, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 273, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 274, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 275, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 276, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 277, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 278, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 279, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 280, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 281, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 285, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 289, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 904, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 749, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 754, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 759, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 764, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 727, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1117, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1123, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1127, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private constant [36 x i8] c"../drivers/gpu/drm/bridge/nwl-dsi.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 1139, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [39 x i8] c"switch.table.nwl_dsi_bridge_mode_valid\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [37 x i8] c"switch.table.nwl_dsi_bridge_mode_set\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [40 x i8] c"switch.table.nwl_dsi_bridge_mode_set.88\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [40 x i8] c"switch.table.nwl_dsi_bridge_mode_set.89\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_nwl_dsi_driver_exit, ptr @__initcall__kmod_nwl_dsi__348_1235_nwl_dsi_driver_init6, ptr @nwl_dsi_driver_exit, ptr @nwl_dsi_driver, ptr @.str, ptr @nwl_dsi_dt_ids, ptr @.str.1, ptr @.str.2, ptr @nwl_dsi_host_ops, ptr @.str.3, ptr @nwl_dsi_quirks_match, ptr @nwl_dsi_bridge_funcs, ptr @nwl_dsi_timings, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @nwl_dsi_parse_dt._key, ptr @nwl_dsi_regmap_config, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @nwl_dsi_irq_handler._rs, ptr @.str.28, ptr @.str.29, ptr @nwl_dsi_irq_handler._rs.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @init_completion.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @switch.table.nwl_dsi_bridge_mode_valid, ptr @switch.table.nwl_dsi_bridge_mode_set, ptr @switch.table.nwl_dsi_bridge_mode_set.88, ptr @switch.table.nwl_dsi_bridge_mode_set.89], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_quirks_match to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_timings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_parse_dt._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_dsi_irq_handler._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nwl_dsi_bridge_mode_valid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nwl_dsi_bridge_mode_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nwl_dsi_bridge_mode_set.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nwl_dsi_bridge_mode_set.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_dsi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nwl_dsi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nwl_dsi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @nwl_dsi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_dsi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 592, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call.i73 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #7
  %phy.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i73, ptr %phy.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %cmp.not.i = icmp eq ptr %call.i73, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.cleanup_crit_edge, label %if.then6.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call.i73 to i32
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %2) #7
  br label %nwl_dsi_parse_dt.exit

if.end8.i:                                        ; preds = %if.end
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %call10.i = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.6) #7
  %cmp.i219.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call10.i to i32
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef %7) #7
  br label %nwl_dsi_parse_dt.exit

if.end15.i:                                       ; preds = %if.end8.i
  %lcdif_clk.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 18
  %10 = ptrtoint ptr %lcdif_clk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10.i, ptr %lcdif_clk.i, align 4
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %call17.i = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.8) #7
  %cmp.i220.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220.i, label %if.then19.i, label %if.end22.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call17.i to i32
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %13) #7
  br label %nwl_dsi_parse_dt.exit

if.end22.i:                                       ; preds = %if.end15.i
  %core_clk.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17.i, ptr %core_clk.i, align 4
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  %call24.i = tail call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull @.str.10) #7
  %cmp.i221.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221.i, label %if.then26.i, label %if.end29.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call24.i to i32
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %19) #7
  br label %nwl_dsi_parse_dt.exit

if.end29.i:                                       ; preds = %if.end22.i
  %phy_ref_clk.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 14
  %22 = ptrtoint ptr %phy_ref_clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call24.i, ptr %phy_ref_clk.i, align 4
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  %call31.i = tail call ptr @devm_clk_get(ptr noundef %24, ptr noundef nonnull @.str.12) #7
  %cmp.i222.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222.i, label %if.then33.i, label %if.end36.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call31.i to i32
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef %25) #7
  br label %nwl_dsi_parse_dt.exit

if.end36.i:                                       ; preds = %if.end29.i
  %rx_esc_clk.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 15
  %28 = ptrtoint ptr %rx_esc_clk.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call31.i, ptr %rx_esc_clk.i, align 4
  %29 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2, align 4
  %call38.i = tail call ptr @devm_clk_get(ptr noundef %30, ptr noundef nonnull @.str.14) #7
  %cmp.i223.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223.i, label %if.then40.i, label %if.end43.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call38.i to i32
  %32 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, i32 noundef %31) #7
  br label %nwl_dsi_parse_dt.exit

if.end43.i:                                       ; preds = %if.end36.i
  %tx_esc_clk.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 16
  %34 = ptrtoint ptr %tx_esc_clk.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call38.i, ptr %tx_esc_clk.i, align 4
  %35 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2, align 4
  %call45.i = tail call ptr @devm_mux_control_get(ptr noundef %36, ptr noundef null) #7
  %mux.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 13
  %37 = ptrtoint ptr %mux.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call45.i, ptr %mux.i, align 4
  %cmp.i224.i = icmp ugt ptr %call45.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224.i, label %if.then48.i, label %if.end55.i

if.then48.i:                                      ; preds = %if.end43.i
  %cmp51.not.i = icmp eq ptr %call45.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp51.not.i, label %if.then48.i.cleanup_crit_edge, label %if.then52.i

if.then48.i.cleanup_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call45.i to i32
  %39 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, i32 noundef %38) #7
  br label %nwl_dsi_parse_dt.exit

if.end55.i:                                       ; preds = %if.end43.i
  %call56.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i225.i = icmp ugt ptr %call56.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225.i, label %if.then58.i, label %if.end60.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call56.i to i32
  br label %nwl_dsi_parse_dt.exit

if.end60.i:                                       ; preds = %if.end55.i
  %42 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev2, align 4
  %call63.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %43, ptr noundef null, ptr noundef %call56.i, ptr noundef nonnull @nwl_dsi_regmap_config, ptr noundef nonnull @nwl_dsi_parse_dt._key, ptr noundef nonnull @.str.17) #7
  %regmap.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call63.i, ptr %regmap.i, align 4
  %cmp.i226.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226.i, label %if.then66.i, label %if.end70.i

if.then66.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call63.i to i32
  %46 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %47, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18, i32 noundef %45) #7
  br label %nwl_dsi_parse_dt.exit

if.end70.i:                                       ; preds = %if.end60.i
  %call71.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call71.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp73.i = icmp slt i32 %call71.i, 0
  %49 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev2, align 4
  br i1 %cmp73.i, label %if.then74.i, label %if.end78.i

if.then74.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %50, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, i32 noundef %call71.i) #7
  %51 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq.i, align 4
  br label %nwl_dsi_parse_dt.exit

if.end78.i:                                       ; preds = %if.end70.i
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %50, ptr noundef nonnull @.str.20, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst_pclk.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 12
  %53 = ptrtoint ptr %rst_pclk.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i, ptr %rst_pclk.i, align 4
  %cmp.i227.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %54 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev2, align 4
  br i1 %cmp.i227.i, label %if.then83.i, label %if.end89.i

if.then83.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef %56) #7
  %57 = ptrtoint ptr %rst_pclk.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rst_pclk.i, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %nwl_dsi_parse_dt.exit

if.end89.i:                                       ; preds = %if.end78.i
  %call.i228.i = tail call ptr @__devm_reset_control_get(ptr noundef %55, ptr noundef nonnull @.str.22, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst_byte.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %rst_byte.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i228.i, ptr %rst_byte.i, align 4
  %cmp.i229.i = icmp ugt ptr %call.i228.i, inttoptr (i32 -4096 to ptr)
  %61 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev2, align 4
  br i1 %cmp.i229.i, label %if.then94.i, label %if.end100.i

if.then94.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call.i228.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, i32 noundef %63) #7
  %64 = ptrtoint ptr %rst_byte.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rst_byte.i, align 4
  %66 = ptrtoint ptr %65 to i32
  br label %nwl_dsi_parse_dt.exit

if.end100.i:                                      ; preds = %if.end89.i
  %call.i230.i = tail call ptr @__devm_reset_control_get(ptr noundef %62, ptr noundef nonnull @.str.24, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst_esc.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 10
  %67 = ptrtoint ptr %rst_esc.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i230.i, ptr %rst_esc.i, align 4
  %cmp.i231.i = icmp ugt ptr %call.i230.i, inttoptr (i32 -4096 to ptr)
  %68 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev2, align 4
  br i1 %cmp.i231.i, label %if.then105.i, label %if.end111.i

if.then105.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %call.i230.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %69, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef %70) #7
  %71 = ptrtoint ptr %rst_esc.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rst_esc.i, align 4
  %73 = ptrtoint ptr %72 to i32
  br label %nwl_dsi_parse_dt.exit

if.end111.i:                                      ; preds = %if.end100.i
  %call.i232.i = tail call ptr @__devm_reset_control_get(ptr noundef %69, ptr noundef nonnull @.str.26, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst_dpi.i = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 11
  %74 = ptrtoint ptr %rst_dpi.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i232.i, ptr %rst_dpi.i, align 4
  %cmp.i233.i = icmp ugt ptr %call.i232.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233.i, label %if.then116.i, label %if.end111.i.if.end6_crit_edge

if.end111.i.if.end6_crit_edge:                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then116.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev2, align 4
  %77 = ptrtoint ptr %call.i232.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27, i32 noundef %77) #7
  %78 = ptrtoint ptr %rst_dpi.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rst_dpi.i, align 4
  %80 = ptrtoint ptr %79 to i32
  br label %nwl_dsi_parse_dt.exit

nwl_dsi_parse_dt.exit:                            ; preds = %if.then116.i, %if.then105.i, %if.then94.i, %if.then83.i, %if.then74.i, %if.then66.i, %if.then58.i, %if.then52.i, %if.then40.i, %if.then33.i, %if.then26.i, %if.then19.i, %if.then12.i, %if.then6.i
  %retval.0.i = phi i32 [ %7, %if.then12.i ], [ %13, %if.then19.i ], [ %19, %if.then26.i ], [ %25, %if.then33.i ], [ %31, %if.then40.i ], [ %41, %if.then58.i ], [ %45, %if.then66.i ], [ %52, %if.then74.i ], [ %59, %if.then83.i ], [ %66, %if.then94.i ], [ %73, %if.then105.i ], [ %80, %if.then116.i ], [ %2, %if.then6.i ], [ %38, %if.then52.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %nwl_dsi_parse_dt.exit.if.end6_crit_edge, label %nwl_dsi_parse_dt.exit.cleanup_crit_edge

nwl_dsi_parse_dt.exit.cleanup_crit_edge:          ; preds = %nwl_dsi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nwl_dsi_parse_dt.exit.if.end6_crit_edge:          ; preds = %nwl_dsi_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %nwl_dsi_parse_dt.exit.if.end6_crit_edge, %if.end111.i.if.end6_crit_edge
  %irq = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 8
  %81 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %83 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %84, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i74 = phi ptr [ %86, %if.end.i ], [ %84, %if.end6.dev_name.exit_crit_edge ]
  %call.i75 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %82, ptr noundef nonnull @nwl_dsi_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i74, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp = icmp slt i32 %call.i75, 0
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %88, i32 noundef %call.i75) #7
  br label %cleanup

if.end11:                                         ; preds = %dev_name.exit
  %dsi_host = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @nwl_dsi_host_ops, ptr %ops, align 4
  %90 = ptrtoint ptr %dsi_host to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %dev1, ptr %dsi_host, align 4
  %call15 = tail call i32 @mipi_dsi_host_register(ptr noundef %dsi_host) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %call15) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @soc_device_match(ptr noundef nonnull @nwl_dsi_quirks_match) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call19, i32 0, i32 5
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  %93 = ptrtoint ptr %92 to i32
  %quirks = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 6
  %94 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %quirks, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 8
  %95 = ptrtoint ptr %driver_private to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_private, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %96 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @nwl_dsi_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %97 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node, align 8
  %of_node25 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %99 = ptrtoint ptr %of_node25 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %of_node25, align 4
  %timings = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 6
  %100 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @nwl_dsi_timings, ptr %timings, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %101 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %102 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %103, i32 0, i32 27
  %104 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %of_node.i, align 8
  %call.i77 = tail call ptr @of_graph_get_remote_node(ptr noundef %105, i32 noundef 0, i32 noundef 0) #7
  %tobool.not.i78 = icmp eq ptr %call.i77, null
  br i1 %tobool.not.i78, label %if.else.i, label %if.end22.if.end7.i_crit_edge

if.end22.if.end7.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end22
  %106 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev2, align 4
  %of_node2.i = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 27
  %108 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %of_node2.i, align 8
  %call3.i = tail call ptr @of_graph_get_remote_node(ptr noundef %109, i32 noundef 0, i32 noundef 1) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %nwl_dsi_select_input.exit.thread, label %if.else.i.if.end7.i_crit_edge

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

nwl_dsi_select_input.exit.thread:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %111, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.82) #7
  br label %if.then29

if.end7.i:                                        ; preds = %if.else.i.if.end7.i_crit_edge, %if.end22.if.end7.i_crit_edge
  %cond.i = phi ptr [ @.str.84, %if.else.i.if.end7.i_crit_edge ], [ @.str.85, %if.end22.if.end7.i_crit_edge ]
  %remote.0.i = phi ptr [ %call3.i, %if.else.i.if.end7.i_crit_edge ], [ %call.i77, %if.end22.if.end7.i_crit_edge ]
  %use_dcss.0.i = phi i32 [ 1, %if.else.i.if.end7.i_crit_edge ], [ 0, %if.end22.if.end7.i_crit_edge ]
  %112 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %113, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.83, ptr noundef nonnull %cond.i) #7
  %mux.i79 = getelementptr inbounds %struct.nwl_dsi, ptr %call.i, i32 0, i32 13
  %114 = ptrtoint ptr %mux.i79 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mux.i79, align 4
  %call.i.i80 = tail call i32 @mux_control_try_select_delay(ptr noundef %115, i32 noundef %use_dcss.0.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %cmp.i = icmp slt i32 %call.i.i80, 0
  br i1 %cmp.i, label %nwl_dsi_select_input.exit.thread90, label %if.end31

nwl_dsi_select_input.exit.thread90:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %117, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.86, i32 noundef %call.i.i80) #7
  tail call void @of_node_put(ptr noundef nonnull %remote.0.i) #7
  br label %if.then29

if.then29:                                        ; preds = %nwl_dsi_select_input.exit.thread90, %nwl_dsi_select_input.exit.thread
  %retval.0.i8189 = phi i32 [ -22, %nwl_dsi_select_input.exit.thread ], [ %call.i.i80, %nwl_dsi_select_input.exit.thread90 ]
  tail call void @mipi_dsi_host_unregister(ptr noundef %dsi_host) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %remote.0.i) #7
  tail call void @drm_bridge_add(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then29, %if.then17, %if.then9, %nwl_dsi_parse_dt.exit.cleanup_crit_edge, %if.then48.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i75, %if.then9 ], [ %call15, %if.then17 ], [ %retval.0.i8189, %if.then29 ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %nwl_dsi_parse_dt.exit.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ], [ -517, %if.then48.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_dsi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mux.i = getelementptr inbounds %struct.nwl_dsi, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux.i, align 4
  %call.i = tail call i32 @mux_control_deselect(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.nwl_dsi_deselect_input.exit_crit_edge

entry.nwl_dsi_deselect_input.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_deselect_input.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.nwl_dsi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.87, i32 noundef %call.i) #7
  br label %nwl_dsi_deselect_input.exit

nwl_dsi_deselect_input.exit:                      ; preds = %if.then.i, %entry.nwl_dsi_deselect_input.exit_crit_edge
  %dsi_host = getelementptr inbounds %struct.nwl_dsi, ptr %1, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %dsi_host) #7
  tail call void @drm_bridge_remove(ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_dsi_irq_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %val.i283.i.i = alloca i32, align 4
  %val.i271.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !209
  %error.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 23
  %1 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.thread

if.end4.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end13

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 672, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.nwl_dsi_read.exit_crit_edge

if.end.i.nwl_dsi_read.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_read.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 672, i32 noundef %call.i) #7
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %error.i, align 4
  br label %nwl_dsi_read.exit

nwl_dsi_read.exit:                                ; preds = %if.then1.i, %if.end.i.nwl_dsi_read.exit_crit_edge
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nwl_dsi_read.exit.if.end4_crit_edge, label %if.then

nwl_dsi_read.exit.if.end4_crit_edge:              ; preds = %nwl_dsi_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %nwl_dsi_read.exit
  %call1 = call i32 @___ratelimit(ptr noundef nonnull @nwl_dsi_irq_handler._rs, ptr noundef nonnull @__func__.nwl_dsi_irq_handler) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %nwl_dsi_read.exit.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool6.not = icmp sgt i32 %9, -1
  br i1 %tobool6.not, label %if.end4.if.end13_crit_edge, label %if.then7

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @nwl_dsi_irq_handler._rs.30, ptr noundef nonnull @__func__.nwl_dsi_irq_handler) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge, %if.end4.if.end13_crit_edge, %if.end4.thread
  %retval.0.i3841 = phi i32 [ 0, %if.end4.thread ], [ %9, %if.then7.if.end13_crit_edge ], [ %9, %if.then10 ], [ %9, %if.end4.if.end13_crit_edge ]
  %and14 = and i32 %retval.0.i3841, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %and16 = and i32 %retval.0.i3841, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and19 = and i32 %retval.0.i3841, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %14 = and i32 %retval.0.i3841, 386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.end13.if.end22_crit_edge, label %if.then21

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end13
  %xfer1.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 24
  %16 = ptrtoint ptr %xfer1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xfer1.i, align 4
  %tobool.not.i32 = icmp eq ptr %17, null
  br i1 %tobool.not.i32, label %if.then21.if.end22_crit_edge, label %if.end.i34

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end.i34:                                       ; preds = %if.then21
  %direction.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i33 = icmp ne i32 %19, 0
  %or.cond.i = or i1 %tobool15.not, %cmp.i33
  br i1 %or.cond.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  %tx_len.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_len.i, align 4
  %status4.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %status4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %status4.i, align 4
  br label %if.then14.i

if.else.i:                                        ; preds = %if.end.i34
  %and5.i = and i32 %retval.0.i3841, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %and8.i = and i32 %retval.0.i3841, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %or.cond25.i = or i1 %tobool6.not.i, %tobool9.not.i
  br i1 %or.cond25.i, label %if.else.i.if.end22_crit_edge, label %if.then10.i

if.else.i.if.end22_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then10.i:                                      ; preds = %if.else.i
  %dev1.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i.i, align 4
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %17, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_buf.i.i, align 4
  %status3.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 3
  %29 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %status3.i.i, align 4
  %rx_word_count.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 7
  %30 = ptrtoint ptr %rx_word_count.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_word_count.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.i = icmp eq i16 %31, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then10.i.if.end128.i.i_crit_edge

if.then10.i.if.end128.i.i_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128.i.i

if.then.i.i:                                      ; preds = %if.then10.i
  br i1 %tobool17.not, label %if.then.i.i.if.end22_crit_edge, label %if.end.i.i

if.then.i.i.if.end22_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %32 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !209
  %33 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %nwl_dsi_read.exit.thread.i.i

nwl_dsi_read.exit.thread.i.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  br label %if.then8.sink.split.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %regmap.i.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 7
  %35 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 668, ptr noundef nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %nwl_dsi_read.exit.thread301.i.i, label %nwl_dsi_read.exit.i.i

nwl_dsi_read.exit.thread301.i.i:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 668, i32 noundef %call.i.i.i) #7
  %39 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  br label %if.then8.sink.split.i.i

nwl_dsi_read.exit.i.i:                            ; preds = %if.end.i.i.i
  %41 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr.pr.i.i = load i32, ptr %error.i, align 4
  %42 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %44 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr.i.i)
  %tobool7.not.i.i = icmp eq i32 %.pr.pr.i.i, 0
  br i1 %tobool7.not.i.i, label %nwl_dsi_read.exit.i.i.do.end26.i.i_crit_edge, label %nwl_dsi_read.exit.i.i.if.then8.i.i_crit_edge

nwl_dsi_read.exit.i.i.if.then8.i.i_crit_edge:     ; preds = %nwl_dsi_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i

nwl_dsi_read.exit.i.i.do.end26.i.i_crit_edge:     ; preds = %nwl_dsi_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i.i

if.then8.sink.split.i.i:                          ; preds = %nwl_dsi_read.exit.thread301.i.i, %nwl_dsi_read.exit.thread.i.i
  %retval.0.i298.ph.i.i = phi i32 [ %40, %nwl_dsi_read.exit.thread301.i.i ], [ 0, %nwl_dsi_read.exit.thread.i.i ]
  %.ph.i.i = phi i32 [ %call.i.i.i, %nwl_dsi_read.exit.thread301.i.i ], [ %34, %nwl_dsi_read.exit.thread.i.i ]
  %45 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %error.i, align 4
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.then8.sink.split.i.i, %nwl_dsi_read.exit.i.i.if.then8.i.i_crit_edge
  %retval.0.i298.i.i = phi i32 [ %43, %nwl_dsi_read.exit.i.i.if.then8.i.i_crit_edge ], [ %retval.0.i298.ph.i.i, %if.then8.sink.split.i.i ]
  %46 = phi i32 [ %.pr.pr.i.i, %nwl_dsi_read.exit.i.i.if.then8.i.i_crit_edge ], [ %.ph.i.i, %if.then8.sink.split.i.i ]
  %47 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %status3.i.i, align 4
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then8.i.i, %nwl_dsi_read.exit.i.i.do.end26.i.i_crit_edge
  %retval.0.i299.i.i = phi i32 [ %43, %nwl_dsi_read.exit.i.i.do.end26.i.i_crit_edge ], [ %retval.0.i298.i.i, %if.then8.i.i ]
  %conv28.i.i = trunc i32 %retval.0.i299.i.i to i16
  %and45.i.i = lshr i32 %retval.0.i299.i.i, 22
  %conv46.i.i = and i32 %and45.i.i, 3
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %17, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv69.i.i = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv46.i.i, i32 %conv69.i.i)
  %cmp70.not.i.i = icmp eq i32 %conv46.i.i, %conv69.i.i
  br i1 %cmp70.not.i.i, label %if.end79.i.i, label %if.then72.i.i

if.then72.i.i:                                    ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cmd.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 6
  %52 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cmd.i.i, align 1
  %conv73.i.i = zext i8 %53 to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.33, i32 noundef %conv73.i.i, i32 noundef %conv46.i.i, i32 noundef %conv69.i.i) #7
  br label %cleanup.sink.split.i.i

if.end79.i.i:                                     ; preds = %do.end26.i.i
  %and63.i.i = lshr i32 %retval.0.i299.i.i, 16
  %conv65.i.i = and i32 %and63.i.i, 63
  %54 = zext i32 %conv65.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv65.i.i, label %sw.epilog.i.i [
    i32 18, label %if.end79.i.i.sw.bb.i.i_crit_edge
    i32 34, label %if.end79.i.i.sw.bb.i.i_crit_edge42
    i32 17, label %if.end79.i.i.sw.bb90.i.i_crit_edge
    i32 33, label %if.end79.i.i.sw.bb90.i.i_crit_edge43
    i32 2, label %sw.bb105.i.i
  ]

if.end79.i.i.sw.bb90.i.i_crit_edge43:             ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb90.i.i

if.end79.i.i.sw.bb90.i.i_crit_edge:               ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb90.i.i

if.end79.i.i.sw.bb.i.i_crit_edge42:               ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.end79.i.i.sw.bb.i.i_crit_edge:                 ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end79.i.i.sw.bb.i.i_crit_edge, %if.end79.i.i.sw.bb.i.i_crit_edge42
  %rx_len.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %49, i32 0, i32 5
  %55 = ptrtoint ptr %rx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp82.i.i = icmp ugt i32 %56, 1
  br i1 %cmp82.i.i, label %if.then84.i.i, label %sw.bb.i.i.sw.bb90.i.i_crit_edge

sw.bb.i.i.sw.bb90.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb90.i.i

if.then84.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv85.i.i = lshr i32 %retval.0.i299.i.i, 8
  %conv87.i.i = trunc i32 %conv85.i.i to i8
  %arrayidx.i.i = getelementptr i8, ptr %28, i32 1
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv87.i.i, ptr %arrayidx.i.i, align 1
  %rx_len88.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  %58 = ptrtoint ptr %rx_len88.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_len88.i.i, align 4
  %inc.i.i = add i32 %59, 1
  store i32 %inc.i.i, ptr %rx_len88.i.i, align 4
  br label %sw.bb90.i.i

sw.bb90.i.i:                                      ; preds = %if.then84.i.i, %sw.bb.i.i.sw.bb90.i.i_crit_edge, %if.end79.i.i.sw.bb90.i.i_crit_edge, %if.end79.i.i.sw.bb90.i.i_crit_edge43
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %17, align 4
  %rx_len92.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %rx_len92.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_len92.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp93.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp93.not.i.i, label %sw.bb90.i.i.if.end102.i.i_crit_edge, label %if.then95.i.i

sw.bb90.i.i.if.end102.i.i_crit_edge:              ; preds = %sw.bb90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i.i

if.then95.i.i:                                    ; preds = %sw.bb90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv98.i.i = trunc i32 %retval.0.i299.i.i to i8
  %64 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv98.i.i, ptr %28, align 1
  %rx_len100.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  %65 = ptrtoint ptr %rx_len100.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_len100.i.i, align 4
  %inc101.i.i = add i32 %66, 1
  store i32 %inc101.i.i, ptr %rx_len100.i.i, align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.then95.i.i, %sw.bb90.i.i.if.end102.i.i_crit_edge
  %rx_len103.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  %67 = ptrtoint ptr %rx_len103.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_len103.i.i, align 4
  br label %cleanup.sink.split.i.i

sw.bb105.i.i:                                     ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv108.i.i = and i32 %retval.0.i299.i.i, 255
  %cmd109.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 6
  %69 = ptrtoint ptr %cmd109.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cmd109.i.i, align 1
  %conv110.i.i = zext i8 %70 to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34, i32 noundef %conv110.i.i, i32 noundef %conv108.i.i) #7
  br label %cleanup.sink.split.i.i

sw.epilog.i.i:                                    ; preds = %if.end79.i.i
  %conv113.i.i = and i32 %retval.0.i299.i.i, 65535
  %rx_len115.i.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %49, i32 0, i32 5
  %71 = ptrtoint ptr %rx_len115.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_len115.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv113.i.i, i32 %72)
  %cmp116.i.i = icmp ugt i32 %conv113.i.i, %72
  br i1 %cmp116.i.i, label %if.then118.i.i, label %if.end125.i.i

if.then118.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cmd119.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 6
  %73 = ptrtoint ptr %cmd119.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %cmd119.i.i, align 1
  %conv120.i.i = zext i8 %74 to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.35, i32 noundef %conv120.i.i, i32 noundef %72, i32 noundef %conv113.i.i) #7
  br label %cleanup.sink.split.i.i

if.end125.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %rx_word_count.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv28.i.i, ptr %rx_word_count.i.i, align 2
  br label %if.end128.i.i

if.end128.i.i:                                    ; preds = %if.end125.i.i, %if.then10.i.if.end128.i.i_crit_edge
  %word_count.0.i.i = phi i16 [ %conv28.i.i, %if.end125.i.i ], [ %31, %if.then10.i.if.end128.i.i_crit_edge ]
  br i1 %tobool20.not, label %if.end128.i.i.if.end22_crit_edge, label %while.cond.preheader.i.i

if.end128.i.i.if.end22_crit_edge:                 ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

while.cond.preheader.i.i:                         ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %word_count.0.i.i)
  %cmp134304.i.i = icmp ugt i16 %word_count.0.i.i, 3
  br i1 %cmp134304.i.i, label %while.body.lr.ph.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %while.cond.preheader.i.i
  %regmap.i274.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 7
  %rx_len153.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %nwl_dsi_read.exit282.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %word_count.1306.i.i = phi i16 [ %word_count.0.i.i, %while.body.lr.ph.i.i ], [ %sub.i.i, %nwl_dsi_read.exit282.i.i.while.body.i.i_crit_edge ]
  %payload.0305.i.i = phi ptr [ %28, %while.body.lr.ph.i.i ], [ %add.ptr.i.i, %nwl_dsi_read.exit282.i.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i271.i.i) #7
  %76 = ptrtoint ptr %val.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %val.i271.i.i, align 4, !annotation !209
  %77 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i273.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i273.i.i, label %if.end.i277.i.i, label %while.body.i.i.nwl_dsi_read.exit282.i.i_crit_edge

while.body.i.i.nwl_dsi_read.exit282.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_read.exit282.i.i

if.end.i277.i.i:                                  ; preds = %while.body.i.i
  %79 = ptrtoint ptr %regmap.i274.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i274.i.i, align 4
  %call.i275.i.i = call i32 @regmap_read(ptr noundef %80, i32 noundef 664, ptr noundef nonnull %val.i271.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275.i.i)
  %cmp.i276.i.i = icmp slt i32 %call.i275.i.i, 0
  br i1 %cmp.i276.i.i, label %if.then1.i279.i.i, label %if.end.i277.i.i.if.end3.i280.i.i_crit_edge

if.end.i277.i.i.if.end3.i280.i.i_crit_edge:       ; preds = %if.end.i277.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i280.i.i

if.then1.i279.i.i:                                ; preds = %if.end.i277.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1.i.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %82, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 664, i32 noundef %call.i275.i.i) #7
  %83 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call.i275.i.i, ptr %error.i, align 4
  br label %if.end3.i280.i.i

if.end3.i280.i.i:                                 ; preds = %if.then1.i279.i.i, %if.end.i277.i.i.if.end3.i280.i.i_crit_edge
  %84 = ptrtoint ptr %val.i271.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val.i271.i.i, align 4
  br label %nwl_dsi_read.exit282.i.i

nwl_dsi_read.exit282.i.i:                         ; preds = %if.end3.i280.i.i, %while.body.i.i.nwl_dsi_read.exit282.i.i_crit_edge
  %retval.0.i281.i.i = phi i32 [ %85, %if.end3.i280.i.i ], [ 0, %while.body.i.i.nwl_dsi_read.exit282.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i271.i.i) #7
  %conv139.i.i = trunc i32 %retval.0.i281.i.i to i8
  %86 = ptrtoint ptr %payload.0305.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv139.i.i, ptr %payload.0305.i.i, align 1
  %shr141.i.i = lshr i32 %retval.0.i281.i.i, 8
  %conv143.i.i = trunc i32 %shr141.i.i to i8
  %arrayidx144.i.i = getelementptr i8, ptr %payload.0305.i.i, i32 1
  %87 = ptrtoint ptr %arrayidx144.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv143.i.i, ptr %arrayidx144.i.i, align 1
  %shr145.i.i = lshr i32 %retval.0.i281.i.i, 16
  %conv147.i.i = trunc i32 %shr145.i.i to i8
  %arrayidx148.i.i = getelementptr i8, ptr %payload.0305.i.i, i32 2
  %88 = ptrtoint ptr %arrayidx148.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv147.i.i, ptr %arrayidx148.i.i, align 1
  %shr149.i.i = lshr i32 %retval.0.i281.i.i, 24
  %conv151.i.i = trunc i32 %shr149.i.i to i8
  %arrayidx152.i.i = getelementptr i8, ptr %payload.0305.i.i, i32 3
  %89 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv151.i.i, ptr %arrayidx152.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %payload.0305.i.i, i32 4
  %90 = ptrtoint ptr %rx_len153.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_len153.i.i, align 4
  %add.i.i = add i32 %91, 4
  store i32 %add.i.i, ptr %rx_len153.i.i, align 4
  %sub.i.i = add i16 %word_count.1306.i.i, -4
  %cmp134.i.i = icmp ugt i16 %sub.i.i, 3
  br i1 %cmp134.i.i, label %nwl_dsi_read.exit282.i.i.while.body.i.i_crit_edge, label %nwl_dsi_read.exit282.i.i.while.end.i.i_crit_edge

nwl_dsi_read.exit282.i.i.while.end.i.i_crit_edge: ; preds = %nwl_dsi_read.exit282.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

nwl_dsi_read.exit282.i.i.while.body.i.i_crit_edge: ; preds = %nwl_dsi_read.exit282.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %nwl_dsi_read.exit282.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %payload.0.lcssa.i.i = phi ptr [ %28, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %add.ptr.i.i, %nwl_dsi_read.exit282.i.i.while.end.i.i_crit_edge ]
  %word_count.1.lcssa.i.i = phi i16 [ %word_count.0.i.i, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %sub.i.i, %nwl_dsi_read.exit282.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word_count.1.lcssa.i.i)
  %cmp157.not.i.i = icmp eq i16 %word_count.1.lcssa.i.i, 0
  br i1 %cmp157.not.i.i, label %while.end.i.i.if.end184.i.i_crit_edge, label %if.then159.i.i

while.end.i.i.if.end184.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184.i.i

if.then159.i.i:                                   ; preds = %while.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i283.i.i) #7
  %92 = ptrtoint ptr %val.i283.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %val.i283.i.i, align 4, !annotation !209
  %93 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i285.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i285.i.i, label %if.end.i289.i.i, label %if.then159.i.i.nwl_dsi_read.exit294.i.i_crit_edge

if.then159.i.i.nwl_dsi_read.exit294.i.i_crit_edge: ; preds = %if.then159.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_read.exit294.i.i

if.end.i289.i.i:                                  ; preds = %if.then159.i.i
  %regmap.i286.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %data, i32 0, i32 7
  %95 = ptrtoint ptr %regmap.i286.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i286.i.i, align 4
  %call.i287.i.i = call i32 @regmap_read(ptr noundef %96, i32 noundef 664, ptr noundef nonnull %val.i283.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287.i.i)
  %cmp.i288.i.i = icmp slt i32 %call.i287.i.i, 0
  br i1 %cmp.i288.i.i, label %if.then1.i291.i.i, label %if.end.i289.i.i.if.end3.i292.i.i_crit_edge

if.end.i289.i.i.if.end3.i292.i.i_crit_edge:       ; preds = %if.end.i289.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i292.i.i

if.then1.i291.i.i:                                ; preds = %if.end.i289.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev1.i.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %98, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 664, i32 noundef %call.i287.i.i) #7
  %99 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call.i287.i.i, ptr %error.i, align 4
  br label %if.end3.i292.i.i

if.end3.i292.i.i:                                 ; preds = %if.then1.i291.i.i, %if.end.i289.i.i.if.end3.i292.i.i_crit_edge
  %100 = ptrtoint ptr %val.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i283.i.i, align 4
  br label %nwl_dsi_read.exit294.i.i

nwl_dsi_read.exit294.i.i:                         ; preds = %if.end3.i292.i.i, %if.then159.i.i.nwl_dsi_read.exit294.i.i_crit_edge
  %retval.0.i293.i.i = phi i32 [ %101, %if.end3.i292.i.i ], [ 0, %if.then159.i.i.nwl_dsi_read.exit294.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i283.i.i) #7
  %102 = zext i16 %word_count.1.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %word_count.1.lcssa.i.i, label %nwl_dsi_read.exit294.i.i.if.end184.i.i_crit_edge [
    i16 3, label %sw.bb162.i.i
    i16 2, label %nwl_dsi_read.exit294.i.i.sw.bb169.i.i_crit_edge
    i16 1, label %nwl_dsi_read.exit294.i.i.sw.bb176.i.i_crit_edge
  ]

nwl_dsi_read.exit294.i.i.sw.bb176.i.i_crit_edge:  ; preds = %nwl_dsi_read.exit294.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb176.i.i

nwl_dsi_read.exit294.i.i.sw.bb169.i.i_crit_edge:  ; preds = %nwl_dsi_read.exit294.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb169.i.i

nwl_dsi_read.exit294.i.i.if.end184.i.i_crit_edge: ; preds = %nwl_dsi_read.exit294.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184.i.i

sw.bb162.i.i:                                     ; preds = %nwl_dsi_read.exit294.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr163.i.i = lshr i32 %retval.0.i293.i.i, 16
  %conv165.i.i = trunc i32 %shr163.i.i to i8
  %arrayidx166.i.i = getelementptr i8, ptr %payload.0.lcssa.i.i, i32 2
  %103 = ptrtoint ptr %arrayidx166.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv165.i.i, ptr %arrayidx166.i.i, align 1
  %rx_len167.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  %104 = ptrtoint ptr %rx_len167.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_len167.i.i, align 4
  %inc168.i.i = add i32 %105, 1
  store i32 %inc168.i.i, ptr %rx_len167.i.i, align 4
  br label %sw.bb169.i.i

sw.bb169.i.i:                                     ; preds = %sw.bb162.i.i, %nwl_dsi_read.exit294.i.i.sw.bb169.i.i_crit_edge
  %shr170.i.i = lshr i32 %retval.0.i293.i.i, 8
  %conv172.i.i = trunc i32 %shr170.i.i to i8
  %arrayidx173.i.i = getelementptr i8, ptr %payload.0.lcssa.i.i, i32 1
  %106 = ptrtoint ptr %arrayidx173.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv172.i.i, ptr %arrayidx173.i.i, align 1
  %rx_len174.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  %107 = ptrtoint ptr %rx_len174.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_len174.i.i, align 4
  %inc175.i.i = add i32 %108, 1
  store i32 %inc175.i.i, ptr %rx_len174.i.i, align 4
  br label %sw.bb176.i.i

sw.bb176.i.i:                                     ; preds = %sw.bb169.i.i, %nwl_dsi_read.exit294.i.i.sw.bb176.i.i_crit_edge
  %conv179.i.i = trunc i32 %retval.0.i293.i.i to i8
  %109 = ptrtoint ptr %payload.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv179.i.i, ptr %payload.0.lcssa.i.i, align 1
  %rx_len181.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  %110 = ptrtoint ptr %rx_len181.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_len181.i.i, align 4
  %inc182.i.i = add i32 %111, 1
  store i32 %inc182.i.i, ptr %rx_len181.i.i, align 4
  br label %if.end184.i.i

if.end184.i.i:                                    ; preds = %sw.bb176.i.i, %nwl_dsi_read.exit294.i.i.if.end184.i.i_crit_edge, %while.end.i.i.if.end184.i.i_crit_edge
  %rx_len185.i.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 9
  %112 = ptrtoint ptr %rx_len185.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_len185.i.i, align 4
  %114 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %status3.i.i, align 4
  %115 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool188.not.i.i = icmp eq i32 %116, 0
  br i1 %tobool188.not.i.i, label %if.end184.i.i.if.then14.i_crit_edge, label %if.end184.i.i.cleanup.sink.split.i.i_crit_edge

if.end184.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.end184.i.i.if.then14.i_crit_edge:              ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

cleanup.sink.split.i.i:                           ; preds = %if.end184.i.i.cleanup.sink.split.i.i_crit_edge, %if.then118.i.i, %sw.bb105.i.i, %if.end102.i.i, %if.then72.i.i
  %.sink.i.i = phi i32 [ -22, %if.then118.i.i ], [ -71, %sw.bb105.i.i ], [ %68, %if.end102.i.i ], [ -22, %if.then72.i.i ], [ %116, %if.end184.i.i.cleanup.sink.split.i.i_crit_edge ]
  %117 = ptrtoint ptr %status3.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %.sink.i.i, ptr %status3.i.i, align 4
  br label %if.then14.i

if.then14.i:                                      ; preds = %cleanup.sink.split.i.i, %if.end184.i.i.if.then14.i_crit_edge, %if.then3.i
  %completed.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %17, i32 0, i32 2
  call void @complete(ptr noundef %completed.i) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then14.i, %if.end128.i.i.if.end22_crit_edge, %if.then.i.i.if.end22_crit_edge, %if.else.i.if.end22_crit_edge, %if.then21.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_control_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_dsi_host_attach(ptr nocapture noundef %dsi_host, ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dsi_host, i32 20
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 5
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %5, i32 noundef %7) #7
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lanes, align 8
  %10 = add i32 %9, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %10)
  %11 = icmp ult i32 %10, -4
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lanes6 = getelementptr i8, ptr %dsi_host, i32 180
  %12 = ptrtoint ptr %lanes6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %lanes6, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format, align 4
  %format8 = getelementptr i8, ptr %dsi_host, i32 184
  %15 = ptrtoint ptr %format8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format8, align 4
  %16 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode_flags, align 8
  %dsi_mode_flags = getelementptr i8, ptr %dsi_host, i32 300
  %18 = ptrtoint ptr %dsi_mode_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dsi_mode_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_dsi_host_transfer(ptr nocapture noundef %dsi_host, ptr noundef %msg) #2 align 64 {
entry:
  %xfer = alloca %struct.nwl_dsi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #7
  %0 = call ptr @memset(ptr %xfer, i32 255, i32 96)
  %xfer1 = getelementptr i8, ptr %dsi_host, i32 308
  %1 = ptrtoint ptr %xfer1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %xfer, ptr %xfer1, align 4
  %packet = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 1
  %call = call i32 @mipi_dsi_create_packet(ptr noundef %packet, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %xfer1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xfer1, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  %5 = and i8 %4, 54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %7 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp17.not = icmp eq i32 %8, 0
  br i1 %cmp17.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true19

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buf, align 4
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %land.lhs.true19.if.else_crit_edge, label %land.lhs.true19.if.end23_crit_edge

land.lhs.true19.if.end23_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true19.if.else_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true19.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else, %land.lhs.true19.if.end23_crit_edge
  %cmp25 = phi i1 [ true, %land.lhs.true19.if.end23_crit_edge ], [ false, %if.else ]
  %.sink = phi i32 [ 1, %land.lhs.true19.if.end23_crit_edge ], [ 0, %if.else ]
  %direction22 = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 4
  %11 = ptrtoint ptr %direction22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %direction22, align 4
  %need_bta = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 5
  %frombool = zext i1 %cmp25 to i8
  %flags = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 1
  %or = or i8 %15, %frombool
  %16 = ptrtoint ptr %need_bta to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or, ptr %need_bta, align 4
  %17 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %xfer, align 4
  %status = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 3
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -110, ptr %status, align 4
  %rx_word_count = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 7
  %19 = ptrtoint ptr %rx_word_count to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %rx_word_count, align 2
  %rx_len36 = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 9
  %20 = ptrtoint ptr %rx_len36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rx_len36, align 4
  %cmd = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 6
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %cmd, align 1
  %tx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %22 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37.not = icmp eq i32 %23, 0
  br i1 %cmp37.not, label %if.end23.if.end41_crit_edge, label %if.then39

if.end23.if.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %tx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %24 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %cmd, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end23.if.end41_crit_edge
  %completed = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 2
  %29 = ptrtoint ptr %completed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %completed, align 4
  %wait.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %xfer, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #7
  %rx_esc_clk = getelementptr i8, ptr %dsi_host, i32 164
  %30 = ptrtoint ptr %rx_esc_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_esc_clk, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.clk_prepare_enable.exit_crit_edge

if.end41.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end41
  %call1.i = call i32 @clk_enable(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end46_crit_edge, label %if.then3.i

if.end.i.if.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %31) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end41.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end41.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp43 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp43, label %if.then45, label %clk_prepare_enable.exit.if.end46_crit_edge

clk_prepare_enable.exit.if.end46_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then45:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %dsi_host, i32 20
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i) #7
  br label %cleanup

if.end46:                                         ; preds = %clk_prepare_enable.exit.if.end46_crit_edge, %if.end.i.if.end46_crit_edge
  %dev47 = getelementptr i8, ptr %dsi_host, i32 20
  %34 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev47, align 4
  %36 = ptrtoint ptr %rx_esc_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_esc_clk, align 4
  %call49 = call i32 @clk_get_rate(ptr noundef %37) #7
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %35, i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %call49) #7
  %38 = ptrtoint ptr %xfer1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xfer1, align 4
  %payload_length.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %39, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %payload_length.i, align 4
  %payload2.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %39, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %payload2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %payload2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp250.i = icmp ugt i32 %41, 3
  br i1 %cmp250.i, label %while.body.lr.ph.i, label %if.end46.while.end.i_crit_edge

if.end46.while.end.i_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end46
  %error.i.i = getelementptr i8, ptr %dsi_host, i32 304
  %regmap.i.i = getelementptr i8, ptr %dsi_host, i32 132
  br label %while.body.i

while.body.i:                                     ; preds = %nwl_dsi_write.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %payload.0253.i = phi ptr [ %43, %while.body.lr.ph.i ], [ %add.ptr.i, %nwl_dsi_write.exit.i.while.body.i_crit_edge ]
  %length.0252.i = phi i32 [ %41, %while.body.lr.ph.i ], [ %sub.i, %nwl_dsi_write.exit.i.while.body.i_crit_edge ]
  %hs_workaround.0251.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %or.i, %nwl_dsi_write.exit.i.while.body.i_crit_edge ]
  %44 = ptrtoint ptr %payload.0253.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %payload.0253.i, align 4
  %and.i = and i32 %45, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i89 = icmp eq i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i89 to i32
  %or.i = or i32 %hs_workaround.0251.i, %lnot.ext.i
  %46 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.nwl_dsi_write.exit.i_crit_edge

while.body.i.nwl_dsi_write.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %48 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 640, i32 noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.nwl_dsi_write.exit.i_crit_edge

if.end.i.i.nwl_dsi_write.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %51, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 640, i32 noundef %call.i.i) #7
  %52 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i.i, ptr %error.i.i, align 4
  br label %nwl_dsi_write.exit.i

nwl_dsi_write.exit.i:                             ; preds = %if.then1.i.i, %if.end.i.i.nwl_dsi_write.exit.i_crit_edge, %while.body.i.nwl_dsi_write.exit.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %payload.0253.i, i32 4
  %sub.i = add i32 %length.0252.i, -4
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %nwl_dsi_write.exit.i.while.body.i_crit_edge, label %nwl_dsi_write.exit.i.while.end.i_crit_edge

nwl_dsi_write.exit.i.while.end.i_crit_edge:       ; preds = %nwl_dsi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

nwl_dsi_write.exit.i.while.body.i_crit_edge:      ; preds = %nwl_dsi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %nwl_dsi_write.exit.i.while.end.i_crit_edge, %if.end46.while.end.i_crit_edge
  %hs_workaround.0.lcssa.i = phi i32 [ 0, %if.end46.while.end.i_crit_edge ], [ %or.i, %nwl_dsi_write.exit.i.while.end.i_crit_edge ]
  %length.0.lcssa.i = phi i32 [ %41, %if.end46.while.end.i_crit_edge ], [ %sub.i, %nwl_dsi_write.exit.i.while.end.i_crit_edge ]
  %payload.0.lcssa.i = phi ptr [ %43, %if.end46.while.end.i_crit_edge ], [ %add.ptr.i, %nwl_dsi_write.exit.i.while.end.i_crit_edge ]
  %53 = zext i32 %length.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %length.0.lcssa.i, label %while.end.i.sw.epilog.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end.i.sw.bb4.i_crit_edge
    i32 1, label %while.end.i.sw.bb14.i_crit_edge
  ]

while.end.i.sw.bb14.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

while.end.i.sw.bb4.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i

while.end.i.sw.epilog.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %payload.0.lcssa.i, i32 2
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %55 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb.i, %while.end.i.sw.bb4.i_crit_edge
  %val.0.i = phi i32 [ 0, %while.end.i.sw.bb4.i_crit_edge ], [ %shl.i, %sw.bb.i ]
  %arrayidx5.i = getelementptr i8, ptr %payload.0.lcssa.i, i32 1
  %56 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %57 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %shl7.i, %val.0.i
  %and9.i = and i32 %or8.i, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %lnot.ext12.i = zext i1 %tobool10.not.i to i32
  %or13.i = or i32 %hs_workaround.0.lcssa.i, %lnot.ext12.i
  br label %sw.bb14.i

sw.bb14.i:                                        ; preds = %sw.bb4.i, %while.end.i.sw.bb14.i_crit_edge
  %val.1.i = phi i32 [ 0, %while.end.i.sw.bb14.i_crit_edge ], [ %or8.i, %sw.bb4.i ]
  %hs_workaround.1.i = phi i32 [ %hs_workaround.0.lcssa.i, %while.end.i.sw.bb14.i_crit_edge ], [ %or13.i, %sw.bb4.i ]
  %error.i221.i = getelementptr i8, ptr %dsi_host, i32 304
  %58 = ptrtoint ptr %error.i221.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error.i221.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i222.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i222.i, label %if.end.i226.i, label %sw.bb14.i.sw.epilog.i_crit_edge

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i226.i:                                    ; preds = %sw.bb14.i
  %60 = ptrtoint ptr %payload.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %payload.0.lcssa.i, align 1
  %conv16.i = zext i8 %61 to i32
  %or17.i = or i32 %val.1.i, %conv16.i
  %regmap.i223.i = getelementptr i8, ptr %dsi_host, i32 132
  %62 = ptrtoint ptr %regmap.i223.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i223.i, align 4
  %call.i224.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 640, i32 noundef %or17.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224.i)
  %cmp.i225.i = icmp slt i32 %call.i224.i, 0
  br i1 %cmp.i225.i, label %if.then1.i228.i, label %if.end.i226.i.sw.epilog.i_crit_edge

if.end.i226.i.sw.epilog.i_crit_edge:              ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then1.i228.i:                                  ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %65, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 640, i32 noundef %call.i224.i) #7
  %66 = ptrtoint ptr %error.i221.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i224.i, ptr %error.i221.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then1.i228.i, %if.end.i226.i.sw.epilog.i_crit_edge, %sw.bb14.i.sw.epilog.i_crit_edge, %while.end.i.sw.epilog.i_crit_edge
  %hs_workaround.2.i = phi i32 [ %hs_workaround.0.lcssa.i, %while.end.i.sw.epilog.i_crit_edge ], [ %hs_workaround.1.i, %sw.bb14.i.sw.epilog.i_crit_edge ], [ %hs_workaround.1.i, %if.end.i226.i.sw.epilog.i_crit_edge ], [ %hs_workaround.1.i, %if.then1.i228.i ]
  %67 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %payload_length.i, align 4
  %tx_len.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %39, i32 0, i32 8
  %69 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %tx_len.i, align 4
  %arrayidx19.i = getelementptr %struct.nwl_dsi_transfer, ptr %39, i32 0, i32 1, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %71 to i32
  %arrayidx22.i = getelementptr %struct.nwl_dsi_transfer, ptr %39, i32 0, i32 1, i32 1, i32 2
  %72 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx22.i, align 2
  %conv23.i = zext i8 %73 to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 8
  %or25.i = or i32 %shl24.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hs_workaround.2.i)
  %tobool27.not.i = icmp eq i32 %hs_workaround.2.i, 0
  br i1 %tobool27.not.i, label %sw.epilog.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %quirks.i = getelementptr i8, ptr %dsi_host, i32 128
  %74 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %quirks.i, align 4
  %and28.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev47, align 4
  %cmd.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %39, i32 0, i32 6
  %78 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cmd.i, align 1
  %conv30.i = zext i8 %79 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %77, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef %conv30.i) #7
  br label %do.body38.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.epilog.i.if.else.i_crit_edge
  %80 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %39, align 4
  %flags.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %flags.i, align 2
  %84 = lshr i16 %83, 1
  %85 = and i16 %84, 1
  %86 = xor i16 %85, 1
  %87 = zext i16 %86 to i32
  %phi.bo.i = shl nuw nsw i32 %87, 24
  br label %do.body38.i

do.body38.i:                                      ; preds = %if.else.i, %if.then.i
  %hs_mode.0.i = phi i32 [ 16777216, %if.then.i ], [ %phi.bo.i, %if.else.i ]
  %error.i230.i = getelementptr i8, ptr %dsi_host, i32 304
  %88 = ptrtoint ptr %error.i230.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %error.i230.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i231.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i231.i, label %if.end.i235.i, label %do.body38.i.nwl_dsi_begin_transmission.exit_crit_edge

do.body38.i.nwl_dsi_begin_transmission.exit_crit_edge: ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_begin_transmission.exit

if.end.i235.i:                                    ; preds = %do.body38.i
  %90 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %39, align 4
  %type.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %type.i, align 1
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %91, align 4
  %conv83.i = zext i8 %95 to i32
  %shl84.i = shl nuw nsw i32 %conv83.i, 16
  %and85.i = and i32 %shl84.i, 196608
  %conv115.i = zext i8 %93 to i32
  %shl116.i = shl nuw nsw i32 %conv115.i, 18
  %and117.i = and i32 %shl116.i, 16515072
  %need_bta.i = getelementptr inbounds %struct.nwl_dsi_transfer, ptr %39, i32 0, i32 5
  %96 = ptrtoint ptr %need_bta.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %need_bta.i, align 4, !range !210
  %98 = zext i8 %97 to i32
  %shl175.i = shl nuw nsw i32 %98, 25
  %or86.i = or i32 %or25.i, %hs_mode.0.i
  %or118.i = or i32 %or86.i, %and85.i
  %or145.i = or i32 %or118.i, %and117.i
  %or177.i = or i32 %or145.i, %shl175.i
  %regmap.i232.i = getelementptr i8, ptr %dsi_host, i32 132
  %99 = ptrtoint ptr %regmap.i232.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i232.i, align 4
  %call.i233.i = call i32 @regmap_write(ptr noundef %100, i32 noundef 644, i32 noundef %or177.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233.i)
  %cmp.i234.i = icmp slt i32 %call.i233.i, 0
  br i1 %cmp.i234.i, label %if.then1.i237.i, label %nwl_dsi_write.exit238.i

if.then1.i237.i:                                  ; preds = %if.end.i235.i
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %102, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 644, i32 noundef %call.i233.i) #7
  br label %nwl_dsi_write.exit247.sink.split.i

nwl_dsi_write.exit238.i:                          ; preds = %if.end.i235.i
  %103 = ptrtoint ptr %error.i230.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr.i = load i32, ptr %error.i230.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i240.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i240.i, label %if.end.i244.i, label %nwl_dsi_write.exit238.i.nwl_dsi_begin_transmission.exit_crit_edge

nwl_dsi_write.exit238.i.nwl_dsi_begin_transmission.exit_crit_edge: ; preds = %nwl_dsi_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_begin_transmission.exit

if.end.i244.i:                                    ; preds = %nwl_dsi_write.exit238.i
  %104 = ptrtoint ptr %regmap.i232.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap.i232.i, align 4
  %call.i242.i = call i32 @regmap_write(ptr noundef %105, i32 noundef 648, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242.i)
  %cmp.i243.i = icmp slt i32 %call.i242.i, 0
  br i1 %cmp.i243.i, label %if.then1.i246.i, label %if.end.i244.i.nwl_dsi_begin_transmission.exit_crit_edge

if.end.i244.i.nwl_dsi_begin_transmission.exit_crit_edge: ; preds = %if.end.i244.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_begin_transmission.exit

if.then1.i246.i:                                  ; preds = %if.end.i244.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %107, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 648, i32 noundef %call.i242.i) #7
  br label %nwl_dsi_write.exit247.sink.split.i

nwl_dsi_write.exit247.sink.split.i:               ; preds = %if.then1.i246.i, %if.then1.i237.i
  %call.i233.sink.i = phi i32 [ %call.i233.i, %if.then1.i237.i ], [ %call.i242.i, %if.then1.i246.i ]
  %108 = ptrtoint ptr %error.i230.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call.i233.sink.i, ptr %error.i230.i, align 4
  br label %nwl_dsi_begin_transmission.exit

nwl_dsi_begin_transmission.exit:                  ; preds = %nwl_dsi_write.exit247.sink.split.i, %if.end.i244.i.nwl_dsi_begin_transmission.exit_crit_edge, %nwl_dsi_write.exit238.i.nwl_dsi_begin_transmission.exit_crit_edge, %do.body38.i.nwl_dsi_begin_transmission.exit_crit_edge
  %call52 = call i32 @wait_for_completion_timeout(ptr noundef %completed, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.else58

if.then54:                                        ; preds = %nwl_dsi_begin_transmission.exit
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %dsi_host to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dsi_host, align 4
  %111 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %cmd, align 1
  %conv57 = zext i8 %112 to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %110, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef %conv57) #7
  br label %if.end60

if.else58:                                        ; preds = %nwl_dsi_begin_transmission.exit
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %status, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then54
  %ret.0 = phi i32 [ %114, %if.else58 ], [ -110, %if.then54 ]
  %115 = ptrtoint ptr %rx_esc_clk to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx_esc_clk, align 4
  call void @clk_disable(ptr noundef %116) #7
  call void @clk_unprepare(ptr noundef %116) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then45, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %if.then45 ], [ %ret.0, %if.end60 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_dsi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  %panel_bridge = alloca ptr, align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel_bridge) #7
  %0 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel_bridge, align 4, !annotation !209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #7
  %1 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !209
  %dev = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call1 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef nonnull %panel_bridge) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end9thread-pre-split, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @drm_panel_bridge_add(ptr noundef nonnull %7) #7
  %8 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %panel_bridge, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end9thread-pre-split:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %panel_bridge, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9thread-pre-split, %if.then3.if.end9_crit_edge
  %11 = phi ptr [ %.pr, %if.end9thread-pre-split ], [ %call4, %if.then3.if.end9_crit_edge ]
  %panel_bridge10 = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 2
  %12 = ptrtoint ptr %panel_bridge10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %panel_bridge10, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %13 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encoder, align 4
  %call16 = call i32 @drm_bridge_attach(ptr noundef %14, ptr noundef nonnull %11, ptr noundef %bridge, i32 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then6 ], [ %call16, %if.end14 ], [ %call1, %entry.cleanup_crit_edge ], [ -517, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel_bridge) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_dsi_bridge_detach(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_graph_get_remote_node(ptr noundef %3, i32 noundef 1, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drm_of_panel_bridge_remove.exit_crit_edge, label %if.end.i

entry.drm_of_panel_bridge_remove.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_of_panel_bridge_remove.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call.i) #7
  tail call void @drm_panel_bridge_remove(ptr noundef %call1.i) #7
  br label %drm_of_panel_bridge_remove.exit

drm_of_panel_bridge_remove.exit:                  ; preds = %if.end.i, %entry.drm_of_panel_bridge_remove.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nwl_dsi_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 20
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nwl_dsi_bridge_mode_valid, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %mul = mul i32 %5, %retval.0.i
  %lanes = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 19
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes, align 4
  %mul2 = mul i32 %7, 15000000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul2)
  %cmp = icmp ugt i32 %mul, %mul2
  %mul6 = mul i32 %7, 80000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul6)
  %cmp7 = icmp ult i32 %mul, %mul6
  %. = select i1 %cmp7, i32 16, i32 0
  %retval.0 = select i1 %cmp, i32 15, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_dsi_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #2 align 64 {
entry:
  %new_cfg = alloca %union.phy_configure_opts, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %new_cfg) #7
  %2 = call ptr @memset(ptr %new_cfg, i32 255, i32 100)
  %lanes.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 19
  %3 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lanes.i, align 4
  %5 = add i32 %4, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %5)
  %6 = icmp ult i32 %5, -4
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %adjusted_mode, align 4
  %mul.i = mul i32 %8, 1000
  %format.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 20
  %9 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %switch.lookup, label %if.end.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge

if.end.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nwl_dsi_bridge_mode_set, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

mipi_dsi_pixel_format_to_bpp.exit.i:              ; preds = %switch.lookup, %if.end.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.end.i.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge ]
  %call4.i = call i32 @phy_mipi_dphy_get_default_config(i32 noundef %mul.i, i32 noundef %retval.0.i.i, i32 noundef %4, ptr noundef nonnull %new_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %mipi_dsi_pixel_format_to_bpp.exit.i.cleanup_crit_edge, label %if.end

mipi_dsi_pixel_format_to_bpp.exit.i.cleanup_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i
  %tx_esc_clk.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 16
  %13 = ptrtoint ptr %tx_esc_clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_esc_clk.i, align 4
  %call8.i = call i32 @clk_get_rate(ptr noundef %14) #7
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %16, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %call8.i) #7
  %lp_clk_rate.i = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %new_cfg, i32 0, i32 23
  %17 = ptrtoint ptr %lp_clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8.i, ptr %lp_clk_rate.i, align 4
  %phy_ref_clk = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 14
  %18 = ptrtoint ptr %phy_ref_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_ref_clk, align 4
  %call3 = call i32 @clk_get_rate(ptr noundef %19) #7
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %call3) #7
  %phy_cfg = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5
  %20 = call ptr @memcpy(ptr %phy_cfg, ptr %new_cfg, i32 100)
  %mode4 = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21
  %21 = call ptr @memcpy(ptr %mode4, ptr %adjusted_mode, i32 112)
  call void @drm_mode_debug_printmodeline(ptr noundef %adjusted_mode) #7
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  %lcdif_clk = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 18
  %22 = ptrtoint ptr %lcdif_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lcdif_clk, align 4
  %call.i53 = call i32 @clk_prepare(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i, label %if.end.i54, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i54:                                       ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i54.if.end9_crit_edge, label %if.then3.i

if.end.i54.if.end9_crit_edge:                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3.i:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %23) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i55 = phi i32 [ %call.i53, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i55)
  %cmp7 = icmp slt i32 %retval.0.i55, 0
  br i1 %cmp7, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end9_crit_edge

clk_prepare_enable.exit.if.end9_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %clk_prepare_enable.exit.if.end9_crit_edge, %if.end.i54.if.end9_crit_edge
  %core_clk = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 17
  %24 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core_clk, align 4
  %call.i56 = call i32 @clk_prepare(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end.i60, label %if.end9.clk_prepare_enable.exit63_crit_edge

if.end9.clk_prepare_enable.exit63_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit63

if.end.i60:                                       ; preds = %if.end9
  %call1.i58 = call i32 @clk_enable(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool2.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool2.not.i59, label %if.end.i60.if.end13_crit_edge, label %if.then3.i61

if.end.i60.if.end13_crit_edge:                    ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3.i61:                                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %25) #7
  br label %clk_prepare_enable.exit63

clk_prepare_enable.exit63:                        ; preds = %if.then3.i61, %if.end9.clk_prepare_enable.exit63_crit_edge
  %retval.0.i62 = phi i32 [ %call.i56, %if.end9.clk_prepare_enable.exit63_crit_edge ], [ %call1.i58, %if.then3.i61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i62)
  %cmp11 = icmp slt i32 %retval.0.i62, 0
  br i1 %cmp11, label %clk_prepare_enable.exit63.cleanup_crit_edge, label %clk_prepare_enable.exit63.if.end13_crit_edge

clk_prepare_enable.exit63.if.end13_crit_edge:     ; preds = %clk_prepare_enable.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

clk_prepare_enable.exit63.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %clk_prepare_enable.exit63.if.end13_crit_edge, %if.end.i60.if.end13_crit_edge
  %rst_pclk = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 12
  %26 = ptrtoint ptr %rst_pclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rst_pclk, align 4
  %call14 = call i32 @reset_control_deassert(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.47, i32 noundef %call14) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  %30 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i65 = icmp eq i32 %31, 0
  br i1 %tobool.not.i65, label %if.then.i, label %if.end.i67

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.51, i32 noundef 0) #7
  br label %nwl_dsi_mode_set.exit

if.end.i67:                                       ; preds = %if.end17
  %phy.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 4
  %32 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy.i, align 4
  %call.i66 = call i32 @phy_init(ptr noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i = icmp slt i32 %call.i66, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.52, i32 noundef %call.i66) #7
  br label %nwl_dsi_mode_set.exit

if.end5.i:                                        ; preds = %if.end.i67
  %34 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy.i, align 4
  %call7.i = call i32 @phy_configure(ptr noundef %35, ptr noundef %phy_cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.53, i32 noundef %call7.i) #7
  br label %uninit_phy.i

if.end10.i:                                       ; preds = %if.end5.i
  %36 = ptrtoint ptr %tx_esc_clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_esc_clk.i, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.i.clk_prepare_enable.exit.i_crit_edge

if.end10.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end10.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end15.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end15.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %37) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end10.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i69 = phi i32 [ %call.i.i, %if.end10.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i69)
  %cmp12.i = icmp slt i32 %retval.0.i.i69, 0
  br i1 %cmp12.i, label %if.then13.i, label %clk_prepare_enable.exit.i.if.end15.i_crit_edge

clk_prepare_enable.exit.i.if.end15.i_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then13.i:                                      ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %39, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i.i69) #7
  br label %uninit_phy.i

if.end15.i:                                       ; preds = %clk_prepare_enable.exit.i.if.end15.i_crit_edge, %if.end.i.i.if.end15.i_crit_edge
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  %42 = ptrtoint ptr %tx_esc_clk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_esc_clk.i, align 4
  %call18.i = call i32 @clk_get_rate(ptr noundef %43) #7
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %41, i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef %call18.i) #7
  %44 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lanes.i, align 4
  %46 = add i32 %45, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %46)
  %47 = icmp ult i32 %46, -4
  br i1 %47, label %if.end15.i.if.then21.i_crit_edge, label %if.end.i1.i

if.end15.i.if.then21.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

if.end.i1.i:                                      ; preds = %if.end15.i
  %48 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %49, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef %45) #7
  %error.i.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 23
  %50 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i1.i.nwl_dsi_write.exit.i.i_crit_edge

if.end.i1.i.nwl_dsi_write.exit.i.i_crit_edge:     ; preds = %if.end.i1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i1.i
  %52 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lanes.i, align 4
  %sub.i.i = add i32 %53, -1
  %regmap.i.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %54 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %55, i32 noundef 0, i32 noundef %sub.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %nwl_dsi_write.exit.ithread-pre-split.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %call.i.i.i) #7
  %58 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i.i.i, ptr %error.i.i.i, align 4
  br label %nwl_dsi_write.exit.i.i

nwl_dsi_write.exit.ithread-pre-split.i:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr.i = load i32, ptr %error.i.i.i, align 4
  br label %nwl_dsi_write.exit.i.i

nwl_dsi_write.exit.i.i:                           ; preds = %nwl_dsi_write.exit.ithread-pre-split.i, %if.then1.i.i.i, %if.end.i1.i.nwl_dsi_write.exit.i.i_crit_edge
  %60 = phi i32 [ %.pr.i, %nwl_dsi_write.exit.ithread-pre-split.i ], [ 1, %if.then1.i.i.i ], [ %51, %if.end.i1.i.nwl_dsi_write.exit.i.i_crit_edge ]
  %dsi_mode_flags.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 22
  %61 = ptrtoint ptr %dsi_mode_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dsi_mode_flags.i.i, align 4
  %and.i.i = and i32 %62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i2.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i84.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i2.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %nwl_dsi_write.exit.i.i
  br i1 %tobool.not.i84.i.i, label %if.end.i70.i.i, label %if.then5.i.i.if.end6.i.i_crit_edge

if.then5.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.end.i70.i.i:                                   ; preds = %if.then5.i.i
  %regmap.i67.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %63 = ptrtoint ptr %regmap.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i67.i.i, align 4
  %call.i68.i.i = call i32 @regmap_write(ptr noundef %64, i32 noundef 4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i.i)
  %cmp.i69.i.i = icmp slt i32 %call.i68.i.i, 0
  br i1 %cmp.i69.i.i, label %if.then1.i72.i.i, label %nwl_dsi_write.exit73.i.i

if.then1.i72.i.i:                                 ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %66, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 4, i32 noundef %call.i68.i.i) #7
  br label %if.end6.sink.split.i.i

nwl_dsi_write.exit73.i.i:                         ; preds = %if.end.i70.i.i
  %67 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool.not.i75.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool.not.i75.i.i, label %if.end.i79.i.i, label %nwl_dsi_write.exit73.i.i.if.end6.i.i_crit_edge

nwl_dsi_write.exit73.i.i.if.end6.i.i_crit_edge:   ; preds = %nwl_dsi_write.exit73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.end.i79.i.i:                                   ; preds = %nwl_dsi_write.exit73.i.i
  %68 = ptrtoint ptr %regmap.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i67.i.i, align 4
  %call.i77.i.i = call i32 @regmap_write(ptr noundef %69, i32 noundef 20, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i.i)
  %cmp.i78.i.i = icmp slt i32 %call.i77.i.i, 0
  br i1 %cmp.i78.i.i, label %if.then1.i81.i.i, label %if.end.i79.i.i.if.end6.i.i_crit_edge

if.end.i79.i.i.if.end6.i.i_crit_edge:             ; preds = %if.end.i79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.then1.i81.i.i:                                 ; preds = %if.end.i79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %71, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 20, i32 noundef %call.i77.i.i) #7
  br label %if.end6.sink.split.i.i

if.else.i.i:                                      ; preds = %nwl_dsi_write.exit.i.i
  br i1 %tobool.not.i84.i.i, label %if.end.i88.i.i, label %if.else.i.i.if.end6.i.i_crit_edge

if.else.i.i.if.end6.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.end.i88.i.i:                                   ; preds = %if.else.i.i
  %regmap.i85.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %72 = ptrtoint ptr %regmap.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i85.i.i, align 4
  %call.i86.i.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i.i)
  %cmp.i87.i.i = icmp slt i32 %call.i86.i.i, 0
  br i1 %cmp.i87.i.i, label %if.then1.i90.i.i, label %nwl_dsi_write.exit91.i.i

if.then1.i90.i.i:                                 ; preds = %if.end.i88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %75, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 4, i32 noundef %call.i86.i.i) #7
  br label %if.end6.sink.split.i.i

nwl_dsi_write.exit91.i.i:                         ; preds = %if.end.i88.i.i
  %76 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr197.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr197.i.i)
  %tobool.not.i93.i.i = icmp eq i32 %.pr197.i.i, 0
  br i1 %tobool.not.i93.i.i, label %if.end.i97.i.i, label %nwl_dsi_write.exit91.i.i.if.end6.i.i_crit_edge

nwl_dsi_write.exit91.i.i.if.end6.i.i_crit_edge:   ; preds = %nwl_dsi_write.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.end.i97.i.i:                                   ; preds = %nwl_dsi_write.exit91.i.i
  %77 = ptrtoint ptr %regmap.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i85.i.i, align 4
  %call.i95.i.i = call i32 @regmap_write(ptr noundef %78, i32 noundef 20, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i.i)
  %cmp.i96.i.i = icmp slt i32 %call.i95.i.i, 0
  br i1 %cmp.i96.i.i, label %if.then1.i99.i.i, label %if.end.i97.i.i.if.end6.i.i_crit_edge

if.end.i97.i.i.if.end6.i.i_crit_edge:             ; preds = %if.end.i97.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.then1.i99.i.i:                                 ; preds = %if.end.i97.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %80, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 20, i32 noundef %call.i95.i.i) #7
  br label %if.end6.sink.split.i.i

if.end6.sink.split.i.i:                           ; preds = %if.then1.i99.i.i, %if.then1.i90.i.i, %if.then1.i81.i.i, %if.then1.i72.i.i
  %call.i86.sink.i.i = phi i32 [ %call.i86.i.i, %if.then1.i90.i.i ], [ %call.i68.i.i, %if.then1.i72.i.i ], [ %call.i95.i.i, %if.then1.i99.i.i ], [ %call.i77.i.i, %if.then1.i81.i.i ]
  %81 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call.i86.sink.i.i, ptr %error.i.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end6.sink.split.i.i, %if.end.i97.i.i.if.end6.i.i_crit_edge, %nwl_dsi_write.exit91.i.i.if.end6.i.i_crit_edge, %if.else.i.i.if.end6.i.i_crit_edge, %if.end.i79.i.i.if.end6.i.i_crit_edge, %nwl_dsi_write.exit73.i.i.if.end6.i.i_crit_edge, %if.then5.i.i.if.end6.i.i_crit_edge
  %clk_pre.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5, i32 0, i32 2
  %82 = ptrtoint ptr %clk_pre.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %clk_pre.i.i, align 4
  %sub.i.i.i = add i32 %83, 7
  %div1.i.i.i = lshr i32 %sub.i.i.i, 3
  %84 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %85, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef %div1.i.i.i) #7
  %86 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i102.i.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i102.i.i, label %if.end.i106.i.i, label %if.end6.i.i.nwl_dsi_write.exit109.i.i_crit_edge

if.end6.i.i.nwl_dsi_write.exit109.i.i_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit109.i.i

if.end.i106.i.i:                                  ; preds = %if.end6.i.i
  %regmap.i103.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %88 = ptrtoint ptr %regmap.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i103.i.i, align 4
  %call.i104.i.i = call i32 @regmap_write(ptr noundef %89, i32 noundef 8, i32 noundef %div1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i.i)
  %cmp.i105.i.i = icmp slt i32 %call.i104.i.i, 0
  br i1 %cmp.i105.i.i, label %if.then1.i108.i.i, label %if.end.i106.i.i.nwl_dsi_write.exit109.i.i_crit_edge

if.end.i106.i.i.nwl_dsi_write.exit109.i.i_crit_edge: ; preds = %if.end.i106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit109.i.i

if.then1.i108.i.i:                                ; preds = %if.end.i106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %91, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef %call.i104.i.i) #7
  %92 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call.i104.i.i, ptr %error.i.i.i, align 4
  br label %nwl_dsi_write.exit109.i.i

nwl_dsi_write.exit109.i.i:                        ; preds = %if.then1.i108.i.i, %if.end.i106.i.i.nwl_dsi_write.exit109.i.i_crit_edge, %if.end6.i.i.nwl_dsi_write.exit109.i.i_crit_edge
  %lpx.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5, i32 0, i32 17
  %93 = ptrtoint ptr %lpx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lpx.i.i, align 4
  %clk_prepare.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5, i32 0, i32 3
  %95 = ptrtoint ptr %clk_prepare.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clk_prepare.i.i, align 4
  %add.i.i = add i32 %96, %94
  %clk_zero.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5, i32 0, i32 7
  %97 = ptrtoint ptr %clk_zero.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %clk_zero.i.i, align 4
  %add8.i.i = add i32 %add.i.i, %98
  %conv.i.i = zext i32 %add8.i.i to i64
  %99 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %100)
  %101 = icmp ult i32 %100, 4
  br i1 %101, label %switch.lookup76, label %nwl_dsi_write.exit109.i.i.ps2bc.exit.i.i_crit_edge

nwl_dsi_write.exit109.i.i.ps2bc.exit.i.i_crit_edge: ; preds = %nwl_dsi_write.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ps2bc.exit.i.i

switch.lookup76:                                  ; preds = %nwl_dsi_write.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep77 = getelementptr inbounds [4 x i32], ptr @switch.table.nwl_dsi_bridge_mode_set.88, i32 0, i32 %100
  %102 = ptrtoint ptr %switch.gep77 to i32
  call void @__asan_load4_noabort(i32 %102)
  %switch.load78 = load i32, ptr %switch.gep77, align 4
  br label %ps2bc.exit.i.i

ps2bc.exit.i.i:                                   ; preds = %switch.lookup76, %nwl_dsi_write.exit109.i.i.ps2bc.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %switch.load78, %switch.lookup76 ], [ -22, %nwl_dsi_write.exit109.i.i.ps2bc.exit.i.i_crit_edge ]
  %103 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lanes.i, align 4
  %conv.i.i.i = zext i32 %104 to i64
  %mul1.i.i.i = mul i64 %conv.i.i.i, 8000000000
  %105 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mode4, align 4
  %conv2.i.i.i = sext i32 %106 to i64
  %conv4.i.i.i = zext i32 %retval.0.i.i.i.i to i64
  %mul3.i.i.i = mul nuw i64 %conv4.i.i.i, %conv.i.i
  %mul5.i.i.i = mul i64 %mul3.i.i.i, %conv2.i.i.i
  %add.i.i.i = add i64 %mul1.i.i.i, -1
  %sub.i110.i.i = add i64 %add.i.i.i, %mul5.i.i.i
  %call6.i.i.i = call i64 @div64_u64(i64 noundef %sub.i110.i.i, i64 noundef %mul1.i.i.i) #7
  %conv7.i.i.i = trunc i64 %call6.i.i.i to i32
  %107 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %108, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %conv7.i.i.i) #7
  %109 = ptrtoint ptr %clk_pre.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %clk_pre.i.i, align 4
  %sub.i111.i.i = add i32 %110, 7
  %div1.i112.i.i = lshr i32 %sub.i111.i.i, 3
  %add13.i.i = add i32 %div1.i112.i.i, %conv7.i.i.i
  %111 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %112, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef %add13.i.i) #7
  %113 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i114.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i114.i.i, label %if.end.i118.i.i, label %ps2bc.exit.i.i.nwl_dsi_write.exit121.i.i_crit_edge

ps2bc.exit.i.i.nwl_dsi_write.exit121.i.i_crit_edge: ; preds = %ps2bc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit121.i.i

if.end.i118.i.i:                                  ; preds = %ps2bc.exit.i.i
  %regmap.i115.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %115 = ptrtoint ptr %regmap.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap.i115.i.i, align 4
  %call.i116.i.i = call i32 @regmap_write(ptr noundef %116, i32 noundef 12, i32 noundef %add13.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i.i)
  %cmp.i117.i.i = icmp slt i32 %call.i116.i.i, 0
  br i1 %cmp.i117.i.i, label %if.then1.i120.i.i, label %if.end.i118.i.i.nwl_dsi_write.exit121.i.i_crit_edge

if.end.i118.i.i.nwl_dsi_write.exit121.i.i_crit_edge: ; preds = %if.end.i118.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit121.i.i

if.then1.i120.i.i:                                ; preds = %if.end.i118.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %118, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 12, i32 noundef %call.i116.i.i) #7
  %119 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call.i116.i.i, ptr %error.i.i.i, align 4
  br label %nwl_dsi_write.exit121.i.i

nwl_dsi_write.exit121.i.i:                        ; preds = %if.then1.i120.i.i, %if.end.i118.i.i.nwl_dsi_write.exit121.i.i_crit_edge, %ps2bc.exit.i.i.nwl_dsi_write.exit121.i.i_crit_edge
  %hs_exit.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5, i32 0, i32 10
  %120 = ptrtoint ptr %hs_exit.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hs_exit.i.i, align 4
  %conv15.i.i = zext i32 %121 to i64
  %122 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %123)
  %124 = icmp ult i32 %123, 4
  br i1 %124, label %switch.lookup79, label %nwl_dsi_write.exit121.i.i.ps2bc.exit139.i.i_crit_edge

nwl_dsi_write.exit121.i.i.ps2bc.exit139.i.i_crit_edge: ; preds = %nwl_dsi_write.exit121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ps2bc.exit139.i.i

switch.lookup79:                                  ; preds = %nwl_dsi_write.exit121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep80 = getelementptr inbounds [4 x i32], ptr @switch.table.nwl_dsi_bridge_mode_set.89, i32 0, i32 %123
  %125 = ptrtoint ptr %switch.gep80 to i32
  call void @__asan_load4_noabort(i32 %125)
  %switch.load81 = load i32, ptr %switch.gep80, align 4
  br label %ps2bc.exit139.i.i

ps2bc.exit139.i.i:                                ; preds = %switch.lookup79, %nwl_dsi_write.exit121.i.i.ps2bc.exit139.i.i_crit_edge
  %retval.0.i.i126.i.i = phi i32 [ %switch.load81, %switch.lookup79 ], [ -22, %nwl_dsi_write.exit121.i.i.ps2bc.exit139.i.i_crit_edge ]
  %126 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lanes.i, align 4
  %conv.i128.i.i = zext i32 %127 to i64
  %mul1.i129.i.i = mul i64 %conv.i128.i.i, 8000000000
  %128 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mode4, align 4
  %conv2.i131.i.i = sext i32 %129 to i64
  %conv4.i132.i.i = zext i32 %retval.0.i.i126.i.i to i64
  %mul3.i133.i.i = mul nuw i64 %conv4.i132.i.i, %conv15.i.i
  %mul5.i134.i.i = mul i64 %mul3.i133.i.i, %conv2.i131.i.i
  %add.i135.i.i = add i64 %mul1.i129.i.i, -1
  %sub.i136.i.i = add i64 %add.i135.i.i, %mul5.i134.i.i
  %call6.i137.i.i = call i64 @div64_u64(i64 noundef %sub.i136.i.i, i64 noundef %mul1.i129.i.i) #7
  %conv7.i138.i.i = trunc i64 %call6.i137.i.i to i32
  %130 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %131, i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %conv7.i138.i.i) #7
  %132 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i141.i.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i141.i.i, label %if.end.i145.i.i, label %ps2bc.exit139.i.i.nwl_dsi_write.exit184.i.i_crit_edge

ps2bc.exit139.i.i.nwl_dsi_write.exit184.i.i_crit_edge: ; preds = %ps2bc.exit139.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit184.i.i

if.end.i145.i.i:                                  ; preds = %ps2bc.exit139.i.i
  %regmap.i142.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %134 = ptrtoint ptr %regmap.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap.i142.i.i, align 4
  %call.i143.i.i = call i32 @regmap_write(ptr noundef %135, i32 noundef 16, i32 noundef %conv7.i138.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i.i)
  %cmp.i144.i.i = icmp slt i32 %call.i143.i.i, 0
  br i1 %cmp.i144.i.i, label %if.then1.i147.i.i, label %nwl_dsi_write.exit148.i.i

if.then1.i147.i.i:                                ; preds = %if.end.i145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %137, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 16, i32 noundef %call.i143.i.i) #7
  br label %nwl_dsi_write.exit184.sink.split.i.i

nwl_dsi_write.exit148.i.i:                        ; preds = %if.end.i145.i.i
  %138 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr199.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr199.i.i)
  %tobool.not.i150.i.i = icmp eq i32 %.pr199.i.i, 0
  br i1 %tobool.not.i150.i.i, label %if.end.i154.i.i, label %nwl_dsi_write.exit148.i.i.nwl_dsi_write.exit184.i.i_crit_edge

nwl_dsi_write.exit148.i.i.nwl_dsi_write.exit184.i.i_crit_edge: ; preds = %nwl_dsi_write.exit148.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit184.i.i

if.end.i154.i.i:                                  ; preds = %nwl_dsi_write.exit148.i.i
  %139 = ptrtoint ptr %regmap.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap.i142.i.i, align 4
  %call.i152.i.i = call i32 @regmap_write(ptr noundef %140, i32 noundef 24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i.i)
  %cmp.i153.i.i = icmp slt i32 %call.i152.i.i, 0
  br i1 %cmp.i153.i.i, label %if.then1.i156.i.i, label %nwl_dsi_write.exit157.i.i

if.then1.i156.i.i:                                ; preds = %if.end.i154.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %142, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 24, i32 noundef %call.i152.i.i) #7
  br label %nwl_dsi_write.exit184.sink.split.i.i

nwl_dsi_write.exit157.i.i:                        ; preds = %if.end.i154.i.i
  %143 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr201.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr201.pr.i.i)
  %tobool.not.i159.i.i = icmp eq i32 %.pr201.pr.i.i, 0
  br i1 %tobool.not.i159.i.i, label %if.end.i163.i.i, label %nwl_dsi_write.exit157.i.i.nwl_dsi_write.exit184.i.i_crit_edge

nwl_dsi_write.exit157.i.i.nwl_dsi_write.exit184.i.i_crit_edge: ; preds = %nwl_dsi_write.exit157.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit184.i.i

if.end.i163.i.i:                                  ; preds = %nwl_dsi_write.exit157.i.i
  %144 = ptrtoint ptr %regmap.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap.i142.i.i, align 4
  %call.i161.i.i = call i32 @regmap_write(ptr noundef %145, i32 noundef 28, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i.i)
  %cmp.i162.i.i = icmp slt i32 %call.i161.i.i, 0
  br i1 %cmp.i162.i.i, label %if.then1.i165.i.i, label %nwl_dsi_write.exit166.i.i

if.then1.i165.i.i:                                ; preds = %if.end.i163.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %147, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 28, i32 noundef %call.i161.i.i) #7
  br label %nwl_dsi_write.exit184.sink.split.i.i

nwl_dsi_write.exit166.i.i:                        ; preds = %if.end.i163.i.i
  %148 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %.pr203.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr203.pr.i.i)
  %tobool.not.i168.i.i = icmp eq i32 %.pr203.pr.i.i, 0
  br i1 %tobool.not.i168.i.i, label %if.end.i172.i.i, label %nwl_dsi_write.exit166.i.i.nwl_dsi_write.exit184.i.i_crit_edge

nwl_dsi_write.exit166.i.i.nwl_dsi_write.exit184.i.i_crit_edge: ; preds = %nwl_dsi_write.exit166.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit184.i.i

if.end.i172.i.i:                                  ; preds = %nwl_dsi_write.exit166.i.i
  %149 = ptrtoint ptr %regmap.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap.i142.i.i, align 4
  %call.i170.i.i = call i32 @regmap_write(ptr noundef %150, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.i.i)
  %cmp.i171.i.i = icmp slt i32 %call.i170.i.i, 0
  br i1 %cmp.i171.i.i, label %if.then1.i174.i.i, label %nwl_dsi_write.exit175.i.i

if.then1.i174.i.i:                                ; preds = %if.end.i172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %152, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 32, i32 noundef %call.i170.i.i) #7
  br label %nwl_dsi_write.exit184.sink.split.i.i

nwl_dsi_write.exit175.i.i:                        ; preds = %if.end.i172.i.i
  %153 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr205.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr205.pr.pr.i.i)
  %tobool.not.i177.i.i = icmp eq i32 %.pr205.pr.pr.i.i, 0
  br i1 %tobool.not.i177.i.i, label %if.end.i181.i.i, label %nwl_dsi_write.exit175.i.i.nwl_dsi_write.exit184.i.i_crit_edge

nwl_dsi_write.exit175.i.i.nwl_dsi_write.exit184.i.i_crit_edge: ; preds = %nwl_dsi_write.exit175.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit184.i.i

if.end.i181.i.i:                                  ; preds = %nwl_dsi_write.exit175.i.i
  %154 = ptrtoint ptr %regmap.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap.i142.i.i, align 4
  %call.i179.i.i = call i32 @regmap_write(ptr noundef %155, i32 noundef 36, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179.i.i)
  %cmp.i180.i.i = icmp slt i32 %call.i179.i.i, 0
  br i1 %cmp.i180.i.i, label %if.then1.i183.i.i, label %if.end.i181.i.i.nwl_dsi_write.exit184.i.i_crit_edge

if.end.i181.i.i.nwl_dsi_write.exit184.i.i_crit_edge: ; preds = %if.end.i181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit184.i.i

if.then1.i183.i.i:                                ; preds = %if.end.i181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %157, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 36, i32 noundef %call.i179.i.i) #7
  br label %nwl_dsi_write.exit184.sink.split.i.i

nwl_dsi_write.exit184.sink.split.i.i:             ; preds = %if.then1.i183.i.i, %if.then1.i174.i.i, %if.then1.i165.i.i, %if.then1.i156.i.i, %if.then1.i147.i.i
  %call.i143.sink.i.i = phi i32 [ %call.i143.i.i, %if.then1.i147.i.i ], [ %call.i161.i.i, %if.then1.i165.i.i ], [ %call.i152.i.i, %if.then1.i156.i.i ], [ %call.i170.i.i, %if.then1.i174.i.i ], [ %call.i179.i.i, %if.then1.i183.i.i ]
  %158 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %call.i143.sink.i.i, ptr %error.i.i.i, align 4
  br label %nwl_dsi_write.exit184.i.i

nwl_dsi_write.exit184.i.i:                        ; preds = %nwl_dsi_write.exit184.sink.split.i.i, %if.end.i181.i.i.nwl_dsi_write.exit184.i.i_crit_edge, %nwl_dsi_write.exit175.i.i.nwl_dsi_write.exit184.i.i_crit_edge, %nwl_dsi_write.exit166.i.i.nwl_dsi_write.exit184.i.i_crit_edge, %nwl_dsi_write.exit157.i.i.nwl_dsi_write.exit184.i.i_crit_edge, %nwl_dsi_write.exit148.i.i.nwl_dsi_write.exit184.i.i_crit_edge, %ps2bc.exit139.i.i.nwl_dsi_write.exit184.i.i_crit_edge
  %lp_clk_rate.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5, i32 0, i32 23
  %159 = ptrtoint ptr %lp_clk_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %lp_clk_rate.i.i, align 4
  %wakeup.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 5, i32 0, i32 21
  %161 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %wakeup.i.i, align 4
  %mul.i.i.i = mul i32 %162, %160
  %sub.i185.i.i = add i32 %mul.i.i.i, 999999
  %div.i.i.i = udiv i32 %sub.i185.i.i, 1000000
  %163 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %164, i32 noundef 2, ptr noundef nonnull @.str.64, i32 noundef %div.i.i.i) #7
  %165 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.i187.i.i = icmp eq i32 %166, 0
  br i1 %tobool.not.i187.i.i, label %if.end.i191.i.i, label %nwl_dsi_write.exit184.i.i.nwl_dsi_config_host.exit.i_crit_edge

nwl_dsi_write.exit184.i.i.nwl_dsi_config_host.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_host.exit.i

if.end.i191.i.i:                                  ; preds = %nwl_dsi_write.exit184.i.i
  %regmap.i188.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %167 = ptrtoint ptr %regmap.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regmap.i188.i.i, align 4
  %call.i189.i.i = call i32 @regmap_write(ptr noundef %168, i32 noundef 40, i32 noundef %div.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189.i.i)
  %cmp.i190.i.i = icmp slt i32 %call.i189.i.i, 0
  br i1 %cmp.i190.i.i, label %nwl_dsi_config_host.exit.thread35.i, label %nwl_dsi_config_host.exitthread-pre-split.i

nwl_dsi_config_host.exit.thread35.i:              ; preds = %if.end.i191.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %170, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 40, i32 noundef %call.i189.i.i) #7
  %171 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %error.i.i.i, align 4
  br label %if.then21.i

nwl_dsi_config_host.exitthread-pre-split.i:       ; preds = %if.end.i191.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pr34.i = load i32, ptr %error.i.i.i, align 4
  br label %nwl_dsi_config_host.exit.i

nwl_dsi_config_host.exit.i:                       ; preds = %nwl_dsi_config_host.exitthread-pre-split.i, %nwl_dsi_write.exit184.i.i.nwl_dsi_config_host.exit.i_crit_edge
  %173 = phi i32 [ %.pr34.i, %nwl_dsi_config_host.exitthread-pre-split.i ], [ %166, %nwl_dsi_write.exit184.i.i.nwl_dsi_config_host.exit.i_crit_edge ]
  %174 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp20.i = icmp slt i32 %173, 0
  br i1 %cmp20.i, label %nwl_dsi_config_host.exit.i.if.then21.i_crit_edge, label %if.end22.i

nwl_dsi_config_host.exit.i.if.then21.i_crit_edge: ; preds = %nwl_dsi_config_host.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

if.then21.i:                                      ; preds = %nwl_dsi_config_host.exit.i.if.then21.i_crit_edge, %nwl_dsi_config_host.exit.thread35.i, %if.end15.i.if.then21.i_crit_edge
  %retval.0.i333.i = phi i32 [ %173, %nwl_dsi_config_host.exit.i.if.then21.i_crit_edge ], [ %call.i189.i.i, %nwl_dsi_config_host.exit.thread35.i ], [ -22, %if.end15.i.if.then21.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i333.i) #7
  br label %disable_clock.i

if.end22.i:                                       ; preds = %nwl_dsi_config_host.exit.i
  %hsync_start.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 2
  %175 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %hsync_start.i.i, align 2
  %conv.i4.i = zext i16 %176 to i32
  %hdisplay.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 1
  %177 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %hdisplay.i.i, align 4
  %conv3.i.i = zext i16 %178 to i32
  %sub.i5.i = sub nsw i32 %conv.i4.i, %conv3.i.i
  %hsync_end.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 3
  %179 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %hsync_end.i.i, align 4
  %conv5.i.i = zext i16 %180 to i32
  %sub9.i.i = sub nsw i32 %conv5.i.i, %conv.i4.i
  %htotal.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 4
  %181 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %htotal.i.i, align 2
  %conv11.i.i = zext i16 %182 to i32
  %sub15.i.i = sub nsw i32 %conv11.i.i, %conv5.i.i
  %vsync_start.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 7
  %183 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vsync_start.i.i, align 4
  %conv17.i.i = zext i16 %184 to i32
  %vdisplay.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 6
  %185 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vdisplay.i.i, align 2
  %conv19.i.i = zext i16 %186 to i32
  %sub20.i.i = sub nsw i32 %conv17.i.i, %conv19.i.i
  %vsync_end.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 8
  %187 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %vsync_end.i.i, align 2
  %conv22.i.i = zext i16 %188 to i32
  %sub26.i.i = sub nsw i32 %conv22.i.i, %conv17.i.i
  %vtotal.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 21, i32 9
  %189 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %vtotal.i.i, align 4
  %conv28.i.i = zext i16 %190 to i32
  %sub32.i.i = sub nsw i32 %conv28.i.i, %conv22.i.i
  %191 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %192, i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %sub.i5.i) #7
  %193 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %194, i32 noundef 2, ptr noundef nonnull @.str.66, i32 noundef %sub15.i.i) #7
  %195 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %196, i32 noundef 2, ptr noundef nonnull @.str.67, i32 noundef %sub9.i.i) #7
  %197 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev1, align 4
  %199 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %hdisplay.i.i, align 4
  %conv38.i.i = zext i16 %200 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %198, i32 noundef 2, ptr noundef nonnull @.str.68, i32 noundef %conv38.i.i) #7
  %201 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %202, i32 noundef 2, ptr noundef nonnull @.str.69, i32 noundef %sub20.i.i) #7
  %203 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %204, i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %sub32.i.i) #7
  %205 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %206, i32 noundef 2, ptr noundef nonnull @.str.71, i32 noundef %sub26.i.i) #7
  %207 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev1, align 4
  %209 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %vdisplay.i.i, align 2
  %conv45.i.i = zext i16 %210 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %208, i32 noundef 2, ptr noundef nonnull @.str.72, i32 noundef %conv45.i.i) #7
  %211 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev1, align 4
  %213 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %mode4, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %212, i32 noundef 2, ptr noundef nonnull @.str.73, i32 noundef %214) #7
  %215 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %216)
  %217 = icmp ult i32 %216, 4
  br i1 %217, label %switch.lookup82, label %nwl_dsi_config_dpi.exit.thread.i

nwl_dsi_config_dpi.exit.thread.i:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %219, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.74, i32 noundef %216) #7
  br label %if.then25.i

switch.lookup82:                                  ; preds = %if.end22.i
  %switch.offset = sub i32 3, %216
  %220 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev1, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %221, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef %216) #7
  %222 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool.not.i.i8.i = icmp eq i32 %223, 0
  br i1 %tobool.not.i.i8.i, label %if.end.i.i13.i, label %switch.lookup82.nwl_dsi_write.exit168.i.i_crit_edge

switch.lookup82.nwl_dsi_write.exit168.i.i_crit_edge: ; preds = %switch.lookup82
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit168.i.i

if.end.i.i13.i:                                   ; preds = %switch.lookup82
  %regmap.i.i10.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %224 = ptrtoint ptr %regmap.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regmap.i.i10.i, align 4
  %call.i.i11.i = call i32 @regmap_write(ptr noundef %225, i32 noundef 520, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %cmp.i.i12.i = icmp slt i32 %call.i.i11.i, 0
  br i1 %cmp.i.i12.i, label %if.then1.i.i14.i, label %nwl_dsi_write.exit.i16.i

if.then1.i.i14.i:                                 ; preds = %if.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %227, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 520, i32 noundef %call.i.i11.i) #7
  br label %nwl_dsi_write.exit168.sink.split.i.i

nwl_dsi_write.exit.i16.i:                         ; preds = %if.end.i.i13.i
  %228 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %.pr.i15.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i15.i)
  %tobool.not.i143.i.i = icmp eq i32 %.pr.i15.i, 0
  br i1 %tobool.not.i143.i.i, label %if.end.i147.i.i, label %nwl_dsi_write.exit.i16.i.nwl_dsi_write.exit168.i.i_crit_edge

nwl_dsi_write.exit.i16.i.nwl_dsi_write.exit168.i.i_crit_edge: ; preds = %nwl_dsi_write.exit.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit168.i.i

if.end.i147.i.i:                                  ; preds = %nwl_dsi_write.exit.i16.i
  %229 = ptrtoint ptr %regmap.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regmap.i.i10.i, align 4
  %call.i145.i.i = call i32 @regmap_write(ptr noundef %230, i32 noundef 524, i32 noundef %switch.offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i.i)
  %cmp.i146.i.i = icmp slt i32 %call.i145.i.i, 0
  br i1 %cmp.i146.i.i, label %if.then1.i149.i.i, label %nwl_dsi_write.exit150.i.i

if.then1.i149.i.i:                                ; preds = %if.end.i147.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %231 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %232, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 524, i32 noundef %call.i145.i.i) #7
  br label %nwl_dsi_write.exit168.sink.split.i.i

nwl_dsi_write.exit150.i.i:                        ; preds = %if.end.i147.i.i
  %233 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %.pr309.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr309.pr.i.i)
  %tobool.not.i152.i.i = icmp eq i32 %.pr309.pr.i.i, 0
  br i1 %tobool.not.i152.i.i, label %if.end.i156.i.i, label %nwl_dsi_write.exit150.i.i.nwl_dsi_write.exit168.i.i_crit_edge

nwl_dsi_write.exit150.i.i.nwl_dsi_write.exit168.i.i_crit_edge: ; preds = %nwl_dsi_write.exit150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit168.i.i

if.end.i156.i.i:                                  ; preds = %nwl_dsi_write.exit150.i.i
  %234 = ptrtoint ptr %regmap.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regmap.i.i10.i, align 4
  %call.i154.i.i = call i32 @regmap_write(ptr noundef %235, i32 noundef 528, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154.i.i)
  %cmp.i155.i.i = icmp slt i32 %call.i154.i.i, 0
  br i1 %cmp.i155.i.i, label %if.then1.i158.i.i, label %nwl_dsi_write.exit159.i.i

if.then1.i158.i.i:                                ; preds = %if.end.i156.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %236 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %237, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 528, i32 noundef %call.i154.i.i) #7
  br label %nwl_dsi_write.exit168.sink.split.i.i

nwl_dsi_write.exit159.i.i:                        ; preds = %if.end.i156.i.i
  %238 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %.pr311.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr311.pr.i.i)
  %tobool.not.i161.i.i = icmp eq i32 %.pr311.pr.i.i, 0
  br i1 %tobool.not.i161.i.i, label %if.end.i165.i.i, label %nwl_dsi_write.exit159.i.i.nwl_dsi_write.exit168.i.i_crit_edge

nwl_dsi_write.exit159.i.i.nwl_dsi_write.exit168.i.i_crit_edge: ; preds = %nwl_dsi_write.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_write.exit168.i.i

if.end.i165.i.i:                                  ; preds = %nwl_dsi_write.exit159.i.i
  %239 = ptrtoint ptr %regmap.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regmap.i.i10.i, align 4
  %call.i163.i.i = call i32 @regmap_write(ptr noundef %240, i32 noundef 532, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163.i.i)
  %cmp.i164.i.i = icmp slt i32 %call.i163.i.i, 0
  br i1 %cmp.i164.i.i, label %if.then1.i167.i.i, label %nwl_dsi_write.exit168.ithread-pre-split.i

if.then1.i167.i.i:                                ; preds = %if.end.i165.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %241 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %242, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 532, i32 noundef %call.i163.i.i) #7
  br label %nwl_dsi_write.exit168.sink.split.i.i

nwl_dsi_write.exit168.sink.split.i.i:             ; preds = %if.then1.i167.i.i, %if.then1.i158.i.i, %if.then1.i149.i.i, %if.then1.i.i14.i
  %call.i145.sink.i.i = phi i32 [ %call.i145.i.i, %if.then1.i149.i.i ], [ %call.i.i11.i, %if.then1.i.i14.i ], [ %call.i154.i.i, %if.then1.i158.i.i ], [ %call.i163.i.i, %if.then1.i167.i.i ]
  %243 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %call.i145.sink.i.i, ptr %error.i.i.i, align 4
  br label %nwl_dsi_write.exit168.i.i

nwl_dsi_write.exit168.ithread-pre-split.i:        ; preds = %if.end.i165.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %244 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %.pr37.i = load i32, ptr %error.i.i.i, align 4
  br label %nwl_dsi_write.exit168.i.i

nwl_dsi_write.exit168.i.i:                        ; preds = %nwl_dsi_write.exit168.ithread-pre-split.i, %nwl_dsi_write.exit168.sink.split.i.i, %nwl_dsi_write.exit159.i.i.nwl_dsi_write.exit168.i.i_crit_edge, %nwl_dsi_write.exit150.i.i.nwl_dsi_write.exit168.i.i_crit_edge, %nwl_dsi_write.exit.i16.i.nwl_dsi_write.exit168.i.i_crit_edge, %switch.lookup82.nwl_dsi_write.exit168.i.i_crit_edge
  %245 = phi i32 [ %.pr37.i, %nwl_dsi_write.exit168.ithread-pre-split.i ], [ 1, %nwl_dsi_write.exit168.sink.split.i.i ], [ %.pr311.pr.i.i, %nwl_dsi_write.exit159.i.i.nwl_dsi_write.exit168.i.i_crit_edge ], [ %.pr309.pr.i.i, %nwl_dsi_write.exit150.i.i.nwl_dsi_write.exit168.i.i_crit_edge ], [ %.pr.i15.i, %nwl_dsi_write.exit.i16.i.nwl_dsi_write.exit168.i.i_crit_edge ], [ %223, %switch.lookup82.nwl_dsi_write.exit168.i.i_crit_edge ]
  %246 = ptrtoint ptr %dsi_mode_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %dsi_mode_flags.i.i, align 4
  %248 = and i32 %247, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %248)
  %249 = icmp eq i32 %248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i170.i.i = icmp eq i32 %245, 0
  br i1 %249, label %if.then57.i.i, label %if.else.i18.i

if.then57.i.i:                                    ; preds = %nwl_dsi_write.exit168.i.i
  br i1 %tobool.not.i170.i.i, label %if.end.i174.i.i, label %if.then57.i.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge

if.then57.i.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge: ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exitthread-pre-split.i

if.end.i174.i.i:                                  ; preds = %if.then57.i.i
  %regmap.i171.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %250 = ptrtoint ptr %regmap.i171.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regmap.i171.i.i, align 4
  %call.i172.i.i = call i32 @regmap_write(ptr noundef %251, i32 noundef 536, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172.i.i)
  %cmp.i173.i.i = icmp slt i32 %call.i172.i.i, 0
  br i1 %cmp.i173.i.i, label %if.then1.i176.i.i, label %nwl_dsi_write.exit177.i.i

if.then1.i176.i.i:                                ; preds = %if.end.i174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %252 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %253, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 536, i32 noundef %call.i172.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit177.i.i:                        ; preds = %if.end.i174.i.i
  %254 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %.pr313.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr313.i.i)
  %tobool.not.i179.i.i = icmp eq i32 %.pr313.i.i, 0
  br i1 %tobool.not.i179.i.i, label %if.end.i183.i.i, label %nwl_dsi_write.exit177.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit177.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit177.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i183.i.i:                                  ; preds = %nwl_dsi_write.exit177.i.i
  %255 = ptrtoint ptr %regmap.i171.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regmap.i171.i.i, align 4
  %call.i181.i.i = call i32 @regmap_write(ptr noundef %256, i32 noundef 516, i32 noundef 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i.i)
  %cmp.i182.i.i = icmp slt i32 %call.i181.i.i, 0
  br i1 %cmp.i182.i.i, label %if.then1.i185.i.i, label %if.end.i183.i.i.if.end64.i.i_crit_edge

if.end.i183.i.i.if.end64.i.i_crit_edge:           ; preds = %if.end.i183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i.i

if.then1.i185.i.i:                                ; preds = %if.end.i183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %257 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %258, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 516, i32 noundef %call.i181.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

if.else.i18.i:                                    ; preds = %nwl_dsi_write.exit168.i.i
  br i1 %tobool.not.i170.i.i, label %if.end.i192.i.i, label %if.else.i18.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge

if.else.i18.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge: ; preds = %if.else.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exitthread-pre-split.i

if.end.i192.i.i:                                  ; preds = %if.else.i18.i
  %and59.i.i = lshr i32 %247, 2
  %and59.lobit.i.i = and i32 %and59.i.i, 1
  %259 = xor i32 %and59.lobit.i.i, 1
  %regmap.i189.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %260 = ptrtoint ptr %regmap.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regmap.i189.i.i, align 4
  %call.i190.i.i = call i32 @regmap_write(ptr noundef %261, i32 noundef 536, i32 noundef %259) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190.i.i)
  %cmp.i191.i.i = icmp slt i32 %call.i190.i.i, 0
  br i1 %cmp.i191.i.i, label %if.then1.i194.i.i, label %nwl_dsi_write.exit195.i.i

if.then1.i194.i.i:                                ; preds = %if.end.i192.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %263, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 536, i32 noundef %call.i190.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit195.i.i:                        ; preds = %if.end.i192.i.i
  %264 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %.pr315.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr315.i.i)
  %tobool.not.i197.i.i = icmp eq i32 %.pr315.i.i, 0
  br i1 %tobool.not.i197.i.i, label %if.end.i201.i.i, label %nwl_dsi_write.exit195.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit195.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i201.i.i:                                  ; preds = %nwl_dsi_write.exit195.i.i
  %265 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %hdisplay.i.i, align 4
  %conv63.i.i = zext i16 %266 to i32
  %267 = ptrtoint ptr %regmap.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regmap.i189.i.i, align 4
  %call.i199.i.i = call i32 @regmap_write(ptr noundef %268, i32 noundef 516, i32 noundef %conv63.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199.i.i)
  %cmp.i200.i.i = icmp slt i32 %call.i199.i.i, 0
  br i1 %cmp.i200.i.i, label %if.then1.i203.i.i, label %if.end.i201.i.i.if.end64.i.i_crit_edge

if.end.i201.i.i.if.end64.i.i_crit_edge:           ; preds = %if.end.i201.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i.i

if.then1.i203.i.i:                                ; preds = %if.end.i201.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %269 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %270, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 516, i32 noundef %call.i199.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

if.end64.i.i:                                     ; preds = %if.end.i201.i.i.if.end64.i.i_crit_edge, %if.end.i183.i.i.if.end64.i.i_crit_edge
  %271 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %.pr318.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr318.pr.i.i)
  %tobool.not.i206.i.i = icmp eq i32 %.pr318.pr.i.i, 0
  br i1 %tobool.not.i206.i.i, label %if.end.i210.i.i, label %if.end64.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

if.end64.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i210.i.i:                                  ; preds = %if.end64.i.i
  %regmap.i207.i.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %272 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i208.i.i = call i32 @regmap_write(ptr noundef %273, i32 noundef 540, i32 noundef %sub.i5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i.i)
  %cmp.i209.i.i = icmp slt i32 %call.i208.i.i, 0
  br i1 %cmp.i209.i.i, label %if.then1.i212.i.i, label %nwl_dsi_write.exit213.i.i

if.then1.i212.i.i:                                ; preds = %if.end.i210.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %275, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 540, i32 noundef %call.i208.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit213.i.i:                        ; preds = %if.end.i210.i.i
  %276 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %.pr320.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr320.pr.i.i)
  %tobool.not.i215.i.i = icmp eq i32 %.pr320.pr.i.i, 0
  br i1 %tobool.not.i215.i.i, label %if.end.i219.i.i, label %nwl_dsi_write.exit213.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit213.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit213.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i219.i.i:                                  ; preds = %nwl_dsi_write.exit213.i.i
  %277 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i217.i.i = call i32 @regmap_write(ptr noundef %278, i32 noundef 544, i32 noundef %sub15.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217.i.i)
  %cmp.i218.i.i = icmp slt i32 %call.i217.i.i, 0
  br i1 %cmp.i218.i.i, label %if.then1.i221.i.i, label %nwl_dsi_write.exit222.i.i

if.then1.i221.i.i:                                ; preds = %if.end.i219.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %279 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %280, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 544, i32 noundef %call.i217.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit222.i.i:                        ; preds = %if.end.i219.i.i
  %281 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %.pr322.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr322.pr.pr.i.i)
  %tobool.not.i224.i.i = icmp eq i32 %.pr322.pr.pr.i.i, 0
  br i1 %tobool.not.i224.i.i, label %if.end.i228.i.i, label %nwl_dsi_write.exit222.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit222.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i228.i.i:                                  ; preds = %nwl_dsi_write.exit222.i.i
  %282 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i226.i.i = call i32 @regmap_write(ptr noundef %283, i32 noundef 548, i32 noundef %sub9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226.i.i)
  %cmp.i227.i.i = icmp slt i32 %call.i226.i.i, 0
  br i1 %cmp.i227.i.i, label %if.then1.i230.i.i, label %nwl_dsi_write.exit231.i.i

if.then1.i230.i.i:                                ; preds = %if.end.i228.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %284 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %285, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 548, i32 noundef %call.i226.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit231.i.i:                        ; preds = %if.end.i228.i.i
  %286 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %.pr324.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr324.pr.pr.i.i)
  %tobool.not.i233.i.i = icmp eq i32 %.pr324.pr.pr.i.i, 0
  br i1 %tobool.not.i233.i.i, label %if.end.i237.i.i, label %nwl_dsi_write.exit231.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit231.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit231.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i237.i.i:                                  ; preds = %nwl_dsi_write.exit231.i.i
  %287 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i235.i.i = call i32 @regmap_write(ptr noundef %288, i32 noundef 552, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235.i.i)
  %cmp.i236.i.i = icmp slt i32 %call.i235.i.i, 0
  br i1 %cmp.i236.i.i, label %if.then1.i239.i.i, label %nwl_dsi_write.exit240.i.i

if.then1.i239.i.i:                                ; preds = %if.end.i237.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %289 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %290, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 552, i32 noundef %call.i235.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit240.i.i:                        ; preds = %if.end.i237.i.i
  %291 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %.pr326.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr326.pr.pr.i.i)
  %tobool.not.i242.i.i = icmp eq i32 %.pr326.pr.pr.i.i, 0
  br i1 %tobool.not.i242.i.i, label %if.end.i246.i.i, label %nwl_dsi_write.exit240.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit240.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit240.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i246.i.i:                                  ; preds = %nwl_dsi_write.exit240.i.i
  %292 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i244.i.i = call i32 @regmap_write(ptr noundef %293, i32 noundef 564, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244.i.i)
  %cmp.i245.i.i = icmp slt i32 %call.i244.i.i, 0
  br i1 %cmp.i245.i.i, label %if.then1.i248.i.i, label %nwl_dsi_write.exit249.i.i

if.then1.i248.i.i:                                ; preds = %if.end.i246.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %294 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %295, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 564, i32 noundef %call.i244.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit249.i.i:                        ; preds = %if.end.i246.i.i
  %296 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %.pr328.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr328.pr.pr.i.i)
  %tobool.not.i251.i.i = icmp eq i32 %.pr328.pr.pr.i.i, 0
  br i1 %tobool.not.i251.i.i, label %if.end.i255.i.i, label %nwl_dsi_write.exit249.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit249.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i255.i.i:                                  ; preds = %nwl_dsi_write.exit249.i.i
  %297 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i253.i.i = call i32 @regmap_write(ptr noundef %298, i32 noundef 568, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253.i.i)
  %cmp.i254.i.i = icmp slt i32 %call.i253.i.i, 0
  br i1 %cmp.i254.i.i, label %if.then1.i257.i.i, label %nwl_dsi_write.exit258.i.i

if.then1.i257.i.i:                                ; preds = %if.end.i255.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %299 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %300, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 568, i32 noundef %call.i253.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit258.i.i:                        ; preds = %if.end.i255.i.i
  %301 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %.pr330.pr.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr330.pr.pr.pr.i.i)
  %tobool.not.i260.i.i = icmp eq i32 %.pr330.pr.pr.pr.i.i, 0
  br i1 %tobool.not.i260.i.i, label %if.end.i264.i.i, label %nwl_dsi_write.exit258.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit258.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit258.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i264.i.i:                                  ; preds = %nwl_dsi_write.exit258.i.i
  %302 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i262.i.i = call i32 @regmap_write(ptr noundef %303, i32 noundef 576, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262.i.i)
  %cmp.i263.i.i = icmp slt i32 %call.i262.i.i, 0
  br i1 %cmp.i263.i.i, label %if.then1.i266.i.i, label %nwl_dsi_write.exit267.i.i

if.then1.i266.i.i:                                ; preds = %if.end.i264.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %304 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %305, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 576, i32 noundef %call.i262.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit267.i.i:                        ; preds = %if.end.i264.i.i
  %306 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %.pr332.pr.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr332.pr.pr.pr.i.i)
  %tobool.not.i269.i.i = icmp eq i32 %.pr332.pr.pr.pr.i.i, 0
  br i1 %tobool.not.i269.i.i, label %if.end.i273.i.i, label %nwl_dsi_write.exit267.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit267.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit267.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i273.i.i:                                  ; preds = %nwl_dsi_write.exit267.i.i
  %307 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %hdisplay.i.i, align 4
  %conv67.i.i = zext i16 %308 to i32
  %309 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i271.i.i = call i32 @regmap_write(ptr noundef %310, i32 noundef 512, i32 noundef %conv67.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271.i.i)
  %cmp.i272.i.i = icmp slt i32 %call.i271.i.i, 0
  br i1 %cmp.i272.i.i, label %if.then1.i275.i.i, label %nwl_dsi_write.exit276.i.i

if.then1.i275.i.i:                                ; preds = %if.end.i273.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %311 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %312, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 512, i32 noundef %call.i271.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit276.i.i:                        ; preds = %if.end.i273.i.i
  %313 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %.pr335.pr.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr335.pr.pr.pr.i.i)
  %tobool.not.i278.i.i = icmp eq i32 %.pr335.pr.pr.pr.i.i, 0
  br i1 %tobool.not.i278.i.i, label %if.end.i282.i.i, label %nwl_dsi_write.exit276.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit276.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i282.i.i:                                  ; preds = %nwl_dsi_write.exit276.i.i
  %314 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %vdisplay.i.i, align 2
  %conv70.i.i = zext i16 %315 to i32
  %sub71.i.i = add nsw i32 %conv70.i.i, -1
  %316 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i280.i.i = call i32 @regmap_write(ptr noundef %317, i32 noundef 572, i32 noundef %sub71.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280.i.i)
  %cmp.i281.i.i = icmp slt i32 %call.i280.i.i, 0
  br i1 %cmp.i281.i.i, label %if.then1.i284.i.i, label %nwl_dsi_write.exit285.i.i

if.then1.i284.i.i:                                ; preds = %if.end.i282.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %318 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %319, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 572, i32 noundef %call.i280.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit285.i.i:                        ; preds = %if.end.i282.i.i
  %320 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %.pr339.pr.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr339.pr.pr.pr.i.i)
  %tobool.not.i287.i.i = icmp eq i32 %.pr339.pr.pr.pr.i.i, 0
  br i1 %tobool.not.i287.i.i, label %if.end.i291.i.i, label %nwl_dsi_write.exit285.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit285.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit285.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i291.i.i:                                  ; preds = %nwl_dsi_write.exit285.i.i
  %321 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i289.i.i = call i32 @regmap_write(ptr noundef %322, i32 noundef 556, i32 noundef %sub32.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289.i.i)
  %cmp.i290.i.i = icmp slt i32 %call.i289.i.i, 0
  br i1 %cmp.i290.i.i, label %if.then1.i293.i.i, label %nwl_dsi_write.exit294.i.i

if.then1.i293.i.i:                                ; preds = %if.end.i291.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %323 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %324, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 556, i32 noundef %call.i289.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_write.exit294.i.i:                        ; preds = %if.end.i291.i.i
  %325 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %.pr341.pr.pr.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr341.pr.pr.pr.i.i)
  %tobool.not.i296.i.i = icmp eq i32 %.pr341.pr.pr.pr.i.i, 0
  br i1 %tobool.not.i296.i.i, label %if.end.i300.i.i, label %nwl_dsi_write.exit294.i.i.nwl_dsi_config_dpi.exit.i_crit_edge

nwl_dsi_write.exit294.i.i.nwl_dsi_config_dpi.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit294.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exit.i

if.end.i300.i.i:                                  ; preds = %nwl_dsi_write.exit294.i.i
  %326 = ptrtoint ptr %regmap.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %regmap.i207.i.i, align 4
  %call.i298.i.i = call i32 @regmap_write(ptr noundef %327, i32 noundef 560, i32 noundef %sub20.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298.i.i)
  %cmp.i299.i.i = icmp slt i32 %call.i298.i.i, 0
  br i1 %cmp.i299.i.i, label %if.then1.i302.i.i, label %if.end.i300.i.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge

if.end.i300.i.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge: ; preds = %if.end.i300.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_config_dpi.exitthread-pre-split.i

if.then1.i302.i.i:                                ; preds = %if.end.i300.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %328 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %329, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 560, i32 noundef %call.i298.i.i) #7
  br label %nwl_dsi_config_dpi.exit.thread42.i

nwl_dsi_config_dpi.exit.thread42.i:               ; preds = %if.then1.i302.i.i, %if.then1.i293.i.i, %if.then1.i284.i.i, %if.then1.i275.i.i, %if.then1.i266.i.i, %if.then1.i257.i.i, %if.then1.i248.i.i, %if.then1.i239.i.i, %if.then1.i230.i.i, %if.then1.i221.i.i, %if.then1.i212.i.i, %if.then1.i203.i.i, %if.then1.i194.i.i, %if.then1.i185.i.i, %if.then1.i176.i.i
  %call.i226.sink.i.i = phi i32 [ %call.i226.i.i, %if.then1.i230.i.i ], [ %call.i217.i.i, %if.then1.i221.i.i ], [ %call.i208.i.i, %if.then1.i212.i.i ], [ %call.i199.i.i, %if.then1.i203.i.i ], [ %call.i181.i.i, %if.then1.i185.i.i ], [ %call.i172.i.i, %if.then1.i176.i.i ], [ %call.i190.i.i, %if.then1.i194.i.i ], [ %call.i262.i.i, %if.then1.i266.i.i ], [ %call.i253.i.i, %if.then1.i257.i.i ], [ %call.i244.i.i, %if.then1.i248.i.i ], [ %call.i235.i.i, %if.then1.i239.i.i ], [ %call.i280.i.i, %if.then1.i284.i.i ], [ %call.i271.i.i, %if.then1.i275.i.i ], [ %call.i289.i.i, %if.then1.i293.i.i ], [ %call.i298.i.i, %if.then1.i302.i.i ]
  %330 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %error.i.i.i, align 4
  br label %if.then25.i

nwl_dsi_config_dpi.exitthread-pre-split.i:        ; preds = %if.end.i300.i.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge, %if.else.i18.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge, %if.then57.i.i.nwl_dsi_config_dpi.exitthread-pre-split.i_crit_edge
  %331 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %.pr41.i = load i32, ptr %error.i.i.i, align 4
  br label %nwl_dsi_config_dpi.exit.i

nwl_dsi_config_dpi.exit.i:                        ; preds = %nwl_dsi_config_dpi.exitthread-pre-split.i, %nwl_dsi_write.exit294.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit285.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit276.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit267.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit258.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit249.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit240.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit231.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit222.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit213.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %if.end64.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit195.i.i.nwl_dsi_config_dpi.exit.i_crit_edge, %nwl_dsi_write.exit177.i.i.nwl_dsi_config_dpi.exit.i_crit_edge
  %332 = phi i32 [ %.pr41.i, %nwl_dsi_config_dpi.exitthread-pre-split.i ], [ %.pr313.i.i, %nwl_dsi_write.exit177.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr315.i.i, %nwl_dsi_write.exit195.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr318.pr.i.i, %if.end64.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr320.pr.i.i, %nwl_dsi_write.exit213.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr322.pr.pr.i.i, %nwl_dsi_write.exit222.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr324.pr.pr.i.i, %nwl_dsi_write.exit231.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr326.pr.pr.i.i, %nwl_dsi_write.exit240.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr328.pr.pr.i.i, %nwl_dsi_write.exit249.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr330.pr.pr.pr.i.i, %nwl_dsi_write.exit258.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr332.pr.pr.pr.i.i, %nwl_dsi_write.exit267.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr335.pr.pr.pr.i.i, %nwl_dsi_write.exit276.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr339.pr.pr.pr.i.i, %nwl_dsi_write.exit285.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ], [ %.pr341.pr.pr.pr.i.i, %nwl_dsi_write.exit294.i.i.nwl_dsi_config_dpi.exit.i_crit_edge ]
  %333 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp24.i = icmp slt i32 %332, 0
  br i1 %cmp24.i, label %nwl_dsi_config_dpi.exit.i.if.then25.i_crit_edge, label %if.end26.i

nwl_dsi_config_dpi.exit.i.if.then25.i_crit_edge:  ; preds = %nwl_dsi_config_dpi.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.then25.i:                                      ; preds = %nwl_dsi_config_dpi.exit.i.if.then25.i_crit_edge, %nwl_dsi_config_dpi.exit.thread42.i, %nwl_dsi_config_dpi.exit.thread.i
  %retval.0.i1940.i = phi i32 [ -22, %nwl_dsi_config_dpi.exit.thread.i ], [ %332, %nwl_dsi_config_dpi.exit.i.if.then25.i_crit_edge ], [ %call.i226.sink.i.i, %nwl_dsi_config_dpi.exit.thread42.i ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i1940.i) #7
  br label %disable_clock.i

if.end26.i:                                       ; preds = %nwl_dsi_config_dpi.exit.i
  %334 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %phy.i, align 4
  %call28.i = call i32 @phy_power_on(ptr noundef %335) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then30.i, label %if.end31.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.58, i32 noundef %call28.i) #7
  br label %disable_clock.i

if.end31.i:                                       ; preds = %if.end26.i
  %336 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool.not.i.i21.i = icmp eq i32 %337, 0
  br i1 %tobool.not.i.i21.i, label %if.end.i.i25.i, label %if.end31.i.nwl_dsi_init_interrupts.exit.i_crit_edge

if.end31.i.nwl_dsi_init_interrupts.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_init_interrupts.exit.i

if.end.i.i25.i:                                   ; preds = %if.end31.i
  %regmap.i.i22.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 7
  %338 = ptrtoint ptr %regmap.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %regmap.i.i22.i, align 4
  %call.i.i23.i = call i32 @regmap_write(ptr noundef %339, i32 noundef 680, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23.i)
  %cmp.i.i24.i = icmp slt i32 %call.i.i23.i, 0
  br i1 %cmp.i.i24.i, label %if.then1.i.i26.i, label %nwl_dsi_write.exit.i28.i

if.then1.i.i26.i:                                 ; preds = %if.end.i.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  %340 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %341, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 680, i32 noundef %call.i.i23.i) #7
  br label %nwl_dsi_init_interrupts.exit.thread.i

nwl_dsi_write.exit.i28.i:                         ; preds = %if.end.i.i25.i
  %342 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %.pr.i27.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i27.i)
  %tobool.not.i5.i.i = icmp eq i32 %.pr.i27.i, 0
  br i1 %tobool.not.i5.i.i, label %if.end.i9.i.i, label %nwl_dsi_write.exit.i28.i.nwl_dsi_init_interrupts.exit.i_crit_edge

nwl_dsi_write.exit.i28.i.nwl_dsi_init_interrupts.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_init_interrupts.exit.i

if.end.i9.i.i:                                    ; preds = %nwl_dsi_write.exit.i28.i
  %343 = ptrtoint ptr %regmap.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %regmap.i.i22.i, align 4
  %call.i7.i.i = call i32 @regmap_write(ptr noundef %344, i32 noundef 684, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %cmp.i8.i.i = icmp slt i32 %call.i7.i.i, 0
  br i1 %cmp.i8.i.i, label %if.then1.i11.i.i, label %nwl_dsi_write.exit12.i.i

if.then1.i11.i.i:                                 ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %345 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %346, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 684, i32 noundef %call.i7.i.i) #7
  br label %nwl_dsi_init_interrupts.exit.thread.i

nwl_dsi_write.exit12.i.i:                         ; preds = %if.end.i9.i.i
  %347 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %.pr24.pr.i.i = load i32, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr24.pr.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %.pr24.pr.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.end.i18.i.i, label %nwl_dsi_write.exit12.i.i.nwl_dsi_init_interrupts.exit.i_crit_edge

nwl_dsi_write.exit12.i.i.nwl_dsi_init_interrupts.exit.i_crit_edge: ; preds = %nwl_dsi_write.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_init_interrupts.exit.i

if.end.i18.i.i:                                   ; preds = %nwl_dsi_write.exit12.i.i
  %348 = ptrtoint ptr %regmap.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %regmap.i.i22.i, align 4
  %call.i16.i.i = call i32 @regmap_write(ptr noundef %349, i32 noundef 680, i32 noundef 2147483509) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i)
  %cmp.i17.i.i = icmp slt i32 %call.i16.i.i, 0
  br i1 %cmp.i17.i.i, label %if.then1.i20.i.i, label %nwl_dsi_init_interrupts.exitthread-pre-split.i

if.then1.i20.i.i:                                 ; preds = %if.end.i18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %350 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %351, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, i32 noundef 680, i32 noundef %call.i16.i.i) #7
  br label %nwl_dsi_init_interrupts.exit.thread.i

nwl_dsi_init_interrupts.exit.thread.i:            ; preds = %if.then1.i20.i.i, %if.then1.i11.i.i, %if.then1.i.i26.i
  %352 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %error.i.i.i, align 4
  br label %power_off_phy.i

nwl_dsi_init_interrupts.exitthread-pre-split.i:   ; preds = %if.end.i18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %353 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %.pr44.i = load i32, ptr %error.i.i.i, align 4
  br label %nwl_dsi_init_interrupts.exit.i

nwl_dsi_init_interrupts.exit.i:                   ; preds = %nwl_dsi_init_interrupts.exitthread-pre-split.i, %nwl_dsi_write.exit12.i.i.nwl_dsi_init_interrupts.exit.i_crit_edge, %nwl_dsi_write.exit.i28.i.nwl_dsi_init_interrupts.exit.i_crit_edge, %if.end31.i.nwl_dsi_init_interrupts.exit.i_crit_edge
  %354 = phi i32 [ %.pr44.i, %nwl_dsi_init_interrupts.exitthread-pre-split.i ], [ %337, %if.end31.i.nwl_dsi_init_interrupts.exit.i_crit_edge ], [ %.pr.i27.i, %nwl_dsi_write.exit.i28.i.nwl_dsi_init_interrupts.exit.i_crit_edge ], [ %.pr24.pr.i.i, %nwl_dsi_write.exit12.i.i.nwl_dsi_init_interrupts.exit.i_crit_edge ]
  %355 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 0, ptr %error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp33.i = icmp slt i32 %354, 0
  br i1 %cmp33.i, label %nwl_dsi_init_interrupts.exit.i.power_off_phy.i_crit_edge, label %nwl_dsi_init_interrupts.exit.i.nwl_dsi_mode_set.exit_crit_edge

nwl_dsi_init_interrupts.exit.i.nwl_dsi_mode_set.exit_crit_edge: ; preds = %nwl_dsi_init_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nwl_dsi_mode_set.exit

nwl_dsi_init_interrupts.exit.i.power_off_phy.i_crit_edge: ; preds = %nwl_dsi_init_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off_phy.i

power_off_phy.i:                                  ; preds = %nwl_dsi_init_interrupts.exit.i.power_off_phy.i_crit_edge, %nwl_dsi_init_interrupts.exit.thread.i
  %356 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %phy.i, align 4
  %call37.i = call i32 @phy_power_off(ptr noundef %357) #7
  br label %disable_clock.i

disable_clock.i:                                  ; preds = %power_off_phy.i, %if.then30.i, %if.then25.i, %if.then21.i
  %358 = ptrtoint ptr %tx_esc_clk.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %tx_esc_clk.i, align 4
  call void @clk_disable(ptr noundef %359) #7
  call void @clk_unprepare(ptr noundef %359) #7
  br label %uninit_phy.i

uninit_phy.i:                                     ; preds = %disable_clock.i, %if.then13.i, %if.then9.i
  %360 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %phy.i, align 4
  %call40.i = call i32 @phy_exit(ptr noundef %361) #7
  br label %nwl_dsi_mode_set.exit

nwl_dsi_mode_set.exit:                            ; preds = %uninit_phy.i, %nwl_dsi_init_interrupts.exit.i.nwl_dsi_mode_set.exit_crit_edge, %if.then4.i, %if.then.i
  %rst_esc = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 10
  %362 = ptrtoint ptr %rst_esc to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %rst_esc, align 4
  %call19 = call i32 @reset_control_deassert(ptr noundef %363) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %nwl_dsi_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.48, i32 noundef %call19) #7
  br label %cleanup

if.end22:                                         ; preds = %nwl_dsi_mode_set.exit
  %rst_byte = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 9
  %364 = ptrtoint ptr %rst_byte to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %rst_byte, align 4
  %call23 = call i32 @reset_control_deassert(ptr noundef %365) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.49, i32 noundef %call23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %if.then21, %if.then16, %clk_prepare_enable.exit63.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %mipi_dsi_pixel_format_to_bpp.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %new_cfg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_dsi_bridge_atomic_enable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %old_bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_dpi = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 11
  %0 = ptrtoint ptr %rst_dpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst_dpi, align 4
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.76, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_dsi_bridge_atomic_disable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %old_bridge_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.81) #7
  %phy.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 4
  %2 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %3) #7
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %call3.i = tail call i32 @phy_exit(ptr noundef %5) #7
  %tx_esc_clk.i = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 16
  %6 = ptrtoint ptr %tx_esc_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_esc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %rst_dpi = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 11
  %8 = ptrtoint ptr %rst_dpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_dpi, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.77, i32 noundef %call2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rst_byte = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 9
  %12 = ptrtoint ptr %rst_byte to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rst_byte, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.78, i32 noundef %call3) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %rst_esc = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 10
  %16 = ptrtoint ptr %rst_esc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst_esc, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.79, i32 noundef %call8) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %rst_pclk = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 12
  %20 = ptrtoint ptr %rst_pclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rst_pclk, align 4
  %call13 = tail call i32 @reset_control_assert(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.80, i32 noundef %call13) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %core_clk = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 17
  %24 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #7
  tail call void @clk_unprepare(ptr noundef %25) #7
  %lcdif_clk = getelementptr inbounds %struct.nwl_dsi, ptr %bridge, i32 0, i32 18
  %26 = ptrtoint ptr %lcdif_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lcdif_clk, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i, align 4
  %call.i39 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then10, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @nwl_bridge_atomic_get_input_bus_fmts(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, i32 noundef %output_fmt, ptr nocapture noundef writeonly %num_input_fmts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_input_fmts, align 4
  %1 = zext i32 %output_fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %output_fmt, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 4106, label %entry.sw.bb1_crit_edge
    i32 4105, label %entry.sw.bb1_crit_edge7
    i32 4119, label %entry.sw.bb1_crit_edge8
  ]

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge7, %entry.sw.bb1_crit_edge8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %input_fmt.0 = phi i32 [ %output_fmt, %sw.bb1 ], [ 4106, %entry.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %input_fmt.0, ptr %call7.i.i.i, align 8
  %4 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_input_fmts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %if.end ], [ null, %entry.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nwl_dsi_bridge_atomic_check(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef %crtc_state, ptr nocapture noundef readnone %conn_state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = and i32 %1, -16
  %and = or i32 %or, 5
  store i32 %and, ptr %flags, align 4
  %active_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %2 = ptrtoint ptr %active_changed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %active_changed, align 2
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 2
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set = or i8 %bf.load, 64
  %6 = ptrtoint ptr %active_changed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set, ptr %active_changed, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_try_select_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_deselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !193, !194, !196, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_nwl_dsi__348_1235_nwl_dsi_driver_init6, !1, !"__initcall__kmod_nwl_dsi__348_1235_nwl_dsi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1235, i32 1}
!2 = !{ptr @__exitcall_nwl_dsi_driver_exit, !1, !"__exitcall_nwl_dsi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author349, !4, !"__UNIQUE_ID_author349", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1237, i32 1}
!5 = !{ptr @__UNIQUE_ID_author350, !6, !"__UNIQUE_ID_author350", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1238, i32 1}
!7 = !{ptr @__UNIQUE_ID_description351, !8, !"__UNIQUE_ID_description351", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1239, i32 1}
!9 = !{ptr @__UNIQUE_ID_file352, !10, !"__UNIQUE_ID_file352", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1240, i32 1}
!11 = !{ptr @__UNIQUE_ID_license353, !10, !"__UNIQUE_ID_license353", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1231, i32 11}
!14 = !{ptr @nwl_dsi_driver, !15, !"nwl_dsi_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1226, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1180, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1189, i32 3}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 995, i32 36}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 999, i32 4}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1003, i32 31}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1006, i32 3}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1012, i32 31}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1015, i32 3}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1021, i32 31}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1024, i32 3}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1030, i32 31}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1033, i32 3}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1039, i32 31}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1042, i32 3}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1052, i32 4}
!47 = !{ptr @nwl_dsi_parse_dt._key, !48, !"_key", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1061, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1064, i32 3}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1071, i32 3}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1076, i32 61}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1078, i32 3}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1082, i32 61}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1084, i32 3}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1088, i32 60}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1090, i32 3}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1094, i32 60}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1096, i32 3}
!70 = !{ptr @nwl_dsi_regmap_config, !71, !"nwl_dsi_regmap_config", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 116, i32 35}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 644, i32 3}
!74 = !{ptr @nwl_dsi_irq_handler._rs, !73, !"_rs", i1 false, i1 false}
!75 = !{ptr @__func__.nwl_dsi_irq_handler, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @nwl_dsi_irq_handler._rs.30, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 647, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 163, i32 3}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 396, i32 4}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 423, i32 4}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 430, i32 4}
!88 = !{ptr @nwl_dsi_host_ops, !89, !"nwl_dsi_host_ops", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 631, i32 39}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 357, i32 2}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 607, i32 3}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 611, i32 2}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 619, i32 3}
!99 = !{ptr @init_completion.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../include/linux/completion.h", i32 87, i32 2}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 554, i32 3}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 146, i32 3}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1155, i32 37}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1155, i32 14}
!110 = !{ptr @nwl_dsi_quirks_match, !111, !"nwl_dsi_quirks_match", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1154, i32 42}
!112 = !{ptr @nwl_dsi_bridge_funcs, !113, !"nwl_dsi_bridge_funcs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 974, i32 38}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 857, i32 2}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 874, i32 3}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 884, i32 3}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 889, i32 3}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 795, i32 2}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 664, i32 3}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 670, i32 3}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 676, i32 3}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 682, i32 3}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 686, i32 2}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 691, i32 3}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 697, i32 3}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 703, i32 3}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 221, i32 2}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 234, i32 2}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 237, i32 2}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 239, i32 2}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 242, i32 2}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 251, i32 2}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 273, i32 2}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 274, i32 2}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 275, i32 2}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 276, i32 2}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 277, i32 2}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 278, i32 2}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 279, i32 2}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 280, i32 2}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 281, i32 2}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 285, i32 3}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 289, i32 2}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 904, i32 3}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 749, i32 3}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 754, i32 3}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 759, i32 3}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 764, i32 3}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 727, i32 2}
!186 = !{ptr @nwl_dsi_timings, !187, !"nwl_dsi_timings", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1144, i32 40}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1117, i32 4}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1123, i32 2}
!192 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1127, i32 3}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1139, i32 3}
!198 = !{ptr @nwl_dsi_dt_ids, !199, !"nwl_dsi_dt_ids", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/bridge/nwl-dsi.c", i32 1148, i32 34}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"auto-init"}
!210 = !{i8 0, i8 2}
