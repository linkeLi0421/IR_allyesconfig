; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.boe_bf060y8m_aj0 = type { %struct.drm_panel, ptr, [5 x %struct.regulator_bulk_data], ptr, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }

@__initcall__kmod_panel_boe_bf060y8m_aj0__304_441_boe_bf060y8m_aj0_driver_init6 = internal global ptr @boe_bf060y8m_aj0_driver_init, section ".initcall6.init", align 4
@boe_bf060y8m_aj0_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @boe_bf060y8m_aj0_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @boe_bf060y8m_aj0_probe, ptr @boe_bf060y8m_aj0_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_boe_bf060y8m_aj0_driver_exit = internal global ptr @boe_bf060y8m_aj0_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [100 x i8] c"panel_boe_bf060y8m_aj0.author=AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [72 x i8] c"panel_boe_bf060y8m_aj0.description=BOE BF060Y8M-AJ0 MIPI-DSI OLED panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [73 x i8] c"panel_boe_bf060y8m_aj0.file=drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [38 x i8] c"panel_boe_bf060y8m_aj0.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"panel-sw43404-boe-fhd-amoled\00", [35 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,bf060y8m-aj0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize supplies.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get reset-gpios\0A\00", [37 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @boe_bf060y8m_aj0_prepare, ptr null, ptr null, ptr @boe_bf060y8m_aj0_unprepare, ptr @boe_bf060y8m_aj0_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create backlight\0A\00", [36 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 406, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to attach to DSI host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"boe_bf060y8m_aj0_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_probe._entry_ptr = internal global ptr @boe_bf060y8m_aj0_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"elvdd\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"elvss\00", [26 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_init_vregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 310, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"boe_bf060y8m_aj0_init_vregs\00", [36 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_init_vregs._entry_ptr = internal global ptr @boe_bf060y8m_aj0_init_vregs._entry, section ".printk_index", align 4
@boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.7, ptr @.str.18, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panel_boe_bf060y8m_aj0\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Current limit cannot be set on %s: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.7, ptr @.str.18, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@boe_bf060y8m_aj0_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 172, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize panel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"boe_bf060y8m_aj0_prepare\00", [39 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_prepare._entry_ptr = internal global ptr @boe_bf060y8m_aj0_prepare._entry, section ".printk_index", align 4
@boe_bf060y8m_aj0_on.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B0\A5\00", [29 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B2\00L", [29 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\10", [30 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\0C", [30 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\F8\00\08\10\00\22\00\00-", [23 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 79, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boe_bf060y8m_aj0_on\00", [44 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on._entry_ptr = internal global ptr @boe_bf060y8m_aj0_on._entry, section ".printk_index", align 4
@boe_bf060y8m_aj0_on.d.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B0\A5\00", [29 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\C0\08He333*19 \09", [20 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\C1\00\00\00\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F", [45 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\E2 \04\10\12\92O\8FD\84\83\83\83\\\\\\", [16 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on.d.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\DE\01,\00w>", [26 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.7, i32 100, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_on._entry_ptr.34 = internal global ptr @boe_bf060y8m_aj0_on._entry.32, section ".printk_index", align 4
@boe_bf060y8m_aj0_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.7, i32 202, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to un-initialize panel: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"boe_bf060y8m_aj0_unprepare\00", [37 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_unprepare._entry_ptr = internal global ptr @boe_bf060y8m_aj0_unprepare._entry, section ".printk_index", align 4
@boe_bf060y8m_aj0_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 118, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"boe_bf060y8m_aj0_off\00", [43 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_off._entry_ptr = internal global ptr @boe_bf060y8m_aj0_off._entry, section ".printk_index", align 4
@boe_bf060y8m_aj0_off._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.7, i32 125, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_off._entry_ptr.41 = internal global ptr @boe_bf060y8m_aj0_off._entry.39, section ".printk_index", align 4
@boe_bf060y8m_aj0_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 165268, i16 1080, i16 1116, i16 1140, i16 1236, i16 0, i16 2160, i16 2176, i16 2177, i16 2192, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 136, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__const.boe_bf060y8m_aj0_create_backlight.props = private unnamed_addr constant %struct.backlight_properties { i32 127, i32 255, i32 0, i32 0, i32 1, i32 0, i32 2 }, align 4
@boe_bf060y8m_aj0_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @boe_bf060y8m_aj0_bl_update_status, ptr @boe_bf060y8m_aj0_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 420, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"boe_bf060y8m_aj0_remove\00", [40 x i8] zeroinitializer }, align 32
@boe_bf060y8m_aj0_remove._entry_ptr = internal global ptr @boe_bf060y8m_aj0_remove._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"boe_bf060y8m_aj0_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 433, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 437, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"boe_bf060y8m_aj0_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 427, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 377, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 379, i32 49 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 382, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant [29 x i8] c"boe_bf060y8m_aj0_panel_funcs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 244, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 400, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 406, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 302, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 303, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 304, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 305, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 306, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 310, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 352, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 172, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 70, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 71, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 72, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 73, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 74, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 79, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 84, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 85, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 88, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 91, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 94, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 100, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 202, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 118, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 125, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"boe_bf060y8m_aj0_mode\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 211, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"boe_bf060y8m_aj0_bl_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 276, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [50 x i8] c"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 420, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_boe_bf060y8m_aj0_driver_exit, ptr @__initcall__kmod_panel_boe_bf060y8m_aj0__304_441_boe_bf060y8m_aj0_driver_init6, ptr @boe_bf060y8m_aj0_driver_exit, ptr @boe_bf060y8m_aj0_init_vregs._entry, ptr @boe_bf060y8m_aj0_init_vregs._entry_ptr, ptr @boe_bf060y8m_aj0_off._entry, ptr @boe_bf060y8m_aj0_off._entry.39, ptr @boe_bf060y8m_aj0_off._entry_ptr, ptr @boe_bf060y8m_aj0_off._entry_ptr.41, ptr @boe_bf060y8m_aj0_on._entry, ptr @boe_bf060y8m_aj0_on._entry.32, ptr @boe_bf060y8m_aj0_on._entry_ptr, ptr @boe_bf060y8m_aj0_on._entry_ptr.34, ptr @boe_bf060y8m_aj0_prepare._entry, ptr @boe_bf060y8m_aj0_prepare._entry_ptr, ptr @boe_bf060y8m_aj0_probe._entry, ptr @boe_bf060y8m_aj0_probe._entry_ptr, ptr @boe_bf060y8m_aj0_remove._entry, ptr @boe_bf060y8m_aj0_remove._entry_ptr, ptr @boe_bf060y8m_aj0_unprepare._entry, ptr @boe_bf060y8m_aj0_unprepare._entry_ptr, ptr @boe_bf060y8m_aj0_driver, ptr @.str, ptr @boe_bf060y8m_aj0_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @boe_bf060y8m_aj0_panel_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @boe_bf060y8m_aj0_on.d, ptr @boe_bf060y8m_aj0_on.d.21, ptr @boe_bf060y8m_aj0_on.d.22, ptr @boe_bf060y8m_aj0_on.d.23, ptr @boe_bf060y8m_aj0_on.d.24, ptr @.str.25, ptr @.str.26, ptr @boe_bf060y8m_aj0_on.d.27, ptr @boe_bf060y8m_aj0_on.d.28, ptr @boe_bf060y8m_aj0_on.d.29, ptr @boe_bf060y8m_aj0_on.d.30, ptr @boe_bf060y8m_aj0_on.d.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @boe_bf060y8m_aj0_mode, ptr @boe_bf060y8m_aj0_bl_ops, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_init_vregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on.d.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_on._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_off._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_bf060y8m_aj0_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @boe_bf060y8m_aj0_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @boe_bf060y8m_aj0_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @boe_bf060y8m_aj0_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 96, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @boe_bf060y8m_aj0_init_vregs(ptr noundef nonnull %call.i, ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call2, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0) #6
  %reset_gpio = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call7, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %dsi15 = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dsi15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dsi, ptr %dsi15, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3589, ptr %mode_flags, align 8
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @boe_bf060y8m_aj0_panel_funcs, i32 noundef 16) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #6
  %7 = call ptr @memcpy(ptr %props.i, ptr @__const.boe_bf060y8m_aj0_create_backlight.props, i32 28)
  %init_name.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end14.boe_bf060y8m_aj0_create_backlight.exit_crit_edge

if.end14.boe_bf060y8m_aj0_create_backlight.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %boe_bf060y8m_aj0_create_backlight.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  br label %boe_bf060y8m_aj0_create_backlight.exit

boe_bf060y8m_aj0_create_backlight.exit:           ; preds = %if.end.i.i, %if.end14.boe_bf060y8m_aj0_create_backlight.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end14.boe_bf060y8m_aj0_create_backlight.exit_crit_edge ]
  %call2.i = call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %retval.0.i.i, ptr noundef %dev1, ptr noundef %dsi, ptr noundef nonnull @boe_bf060y8m_aj0_bl_ops, ptr noundef nonnull %props.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #6
  %backlight = getelementptr inbounds %struct.drm_panel, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2.i, ptr %backlight, align 4
  %cmp.i62 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then21, label %if.end26

if.then21:                                        ; preds = %boe_bf060y8m_aj0_create_backlight.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call2.i to i32
  %call25 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %13, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end26:                                         ; preds = %boe_bf060y8m_aj0_create_backlight.exit
  call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %call28 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call28) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end26.cleanup_crit_edge, %if.then21, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call13, %if.then10 ], [ %call25, %if.then21 ], [ %call28, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @boe_bf060y8m_aj0_init_vregs(ptr noundef %boe, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vregs = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2
  %0 = ptrtoint ptr %vregs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.10, ptr %vregs, align 4
  %arrayidx2 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.11, ptr %arrayidx2, align 4
  %arrayidx5 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.12, ptr %arrayidx5, align 4
  %arrayidx8 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %arrayidx8, align 4
  %arrayidx11 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.14, ptr %arrayidx11, align 4
  %call = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 5, ptr noundef %vregs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %consumer = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %consumer, align 4
  %call16 = tail call i32 @regulator_is_supported_voltage(ptr noundef %6, i32 noundef 2700000, i32 noundef 3600000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %consumer21 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %consumer21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %consumer21, align 4
  %call22 = tail call i32 @regulator_is_supported_voltage(ptr noundef %8, i32 noundef 1620000, i32 noundef 1980000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %consumer28 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %consumer28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %consumer28, align 4
  %call29 = tail call i32 @regulator_is_supported_voltage(ptr noundef %10, i32 noundef 2600000, i32 noundef 3600000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end25.cleanup_crit_edge, label %if.end32

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %consumer35 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 3, i32 1
  %11 = ptrtoint ptr %consumer35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %consumer35, align 4
  %call36 = tail call i32 @regulator_is_supported_voltage(ptr noundef %12, i32 noundef 4400000, i32 noundef 4800000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end32.cleanup_crit_edge, label %if.end39

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %consumer42 = getelementptr %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 2, i32 4, i32 1
  %13 = ptrtoint ptr %consumer42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %consumer42, align 4
  %call43 = tail call i32 @regulator_is_supported_voltage(ptr noundef %14, i32 noundef 1400000, i32 noundef 5000000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end39.cleanup_crit_edge, label %if.end46

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %15 = ptrtoint ptr %consumer21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %consumer21, align 4
  %call50 = tail call i32 @regulator_set_current_limit(ptr noundef %16, i32 noundef 1500, i32 noundef 2500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end46.if.end65_crit_edge, label %do.body53

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.body53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@boe_bf060y8m_aj0_init_vregs, %if.then58)) #6
          to label %if.end65 [label %if.then58], !srcloc !121

if.then58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %18, i32 noundef %call50) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %do.body53, %if.end46.if.end65_crit_edge
  %19 = ptrtoint ptr %consumer28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer28, align 4
  %call69 = tail call i32 @regulator_set_current_limit(ptr noundef %20, i32 noundef 20000, i32 noundef 40000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end65.cleanup_crit_edge, label %do.body72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body72:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@boe_bf060y8m_aj0_init_vregs, %if.then84)) #6
          to label %cleanup [label %if.then84], !srcloc !121

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %22, i32 noundef %call69) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %if.end65.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.then84 ], [ 0, %if.end65.cleanup_crit_edge ], [ 0, %do.body72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %consumer = getelementptr %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 2, i32 3, i32 1
  %4 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %consumer8 = getelementptr %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 2, i32 4, i32 1
  %6 = ptrtoint ptr %consumer8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer8, align 4
  %call9 = tail call i32 @regulator_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.err_elvss_crit_edge

if.end5.err_elvss_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_elvss

if.end12:                                         ; preds = %if.end5
  %consumer15 = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %consumer15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer15, align 4
  %call16 = tail call i32 @regulator_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.err_vcc_crit_edge

if.end12.err_vcc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vcc

if.end19:                                         ; preds = %if.end12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %consumer22 = getelementptr %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %consumer22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer22, align 4
  %call23 = tail call i32 @regulator_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.err_vddio_crit_edge

if.end19.err_vddio_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vddio

if.end26:                                         ; preds = %if.end19
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  %consumer29 = getelementptr %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %consumer29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %consumer29, align 4
  %call30 = tail call i32 @regulator_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %err_vci

if.end33:                                         ; preds = %if.end26
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  tail call fastcc void @boe_bf060y8m_aj0_reset(ptr noundef %panel)
  %call34 = tail call fastcc i32 @boe_bf060y8m_aj0_on(ptr noundef %panel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end, label %if.end36

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call34) #9
  %reset_gpio = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 3
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #6
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

err_vci:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %consumer22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumer22, align 4
  %call41 = tail call i32 @regulator_disable(ptr noundef %18) #6
  br label %err_vddio

err_vddio:                                        ; preds = %err_vci, %if.end19.err_vddio_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end19.err_vddio_crit_edge ], [ %call30, %err_vci ]
  %19 = ptrtoint ptr %consumer15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer15, align 4
  %call45 = tail call i32 @regulator_disable(ptr noundef %20) #6
  br label %err_vcc

err_vcc:                                          ; preds = %err_vddio, %if.end12.err_vcc_crit_edge
  %ret.1 = phi i32 [ %call16, %if.end12.err_vcc_crit_edge ], [ %ret.0, %err_vddio ]
  %21 = ptrtoint ptr %consumer8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %consumer8, align 4
  %call49 = tail call i32 @regulator_disable(ptr noundef %22) #6
  br label %err_elvss

err_elvss:                                        ; preds = %err_vcc, %if.end5.err_elvss_crit_edge
  %ret.2 = phi i32 [ %call9, %if.end5.err_elvss_crit_edge ], [ %ret.1, %err_vcc ]
  %23 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %consumer, align 4
  %call53 = tail call i32 @regulator_disable(ptr noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %err_elvss, %if.end36, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_elvss ], [ %call34, %do.end ], [ 0, %if.end36 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %5, -2049
  store i32 %and.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call.i) #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 20) #6
  %call3.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %boe_bf060y8m_aj0_off.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call3.i) #9
  br label %do.end

boe_bf060y8m_aj0_off.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %6 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %7, 2048
  store i32 %or.i, ptr %mode_flags.i, align 8
  br label %if.end4

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call3.i, %do.end8.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i.ph) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %boe_bf060y8m_aj0_off.exit
  %reset_gpio = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 3
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #6
  %vregs = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %panel, i32 0, i32 2
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %vregs) #6
  %10 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_mode) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 26
  %3 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %4 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %5 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 27
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %height_mm, align 4
  %conv2 = zext i16 %7 to i32
  %height_mm4 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %height_mm4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %height_mm4, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @boe_bf060y8m_aj0_reset(ptr nocapture noundef readonly %boe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 3
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 16000, i32 noundef 2) #6
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @boe_bf060y8m_aj0_on(ptr nocapture noundef readonly %boe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.boe_bf060y8m_aj0, ptr %boe, i32 0, i32 1
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  %dev2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %call = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup117_crit_edge, label %do.body4

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body4:                                         ; preds = %entry
  %call6 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.21, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body4.cleanup117_crit_edge, label %do.body15

do.body4.cleanup117_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body15:                                        ; preds = %do.body4
  %call17 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.22, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.body15.cleanup117_crit_edge, label %do.body26

do.body15.cleanup117_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body26:                                        ; preds = %do.body15
  %call28 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.23, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body26.cleanup117_crit_edge, label %do.body37

do.body26.cleanup117_crit_edge:                   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body37:                                        ; preds = %do.body26
  %call39 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.24, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.body37.cleanup117_crit_edge, label %do.end47

do.body37.cleanup117_crit_edge:                   ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.end47:                                         ; preds = %do.body37
  %call48 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %if.end54

do.end53:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25, i32 noundef %call48) #9
  br label %cleanup117

if.end54:                                         ; preds = %do.end47
  tail call void @msleep(i32 noundef 30) #6
  %call57 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.27, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end54.cleanup117_crit_edge, label %do.body66

if.end54.cleanup117_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body66:                                        ; preds = %if.end54
  %call68 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.28, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.body66.cleanup117_crit_edge, label %do.body77

do.body66.cleanup117_crit_edge:                   ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body77:                                        ; preds = %do.body66
  %call79 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.29, i32 noundef 19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.body77.cleanup117_crit_edge, label %do.body88

do.body77.cleanup117_crit_edge:                   ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body88:                                        ; preds = %do.body77
  %call90 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.30, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %do.body88.cleanup117_crit_edge, label %do.body99

do.body88.cleanup117_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.body99:                                        ; preds = %do.body88
  %call101 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @boe_bf060y8m_aj0_on.d.31, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %do.body99.cleanup117_crit_edge, label %do.end109

do.body99.cleanup117_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup117

do.end109:                                        ; preds = %do.body99
  tail call void @msleep(i32 noundef 30) #6
  %call110 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %do.end115, label %if.end116

do.end115:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.33, i32 noundef %call110) #9
  br label %cleanup117

if.end116:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 50) #6
  br label %cleanup117

cleanup117:                                       ; preds = %if.end116, %do.end115, %do.body99.cleanup117_crit_edge, %do.body88.cleanup117_crit_edge, %do.body77.cleanup117_crit_edge, %do.body66.cleanup117_crit_edge, %if.end54.cleanup117_crit_edge, %do.end53, %do.body37.cleanup117_crit_edge, %do.body26.cleanup117_crit_edge, %do.body15.cleanup117_crit_edge, %do.body4.cleanup117_crit_edge, %entry.cleanup117_crit_edge
  %retval.10 = phi i32 [ %call48, %do.end53 ], [ %call110, %do.end115 ], [ 0, %if.end116 ], [ %call101, %do.body99.cleanup117_crit_edge ], [ %call90, %do.body88.cleanup117_crit_edge ], [ %call79, %do.body77.cleanup117_crit_edge ], [ %call68, %do.body66.cleanup117_crit_edge ], [ %call57, %if.end54.cleanup117_crit_edge ], [ %call39, %do.body37.cleanup117_crit_edge ], [ %call28, %do.body26.cleanup117_crit_edge ], [ %call17, %do.body15.cleanup117_crit_edge ], [ %call6, %do.body4.cleanup117_crit_edge ], [ %call, %entry.cleanup117_crit_edge ]
  ret i32 %retval.10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  %phi.cast = trunc i32 %9 to i16
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.cast, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %1, i16 noundef zeroext %retval.0.i) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boe_bf060y8m_aj0_bl_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %brightness = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %brightness) #6
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %brightness, align 2, !annotation !123
  %call1 = call i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef %1, ptr noundef nonnull %brightness) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %brightness, align 2
  %5 = and i16 %4, 255
  %and = zext i16 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %brightness) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_panel_boe_bf060y8m_aj0__304_441_boe_bf060y8m_aj0_driver_init6, !1, !"__initcall__kmod_panel_boe_bf060y8m_aj0__304_441_boe_bf060y8m_aj0_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 441, i32 1}
