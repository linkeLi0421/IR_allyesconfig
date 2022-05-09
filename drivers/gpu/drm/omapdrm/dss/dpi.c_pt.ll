; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/dpi.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/dpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.dpi_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, %struct.dss_lcd_mgr_config, i32, i32, %struct.omap_dss_device, %struct.drm_bridge }
%struct.dss_lcd_mgr_config = type { i32, i8, i8, %struct.dispc_clock_info, i32, i32 }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.dpi_clk_calc_ctx = type { ptr, i32, i32, i32, %struct.dss_pll_clock_info, i32, %struct.dispc_clock_info }
%struct.dss_pll_clock_info = type { i32, i32, [4 x i32], i16, i16, i32, [4 x i16], i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.78, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.anon.78 = type { ptr, ptr, ptr }
%struct.dss_pll = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dss_pll_clock_info }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lines\00", [21 x i8] zeroinitializer }, align 32
@dpi_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013DPI: omapdss DPI error: failed to parse datalines\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dpi_init_port\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/omapdrm/dss/dpi.c\00", [62 x i8] zeroinitializer }, align 32
@dpi_init_port._entry_ptr = internal global ptr @dpi_init_port._entry, section ".printk_index", align 4
@dpi_soc_devices = internal constant { [3 x %struct.soc_device_attribute], [44 x i8] } { [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdds_dsi\00", [23 x i8] zeroinitializer }, align 32
@dpi_init_regulator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013DPI: omapdss DPI error: can't get VDDS_DSI regulator\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpi_init_regulator\00", [45 x i8] zeroinitializer }, align 32
@dpi_init_regulator._entry_ptr = internal global ptr @dpi_init_regulator._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OMAP3[456]*\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[AD]M37*\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpi.2\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpi.1\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpi.0\00", [26 x i8] zeroinitializer }, align 32
@dpi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @dpi_bridge_attach, ptr null, ptr @dpi_bridge_mode_valid, ptr @dpi_bridge_mode_fixup, ptr @dpi_bridge_disable, ptr null, ptr @dpi_bridge_mode_set, ptr null, ptr @dpi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@dpi_init_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014DPI: omapdss DPI: PLL not operational\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dpi_init_pll\00", [19 x i8] zeroinitializer }, align 32
@dpi_init_pll._entry_ptr = internal global ptr @dpi_init_pll._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dpi_get_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014DPI: omapdss DPI: unsupported DSS version\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpi_get_channel\00", [16 x i8] zeroinitializer }, align 32
@dpi_get_channel._entry_ptr = internal global ptr @dpi_get_channel._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 716, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 719, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"dpi_soc_devices\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 671, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 688, i32 49 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 691, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 672, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 673, i32 15 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 623, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 628, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 631, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 635, i32 15 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"dpi_bridge_funcs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 552, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 410, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [37 x i8] c"../drivers/gpu/drm/omapdrm/dss/dpi.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 610, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @dpi_get_channel._entry, ptr @dpi_get_channel._entry_ptr, ptr @dpi_init_pll._entry, ptr @dpi_init_pll._entry_ptr, ptr @dpi_init_port._entry, ptr @dpi_init_port._entry_ptr, ptr @dpi_init_regulator._entry, ptr @dpi_init_regulator._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dpi_soc_devices, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dpi_bridge_funcs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_soc_devices to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_init_regulator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_init_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_get_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpi_init_port(ptr noundef %dss, ptr noundef %pdev, ptr noundef %port, i32 noundef %dss_model) local_unnamed_addr #0 align 64 {
entry:
  %port_num.i = alloca i32, align 4
  %datalines = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datalines) #6
  %0 = ptrtoint ptr %datalines to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %datalines, align 4, !annotation !50
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_child(ptr noundef %port, ptr noundef null) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1, ptr noundef nonnull @.str, ptr noundef nonnull %datalines, i32 noundef 1, i32 noundef 0) #6
  call void @of_node_put(ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool6.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %1 = ptrtoint ptr %datalines to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %datalines, align 4
  %data_lines = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %data_lines to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data_lines, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %call.i, align 4
  %dss_model11 = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dss_model11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dss_model, ptr %dss_model11, align 4
  %dss12 = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dss12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dss, ptr %dss12, align 4
  %data = getelementptr inbounds %struct.device_node, ptr %port, i32 0, i32 11
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %data, align 4
  %call.i36 = call ptr @soc_device_match(ptr noundef nonnull @dpi_soc_devices) #6
  %tobool.not.i = icmp eq ptr %call.i36, null
  br i1 %tobool.not.i, label %if.end9.if.end16_crit_edge, label %if.end.i

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.i:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call1.i = call ptr @devm_regulator_get(ptr noundef %dev.i, ptr noundef nonnull @.str.4) #6
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %cmp.not.i = icmp eq ptr %call1.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then3.i.cleanup_crit_edge, label %dpi_init_regulator.exit

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %vdds_dsi_reg.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %vdds_dsi_reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i, ptr %vdds_dsi_reg.i, align 4
  br label %if.end16

dpi_init_regulator.exit:                          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call1.i to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9.i, %if.end9.if.end16_crit_edge
  %output.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_num.i) #6
  %12 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %port_num.i, align 4
  %bridge.i.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 11
  %funcs.i.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 11, i32 7
  %13 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dpi_bridge_funcs, ptr %funcs.i.i, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i.i, align 8
  %of_node2.i.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 11, i32 4
  %18 = ptrtoint ptr %of_node2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %of_node2.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 11, i32 10
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 17, ptr %type.i.i, align 4
  call void @drm_bridge_add(ptr noundef %bridge.i.i) #6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %port, ptr noundef nonnull @.str.9, ptr noundef nonnull %port_num.i, i32 noundef 1, i32 noundef 0) #6
  %20 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i = icmp ult i32 %21, 3
  %spec.select.i = select i1 %cmp.i, i32 %21, i32 0
  %id.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %switch.selectcmp.i = icmp eq i32 %21, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.11, ptr @.str.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch.selectcmp29.i = icmp eq i32 %21, 2
  %switch.select30.i = select i1 %switch.selectcmp29.i, ptr @.str.10, ptr %switch.select.i
  %name4.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 10, i32 7
  %23 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %switch.select30.i, ptr %name4.i, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %dev.i37 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev.i37, ptr %output.i, align 4
  %id6.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 10, i32 11
  %27 = ptrtoint ptr %id6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %id6.i, align 4
  %type.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 10, i32 6
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type.i, align 4
  %29 = ptrtoint ptr %dss_model11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dss_model11, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %do.end.i.i [
    i32 0, label %if.end16.dpi_get_channel.exit.i_crit_edge
    i32 1, label %if.end16.dpi_get_channel.exit.i_crit_edge46
    i32 4, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb6.i.i
  ]

