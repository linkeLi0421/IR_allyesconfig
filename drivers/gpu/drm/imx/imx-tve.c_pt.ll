; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/imx/imx-tve.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/imx-tve.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.imx_tve = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.imx_tve_encoder = type { %struct.drm_connector, %struct.drm_encoder, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__initcall__kmod_imx_tve__306_670_imx_tve_driver_init6 = internal global ptr @imx_tve_driver_init, section ".initcall6.init", align 4
@imx_tve_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_tve_probe, ptr @imx_tve_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_tve_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_tve_driver_exit = internal global ptr @imx_tve_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [51 x i8] c"imx_tve.description=i.MX Television Encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [42 x i8] c"imx_tve.author=Philipp Zabel, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [41 x i8] c"imx_tve.file=drivers/gpu/drm/imx/imx-tve\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [20 x i8] c"imx_tve.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias311 = internal constant [31 x i8] c"imx_tve.alias=platform:imx-tve\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-tve\00", [24 x i8] zeroinitializer }, align 32
@imx_tve_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-tve\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddc-i2c-bus\00", [20 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 549, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"only VGA mode supported, currently\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_tve_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/imx/imx-tve.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr = internal global ptr @imx_tve_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,hsync-pin\00", [18 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get hsync pin\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.10 = internal global ptr @imx_tve_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,vsync-pin\00", [18 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 566, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get vsync pin\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.14 = internal global ptr @imx_tve_probe._entry.12, section ".printk_index", align 4
@tve_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr @imx_tve_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 220, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@imx_tve_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tve\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"imx_tve:578:(&tve_regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init regmap: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.19 = internal global ptr @imx_tve_probe._entry.17, section ".printk_index", align 4
@imx_tve_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 593, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.22 = internal global ptr @imx_tve_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dac\00", [28 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 600, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dac voltage is not %d uV\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.27 = internal global ptr @imx_tve_probe._entry.24, section ".printk_index", align 4
@imx_tve_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get high speed tve clock: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.30 = internal global ptr @imx_tve_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"di_sel\00", [25 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 620, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get ipu di mux clock: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.34 = internal global ptr @imx_tve_probe._entry.32, section ".printk_index", align 4
@imx_tve_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read configuration register: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.37 = internal global ptr @imx_tve_probe._entry.35, section ".printk_index", align 4
@imx_tve_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"configuration register default value indicates this is not a TVEv2\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_tve_probe._entry_ptr.40 = internal global ptr @imx_tve_probe._entry.38, section ".printk_index", align 4
@imx_tve_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @imx_tve_bind, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,tve-mode\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tvout\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vga\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tve_di\00", [25 x i8] zeroinitializer }, align 32
@clk_tve_di_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_tve_di_recalc_rate, ptr @clk_tve_di_round_rate, ptr null, ptr null, ptr null, ptr @clk_tve_di_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.tve_clk_init.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr @.str.44, ptr @clk_tve_di_ops, ptr null, ptr null, ptr null, i8 1, [3 x i8] zeroinitializer, i32 0 }, align 4
@tve_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 429, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to register TVE output clock: %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tve_clk_init\00", [19 x i8] zeroinitializer }, align 32
@tve_clk_init._entry_ptr = internal global ptr @tve_clk_init._entry, section ".printk_index", align 4
@clk_tve_di_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set divider: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_tve_di_set_rate\00", [44 x i8] zeroinitializer }, align 32
@clk_tve_di_set_rate._entry_ptr = internal global ptr @clk_tve_di_set_rate._entry, section ".printk_index", align 4
@imx_tve_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_tve_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @imx_tve_encoder_disable, ptr @imx_tve_encoder_enable, ptr @imx_tve_atomic_check }, [44 x i8] zeroinitializer }, align 32
@imx_tve_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @imx_tve_connector_get_modes, ptr null, ptr @imx_tve_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@imx_tve_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @imx_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_tve_encoder_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to set di_sel parent to tve_di: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_tve_encoder_mode_set\00", [39 x i8] zeroinitializer }, align 32
@imx_tve_encoder_mode_set._entry_ptr = internal global ptr @imx_tve_encoder_mode_set._entry, section ".printk_index", align 4
@imx_tve_encoder_mode_set._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set configuration: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_tve_encoder_mode_set._entry_ptr.53 = internal global ptr @imx_tve_encoder_mode_set._entry.51, section ".printk_index", align 4
@imx_tve_connector_mode_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 237, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ignoring mode %dx%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"imx_tve_connector_mode_valid\00", [35 x i8] zeroinitializer }, align 32
@imx_tve_connector_mode_valid._entry_ptr = internal global ptr @imx_tve_connector_mode_valid._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"imx_tve_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 661, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 666, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"imx_tve_dt_ids\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 655, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 541, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 549, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 554, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 558, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 562, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 566, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"tve_regmap_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 448, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 577, i32 16 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 580, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 593, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 597, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 600, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 611, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 617, i32 38 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 619, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 630, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 635, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"imx_tve_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 519, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 470, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 461, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 462, i32 19 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 416, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"clk_tve_di_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 406, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 428, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 399, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [29 x i8] c"imx_tve_encoder_helper_funcs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 322, i32 46 }
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"imx_tve_connector_helper_funcs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 317, i32 48 }
@___asan_gen_.209 = private unnamed_addr constant [24 x i8] c"imx_tve_connector_funcs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 309, i32 41 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 266, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 278, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [33 x i8] c"../drivers/gpu/drm/imx/imx-tve.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 236, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias311, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_imx_tve_driver_exit, ptr @__initcall__kmod_imx_tve__306_670_imx_tve_driver_init6, ptr @clk_tve_di_set_rate._entry, ptr @clk_tve_di_set_rate._entry_ptr, ptr @imx_tve_connector_mode_valid._entry, ptr @imx_tve_connector_mode_valid._entry_ptr, ptr @imx_tve_driver_exit, ptr @imx_tve_encoder_mode_set._entry, ptr @imx_tve_encoder_mode_set._entry.51, ptr @imx_tve_encoder_mode_set._entry_ptr, ptr @imx_tve_encoder_mode_set._entry_ptr.53, ptr @imx_tve_probe._entry, ptr @imx_tve_probe._entry.12, ptr @imx_tve_probe._entry.17, ptr @imx_tve_probe._entry.20, ptr @imx_tve_probe._entry.24, ptr @imx_tve_probe._entry.28, ptr @imx_tve_probe._entry.32, ptr @imx_tve_probe._entry.35, ptr @imx_tve_probe._entry.38, ptr @imx_tve_probe._entry.8, ptr @imx_tve_probe._entry_ptr, ptr @imx_tve_probe._entry_ptr.10, ptr @imx_tve_probe._entry_ptr.14, ptr @imx_tve_probe._entry_ptr.19, ptr @imx_tve_probe._entry_ptr.22, ptr @imx_tve_probe._entry_ptr.27, ptr @imx_tve_probe._entry_ptr.30, ptr @imx_tve_probe._entry_ptr.34, ptr @imx_tve_probe._entry_ptr.37, ptr @imx_tve_probe._entry_ptr.40, ptr @tve_clk_init._entry, ptr @tve_clk_init._entry_ptr, ptr @imx_tve_driver, ptr @.str, ptr @imx_tve_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @tve_regmap_config, ptr @imx_tve_probe._key, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @imx_tve_ops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @clk_tve_di_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @imx_tve_encoder_helper_funcs, ptr @imx_tve_connector_helper_funcs, ptr @imx_tve_connector_funcs, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tve_di_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_tve_di_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_encoder_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_encoder_mode_set._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tve_connector_mode_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tve_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_tve_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_tve_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_tve_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tve_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tve_di_parent.i = alloca [1 x ptr], align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %bm.i = alloca ptr, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !132
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i217 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not.i = icmp eq i32 %call.i217, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %if.end7

