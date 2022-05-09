; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_dpi.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_dpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.mtk_dpi_conf = type { ptr, i32, i32, i8, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mtk_dpi = type { %struct.drm_encoder, %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.drm_display_mode, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }
%struct.mtk_dpi_sync_param = type { i32, i32, i32, i8 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek-dpi\00", [19 x i8] zeroinitializer }, align 32
@mtk_dpi_of_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_conf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_conf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_conf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_conf }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@mtk_dpi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_dpi_probe, ptr @mtk_dpi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_dpi_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_dpi_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable engine clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_dpi_power_on\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/mediatek/mtk_dpi.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_dpi_power_on._entry_ptr = internal global ptr @mtk_dpi_power_on._entry, section ".printk_index", align 4
@mtk_dpi_power_on._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable pixel clock: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_dpi_power_on._entry_ptr.8 = internal global ptr @mtk_dpi_power_on._entry.6, section ".printk_index", align 4
@mtk_dpi_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek_drm\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_dpi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot find pinctrl!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@mtk_dpi_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot find pinctrl idle!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@mtk_dpi_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.15, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot find pinctrl active!\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 865, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to ioremap mem resource: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry_ptr = internal global ptr @mtk_dpi_probe._entry, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"engine\00", [25 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 873, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get engine clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry_ptr.20 = internal global ptr @mtk_dpi_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pixel\00", [26 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 882, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get pixel clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry_ptr.24 = internal global ptr @mtk_dpi_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get tvdpll clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry_ptr.28 = internal global ptr @mtk_dpi_probe._entry.26, section ".printk_index", align 4
@mtk_dpi_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.3, i32 905, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Found bridge node: %pOF\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry_ptr.32 = internal global ptr @mtk_dpi_probe._entry.29, section ".printk_index", align 4
@mtk_dpi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @mtk_dpi_bridge_attach, ptr null, ptr @mtk_dpi_bridge_mode_valid, ptr null, ptr @mtk_dpi_bridge_disable, ptr null, ptr @mtk_dpi_bridge_mode_set, ptr null, ptr @mtk_dpi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts, ptr @mtk_dpi_bridge_atomic_get_input_bus_fmts, ptr @mtk_dpi_bridge_atomic_check, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_dpi_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mtk_dpi_bind, ptr @mtk_dpi_unbind }, [24 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.10, ptr @.str.3, i32 918, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add component: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_dpi_probe._entry_ptr.35 = internal global ptr @mtk_dpi_probe._entry.33, section ".printk_index", align 4
@mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_dpi_set_display_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Want PLL %lu Hz, pixel clock %lu Hz\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Got  PLL %lu Hz, pixel clock %lu Hz\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_dpi_bridge_atomic_get_output_bus_fmts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"output_fmts should not be null\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mtk_dpi_bridge_atomic_get_output_bus_fmts\00", [54 x i8] zeroinitializer }, align 32
@mtk_dpi_bridge_atomic_get_output_bus_fmts._entry_ptr = internal global ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_dpi_bridge_atomic_check.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_dpi_bridge_atomic_check\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"input format 0x%04x, output format 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@mtk_dpi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to initialize decoder: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk_dpi_bind\00", [19 x i8] zeroinitializer }, align 32
@mtk_dpi_bind._entry_ptr = internal global ptr @mtk_dpi_bind._entry, section ".printk_index", align 4
@mtk_dpi_bind._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to create bridge connector\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_dpi_bind._entry_ptr.47 = internal global ptr @mtk_dpi_bind._entry.45, section ".printk_index", align 4
@mt2701_conf = internal constant { %struct.mtk_dpi_conf, [40 x i8] } { %struct.mtk_dpi_conf { ptr @mt2701_calculate_factor, i32 176, i32 150000, i8 1, ptr @mt8173_output_fmts, i32 1 }, [40 x i8] zeroinitializer }, align 32
@mt8173_conf = internal constant { %struct.mtk_dpi_conf, [40 x i8] } { %struct.mtk_dpi_conf { ptr @mt8173_calculate_factor, i32 224, i32 300000, i8 0, ptr @mt8173_output_fmts, i32 1 }, [40 x i8] zeroinitializer }, align 32
@mt8183_conf = internal constant { %struct.mtk_dpi_conf, [40 x i8] } { %struct.mtk_dpi_conf { ptr @mt8183_calculate_factor, i32 224, i32 100000, i8 0, ptr @mt8183_output_fmts, i32 2 }, [40 x i8] zeroinitializer }, align 32
@mt8192_conf = internal constant { %struct.mtk_dpi_conf, [40 x i8] } { %struct.mtk_dpi_conf { ptr @mt8183_calculate_factor, i32 224, i32 150000, i8 0, ptr @mt8173_output_fmts, i32 1 }, [40 x i8] zeroinitializer }, align 32
@mt8173_output_fmts = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4106], [28 x i8] zeroinitializer }, align 32
@mt8183_output_fmts = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4108, i32 4107], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 956, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"mtk_dpi_of_ids\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 935, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"mtk_dpi_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 952, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 426, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 432, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 844, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 847, i32 55 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 850, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 855, i32 54 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 858, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 865, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 869, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 873, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 878, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 882, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 887, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 891, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 905, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"mtk_dpi_bridge_funcs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 676, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"mtk_dpi_component_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 747, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 918, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 468, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 484, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 564, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 617, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 713, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 726, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"mt2701_conf\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 801, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"mt8173_conf\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 793, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"mt8183_conf\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 810, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant [12 x i8] c"mt8192_conf\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 818, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c"mt8173_output_fmts\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 784, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant [19 x i8] c"mt8183_output_fmts\00", align 1
@___asan_gen_.211 = private constant [38 x i8] c"../drivers/gpu/drm/mediatek/mtk_dpi.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 788, i32 18 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @mtk_dpi_bind._entry, ptr @mtk_dpi_bind._entry.45, ptr @mtk_dpi_bind._entry_ptr, ptr @mtk_dpi_bind._entry_ptr.47, ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts._entry, ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts._entry_ptr, ptr @mtk_dpi_power_on._entry, ptr @mtk_dpi_power_on._entry.6, ptr @mtk_dpi_power_on._entry_ptr, ptr @mtk_dpi_power_on._entry_ptr.8, ptr @mtk_dpi_probe._entry, ptr @mtk_dpi_probe._entry.18, ptr @mtk_dpi_probe._entry.22, ptr @mtk_dpi_probe._entry.26, ptr @mtk_dpi_probe._entry.29, ptr @mtk_dpi_probe._entry.33, ptr @mtk_dpi_probe._entry_ptr, ptr @mtk_dpi_probe._entry_ptr.20, ptr @mtk_dpi_probe._entry_ptr.24, ptr @mtk_dpi_probe._entry_ptr.28, ptr @mtk_dpi_probe._entry_ptr.32, ptr @mtk_dpi_probe._entry_ptr.35, ptr @.str, ptr @mtk_dpi_of_ids, ptr @mtk_dpi_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @mtk_dpi_bridge_funcs, ptr @mtk_dpi_component_ops, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @mt2701_conf, ptr @mt8173_conf, ptr @mt8183_conf, ptr @mt8192_conf, ptr @mt8173_output_fmts, ptr @mt8183_output_fmts], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_of_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_power_on._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dpi_bind._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_conf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_conf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_conf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_conf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_output_fmts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_output_fmts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_dpi_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @mtk_dpi_power_on(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dpi_power_on(ptr nocapture noundef %dpi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 20
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %engine_clk = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 6
  %2 = ptrtoint ptr %engine_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end2, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.ph) #12
  br label %err_refcount