if.end16.dpi_get_channel.exit.i_crit_edge46:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_channel.exit.i

if.end16.dpi_get_channel.exit.i_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_channel.exit.i

sw.bb1.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %switch.selectcmp.i.i = icmp eq i32 %spec.select.i, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.i)
  %switch.selectcmp9.i.i = icmp eq i32 %spec.select.i, 2
  %switch.select10.i.i = select i1 %switch.selectcmp9.i.i, i32 3, i32 %switch.select.i.i
  br label %dpi_get_channel.exit.i

sw.bb5.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_channel.exit.i

sw.bb6.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_channel.exit.i

do.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %dpi_get_channel.exit.i

dpi_get_channel.exit.i:                           ; preds = %do.end.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %if.end16.dpi_get_channel.exit.i_crit_edge, %if.end16.dpi_get_channel.exit.i_crit_edge46
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %30, %sw.bb6.i.i ], [ %30, %sw.bb5.i.i ], [ 0, %if.end16.dpi_get_channel.exit.i_crit_edge ], [ 0, %if.end16.dpi_get_channel.exit.i_crit_edge46 ], [ %switch.select10.i.i, %sw.bb1.i.i ]
  %dispc_channel.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 10, i32 10
  %32 = ptrtoint ptr %dispc_channel.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i, ptr %dispc_channel.i, align 4
  %33 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_num.i, align 4
  %of_port.i = getelementptr inbounds %struct.dpi_data, ptr %call.i, i32 0, i32 10, i32 12
  %35 = ptrtoint ptr %of_port.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %of_port.i, align 4
  %call8.i = call i32 @omapdss_device_init_output(ptr noundef %output.i, ptr noundef %bridge.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then.i, label %if.end.i39

if.then.i:                                        ; preds = %dpi_get_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_bridge_remove(ptr noundef %bridge.i.i) #6
  br label %dpi_init_output_port.exit

if.end.i39:                                       ; preds = %dpi_get_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @omapdss_device_register(ptr noundef %output.i) #6
  br label %dpi_init_output_port.exit

dpi_init_output_port.exit:                        ; preds = %if.end.i39, %if.then.i
  %retval.0.i40 = phi i32 [ %call8.i, %if.then.i ], [ 0, %if.end.i39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_num.i) #6
  br label %cleanup

cleanup:                                          ; preds = %dpi_init_output_port.exit, %dpi_init_regulator.exit, %if.then3.i.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %retval.0.i40, %dpi_init_output_port.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %11, %dpi_init_regulator.exit ], [ -517, %if.then3.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalines) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpi_uninit_port(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device_node, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %output.i = getelementptr inbounds %struct.dpi_data, ptr %1, i32 0, i32 10
  tail call void @omapdss_device_unregister(ptr noundef %output.i) #6
  tail call void @omapdss_device_cleanup_output(ptr noundef %output.i) #6
  %bridge.i.i = getelementptr inbounds %struct.dpi_data, ptr %1, i32 0, i32 11
  tail call void @drm_bridge_remove(ptr noundef %bridge.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omapdss_device_init_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pll1.i = getelementptr i8, ptr %bridge, i32 -96
  %0 = ptrtoint ptr %pll1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dpi_init_pll.exit_crit_edge

if.end.dpi_init_pll.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_init_pll.exit

if.end.i:                                         ; preds = %if.end
  %dispc_channel.i.i = getelementptr i8, ptr %bridge, i32 -12
  %2 = ptrtoint ptr %dispc_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dispc_channel.i.i, align 4
  %dss_model.i.i = getelementptr i8, ptr %bridge, i32 -116
  %4 = ptrtoint ptr %dss_model.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dss_model.i.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %5, label %if.end.i.dpi_get_clk_src.exit.i_crit_edge [
    i32 4, label %sw.bb9.i.i
    i32 3, label %sw.bb4.i.i
    i32 2, label %sw.bb1.i.i
  ]

if.end.i.dpi_get_clk_src.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_clk_src.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp.i.i = icmp eq i32 %3, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp15.i.i = icmp eq i32 %3, 0
  %switch.select16.i.i = select i1 %switch.selectcmp15.i.i, i32 1, i32 %switch.select.i.i
  br label %dpi_get_clk_src.exit.i

sw.bb4.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.selectcmp17.i.i = icmp eq i32 %3, 3
  %switch.select18.i.i = select i1 %switch.selectcmp17.i.i, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp19.i.i = icmp eq i32 %3, 0
  %switch.select20.i.i = select i1 %switch.selectcmp19.i.i, i32 1, i32 %switch.select18.i.i
  br label %dpi_get_clk_src.exit.i

sw.bb9.i.i:                                       ; preds = %if.end.i
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %3, label %sw.bb9.i.i.sw.epilog.i.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 2, label %sw.bb1.i.i.i
    i32 3, label %sw.bb12.i.i.i
  ]

sw.bb9.i.i.sw.epilog.i.i.i_crit_edge:             ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

sw.bb.i.i.i:                                      ; preds = %sw.bb9.i.i
  %dss.i.i.i = getelementptr i8, ptr %bridge, i32 -112
  %8 = ptrtoint ptr %dss.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dss.i.i.i, align 4
  %call.i.i.i = tail call ptr @dss_pll_find_by_src(ptr noundef %9, i32 noundef 1) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.i.sw.epilog.i.i.i_crit_edge, label %sw.bb.i.i.i.dpi_get_clk_src.exit.i_crit_edge

sw.bb.i.i.i.dpi_get_clk_src.exit.i_crit_edge:     ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_clk_src.exit.i

sw.bb.i.i.i.sw.epilog.i.i.i_crit_edge:            ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

sw.bb1.i.i.i:                                     ; preds = %sw.bb9.i.i
  %dss2.i.i.i = getelementptr i8, ptr %bridge, i32 -112
  %10 = ptrtoint ptr %dss2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dss2.i.i.i, align 4
  %call3.i.i.i = tail call ptr @dss_pll_find_by_src(ptr noundef %11, i32 noundef 3) #6
  %tobool4.not.i.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %sw.bb1.i.i.i.dpi_get_clk_src.exit.i_crit_edge

sw.bb1.i.i.i.dpi_get_clk_src.exit.i_crit_edge:    ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_clk_src.exit.i

if.end6.i.i.i:                                    ; preds = %sw.bb1.i.i.i
  %12 = ptrtoint ptr %dss2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dss2.i.i.i, align 4
  %call8.i.i.i = tail call ptr @dss_pll_find_by_src(ptr noundef %13, i32 noundef 6) #6
  %tobool9.not.i.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %if.end6.i.i.i.sw.epilog.i.i.i_crit_edge, label %if.end6.i.i.i.dpi_get_clk_src.exit.i_crit_edge

if.end6.i.i.i.dpi_get_clk_src.exit.i_crit_edge:   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_clk_src.exit.i

if.end6.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

sw.bb12.i.i.i:                                    ; preds = %sw.bb9.i.i
  %dss13.i.i.i = getelementptr i8, ptr %bridge, i32 -112
  %14 = ptrtoint ptr %dss13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dss13.i.i.i, align 4
  %call14.i.i.i = tail call ptr @dss_pll_find_by_src(ptr noundef %15, i32 noundef 4) #6
  %tobool15.not.i.i.i = icmp eq ptr %call14.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %if.end17.i.i.i, label %sw.bb12.i.i.i.dpi_get_clk_src.exit.i_crit_edge

sw.bb12.i.i.i.dpi_get_clk_src.exit.i_crit_edge:   ; preds = %sw.bb12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_clk_src.exit.i

if.end17.i.i.i:                                   ; preds = %sw.bb12.i.i.i
  %16 = ptrtoint ptr %dss13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dss13.i.i.i, align 4
  %call19.i.i.i = tail call ptr @dss_pll_find_by_src(ptr noundef %17, i32 noundef 3) #6
  %tobool20.not.i.i.i = icmp eq ptr %call19.i.i.i, null
  br i1 %tobool20.not.i.i.i, label %if.end17.i.i.i.sw.epilog.i.i.i_crit_edge, label %if.end17.i.i.i.dpi_get_clk_src.exit.i_crit_edge

if.end17.i.i.i.dpi_get_clk_src.exit.i_crit_edge:  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_get_clk_src.exit.i

if.end17.i.i.i.sw.epilog.i.i.i_crit_edge:         ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %if.end17.i.i.i.sw.epilog.i.i.i_crit_edge, %if.end6.i.i.i.sw.epilog.i.i.i_crit_edge, %sw.bb.i.i.i.sw.epilog.i.i.i_crit_edge, %sw.bb9.i.i.sw.epilog.i.i.i_crit_edge
  br label %dpi_get_clk_src.exit.i

dpi_get_clk_src.exit.i:                           ; preds = %sw.epilog.i.i.i, %if.end17.i.i.i.dpi_get_clk_src.exit.i_crit_edge, %sw.bb12.i.i.i.dpi_get_clk_src.exit.i_crit_edge, %if.end6.i.i.i.dpi_get_clk_src.exit.i_crit_edge, %sw.bb1.i.i.i.dpi_get_clk_src.exit.i_crit_edge, %sw.bb.i.i.i.dpi_get_clk_src.exit.i_crit_edge, %sw.bb4.i.i, %sw.bb1.i.i, %if.end.i.dpi_get_clk_src.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.select16.i.i, %sw.bb1.i.i ], [ %switch.select20.i.i, %sw.bb4.i.i ], [ 0, %if.end.i.dpi_get_clk_src.exit.i_crit_edge ], [ 0, %sw.epilog.i.i.i ], [ 1, %sw.bb.i.i.i.dpi_get_clk_src.exit.i_crit_edge ], [ 3, %sw.bb1.i.i.i.dpi_get_clk_src.exit.i_crit_edge ], [ 6, %if.end6.i.i.i.dpi_get_clk_src.exit.i_crit_edge ], [ 4, %sw.bb12.i.i.i.dpi_get_clk_src.exit.i_crit_edge ], [ 3, %if.end17.i.i.i.dpi_get_clk_src.exit.i_crit_edge ]
  %clk_src.i = getelementptr i8, ptr %bridge, i32 -100
  %18 = ptrtoint ptr %clk_src.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i.i, ptr %clk_src.i, align 4
  %dss.i = getelementptr i8, ptr %bridge, i32 -112
  %19 = ptrtoint ptr %dss.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dss.i, align 4
  %call3.i = tail call ptr @dss_pll_find_by_src(ptr noundef %20, i32 noundef %retval.0.i.i) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %dpi_get_clk_src.exit.i.dpi_init_pll.exit_crit_edge, label %if.end6.i