of_parse_phandle.exit:                            ; preds = %if.end
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %of_parse_phandle.exit.if.end7_crit_edge, label %if.then5

of_parse_phandle.exit.if.end7_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %6) #9
  %ddc = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %ddc, align 4
  call void @of_node_put(ptr noundef nonnull %6) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %of_parse_phandle.exit.if.end7_crit_edge, %of_parse_phandle.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bm.i) #9
  %8 = ptrtoint ptr %bm.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bm.i, align 4, !annotation !132
  %call.i218 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %bm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp.i = icmp slt i32 %call.i218, 0
  br i1 %cmp.i, label %if.end7.do.end_crit_edge, label %for.cond.preheader.i

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond.preheader.i:                             ; preds = %if.end7
  %9 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bm.i, align 4
  %call2.i = call i32 @strcasecmp(ptr noundef %10, ptr noundef nonnull @.str.42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i219 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i219, label %for.cond.preheader.i.do.end_crit_edge, label %for.inc.i

for.cond.preheader.i.do.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %call2.1.i = call i32 @strcasecmp(ptr noundef %10, ptr noundef nonnull @.str.43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool.not.1.i, label %if.then14, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %for.cond.preheader.i.do.end_crit_edge, %if.end7.do.end_crit_edge
  %retval.0.i220.ph = phi i32 [ -22, %for.inc.i.do.end_crit_edge ], [ 0, %for.cond.preheader.i.do.end_crit_edge ], [ %call.i218, %if.end7.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bm.i) #9
  %mode236 = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %mode236 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i220.ph, ptr %mode236, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.then14:                                        ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bm.i) #9
  %mode = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mode, align 4
  %di_hsync_pin = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 2
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %di_hsync_pin, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp16 = icmp slt i32 %call.i.i, 0
  br i1 %cmp16, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end21:                                         ; preds = %if.then14
  %di_vsync_pin = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 3
  %call.i.i221 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %di_vsync_pin, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i221)
  %cmp23 = icmp slt i32 %call.i.i221, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call30 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call31 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call30) #9
  %cmp.i222 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  store ptr %call.i, ptr getelementptr inbounds (%struct.regmap_config, ptr @tve_regmap_config, i32 0, i32 14), align 4
  %call36 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %call31, ptr noundef nonnull @tve_regmap_config, ptr noundef nonnull @imx_tve_probe._key, ptr noundef nonnull @.str.16) #9
  %regmap = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call36, ptr %regmap, align 4
  %cmp.i223 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %do.end42, label %if.end47

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %15) #12
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  %call48 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call48, ptr noundef null, ptr noundef nonnull @imx_tve_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end58

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call52) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %call59 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  %dac_reg = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %dac_reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call59, ptr %dac_reg, align 4
  %cmp.i224 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.end58.if.end80_crit_edge, label %if.then62

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then62:                                        ; preds = %if.end58
  %call64 = call i32 @regulator_get_voltage(ptr noundef %call59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2750000, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 2750000
  br i1 %cmp65.not, label %if.then62.if.end70_crit_edge, label %do.end69

if.then62.if.end70_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end69:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 2750000) #12
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.then62.if.end70_crit_edge
  %20 = ptrtoint ptr %dac_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dac_reg, align 4
  %call72 = call i32 @regulator_enable(ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  %call.i225 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @imx_tve_disable_regulator, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool.not.i226 = icmp eq i32 %call.i225, 0
  br i1 %tobool.not.i226, label %if.end75.if.end80_crit_edge, label %devm_add_action_or_reset.exit

if.end75.if.end80_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

devm_add_action_or_reset.exit:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dac_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dac_reg, align 4
  %call.i.i227 = call i32 @regulator_disable(ptr noundef %23) #9
  br label %cleanup

if.end80:                                         ; preds = %if.end75.if.end80_crit_edge, %if.end58.if.end80_crit_edge
  %call81 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  %clk = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call81, ptr %clk, align 4
  %cmp.i229 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %do.end87, label %if.end92

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %25) #12
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end92:                                         ; preds = %if.end80
  %call93 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.31) #9
  %di_sel_clk = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %di_sel_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call93, ptr %di_sel_clk, align 4
  %cmp.i230 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %do.end99, label %if.end104

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call93 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %30) #12
  %31 = ptrtoint ptr %di_sel_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %di_sel_clk, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