if.end2:                                          ; preds = %if.end.i
  %pixel_clk = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 7
  %6 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pixel_clk, align 4
  %call.i1 = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i5, label %if.end2.do.end8_crit_edge

if.end2.do.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.end.i5:                                        ; preds = %if.end2
  %call1.i3 = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool2.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool2.not.i4, label %if.end10, label %if.then3.i6

if.then3.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i6, %if.end2.do.end8_crit_edge
  %retval.0.i7.ph = phi i32 [ %call1.i3, %if.then3.i6 ], [ %call.i1, %if.end2.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 5
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i7.ph) #12
  %10 = ptrtoint ptr %engine_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %engine_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  br label %err_refcount

if.end10:                                         ; preds = %if.end.i5
  %pinctrl = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 16
  %12 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pinctrl, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %land.lhs.true

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end10
  %pins_dpi = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 18
  %14 = ptrtoint ptr %pins_dpi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pins_dpi, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true.if.end17_crit_edge, label %if.then13

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @pinctrl_select_state(ptr noundef nonnull %13, ptr noundef nonnull %15) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %regs.i.i = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 4
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !117
  br label %cleanup

err_refcount:                                     ; preds = %do.end8, %do.end
  %22 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refcount, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_refcount, %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_dpi_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @mtk_dpi_power_off(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dpi_power_off(ptr nocapture noundef %dpi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 20
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !118

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 403, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end25:                                         ; preds = %if.end21.critedge
  %pinctrl = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 16
  %3 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pinctrl, align 4
  %tobool26.not = icmp eq ptr %4, null
  br i1 %tobool26.not, label %if.end25.if.end31_crit_edge, label %land.lhs.true

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end25
  %pins_gpio = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 17
  %5 = ptrtoint ptr %pins_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pins_gpio, align 4
  %tobool27.not = icmp eq ptr %6, null
  br i1 %tobool27.not, label %land.lhs.true.if.end31_crit_edge, label %if.then28

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinctrl_select_state(ptr noundef nonnull %4, ptr noundef nonnull %6) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true.if.end31_crit_edge, %if.end25.if.end31_crit_edge
  %regs.i.i = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 4
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %10 = and i32 %9, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #9, !srcloc !117
  %pixel_clk = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 7
  %13 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pixel_clk, align 4
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  %engine_clk = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 6
  %15 = ptrtoint ptr %engine_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %engine_clk, align 4
  tail call void @clk_disable(ptr noundef %16) #9
  tail call void @clk_unprepare(ptr noundef %16) #9
  br label %return

return:                                           ; preds = %if.end31, %if.end21.critedge.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dpi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 536, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %conf = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 11
  %1 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %conf, align 4
  %output_fmt = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %output_fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4106, ptr %output_fmt, align 4
  %call5 = tail call ptr @devm_pinctrl_get(ptr noundef %dev1) #9
  %pinctrl = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %pinctrl, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pinctrl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dpi_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dpi_probe, %if.then14)) #9
          to label %if.end17 [label %if.then14], !srcloc !119

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dpi_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then8, %if.end.if.end17_crit_edge
  %5 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinctrl, align 4
  %tobool19.not = icmp eq ptr %6, null
  br i1 %tobool19.not, label %if.end17.if.end76_crit_edge, label %if.then20

if.end17.if.end76_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then20:                                        ; preds = %if.end17
  %call22 = tail call ptr @pinctrl_lookup_state(ptr noundef nonnull %6, ptr noundef nonnull @.str.12) #9
  %pins_gpio = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 17
  %7 = ptrtoint ptr %pins_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %pins_gpio, align 4
  %cmp.i240 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then25, label %if.then20.if.end44_crit_edge

if.then20.if.end44_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pins_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pins_gpio, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dpi_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dpi_probe, %if.then39)) #9
          to label %if.end44 [label %if.then39], !srcloc !119

if.then39:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dpi_probe.__UNIQUE_ID_ddebug311, ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.then25, %if.then20.if.end44_crit_edge
  %9 = ptrtoint ptr %pins_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pins_gpio, align 4
  %tobool46.not = icmp eq ptr %10, null
  br i1 %tobool46.not, label %if.end44.if.end51_crit_edge, label %if.then47

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pinctrl, align 4
  %call50 = tail call i32 @pinctrl_select_state(ptr noundef %12, ptr noundef nonnull %10) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end44.if.end51_crit_edge
  %13 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pinctrl, align 4
  %call53 = tail call ptr @pinctrl_lookup_state(ptr noundef %14, ptr noundef nonnull @.str.14) #9
  %pins_dpi = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 18
  %15 = ptrtoint ptr %pins_dpi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call53, ptr %pins_dpi, align 4
  %cmp.i241 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then56, label %if.end51.if.end76_crit_edge

if.end51.if.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %pins_dpi to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pins_dpi, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dpi_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dpi_probe, %if.then70)) #9
          to label %if.end76 [label %if.then70], !srcloc !119