!2 = !{ptr @__exitcall_boe_bf060y8m_aj0_driver_exit, !1, !"__exitcall_boe_bf060y8m_aj0_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 443, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 444, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 445, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 437, i32 11}
!12 = !{ptr @boe_bf060y8m_aj0_driver, !13, !"boe_bf060y8m_aj0_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 433, i32 31}
!14 = !{ptr @boe_bf060y8m_aj0_of_match, !15, !"boe_bf060y8m_aj0_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 427, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 377, i32 10}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 379, i32 49}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 382, i32 10}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 400, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 406, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @boe_bf060y8m_aj0_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @boe_bf060y8m_aj0_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 302, i32 41}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 303, i32 43}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 304, i32 41}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 305, i32 44}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 306, i32 44}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 310, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @boe_bf060y8m_aj0_init_vregs._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @boe_bf060y8m_aj0_init_vregs._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 352, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug302, !48, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!51 = !{ptr @boe_bf060y8m_aj0_init_vregs.__UNIQUE_ID_ddebug303, !52, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 358, i32 3}
!53 = !{ptr @boe_bf060y8m_aj0_panel_funcs, !54, !"boe_bf060y8m_aj0_panel_funcs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 244, i32 37}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 172, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @boe_bf060y8m_aj0_prepare._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @boe_bf060y8m_aj0_prepare._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @boe_bf060y8m_aj0_on.d, !61, !"d", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 70, i32 2}
!62 = !{ptr @boe_bf060y8m_aj0_on.d.21, !63, !"d", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 71, i32 2}
!64 = !{ptr @boe_bf060y8m_aj0_on.d.22, !65, !"d", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 72, i32 2}
!66 = !{ptr @boe_bf060y8m_aj0_on.d.23, !67, !"d", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 73, i32 2}
!68 = !{ptr @boe_bf060y8m_aj0_on.d.24, !69, !"d", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 74, i32 2}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 79, i32 3}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @boe_bf060y8m_aj0_on._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @boe_bf060y8m_aj0_on._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @boe_bf060y8m_aj0_on.d.27, !76, !"d", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 84, i32 2}
!77 = !{ptr @boe_bf060y8m_aj0_on.d.28, !78, !"d", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 85, i32 2}
!79 = !{ptr @boe_bf060y8m_aj0_on.d.29, !80, !"d", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 88, i32 2}
!81 = !{ptr @boe_bf060y8m_aj0_on.d.30, !82, !"d", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 91, i32 2}
!83 = !{ptr @boe_bf060y8m_aj0_on.d.31, !84, !"d", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 94, i32 2}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 100, i32 3}
!87 = !{ptr @boe_bf060y8m_aj0_on._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @boe_bf060y8m_aj0_on._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 202, i32 3}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @boe_bf060y8m_aj0_unprepare._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @boe_bf060y8m_aj0_unprepare._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 118, i32 3}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @boe_bf060y8m_aj0_off._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @boe_bf060y8m_aj0_off._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 125, i32 3}
!101 = !{ptr @boe_bf060y8m_aj0_off._entry.39, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @boe_bf060y8m_aj0_off._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @boe_bf060y8m_aj0_mode, !104, !"boe_bf060y8m_aj0_mode", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 211, i32 38}
!105 = !{ptr @boe_bf060y8m_aj0_bl_ops, !106, !"boe_bf060y8m_aj0_bl_ops", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 276, i32 35}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-boe-bf060y8m-aj0.c", i32 420, i32 3}
!109 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @boe_bf060y8m_aj0_remove._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @boe_bf060y8m_aj0_remove._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148300981, i64 2148300986, i64 2148300999, i64 2148301043, i64 2148301077, i64 2148301098}
!122 = !{i8 0, i8 2}
!123 = !{!"auto-init"}