if.end104:                                        ; preds = %if.end92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tve_di_parent.i) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %34 = call ptr @memcpy(ptr %init.i, ptr @__const.tve_clk_init.init, i32 28)
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 4
  %call.i231 = call ptr @__clk_get_name(ptr noundef %36) #9
  %37 = ptrtoint ptr %tve_di_parent.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i231, ptr %tve_di_parent.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %38 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tve_di_parent.i, ptr %parent_names.i, align 4
  %clk_hw_di.i = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 9
  %init1.i = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 9, i32 2
  %39 = ptrtoint ptr %init1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %init.i, ptr %init1.i, align 4
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %call3.i = call ptr @devm_clk_register(ptr noundef %41, ptr noundef %clk_hw_di.i) #9
  %di_clk.i = getelementptr inbounds %struct.imx_tve, ptr %call.i, i32 0, i32 10
  %42 = ptrtoint ptr %di_clk.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call3.i, ptr %di_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tve_clk_init.exit, label %tve_clk_init.exit.thread

tve_clk_init.exit.thread:                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tve_di_parent.i) #9
  br label %if.end108

tve_clk_init.exit:                                ; preds = %if.end104
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %45 = ptrtoint ptr %call3.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.45, i32 noundef %45) #12
  %46 = ptrtoint ptr %di_clk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %di_clk.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tve_di_parent.i) #9
  %cmp106 = icmp slt ptr %47, null
  br i1 %cmp106, label %tve_clk_init.exit.cleanup_crit_edge, label %tve_clk_init.exit.if.end108_crit_edge