if.then70:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dpi_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.then56, %if.end51.if.end76_crit_edge, %if.end17.if.end76_crit_edge
  %call77 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call78 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call77) #9
  %regs = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call78, ptr %regs, align 4
  %cmp.i242 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then81, label %if.end87

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call78 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %18) #12
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  %call88 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  %engine_clk = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %engine_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call88, ptr %engine_clk, align 4
  %cmp.i243 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %if.then91, label %if.end99

if.then91:                                        ; preds = %if.end87
  %cmp.not = icmp eq ptr %call88, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then91.cleanup_crit_edge, label %do.end97

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end97:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call88 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %20) #12
  br label %cleanup

if.end99:                                         ; preds = %if.end87
  %call100 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  %pixel_clk = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call100, ptr %pixel_clk, align 4
  %cmp.i244 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %if.then103, label %if.end112

if.then103:                                       ; preds = %if.end99
  %cmp106.not = icmp eq ptr %call100, inttoptr (i32 -517 to ptr)
  br i1 %cmp106.not, label %if.then103.cleanup_crit_edge, label %do.end110

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end110:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call100 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %22) #12
  br label %cleanup

if.end112:                                        ; preds = %if.end99
  %call113 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  %tvd_clk = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %tvd_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call113, ptr %tvd_clk, align 4
  %cmp.i245 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then116, label %if.end125

if.then116:                                       ; preds = %if.end112
  %cmp119.not = icmp eq ptr %call113, inttoptr (i32 -517 to ptr)
  br i1 %cmp119.not, label %if.then116.cleanup_crit_edge, label %do.end123

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end123:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call113 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %24) #12
  br label %cleanup

if.end125:                                        ; preds = %if.end112
  %call126 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call126, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call126)
  %cmp128 = icmp slt i32 %call126, 1
  br i1 %cmp128, label %if.end125.cleanup_crit_edge, label %if.end130

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end130:                                        ; preds = %if.end125
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %next_bridge = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 2
  %call131 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %27, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %next_bridge) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %do.end137, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end137:                                        ; preds = %if.end130
  %28 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next_bridge, align 4
  %of_node139 = getelementptr inbounds %struct.drm_bridge, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %of_node139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node139, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef %31) #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mtk_dpi_bridge_funcs, ptr %funcs, align 4
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %of_node142 = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %of_node142 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %of_node142, align 4
  %type = getelementptr inbounds %struct.mtk_dpi, ptr %call.i, i32 0, i32 1, i32 10
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 17, ptr %type, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #9
  %call145 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @mtk_dpi_component_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.end137.cleanup_crit_edge, label %if.then147