dpi_get_clk_src.exit.i.dpi_init_pll.exit_crit_edge: ; preds = %dpi_get_clk_src.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_init_pll.exit

if.end6.i:                                        ; preds = %dpi_get_clk_src.exit.i
  %call.i.i = tail call i32 @dss_pll_enable(ptr noundef nonnull %call3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %dpi_init_pll.exit

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dss_pll_disable(ptr noundef nonnull %call3.i) #6
  %21 = ptrtoint ptr %pll1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call3.i, ptr %pll1.i, align 4
  br label %dpi_init_pll.exit

dpi_init_pll.exit:                                ; preds = %if.end11.i, %do.end.i, %dpi_get_clk_src.exit.i.dpi_init_pll.exit_crit_edge, %if.end.dpi_init_pll.exit_crit_edge
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %22 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 -44
  %24 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %23, ptr noundef %25, ptr noundef %bridge, i32 noundef %flags) #6
  br label %cleanup

cleanup:                                          ; preds = %dpi_init_pll.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %dpi_init_pll.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpi_bridge_mode_valid(ptr noundef %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  %ctx.i = alloca %struct.dpi_clk_calc_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -120
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %4 = and i16 %3, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ctx.i) #6
  %5 = call ptr @memset(ptr %ctx.i, i32 255, i32 76)
  %pll.i = getelementptr i8, ptr %bridge, i32 -96
  %6 = ptrtoint ptr %pll.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  %call.i = call fastcc zeroext i1 @dpi_pll_clk_calc(ptr noundef %add.ptr, i32 noundef %mul, ptr noundef nonnull %ctx.i) #6
  br i1 %call.i, label %if.then.i.dpi_clock_update.exit_crit_edge, label %if.then.i._crit_edge

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %16