tve_clk_init.exit.if.end108_crit_edge:            ; preds = %tve_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

tve_clk_init.exit.cleanup_crit_edge:              ; preds = %tve_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108:                                        ; preds = %tve_clk_init.exit.if.end108_crit_edge, %tve_clk_init.exit.thread
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call110 = call i32 @regmap_read(ptr noundef %50, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %do.end115, label %if.end116

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call110) #12
  br label %cleanup

if.end116:                                        ; preds = %if.end108
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %52)
  %cmp117.not = icmp eq i32 %52, 1048576
  br i1 %cmp117.not, label %if.end122, label %do.end121

do.end121:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #12
  br label %cleanup

if.end122:                                        ; preds = %if.end116
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call124 = call i32 @regmap_write(ptr noundef %54, i32 noundef 52, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end122.cleanup_crit_edge

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end127:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call128 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @imx_tve_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.end122.cleanup_crit_edge, %do.end121, %do.end115, %tve_clk_init.exit.cleanup_crit_edge, %do.end99, %do.end87, %devm_add_action_or_reset.exit, %if.end70.cleanup_crit_edge, %do.end57, %if.end47.cleanup_crit_edge, %do.end42, %if.then33, %do.end27, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i, %do.end20 ], [ %call.i.i221, %do.end27 ], [ %13, %if.then33 ], [ %18, %do.end42 ], [ %call52, %do.end57 ], [ %28, %do.end87 ], [ %33, %do.end99 ], [ %call110, %do.end115 ], [ -19, %do.end121 ], [ %call128, %if.end127 ], [ -12, %entry.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %call72, %if.end70.cleanup_crit_edge ], [ %call.i225, %devm_add_action_or_reset.exit ], [ %48, %tve_clk_init.exit.cleanup_crit_edge ], [ %call124, %if.end122.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tve_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @imx_tve_ops) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tve_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !132
  %regmap = getelementptr inbounds %struct.imx_tve, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 104, ptr noundef nonnull %val) #9
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 104, i32 noundef -1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_tve_disable_regulator(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dac_reg = getelementptr inbounds %struct.imx_tve, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dac_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dac_reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @imx_tve_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %reg, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 221, i32 %reg)
  %cmp1 = icmp ult i32 %reg, 221
  %spec.select = and i1 %cmp1, %cmp
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_tve_di_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !132
  %regmap = getelementptr i8, ptr %hw, i32 -20
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 6
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div9 = lshr i32 %parent_rate, 2
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div28 = lshr i32 %parent_rate, 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div28, %sw.bb1 ], [ %div9, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ %parent_rate, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_tve_di_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %div1 = udiv i32 %1, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div1)
  %cmp = icmp ugt i32 %div1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div1)
  %cmp3 = icmp ugt i32 %div1, 1
  %div511 = zext i1 %cmp3 to i32
  %retval.0.v = select i1 %cmp, i32 2, i32 %div511
  %retval.0 = lshr i32 %1, %retval.0.v
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_tve_di_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = udiv i32 %parent_rate, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div1)
  %cmp2.inv = icmp ult i32 %div1, 2
  %. = select i1 %cmp2.inv, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div1)
  %cmp.inv = icmp ult i32 %div1, 4
  %val.0 = select i1 %cmp.inv, i32 %., i32 4
  %regmap = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 6, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -36
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tve_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 1, i32 4
  %call1 = tail call ptr @__drmm_simple_encoder_alloc(ptr noundef %data, i32 noundef 1120, i32 noundef 1040, i32 noundef %cond) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tve4 = getelementptr inbounds %struct.imx_tve_encoder, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %tve4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %tve4, align 8
  %encoder5 = getelementptr inbounds %struct.imx_tve_encoder, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call8 = tail call i32 @imx_drm_encoder_parse_of(ptr noundef %data, ptr noundef %encoder5, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.imx_tve_encoder, ptr %call1, i32 0, i32 1, i32 11
  %10 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @imx_tve_encoder_helper_funcs, ptr %helper_private.i, align 4
  %helper_private.i38 = getelementptr inbounds %struct.drm_connector, ptr %call1, i32 0, i32 35
  %11 = ptrtoint ptr %helper_private.i38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @imx_tve_connector_helper_funcs, ptr %helper_private.i38, align 4
  %ddc = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc, align 4
  %call11 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %data, ptr noundef %call1, ptr noundef nonnull @imx_tve_connector_funcs, i32 noundef 1, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call1, ptr noundef %encoder5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call15, %if.end14 ], [ %call8, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_tve_encoder_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %orig_mode, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tve.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %tve.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tve.i, align 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %mul = mul i32 %3, 2000
  %clk = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %mul) #9
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %mul)
  %cmp.not = icmp uge i32 %call3, %mul
  %di_clk = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %di_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di_clk, align 4
  %10 = zext i1 %cmp.not to i32
  %div442 = lshr i32 %call3, %10
  %call5 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %div442) #9
  %di_sel_clk = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %di_sel_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di_sel_clk, align 4
  %13 = ptrtoint ptr %di_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di_clk, align 4
  %call7 = tail call i32 @clk_set_parent(ptr noundef %12, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.49, i32 noundef %call7) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  %regmap = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %mode12 = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp13 = icmp eq i32 %20, 1
  br i1 %cmp13, label %if.then14, label %if.end10.do.end21_crit_edge