do.end137.cleanup_crit_edge:                      ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then147:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_bridge_remove(ptr noundef %bridge) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call145) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then147, %do.end137.cleanup_crit_edge, %if.end130.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %do.end123, %if.then116.cleanup_crit_edge, %do.end110, %if.then103.cleanup_crit_edge, %do.end97, %if.then91.cleanup_crit_edge, %if.then81, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then81 ], [ %call145, %if.then147 ], [ -12, %entry.cleanup_crit_edge ], [ %20, %do.end97 ], [ -517, %if.then91.cleanup_crit_edge ], [ %22, %do.end110 ], [ -517, %if.then103.cleanup_crit_edge ], [ %24, %do.end123 ], [ -517, %if.then116.cleanup_crit_edge ], [ -22, %if.end125.cleanup_crit_edge ], [ %call131, %if.end130.cleanup_crit_edge ], [ 0, %do.end137.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dpi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @mtk_dpi_component_ops) #9
  %bridge = getelementptr inbounds %struct.mtk_dpi, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dpi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call2 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #9
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_dpi_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %conf = getelementptr i8, ptr %bridge, i32 424
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %max_clock_khz = getelementptr inbounds %struct.mtk_dpi_conf, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %max_clock_khz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_clock_khz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp ugt i32 %1, %5
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dpi_bridge_disable(ptr nocapture noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -72
  tail call fastcc void @mtk_dpi_power_off(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dpi_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr i8, ptr %bridge, i32 312
  tail call void @drm_mode_copy(ptr noundef %mode1, ptr noundef %adjusted_mode) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dpi_bridge_enable(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -72
  tail call fastcc void @mtk_dpi_power_on(ptr noundef %add.ptr.i)
  %mode = getelementptr i8, ptr %bridge, i32 312
  tail call fastcc void @mtk_dpi_set_display_mode(ptr noundef %add.ptr.i, ptr noundef %mode)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, ptr nocapture noundef writeonly %num_output_fmts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_output_fmts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_output_fmts, align 4
  %conf = getelementptr i8, ptr %bridge, i32 424
  %1 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conf, align 4
  %output_fmts1 = getelementptr inbounds %struct.mtk_dpi_conf, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %output_fmts1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %output_fmts1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %bridge, i32 292
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.39) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_output_fmts3 = getelementptr inbounds %struct.mtk_dpi_conf, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %num_output_fmts3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_output_fmts3, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #9
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !118

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #13
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conf, align 4
  %num_output_fmts9 = getelementptr inbounds %struct.mtk_dpi_conf, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %num_output_fmts9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_output_fmts9, align 4
  %16 = ptrtoint ptr %num_output_fmts to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_output_fmts, align 4
  %17 = load ptr, ptr %conf, align 4
  %output_fmts11 = getelementptr inbounds %struct.mtk_dpi_conf, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %output_fmts11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %output_fmts11, align 4
  %num_output_fmts13 = getelementptr inbounds %struct.mtk_dpi_conf, ptr %17, i32 0, i32 5
  %20 = ptrtoint ptr %num_output_fmts13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_output_fmts13, align 4
  %mul = shl i32 %21, 2
  %22 = call ptr @memcpy(ptr %call8.i.i, ptr %19, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call8.i.i, %if.end7 ], [ null, %do.end ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @mtk_dpi_bridge_atomic_get_input_bus_fmts(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, i32 noundef %output_fmt, ptr nocapture noundef writeonly %num_input_fmts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_input_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_input_fmts, align 4
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4106, ptr %call7.i.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dpi_bridge_atomic_check(ptr nocapture noundef %bridge, ptr nocapture noundef readonly %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %output_bus_cfg = getelementptr inbounds %struct.drm_bridge_state, ptr %bridge_state, i32 0, i32 3
  %0 = ptrtoint ptr %output_bus_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_bus_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %conf = getelementptr i8, ptr %bridge, i32 424
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %num_output_fmts = getelementptr inbounds %struct.mtk_dpi_conf, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_output_fmts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_output_fmts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then.do.body_crit_edge, label %if.then1

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %output_fmts = getelementptr inbounds %struct.mtk_dpi_conf, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %output_fmts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output_fmts, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  br label %do.body

do.body:                                          ; preds = %if.then1, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %out_bus_format.0 = phi i32 [ %9, %if.then1 ], [ 1, %if.then.do.body_crit_edge ], [ %1, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dpi_bridge_atomic_check.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dpi_bridge_atomic_check, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !119

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %bridge, i32 292
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %input_bus_cfg = getelementptr inbounds %struct.drm_bridge_state, ptr %bridge_state, i32 0, i32 2
  %12 = ptrtoint ptr %input_bus_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_bus_cfg, align 4
  %14 = ptrtoint ptr %output_bus_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output_bus_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dpi_bridge_atomic_check.__UNIQUE_ID_ddebug309, ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef %13, i32 noundef %15) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %output_fmt = getelementptr i8, ptr %bridge, i32 456
  %16 = ptrtoint ptr %output_fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %out_bus_format.0, ptr %output_fmt, align 4
  %color_format = getelementptr i8, ptr %bridge, i32 428
  %17 = call ptr @memset(ptr %color_format, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dpi_set_display_mode(ptr noundef readonly %dpi, ptr noundef %mode) unnamed_addr #0 align 64 {
entry:
  %vsync_lodd = alloca %struct.mtk_dpi_sync_param, align 4
  %vsync_leven = alloca %struct.mtk_dpi_sync_param, align 4
  %vsync_rodd = alloca %struct.mtk_dpi_sync_param, align 4
  %vsync_reven = alloca %struct.mtk_dpi_sync_param, align 4
  %vm = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vsync_lodd) #9
  %0 = call ptr @memset(ptr %vsync_lodd, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vsync_leven) #9
  %1 = call ptr @memset(ptr %vsync_leven, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vsync_rodd) #9
  %2 = call ptr @memset(ptr %vsync_rodd, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vsync_reven) #9
  %3 = call ptr @memset(ptr %vsync_reven, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #9
  %4 = call ptr @memset(ptr %vm, i32 0, i32 40)
  %conf = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 11
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %call = tail call i32 %8(i32 noundef %10) #9
  call void @drm_display_mode_to_videomode(ptr noundef %mode, ptr noundef nonnull %vm) #9
  %11 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm, align 4
  %mul = mul i32 %12, %call
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dpi_set_display_mode, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug307, ptr noundef %14, ptr noundef nonnull @.str.37, i32 noundef %mul, i32 noundef %16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tvd_clk = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 8
  %17 = ptrtoint ptr %tvd_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tvd_clk, align 4
  %call5 = call i32 @clk_set_rate(ptr noundef %18, i32 noundef %mul) #9
  %19 = ptrtoint ptr %tvd_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tvd_clk, align 4
  %call7 = call i32 @clk_get_rate(ptr noundef %20) #9
  %div = udiv i32 %call7, %call
  %21 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %vm, align 4
  %output_fmt = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 19
  %22 = ptrtoint ptr %output_fmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %output_fmt, align 4
  %.off = add i32 %23, -4107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %pixel_clk = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 7
  %24 = ptrtoint ptr %pixel_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pixel_clk, align 4
  %mul13 = zext i1 %switch to i32
  %div.sink = shl i32 %div, %mul13
  %call17 = call i32 @clk_set_rate(ptr noundef %25, i32 noundef %div.sink) #9
  %pixel_clk19 = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 7
  %26 = ptrtoint ptr %pixel_clk19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pixel_clk19, align 4
  %call20 = call i32 @clk_get_rate(ptr noundef %27) #9
  %28 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call20, ptr %vm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dpi_set_display_mode, %if.then34)) #9
          to label %do.end39 [label %if.then34], !srcloc !119

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 5
  %29 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev35, align 4
  %31 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug308, ptr noundef %30, ptr noundef nonnull @.str.38, i32 noundef %call7, i32 noundef %32) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.end
  %flags = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %35 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hsync_len, align 4
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %37 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hback_porch, align 4
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %39 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hfront_porch, align 4
  %vsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 8
  %41 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vsync_len, align 4
  %43 = ptrtoint ptr %vsync_lodd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %vsync_lodd, align 4
  %vback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 7
  %44 = ptrtoint ptr %vback_porch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vback_porch, align 4
  %back_porch46 = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %vsync_lodd, i32 0, i32 2
  %46 = ptrtoint ptr %back_porch46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %back_porch46, align 4
  %vfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 6
  %47 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vfront_porch, align 4
  %front_porch47 = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %vsync_lodd, i32 0, i32 1
  %49 = ptrtoint ptr %front_porch47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %front_porch47, align 4
  %shift_half_line48 = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %vsync_lodd, i32 0, i32 3
  %50 = ptrtoint ptr %shift_half_line48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %shift_half_line48, align 4
  %and50 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %flags73 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %51 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags73, align 4
  %and74 = and i32 %52, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool51.not, label %land.lhs.true72, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end39
  br i1 %tobool75.not, label %land.lhs.true62, label %if.then55

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %53 = call ptr @memcpy(ptr %vsync_leven, ptr %vsync_lodd, i32 16)
  %54 = call ptr @memcpy(ptr %vsync_rodd, ptr %vsync_lodd, i32 16)
  %55 = call ptr @memcpy(ptr %vsync_reven, ptr %vsync_lodd, i32 16)
  %shift_half_line56 = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %vsync_leven, i32 0, i32 3
  %56 = ptrtoint ptr %shift_half_line56 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %shift_half_line56, align 4
  %shift_half_line57 = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %vsync_reven, i32 0, i32 3
  %57 = ptrtoint ptr %shift_half_line57 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %shift_half_line57, align 4
  br label %if.end79

land.lhs.true62:                                  ; preds = %land.lhs.true
  %58 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags73, align 4
  %and64 = and i32 %59, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then66, label %land.lhs.true62.if.end79_crit_edge

land.lhs.true62.if.end79_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then66:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  %60 = call ptr @memcpy(ptr %vsync_leven, ptr %vsync_lodd, i32 16)
  %shift_half_line67 = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %vsync_leven, i32 0, i32 3
  %61 = ptrtoint ptr %shift_half_line67 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %shift_half_line67, align 4
  br label %if.end79

land.lhs.true72:                                  ; preds = %do.end39
  br i1 %tobool75.not, label %land.lhs.true72.if.end79_crit_edge, label %if.then76

land.lhs.true72.if.end79_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  %62 = call ptr @memcpy(ptr %vsync_rodd, ptr %vsync_lodd, i32 16)
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %land.lhs.true72.if.end79_crit_edge, %if.then66, %land.lhs.true62.if.end79_crit_edge, %if.then55
  %regs.i.i = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 4
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 4
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %66 = or i32 %65, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %68, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %66) #9, !srcloc !117
  %69 = shl i32 %34, 12
  %70 = and i32 %69, 8192
  %71 = shl i32 %34, 11
  %72 = and i32 %71, 16384
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %74, i32 20
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %76 = and i32 %75, -15728641
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  %or5.i = or i32 %72, %70
  %or8.i = or i32 %or5.i, %77
  %or.i.i6 = or i32 %or8.i, 32768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %78 = call i32 @llvm.bswap.i32(i32 %or.i.i6) #9
  %79 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i7 = getelementptr i8, ptr %80, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i7, i32 %78) #9, !srcloc !117
  %81 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %82, i32 32
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %84 = and i32 %83, 15794175
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  %and3.i.i = and i32 %36, 4095
  %or.i.i10 = or i32 %85, %and3.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %86 = call i32 @llvm.bswap.i32(i32 %or.i.i10) #9
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i11 = getelementptr i8, ptr %88, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i11, i32 %86) #9, !srcloc !117
  %89 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %90, i32 36
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %92 = and i32 %91, 15794175
  %93 = call i32 @llvm.bswap.i32(i32 %92) #9
  %and3.i10.i = and i32 %38, 4095
  %or.i11.i = or i32 %93, %and3.i10.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %94 = call i32 @llvm.bswap.i32(i32 %or.i11.i) #9
  %95 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i12.i = getelementptr i8, ptr %96, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i12.i, i32 %94) #9, !srcloc !117
  %shl2.i = shl i32 %40, 16
  %97 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %98, i32 36
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %100 = and i32 %99, -65296
  %101 = call i32 @llvm.bswap.i32(i32 %100) #9
  %and3.i16.i = and i32 %shl2.i, 268369920
  %or.i17.i = or i32 %101, %and3.i16.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %102 = call i32 @llvm.bswap.i32(i32 %or.i17.i) #9
  %103 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i18.i = getelementptr i8, ptr %104, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i18.i, i32 %102) #9, !srcloc !117
  call fastcc void @mtk_dpi_config_vsync(ptr noundef %dpi, ptr noundef nonnull %vsync_lodd, i32 noundef 40, i32 noundef 44) #9
  call fastcc void @mtk_dpi_config_vsync(ptr noundef %dpi, ptr noundef nonnull %vsync_rodd, i32 noundef 112, i32 noundef 116) #9
  call fastcc void @mtk_dpi_config_vsync(ptr noundef %dpi, ptr noundef nonnull %vsync_leven, i32 noundef 104, i32 noundef 108) #9
  call fastcc void @mtk_dpi_config_vsync(ptr noundef %dpi, ptr noundef nonnull %vsync_reven, i32 noundef 120, i32 noundef 124) #9
  %flags80 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %105 = ptrtoint ptr %flags80 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags80, align 4
  %and81 = and i32 %106, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %cond.i12 = select i1 %tobool82.not, i32 0, i32 8
  %107 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %108, i32 16
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %110 = and i32 %109, -134217729
  %111 = call i32 @llvm.bswap.i32(i32 %110) #9
  %or.i.i15 = or i32 %111, %cond.i12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %112 = call i32 @llvm.bswap.i32(i32 %or.i.i15) #9
  %113 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i16 = getelementptr i8, ptr %114, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i16, i32 %112) #9, !srcloc !117
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags, align 4
  %and88 = lshr i32 %116, 6
  %117 = and i32 %and88, 4
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %119, i32 16
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %121 = and i32 %120, -67108865
  %122 = call i32 @llvm.bswap.i32(i32 %121) #9
  %or.i.i20 = or i32 %122, %117
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %123 = call i32 @llvm.bswap.i32(i32 %or.i.i20) #9
  %124 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i21 = getelementptr i8, ptr %125, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i21, i32 %123) #9, !srcloc !117
  %126 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags, align 4
  %and95 = and i32 %127, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %hactive99 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 1
  %128 = ptrtoint ptr %hactive99 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hactive99, align 4
  %vactive100 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 5
  %130 = ptrtoint ptr %vactive100 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vactive100, align 4
  %132 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %133, i32 24
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %135 = and i32 %134, 14745599
  %136 = call i32 @llvm.bswap.i32(i32 %135) #9
  %and3.i.i29 = and i32 %129, 8191
  %or.i.i30 = or i32 %136, %and3.i.i29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %137 = call i32 @llvm.bswap.i32(i32 %or.i.i30) #9
  %138 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i31 = getelementptr i8, ptr %139, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i31, i32 %137) #9
  br i1 %tobool96.not, label %if.else98, label %if.then97