if.then.i.dpi_clock_update.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_clock_update.exit

if.else.i:                                        ; preds = %if.end7
  %pck_min9.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 2
  %pck_max.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 3
  %dss.i.i = getelementptr i8, ptr %bridge, i32 -112
  %8 = getelementptr inbounds i8, ptr %ctx.i, i32 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.042.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.042.i.i)
  %cmp.i.i = icmp ult i32 %i.042.i.i, 24
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_dss_clk_calc.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.else.i
  %cmp43.i.i = phi i1 [ true, %if.else.i ], [ %cmp.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %i.042.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %9 = call ptr @memset(ptr %8, i32 0, i32 72)
  %10 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %ctx.i, align 4
  %mul.i.i = mul nuw nsw i32 %i.042.i.i, 1000
  %mul2.i.i = mul i32 %mul.i.i, %i.042.i.i
  %mul3.i.i = mul i32 %mul2.i.i, %i.042.i.i
  %11 = call i32 @llvm.usub.sat.i32(i32 %mul, i32 %mul3.i.i) #6
  %12 = ptrtoint ptr %pck_min9.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pck_min9.i.i, align 4
  %add.i.i = add i32 %mul3.i.i, %mul
  %13 = ptrtoint ptr %pck_max.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i.i, ptr %pck_max.i.i, align 4
  %14 = ptrtoint ptr %dss.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dss.i.i, align 4
  %call.i.i = call zeroext i1 @dss_div_calc(ptr noundef %15, i32 noundef %mul, i32 noundef %11, ptr noundef nonnull @dpi_calc_dss_cb, ptr noundef nonnull %ctx.i) #6
  br i1 %call.i.i, label %for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_dss_clk_calc.exit.i

dpi_dss_clk_calc.exit.i:                          ; preds = %for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge, %for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp.i.i, %for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge ], [ %cmp43.i.i, %for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %dpi_dss_clk_calc.exit.i.dpi_clock_update.exit_crit_edge, label %dpi_dss_clk_calc.exit.i._crit_edge

dpi_dss_clk_calc.exit.i._crit_edge:               ; preds = %dpi_dss_clk_calc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %16

dpi_dss_clk_calc.exit.i.dpi_clock_update.exit_crit_edge: ; preds = %dpi_dss_clk_calc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_clock_update.exit

dpi_clock_update.exit:                            ; preds = %dpi_dss_clk_calc.exit.i.dpi_clock_update.exit_crit_edge, %if.then.i.dpi_clock_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ctx.i) #6
  br label %cleanup

16:                                               ; preds = %dpi_dss_clk_calc.exit.i._crit_edge, %if.then.i._crit_edge
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ctx.i) #6
  br label %cleanup

cleanup:                                          ; preds = %16, %dpi_clock_update.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %entry.cleanup_crit_edge ], [ 14, %if.end.cleanup_crit_edge ], [ 17, %16 ], [ 0, %dpi_clock_update.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpi_bridge_mode_fixup(ptr noundef %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef writeonly %adjusted_mode) #0 align 64 {
entry:
  %ctx.i = alloca %struct.dpi_clk_calc_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -120
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ctx.i) #6
  %2 = call ptr @memset(ptr %ctx.i, i32 255, i32 76)
  %pll.i = getelementptr i8, ptr %bridge, i32 -96
  %3 = ptrtoint ptr %pll.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pll.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = call fastcc zeroext i1 @dpi_pll_clk_calc(ptr noundef %add.ptr, i32 noundef %mul, ptr noundef nonnull %ctx.i) #6
  br i1 %call.i, label %if.end.i, label %if.then.i.dpi_clock_update.exit.thread_crit_edge

if.then.i.dpi_clock_update.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_clock_update.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %clkout_idx.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkout_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clkout_idx.i, align 4
  %arrayidx.i = getelementptr %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 4, i32 2, i32 %6
  br label %if.end