if.end10.do.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then14:                                        ; preds = %if.end10
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 40, i32 noundef 63, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.do.end21_crit_edge

if.then14.do.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.end.i:                                         ; preds = %if.then14
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i38.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 44, i32 noundef 63, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool3.not.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.do.end21_crit_edge

if.end.i.do.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.end5.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i39.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 48, i32 noundef 63, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool8.not.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.do.end21_crit_edge

if.end5.i.do.end21_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.end10.i:                                       ; preds = %if.end5.i
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i40.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 1081328, i32 noundef 1080400, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool16.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool16.not.i, label %if.end17, label %if.end10.i.do.end21_crit_edge

if.end10.i.do.end21_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.end17:                                         ; preds = %if.end10.i
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 108, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.not = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.not, label %if.end17.if.end23_crit_edge, label %if.end17.do.end21_crit_edge

if.end17.do.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end21:                                         ; preds = %if.end17.do.end21_crit_edge, %if.end10.i.do.end21_crit_edge, %if.end5.i.do.end21_crit_edge, %if.end.i.do.end21_crit_edge, %if.then14.do.end21_crit_edge, %if.end10.do.end21_crit_edge
  %ret.041 = phi i32 [ %call.i41.i, %if.end17.do.end21_crit_edge ], [ -524, %if.end10.do.end21_crit_edge ], [ %call.i40.i, %if.end10.i.do.end21_crit_edge ], [ %call.i39.i, %if.end5.i.do.end21_crit_edge ], [ %call.i38.i, %if.end.i.do.end21_crit_edge ], [ %call.i.i, %if.then14.do.end21_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.52, i32 noundef %ret.041) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end17.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_tve_encoder_disable(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tve.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %tve.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tve.i, align 8
  %regmap.i = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %clk.i = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_tve_encoder_enable(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tve.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %tve.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tve.i, align 8
  %clk.i = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.tve_enable.exit_crit_edge

entry.tve_enable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tve_enable.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.tve_enable.exit_crit_edge, label %if.then3.i.i

if.end.i.i.tve_enable.exit_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tve_enable.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %tve_enable.exit

tve_enable.exit:                                  ; preds = %if.then3.i.i, %if.end.i.i.tve_enable.exit_crit_edge, %entry.tve_enable.exit_crit_edge
  %regmap.i = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 104, i32 noundef -1) #9
  %mode.i = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %..i = select i1 %cmp.i, i32 0, i32 7
  %call7.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 100, i32 noundef %..i) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_tve_atomic_check(ptr nocapture noundef readonly %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tve.i = getelementptr i8, ptr %encoder, i32 72
  %0 = ptrtoint ptr %tve.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tve.i, align 8
  %bus_format = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 1
  %2 = ptrtoint ptr %bus_format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4116, ptr %bus_format, align 4
  %di_hsync_pin = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %di_hsync_pin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %di_hsync_pin, align 4
  %di_hsync_pin2 = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 3
  %5 = ptrtoint ptr %di_hsync_pin2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %di_hsync_pin2, align 4
  %di_vsync_pin = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %di_vsync_pin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %di_vsync_pin, align 4
  %di_vsync_pin3 = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 4
  %8 = ptrtoint ptr %di_vsync_pin3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %di_vsync_pin3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tve_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tve.i = getelementptr inbounds %struct.imx_tve_encoder, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %tve.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tve.i, align 8
  %ddc = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %3) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call2) #9
  %call6 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call2) #9
  tail call void @kfree(ptr noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tve_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tve.i = getelementptr inbounds %struct.imx_tve_encoder, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %tve.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tve.i, align 8
  %clk = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %mul = mul i32 %5, 2000
  %call1 = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef %mul) #9
  %div = sdiv i32 %call1, 2000
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %7)
  %cmp = icmp eq i32 %div, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %mul5 = mul i32 %7, 1000
  %call6 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef %mul5) #9
  %div7 = sdiv i32 %call6, 1000
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %11)
  %cmp9 = icmp eq i32 %div7, %11
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %14 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %15 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %16 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay, align 2
  %conv12 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.54, i32 noundef %conv, i32 noundef %conv12) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_drm_connector_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_imx_tve__306_670_imx_tve_driver_init6, !1, !"__initcall__kmod_imx_tve__306_670_imx_tve_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 670, i32 1}