if.then97:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %140 = shl i32 %131, 15
  %141 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %142, i32 24
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %144 = and i32 %143, -65312
  %145 = call i32 @llvm.bswap.i32(i32 %144) #9
  %and3.i6.i = and i32 %140, 536805376
  %or.i7.i = or i32 %145, %and3.i6.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %146 = call i32 @llvm.bswap.i32(i32 %or.i7.i) #9
  %147 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i8.i = getelementptr i8, ptr %148, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i8.i, i32 %146) #9, !srcloc !117
  br label %if.end101

if.else98:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %shl1.i32 = shl i32 %131, 16
  %149 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i33 = getelementptr i8, ptr %150, i32 24
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i33) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %152 = and i32 %151, -65312
  %153 = call i32 @llvm.bswap.i32(i32 %152) #9
  %and3.i6.i34 = and i32 %shl1.i32, 536805376
  %or.i7.i35 = or i32 %153, %and3.i6.i34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %154 = call i32 @llvm.bswap.i32(i32 %or.i7.i35) #9
  %155 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i8.i36 = getelementptr i8, ptr %156, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i8.i36, i32 %154) #9, !srcloc !117
  br label %if.end101

if.end101:                                        ; preds = %if.else98, %if.then97
  %157 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %158, i32 152
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %160 = and i32 %159, 15794175
  %161 = or i32 %160, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %162 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i41 = getelementptr i8, ptr %163, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i41, i32 %161) #9, !srcloc !117
  %164 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i14.i43 = getelementptr i8, ptr %165, i32 152
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i43) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %167 = and i32 %166, -65296
  %168 = or i32 %167, 57359
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %169 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i18.i46 = getelementptr i8, ptr %170, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i18.i46, i32 %168) #9, !srcloc !117
  %171 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %172, i32 156
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %174 = and i32 %173, 15794175
  %175 = or i32 %174, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %176 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i24.i = getelementptr i8, ptr %177, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i24.i, i32 %175) #9, !srcloc !117
  %178 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %179, i32 156
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %181 = and i32 %180, -65296
  %182 = or i32 %181, 57359
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %183 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i30.i = getelementptr i8, ptr %184, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i30.i, i32 %182) #9, !srcloc !117
  %bit_num = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 14
  %185 = ptrtoint ptr %bit_num to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bit_num, align 4
  %switch.tableidx = add i32 %186, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %187 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.mult = shl i32 %switch.tableidx, 18
  %switch.offset = add i32 %switch.idx.mult, 262144
  %val.0.i = select i1 %187, i32 %switch.offset, i32 0
  %188 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %189, i32 20
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %191 = and i32 %190, -3073
  %192 = call i32 @llvm.bswap.i32(i32 %191) #9
  %or.i.i49 = or i32 %192, %val.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %193 = call i32 @llvm.bswap.i32(i32 %or.i.i49) #9
  %194 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i50 = getelementptr i8, ptr %195, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i50, i32 %193) #9, !srcloc !117
  %channel_swap = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 15
  %196 = ptrtoint ptr %channel_swap to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %channel_swap, align 4
  %switch.tableidx91 = add i32 %197, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx91)
  %198 = icmp ult i32 %switch.tableidx91, 5
  %spec.select = select i1 %198, i32 %197, i32 0
  %199 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %200, i32 20
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %202 = and i32 %201, -117440513
  %203 = call i32 @llvm.bswap.i32(i32 %202) #9
  %or.i.i57 = or i32 %203, %spec.select
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %204 = call i32 @llvm.bswap.i32(i32 %or.i.i57) #9
  %205 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i58 = getelementptr i8, ptr %206, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i58, i32 %204) #9, !srcloc !117
  %yc_map = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 13
  %207 = ptrtoint ptr %yc_map to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %yc_map, align 4
  %switch.tableidx88 = add i32 %208, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx88)
  %209 = icmp ult i32 %switch.tableidx88, 4
  %switch.idx.mult89 = shl i32 %switch.tableidx88, 20
  %switch.offset90 = add i32 %switch.idx.mult89, 4194304
  %val.0.i63 = select i1 %209, i32 %switch.offset90, i32 0
  %210 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %211, i32 20
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %213 = and i32 %212, -28673
  %214 = call i32 @llvm.bswap.i32(i32 %213) #9
  %or.i.i66 = or i32 %214, %val.0.i63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %215 = call i32 @llvm.bswap.i32(i32 %or.i.i66) #9
  %216 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i67 = getelementptr i8, ptr %217, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i67, i32 %215) #9, !srcloc !117
  %color_format = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 12
  %218 = ptrtoint ptr %color_format to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %color_format, align 4
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values)
  switch i32 %219, label %if.else6.i [
    i32 2, label %if.end101.if.then.i_crit_edge
    i32 5, label %if.end101.if.then.i_crit_edge93
    i32 3, label %if.end101.if.then5.i_crit_edge
    i32 6, label %if.end101.if.then5.i_crit_edge94
  ]