if.else.i:                                        ; preds = %entry
  %pck_min9.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 2
  %pck_max.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 3
  %dss.i.i = getelementptr i8, ptr %bridge, i32 -112
  %7 = getelementptr inbounds i8, ptr %ctx.i, i32 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.042.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.042.i.i)
  %cmp.i.i = icmp ult i32 %i.042.i.i, 24
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 25
  br i1 %exitcond.not.i.i, label %for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_dss_clk_calc.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.else.i
  %cmp43.i.i = phi i1 [ true, %if.else.i ], [ %cmp.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %i.042.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %8 = call ptr @memset(ptr %7, i32 0, i32 72)
  %9 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %ctx.i, align 4
  %mul.i.i = mul nuw nsw i32 %i.042.i.i, 1000
  %mul2.i.i = mul i32 %mul.i.i, %i.042.i.i
  %mul3.i.i = mul i32 %mul2.i.i, %i.042.i.i
  %10 = call i32 @llvm.usub.sat.i32(i32 %mul, i32 %mul3.i.i) #6
  %11 = ptrtoint ptr %pck_min9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pck_min9.i.i, align 4
  %add.i.i = add i32 %mul3.i.i, %mul
  %12 = ptrtoint ptr %pck_max.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i.i, ptr %pck_max.i.i, align 4
  %13 = ptrtoint ptr %dss.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dss.i.i, align 4
  %call.i.i = call zeroext i1 @dss_div_calc(ptr noundef %14, i32 noundef %mul, i32 noundef %10, ptr noundef nonnull @dpi_calc_dss_cb, ptr noundef nonnull %ctx.i) #6
  br i1 %call.i.i, label %for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_dss_clk_calc.exit.i

dpi_dss_clk_calc.exit.i:                          ; preds = %for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge, %for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge
  %cmp.lcssa.i.i = phi i1 [ %cmp.i.i, %for.cond.i.i.dpi_dss_clk_calc.exit.i_crit_edge ], [ %cmp43.i.i, %for.body.i.i.dpi_dss_clk_calc.exit.i_crit_edge ]
  br i1 %cmp.lcssa.i.i, label %if.end4.i, label %dpi_dss_clk_calc.exit.i.dpi_clock_update.exit.thread_crit_edge

dpi_dss_clk_calc.exit.i.dpi_clock_update.exit.thread_crit_edge: ; preds = %dpi_dss_clk_calc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_clock_update.exit.thread

if.end4.i:                                        ; preds = %dpi_dss_clk_calc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %fck5.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 5
  br label %if.end

dpi_clock_update.exit.thread:                     ; preds = %dpi_dss_clk_calc.exit.i.dpi_clock_update.exit.thread_crit_edge, %if.then.i.dpi_clock_update.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ctx.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end4.i, %if.end.i
  %fck5.sink.i = phi ptr [ %fck5.i, %if.end4.i ], [ %arrayidx.i, %if.end.i ]
  %15 = ptrtoint ptr %fck5.sink.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fck5.sink.i, align 4
  %lck_div7.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %lck_div7.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lck_div7.i, align 4
  %conv.i = zext i16 %18 to i32
  %pck_div9.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %pck_div9.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pck_div9.i, align 2
  %conv10.i = zext i16 %20 to i32
  %div.i = udiv i32 %16, %conv.i
  %div11.i = udiv i32 %div.i, %conv10.i
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ctx.i) #6
  %div = udiv i32 %div11.i, 1000
  %21 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %adjusted_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dpi_clock_update.exit.thread
  %cmp9 = phi i1 [ false, %dpi_clock_update.exit.thread ], [ true, %if.end ]
  ret i1 %cmp9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpi_bridge_disable(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr i8, ptr %bridge, i32 -56
  tail call void @dss_mgr_disable(ptr noundef %output) #6
  %pll = getelementptr i8, ptr %bridge, i32 -96
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dss = getelementptr i8, ptr %bridge, i32 -112
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  %dispc_channel = getelementptr i8, ptr %bridge, i32 -12
  %4 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dispc_channel, align 4
  tail call void @dss_select_lcd_clk_source(ptr noundef %3, i32 noundef %5, i32 noundef 0) #6
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll, align 4
  tail call void @dss_pll_disable(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dss3 = getelementptr i8, ptr %bridge, i32 -112
  %8 = ptrtoint ptr %dss3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dss3, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dispc, align 4
  tail call void @dispc_runtime_put(ptr noundef %11) #6
  %vdds_dsi_reg = getelementptr i8, ptr %bridge, i32 -104
  %12 = ptrtoint ptr %vdds_dsi_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdds_dsi_reg, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %13) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dpi_bridge_mode_set(ptr nocapture noundef writeonly %bridge, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %1, 1000
  %pixelclock = getelementptr i8, ptr %bridge, i32 -64
  %2 = ptrtoint ptr %pixelclock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %pixelclock, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpi_bridge_enable(ptr noundef %bridge) #0 align 64 {
entry:
  %ctx.i7.i = alloca %struct.dpi_clk_calc_ctx, align 4
  %ctx.i.i = alloca %struct.dpi_clk_calc_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -120
  %vdds_dsi_reg = getelementptr i8, ptr %bridge, i32 -104
  %0 = ptrtoint ptr %vdds_dsi_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdds_dsi_reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %dss = getelementptr i8, ptr %bridge, i32 -112
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %call5 = tail call i32 @dispc_runtime_get(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_get_dispc_crit_edge

if.end4.err_get_dispc_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_get_dispc

if.end8:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dss, align 4
  %id = getelementptr i8, ptr %bridge, i32 -108
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %output = getelementptr i8, ptr %bridge, i32 -56
  %dispc_channel = getelementptr i8, ptr %bridge, i32 -12
  %10 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dispc_channel, align 4
  %call10 = tail call i32 @dss_dpi_select_source(ptr noundef %7, i32 noundef %9, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.err_src_sel_crit_edge

if.end8.err_src_sel_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_src_sel

if.end13:                                         ; preds = %if.end8
  %pll = getelementptr i8, ptr %bridge, i32 -96
  %12 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end21.thread, label %if.then15

if.end21.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %pixelclock1.i69 = getelementptr i8, ptr %bridge, i32 -64
  %14 = ptrtoint ptr %pixelclock1.i69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelclock1.i69, align 4
  br label %if.else.i

if.then15:                                        ; preds = %if.end13
  %call17 = tail call i32 @dss_pll_enable(ptr noundef nonnull %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %if.then15.err_src_sel_crit_edge

if.then15.err_src_sel_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_src_sel

if.end21:                                         ; preds = %if.then15
  %16 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %pll, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  %pixelclock1.i = getelementptr i8, ptr %bridge, i32 -64
  %17 = ptrtoint ptr %pixelclock1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelclock1.i, align 4
  br i1 %tobool.not.i, label %if.end21.if.else.i_crit_edge, label %if.then.i

if.end21.if.else.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ctx.i.i) #6
  %19 = call ptr @memset(ptr %ctx.i.i, i32 255, i32 76)
  %call.i.i = call fastcc zeroext i1 @dpi_pll_clk_calc(ptr noundef %add.ptr, i32 noundef %18, ptr noundef nonnull %ctx.i.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.dpi_set_pll_clk.exit.i_crit_edge

if.then.i.dpi_set_pll_clk.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_set_pll_clk.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %20 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pll, align 4
  %pll_cinfo.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i.i, i32 0, i32 4
  %call1.i.i = call i32 @dss_pll_set_config(ptr noundef %21, ptr noundef %pll_cinfo.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.dpi_set_pll_clk.exit.i_crit_edge

if.end.i.i.dpi_set_pll_clk.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_set_pll_clk.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dss, align 4
  %24 = ptrtoint ptr %dispc_channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dispc_channel, align 4
  %clk_src.i.i = getelementptr i8, ptr %bridge, i32 -100
  %26 = ptrtoint ptr %clk_src.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clk_src.i.i, align 4
  call void @dss_select_lcd_clk_source(ptr noundef %23, i32 noundef %25, i32 noundef %27) #6
  %clock_info.i.i = getelementptr i8, ptr %bridge, i32 -84
  %dispc_cinfo.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i.i, i32 0, i32 6
  %28 = call ptr @memcpy(ptr %clock_info.i.i, ptr %dispc_cinfo.i.i, i32 12)
  br label %dpi_set_pll_clk.exit.i

dpi_set_pll_clk.exit.i:                           ; preds = %if.end4.i.i, %if.end.i.i.dpi_set_pll_clk.exit.i_crit_edge, %if.then.i.dpi_set_pll_clk.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end4.i.i ], [ -22, %if.then.i.dpi_set_pll_clk.exit.i_crit_edge ], [ %call1.i.i, %if.end.i.i.dpi_set_pll_clk.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ctx.i.i) #6
  br label %dpi_set_mode.exit

if.else.i:                                        ; preds = %if.end21.if.else.i_crit_edge, %if.end21.thread
  %29 = phi i32 [ %15, %if.end21.thread ], [ %18, %if.end21.if.else.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ctx.i7.i) #6
  %pck_min9.i.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i7.i, i32 0, i32 2
  %pck_max.i.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i7.i, i32 0, i32 3
  %30 = getelementptr inbounds i8, ptr %ctx.i7.i, i32 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.042.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.042.i.i.i)
  %cmp.i.i.i = icmp ult i32 %i.042.i.i.i, 24
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 25
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.cond.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_dss_clk_calc.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.else.i
  %cmp43.i.i.i = phi i1 [ true, %if.else.i ], [ %cmp.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %i.042.i.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %31 = call ptr @memset(ptr %30, i32 0, i32 72)
  %32 = ptrtoint ptr %ctx.i7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %ctx.i7.i, align 4
  %mul.i.i.i = mul nuw nsw i32 %i.042.i.i.i, 1000
  %mul2.i.i.i = mul i32 %mul.i.i.i, %i.042.i.i.i
  %mul3.i.i.i = mul i32 %mul2.i.i.i, %i.042.i.i.i
  %33 = call i32 @llvm.usub.sat.i32(i32 %29, i32 %mul3.i.i.i) #6
  %34 = ptrtoint ptr %pck_min9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pck_min9.i.i.i, align 4
  %add.i.i.i = add i32 %mul3.i.i.i, %29
  %35 = ptrtoint ptr %pck_max.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i.i.i, ptr %pck_max.i.i.i, align 4
  %36 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dss, align 4
  %call.i.i.i = call zeroext i1 @dss_div_calc(ptr noundef %37, i32 noundef %29, i32 noundef %33, ptr noundef nonnull @dpi_calc_dss_cb, ptr noundef nonnull %ctx.i7.i) #6
  br i1 %call.i.i.i, label %for.body.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_dss_clk_calc.exit.i.i

dpi_dss_clk_calc.exit.i.i:                        ; preds = %for.body.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge, %for.cond.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge
  %cmp.lcssa.i.i.i = phi i1 [ %cmp.i.i.i, %for.cond.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge ], [ %cmp43.i.i.i, %for.body.i.i.i.dpi_dss_clk_calc.exit.i.i_crit_edge ]
  br i1 %cmp.lcssa.i.i.i, label %if.end.i10.i, label %dpi_dss_clk_calc.exit.i.i.dpi_set_dispc_clk.exit.i_crit_edge

dpi_dss_clk_calc.exit.i.i.dpi_set_dispc_clk.exit.i_crit_edge: ; preds = %dpi_dss_clk_calc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_set_dispc_clk.exit.i

if.end.i10.i:                                     ; preds = %dpi_dss_clk_calc.exit.i.i
  %38 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dss, align 4
  %fck.i.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i7.i, i32 0, i32 5
  %40 = ptrtoint ptr %fck.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fck.i.i, align 4
  %call1.i8.i = call i32 @dss_set_fck_rate(ptr noundef %39, i32 noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool2.not.i9.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool2.not.i9.i, label %if.end4.i13.i, label %if.end.i10.i.dpi_set_dispc_clk.exit.i_crit_edge

if.end.i10.i.dpi_set_dispc_clk.exit.i_crit_edge:  ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dpi_set_dispc_clk.exit.i

if.end4.i13.i:                                    ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  %clock_info.i11.i = getelementptr i8, ptr %bridge, i32 -84
  %dispc_cinfo.i12.i = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx.i7.i, i32 0, i32 6
  %42 = call ptr @memcpy(ptr %clock_info.i11.i, ptr %dispc_cinfo.i12.i, i32 12)
  br label %dpi_set_dispc_clk.exit.i

dpi_set_dispc_clk.exit.i:                         ; preds = %if.end4.i13.i, %if.end.i10.i.dpi_set_dispc_clk.exit.i_crit_edge, %dpi_dss_clk_calc.exit.i.i.dpi_set_dispc_clk.exit.i_crit_edge
  %retval.0.i14.i = phi i32 [ 0, %if.end4.i13.i ], [ -22, %dpi_dss_clk_calc.exit.i.i.dpi_set_dispc_clk.exit.i_crit_edge ], [ %call1.i8.i, %if.end.i10.i.dpi_set_dispc_clk.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ctx.i7.i) #6
  br label %dpi_set_mode.exit

dpi_set_mode.exit:                                ; preds = %dpi_set_dispc_clk.exit.i, %dpi_set_pll_clk.exit.i
  %r.0.i = phi i32 [ %retval.0.i.i, %dpi_set_pll_clk.exit.i ], [ %retval.0.i14.i, %dpi_set_dispc_clk.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %tobool23.not = icmp eq i32 %r.0.i, 0
  br i1 %tobool23.not, label %if.end25, label %dpi_set_mode.exit.err_set_mode_crit_edge

dpi_set_mode.exit.err_set_mode_crit_edge:         ; preds = %dpi_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_mode

if.end25:                                         ; preds = %dpi_set_mode.exit
  %mgr_config.i = getelementptr i8, ptr %bridge, i32 -92
  %43 = ptrtoint ptr %mgr_config.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %mgr_config.i, align 4
  %stallmode.i = getelementptr i8, ptr %bridge, i32 -88
  %44 = ptrtoint ptr %stallmode.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %stallmode.i, align 4
  %fifohandcheck.i = getelementptr i8, ptr %bridge, i32 -87
  %45 = ptrtoint ptr %fifohandcheck.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %fifohandcheck.i, align 1
  %data_lines.i = getelementptr i8, ptr %bridge, i32 -60
  %46 = ptrtoint ptr %data_lines.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_lines.i, align 4
  %video_port_width.i = getelementptr i8, ptr %bridge, i32 -72
  %48 = ptrtoint ptr %video_port_width.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %video_port_width.i, align 4
  %lcden_sig_polarity.i = getelementptr i8, ptr %bridge, i32 -68
  %49 = ptrtoint ptr %lcden_sig_polarity.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %lcden_sig_polarity.i, align 4
  call void @dss_mgr_set_lcd_config(ptr noundef %output, ptr noundef %mgr_config.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 429496000) #6
  %call27 = call i32 @dss_mgr_enable(ptr noundef %output) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end25.err_set_mode_crit_edge

if.end25.err_set_mode_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_set_mode

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_set_mode:                                     ; preds = %if.end25.err_set_mode_crit_edge, %dpi_set_mode.exit.err_set_mode_crit_edge
  %51 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pll, align 4
  %tobool32.not = icmp eq ptr %52, null
  br i1 %tobool32.not, label %err_set_mode.err_src_sel_crit_edge, label %if.then33

err_set_mode.err_src_sel_crit_edge:               ; preds = %err_set_mode
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_src_sel

if.then33:                                        ; preds = %err_set_mode
  call void @__sanitizer_cov_trace_pc() #8
  call void @dss_pll_disable(ptr noundef nonnull %52) #6
  br label %err_src_sel

err_src_sel:                                      ; preds = %if.then33, %err_set_mode.err_src_sel_crit_edge, %if.then15.err_src_sel_crit_edge, %if.end8.err_src_sel_crit_edge
  %53 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dss, align 4
  %dispc37 = getelementptr inbounds %struct.dss_device, ptr %54, i32 0, i32 21
  %55 = ptrtoint ptr %dispc37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dispc37, align 4
  call void @dispc_runtime_put(ptr noundef %56) #6
  br label %err_get_dispc

err_get_dispc:                                    ; preds = %err_src_sel, %if.end4.err_get_dispc_crit_edge
  %57 = ptrtoint ptr %vdds_dsi_reg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vdds_dsi_reg, align 4
  %tobool39.not = icmp eq ptr %58, null
  br i1 %tobool39.not, label %err_get_dispc.cleanup_crit_edge, label %if.then40

err_get_dispc.cleanup_crit_edge:                  ; preds = %err_get_dispc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %err_get_dispc
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 @regulator_disable(ptr noundef nonnull %58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %err_get_dispc.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dss_pll_find_by_src(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_pll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_pll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dpi_pll_clk_calc(ptr noundef %dpi, i32 noundef %pck, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %ctx, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 72)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dpi, ptr %ctx, align 4
  %clk_src = getelementptr inbounds %struct.dpi_data, ptr %dpi, i32 0, i32 5
  %3 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_src, align 4
  %call = tail call i32 @dss_pll_get_clkout_idx_for_src(i32 noundef %4) #6
  %clkout_idx = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %clkout_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %clkout_idx, align 4
  %pll = getelementptr inbounds %struct.dpi_data, ptr %dpi, i32 0, i32 6
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll, align 4
  %clkin2 = getelementptr inbounds %struct.dss_pll, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %clkin2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clkin2, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %10 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll, align 4
  %hw = getelementptr inbounds %struct.dss_pll, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %pck, -1000
  %pck_min = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %pck_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %pck_min, align 4
  %add = add i32 %pck, 1000
  %pck_max = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 3
  %17 = ptrtoint ptr %pck_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %pck_max, align 4
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %pll6 = getelementptr inbounds %struct.dpi_data, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %pll6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pll6, align 4
  %call7 = tail call zeroext i1 @dss_pll_calc_a(ptr noundef %21, i32 noundef %call3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dpi_calc_pll_cb, ptr noundef %ctx) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pll_cinfo = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 4
  %call9 = tail call zeroext i1 @dss_pll_calc_b(ptr noundef %11, i32 noundef %call3, i32 noundef %pck, ptr noundef %pll_cinfo) #6
  %dispc_cinfo = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 6
  %lck_div = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %lck_div to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %lck_div, align 4
  %pck_div = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %pck_div to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %pck_div, align 2
  %clkout = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clkout, align 4
  %26 = ptrtoint ptr %dispc_cinfo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dispc_cinfo, align 4
  %pck16 = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %pck16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %pck16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i1 [ %call7, %if.then ], [ true, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_pll_get_clkout_idx_for_src(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dss_pll_calc_a(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpi_calc_pll_cb(i32 noundef %n, i32 noundef %m, i32 noundef %fint, i32 noundef %clkdco, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %n to i16
  %pll_cinfo = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 4
  %n1 = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %n1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %n1, align 4
  %conv2 = trunc i32 %m to i16
  %m4 = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %m4 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv2, ptr %m4, align 2
  %2 = ptrtoint ptr %pll_cinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %fint, ptr %pll_cinfo, align 4
  %clkdco8 = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %clkdco8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %clkdco, ptr %clkdco8, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %pll = getelementptr inbounds %struct.dpi_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll, align 4
  %pck_min = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %pck_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pck_min, align 4
  %dss = getelementptr inbounds %struct.dpi_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dss, align 4
  %call = tail call i32 @dss_get_max_fck_rate(ptr noundef %11) #6
  %call10 = tail call zeroext i1 @dss_pll_hsdiv_calc_a(ptr noundef %7, i32 noundef %clkdco, i32 noundef %9, i32 noundef %call, ptr noundef nonnull @dpi_calc_hsdiv_cb, ptr noundef %data) #6
  ret i1 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dss_pll_calc_b(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dss_pll_hsdiv_calc_a(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_get_max_fck_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpi_calc_hsdiv_cb(i32 noundef %m_dispc, i32 noundef %dispc, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %m_dispc to i16
  %clkout_idx = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %clkout_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clkout_idx, align 4
  %arrayidx = getelementptr %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %arrayidx, align 2
  %3 = load i32, ptr %clkout_idx, align 4
  %arrayidx3 = getelementptr %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 4, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dispc, ptr %arrayidx3, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dss = getelementptr inbounds %struct.dpi_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dss, align 4
  %dispc4 = getelementptr inbounds %struct.dss_device, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %dispc4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dispc4, align 4
  %pck_min = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %pck_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pck_min, align 4
  %pck_max = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %pck_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pck_max, align 4
  %call = tail call zeroext i1 @dispc_div_calc(ptr noundef %10, i32 noundef %dispc, i32 noundef %12, i32 noundef %14, ptr noundef nonnull @dpi_calc_dispc_cb, ptr noundef %data) #6
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dispc_div_calc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dpi_calc_dispc_cb(i32 noundef %lckd, i32 noundef %pckd, i32 noundef %lck, i32 noundef %pck, ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pck_min = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pck_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pck_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999999, i32 %1)
  %cmp = icmp ugt i32 %1, 99999999
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lckd)
  %cmp1 = icmp slt i32 %lckd, 2
  %2 = and i32 %lckd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2.not = icmp eq i32 %2, 0
  %or.cond = or i1 %cmp1, %cmp2.not
  br i1 %or.cond, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pckd)
  %cmp4 = icmp slt i32 %pckd, 2
  %3 = and i32 %pckd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  %or.cond25 = or i1 %cmp4, %cmp7.not
  br i1 %or.cond25, label %if.end.if.end10_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %conv = trunc i32 %lckd to i16
  %dispc_cinfo = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 6
  %lck_div = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %lck_div to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %lck_div, align 4
  %conv11 = trunc i32 %pckd to i16
  %pck_div = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %pck_div to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv11, ptr %pck_div, align 2
  %6 = ptrtoint ptr %dispc_cinfo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lck, ptr %dispc_cinfo, align 4
  %pck16 = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %pck16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %pck, ptr %pck16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %if.then.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dss_div_calc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dpi_calc_dss_cb(i32 noundef %fck, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fck1 = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %fck1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %fck, ptr %fck1, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %dss = getelementptr inbounds %struct.dpi_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dss, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dispc, align 4
  %pck_min = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %pck_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pck_min, align 4
  %pck_max = getelementptr inbounds %struct.dpi_clk_calc_ctx, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %pck_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pck_max, align 4
  %call = tail call zeroext i1 @dispc_div_calc(ptr noundef %6, i32 noundef %fck, i32 noundef %8, i32 noundef %10, ptr noundef nonnull @dpi_calc_dispc_cb, ptr noundef %data) #6
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_mgr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_select_lcd_clk_source(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_dpi_select_source(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_mgr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_pll_set_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_set_fck_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_mgr_set_lcd_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_cleanup_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 716, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 719, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dpi_init_port._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dpi_init_port._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 688, i32 49}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 691, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dpi_init_regulator._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @dpi_init_regulator._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 672, i32 15}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 673, i32 15}
!19 = !{ptr @dpi_soc_devices, !20, !"dpi_soc_devices", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 671, i32 42}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 623, i32 29}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 628, i32 15}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 631, i32 15}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 635, i32 15}
!29 = !{ptr @dpi_bridge_funcs, !30, !"dpi_bridge_funcs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 552, i32 38}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 410, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dpi_init_pll._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @dpi_init_pll._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/omapdrm/dss/dpi.c", i32 610, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dpi_get_channel._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @dpi_get_channel._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