!2 = !{ptr @__exitcall_imx_tve_driver_exit, !1, !"__exitcall_imx_tve_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 672, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 673, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 674, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias311, !11, !"__UNIQUE_ID_alias311", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 675, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 666, i32 11}
!14 = !{ptr @imx_tve_driver, !15, !"imx_tve_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 661, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 541, i32 34}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 549, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx_tve_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_tve_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 554, i32 34}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 558, i32 4}
!30 = !{ptr @imx_tve_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @imx_tve_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 562, i32 34}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 566, i32 4}
!36 = !{ptr @imx_tve_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx_tve_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @imx_tve_probe._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 577, i32 16}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 580, i32 3}
!44 = !{ptr @imx_tve_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx_tve_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 593, i32 3}
!48 = !{ptr @imx_tve_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx_tve_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 597, i32 41}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 600, i32 4}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @imx_tve_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @imx_tve_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 611, i32 3}
!59 = !{ptr @imx_tve_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @imx_tve_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 617, i32 38}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 619, i32 3}
!65 = !{ptr @imx_tve_probe._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @imx_tve_probe._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 630, i32 3}
!69 = !{ptr @imx_tve_probe._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @imx_tve_probe._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 635, i32 3}
!73 = !{ptr @imx_tve_probe._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @imx_tve_probe._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 470, i32 36}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 461, i32 22}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 462, i32 19}
!81 = distinct !{null, !82, !"imx_tve_modes", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 460, i32 27}
!83 = !{ptr @tve_regmap_config, !84, !"tve_regmap_config", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 448, i32 29}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 416, i32 11}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 428, i32 3}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tve_clk_init._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @tve_clk_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @clk_tve_di_ops, !93, !"clk_tve_di_ops", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 406, i32 29}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 399, i32 3}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @clk_tve_di_set_rate._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @clk_tve_di_set_rate._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @imx_tve_ops, !100, !"imx_tve_ops", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 519, i32 35}
!101 = !{ptr @imx_tve_encoder_helper_funcs, !102, !"imx_tve_encoder_helper_funcs", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 322, i32 46}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 266, i32 3}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @imx_tve_encoder_mode_set._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @imx_tve_encoder_mode_set._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 278, i32 3}
!110 = !{ptr @imx_tve_encoder_mode_set._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @imx_tve_encoder_mode_set._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @imx_tve_connector_helper_funcs, !113, !"imx_tve_connector_helper_funcs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 317, i32 48}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 236, i32 2}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @imx_tve_connector_mode_valid._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @imx_tve_connector_mode_valid._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @imx_tve_connector_funcs, !120, !"imx_tve_connector_funcs", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 309, i32 41}
!121 = !{ptr @imx_tve_dt_ids, !122, !"imx_tve_dt_ids", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/imx/imx-tve.c", i32 655, i32 34}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