if.end101.if.then5.i_crit_edge94:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.end101.if.then5.i_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i

if.end101.if.then.i_crit_edge93:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end101.if.then.i_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.end101.if.then.i_crit_edge, %if.end101.if.then.i_crit_edge93
  %221 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %222, i32 16
  %223 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %224 = and i32 %223, -536870913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %225 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %226, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %224) #9, !srcloc !117
  %227 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %228, i32 16
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %230 = or i32 %229, 1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %231 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i24.i = getelementptr i8, ptr %232, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i24.i, i32 %230) #9, !srcloc !117
  %233 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %234, i32 16
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %236 = and i32 %235, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %237 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i27.i = getelementptr i8, ptr %238, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i27.i, i32 %236) #9, !srcloc !117
  %239 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %240, i32 20
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %242 = and i32 %241, -117440513
  %243 = or i32 %242, 83886080
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %244 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i31.i = getelementptr i8, ptr %245, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i31.i, i32 %243) #9, !srcloc !117
  br label %mtk_dpi_config_color_format.exit

if.then5.i:                                       ; preds = %if.end101.if.then5.i_crit_edge, %if.end101.if.then5.i_crit_edge94
  %246 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %247, i32 16
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %249 = or i32 %248, 536870912
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %250 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i35.i = getelementptr i8, ptr %251, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i35.i, i32 %249) #9, !srcloc !117
  %252 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %253, i32 16
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %255 = or i32 %254, 1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %256 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i39.i = getelementptr i8, ptr %257, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i39.i, i32 %255) #9, !srcloc !117
  %258 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i41.i = getelementptr i8, ptr %259, i32 16
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %261 = or i32 %260, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %262 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i43.i = getelementptr i8, ptr %263, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i43.i, i32 %261) #9, !srcloc !117
  %264 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i45.i = getelementptr i8, ptr %265, i32 20
  %266 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %267 = and i32 %266, -117440513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %268 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i47.i = getelementptr i8, ptr %269, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i47.i, i32 %267) #9, !srcloc !117
  br label %mtk_dpi_config_color_format.exit

if.else6.i:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %270 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i49.i = getelementptr i8, ptr %271, i32 16
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %273 = and i32 %272, -536870913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %274 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i50.i = getelementptr i8, ptr %275, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i50.i, i32 %273) #9, !srcloc !117
  %276 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i52.i = getelementptr i8, ptr %277, i32 16
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %279 = and i32 %278, -1073741825
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %280 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i53.i = getelementptr i8, ptr %281, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i53.i, i32 %279) #9, !srcloc !117
  %282 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i55.i = getelementptr i8, ptr %283, i32 16
  %284 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %285 = and i32 %284, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %286 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i56.i = getelementptr i8, ptr %287, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i56.i, i32 %285) #9, !srcloc !117
  %288 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i58.i = getelementptr i8, ptr %289, i32 20
  %290 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %291 = and i32 %290, -117440513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %292 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i60.i = getelementptr i8, ptr %293, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i60.i, i32 %291) #9, !srcloc !117
  br label %mtk_dpi_config_color_format.exit

mtk_dpi_config_color_format.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.then.i
  %294 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %conf, align 4
  %reg_h_fre_con.i = getelementptr inbounds %struct.mtk_dpi_conf, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %reg_h_fre_con.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %reg_h_fre_con.i, align 4
  %298 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %299, i32 %297
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %301 = or i32 %300, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %302 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i70 = getelementptr i8, ptr %303, i32 %297
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i70, i32 %301) #9, !srcloc !117
  %304 = ptrtoint ptr %output_fmt to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %output_fmt, align 4
  %.off.i = add i32 %305, -4107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %306 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %307, i32 28
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %switch.i, label %if.then.i75, label %if.else.i

if.then.i75:                                      ; preds = %mtk_dpi_config_color_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %309 = or i32 %308, 83886080
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %310 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i73 = getelementptr i8, ptr %311, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i73, i32 %309) #9, !srcloc !117
  %312 = ptrtoint ptr %output_fmt to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %output_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4108, i32 %313)
  %cmp4.i = icmp eq i32 %313, 4108
  %cond.i74 = select i1 %cmp4.i, i32 131072, i32 0
  %314 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %315, i32 20
  %316 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %317 = and i32 %316, -513
  %318 = call i32 @llvm.bswap.i32(i32 %317) #9
  %or.i13.i = or i32 %318, %cond.i74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %319 = call i32 @llvm.bswap.i32(i32 %or.i13.i) #9
  %320 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i14.i = getelementptr i8, ptr %321, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i14.i, i32 %319) #9, !srcloc !117
  br label %mtk_dpi_dual_edge.exit

if.else.i:                                        ; preds = %mtk_dpi_config_color_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %322 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i17.i = getelementptr i8, ptr %323, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17.i, i32 %308) #9, !srcloc !117
  br label %mtk_dpi_dual_edge.exit

mtk_dpi_dual_edge.exit:                           ; preds = %if.else.i, %if.then.i75
  %324 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %conf, align 4
  %edge_sel_en.i = getelementptr inbounds %struct.mtk_dpi_conf, ptr %325, i32 0, i32 3
  %326 = ptrtoint ptr %edge_sel_en.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %edge_sel_en.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool.not.i = icmp eq i8 %327, 0
  br i1 %tobool.not.i, label %mtk_dpi_dual_edge.exit.mtk_dpi_config_disable_edge.exit_crit_edge, label %if.then.i81

mtk_dpi_dual_edge.exit.mtk_dpi_config_disable_edge.exit_crit_edge: ; preds = %mtk_dpi_dual_edge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_dpi_config_disable_edge.exit

if.then.i81:                                      ; preds = %mtk_dpi_dual_edge.exit
  call void @__sanitizer_cov_trace_pc() #11
  %reg_h_fre_con.i77 = getelementptr inbounds %struct.mtk_dpi_conf, ptr %325, i32 0, i32 1
  %328 = ptrtoint ptr %reg_h_fre_con.i77 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %reg_h_fre_con.i77, align 4
  %330 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %331, i32 %329
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %333 = and i32 %332, -536870913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %334 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i80 = getelementptr i8, ptr %335, i32 %329
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i80, i32 %333) #9, !srcloc !117
  br label %mtk_dpi_config_disable_edge.exit

mtk_dpi_config_disable_edge.exit:                 ; preds = %if.then.i81, %mtk_dpi_dual_edge.exit.mtk_dpi_config_disable_edge.exit_crit_edge
  %336 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %337, i32 4
  %338 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i83) #9, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %339 = and i32 %338, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %340 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %regs.i.i, align 4
  %add.ptr5.i.i84 = getelementptr i8, ptr %341, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i84, i32 %339) #9, !srcloc !117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vsync_reven) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vsync_rodd) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vsync_leven) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vsync_lodd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dpi_config_vsync(ptr nocapture noundef readonly %dpi, ptr nocapture noundef readonly %sync, i32 noundef %width_addr, i32 noundef %porch_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync, align 4
  %regs.i = getelementptr inbounds %struct.mtk_dpi, ptr %dpi, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %width_addr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %5 = and i32 %4, 15794175
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and3.i = and i32 %1, 4095
  %or.i = or i32 %6, %and3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 %width_addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %7) #9, !srcloc !117
  %shift_half_line = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %sync, i32 0, i32 3
  %10 = ptrtoint ptr %shift_half_line to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift_half_line, align 4, !range !120
  %12 = zext i8 %11 to i32
  %shl1 = shl nuw nsw i32 %12, 16
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %14, i32 %width_addr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %16 = and i32 %15, -257
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %or.i16 = or i32 %17, %shl1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i16) #9
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i17 = getelementptr i8, ptr %20, i32 %width_addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17, i32 %18) #9, !srcloc !117
  %back_porch = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %sync, i32 0, i32 2
  %21 = ptrtoint ptr %back_porch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %back_porch, align 4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %24, i32 %porch_addr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %26 = and i32 %25, 15794175
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %and3.i21 = and i32 %22, 4095
  %or.i22 = or i32 %27, %and3.i21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i22) #9
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i23 = getelementptr i8, ptr %30, i32 %porch_addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i23, i32 %28) #9, !srcloc !117
  %front_porch = getelementptr inbounds %struct.mtk_dpi_sync_param, ptr %sync, i32 0, i32 1
  %31 = ptrtoint ptr %front_porch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %front_porch, align 4
  %shl3 = shl i32 %32, 16
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %34, i32 %porch_addr
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %36 = and i32 %35, -65296
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %and3.i27 = and i32 %shl3, 268369920
  %or.i28 = or i32 %37, %and3.i27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #9
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i29 = getelementptr i8, ptr %40, i32 %porch_addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i29, i32 %38) #9, !srcloc !117
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dpi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %call1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mtk_dpi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 @mtk_drm_find_possible_crtc_by_comp(ptr noundef %data, ptr noundef %3) #9
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %possible_crtcs, align 4
  %bridge = getelementptr inbounds %struct.mtk_dpi, ptr %1, i32 0, i32 1
  %call6 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %bridge, ptr noundef null, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.err_cleanup_crit_edge

if.end.err_cleanup_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @drm_bridge_connector_init(ptr noundef %data, ptr noundef %1) #9
  %connector = getelementptr inbounds %struct.mtk_dpi, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %connector, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #12
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %err_cleanup

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call11, ptr noundef %1) #9
  br label %cleanup

err_cleanup:                                      ; preds = %do.end17, %if.end.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.err_cleanup_crit_edge ], [ %8, %do.end17 ]
  tail call void @drm_encoder_cleanup(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup, %if.end20, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.0, %err_cleanup ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dpi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_drm_find_possible_crtc_by_comp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt2701_calculate_factor(i32 noundef %clock) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64001, i32 %clock)
  %cmp = icmp slt i32 %clock, 64001
  call void @__sanitizer_cov_trace_const_cmp4(i32 128001, i32 %clock)
  %cmp1 = icmp slt i32 %clock, 128001
  %. = select i1 %cmp1, i32 2, i32 1
  %retval.0 = select i1 %cmp, i32 4, i32 %.
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt8173_calculate_factor(i32 noundef %clock) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 27001, i32 %clock)
  %cmp = icmp slt i32 %clock, 27001
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 84001, i32 %clock)
  %cmp1 = icmp ult i32 %clock, 84001
  br i1 %cmp1, label %if.else.return_crit_edge, label %if.else3

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 167001, i32 %clock)
  %cmp4 = icmp ult i32 %clock, 167001
  %. = select i1 %cmp4, i32 12, i32 6
  br label %return

return:                                           ; preds = %if.else3, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 48, %entry.return_crit_edge ], [ 24, %if.else.return_crit_edge ], [ %., %if.else3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt8183_calculate_factor(i32 noundef %clock) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 27001, i32 %clock)
  %cmp = icmp slt i32 %clock, 27001
  call void @__sanitizer_cov_trace_const_cmp4(i32 167001, i32 %clock)
  %cmp1 = icmp slt i32 %clock, 167001
  %. = select i1 %cmp1, i32 4, i32 2
  %retval.0 = select i1 %cmp, i32 8, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !26, !28, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 956, i32 11}
!2 = !{ptr @mtk_dpi_driver, !3, !"mtk_dpi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 952, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 426, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mtk_dpi_power_on._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_dpi_power_on._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 432, i32 3}
!14 = !{ptr @mtk_dpi_power_on._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_dpi_power_on._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 844, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_dpi_probe.__UNIQUE_ID_ddebug310, !17, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 847, i32 55}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 850, i32 4}
!25 = !{ptr @mtk_dpi_probe.__UNIQUE_ID_ddebug311, !24, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 855, i32 54}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 858, i32 4}
!30 = !{ptr @mtk_dpi_probe.__UNIQUE_ID_ddebug312, !29, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 865, i32 3}
!33 = !{ptr @mtk_dpi_probe._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mtk_dpi_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 869, i32 38}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 873, i32 4}
!39 = !{ptr @mtk_dpi_probe._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_dpi_probe._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 878, i32 37}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 882, i32 4}
!45 = !{ptr @mtk_dpi_probe._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtk_dpi_probe._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 887, i32 35}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 891, i32 4}
!51 = !{ptr @mtk_dpi_probe._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk_dpi_probe._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 905, i32 2}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mtk_dpi_probe._entry.29, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mtk_dpi_probe._entry_ptr.32, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 918, i32 3}
!60 = !{ptr @mtk_dpi_probe._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mtk_dpi_probe._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @mtk_dpi_bridge_funcs, !63, !"mtk_dpi_bridge_funcs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 676, i32 38}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 468, i32 2}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug307, !65, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 484, i32 2}
!70 = !{ptr @mtk_dpi_set_display_mode.__UNIQUE_ID_ddebug308, !69, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 564, i32 3}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtk_dpi_bridge_atomic_get_output_bus_fmts._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 617, i32 2}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mtk_dpi_bridge_atomic_check.__UNIQUE_ID_ddebug309, !77, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!80 = !{ptr @mtk_dpi_component_ops, !81, !"mtk_dpi_component_ops", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 747, i32 35}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 713, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mtk_dpi_bind._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mtk_dpi_bind._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 726, i32 3}
!89 = !{ptr @mtk_dpi_bind._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mtk_dpi_bind._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @mtk_dpi_of_ids, !92, !"mtk_dpi_of_ids", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 935, i32 34}
!93 = !{ptr @mt2701_conf, !94, !"mt2701_conf", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 801, i32 34}
!95 = !{ptr @mt8173_output_fmts, !96, !"mt8173_output_fmts", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 784, i32 18}
!97 = !{ptr @mt8173_conf, !98, !"mt8173_conf", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 793, i32 34}
!99 = !{ptr @mt8183_conf, !100, !"mt8183_conf", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 810, i32 34}
!101 = !{ptr @mt8183_output_fmts, !102, !"mt8183_output_fmts", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 788, i32 18}
!103 = !{ptr @mt8192_conf, !104, !"mt8192_conf", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/mediatek/mtk_dpi.c", i32 818, i32 34}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 4257214}
!115 = !{i64 2156804884}
!116 = !{i64 2156805099}
!117 = !{i64 4256796}
!118 = !{!"branch_weights", i32 1, i32 2000}
!119 = !{i64 2148744738, i64 2148744743, i64 2148744756, i64 2148744800, i64 2148744834, i64 2148744855}
!120 = !{i8 0, i8 2}
