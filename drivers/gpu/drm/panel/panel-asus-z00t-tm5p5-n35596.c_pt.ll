; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.tm5p5_nt35596 = type { %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data], ptr, i8 }
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

@__initcall__kmod_panel_asus_z00t_tm5p5_n35596__302_358_tm5p5_nt35596_driver_init6 = internal global ptr @tm5p5_nt35596_driver_init, section ".initcall6.init", align 4
@tm5p5_nt35596_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tm5p5_nt35596_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tm5p5_nt35596_probe, ptr @tm5p5_nt35596_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_tm5p5_nt35596_driver_exit = internal global ptr @tm5p5_nt35596_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [74 x i8] c"panel_asus_z00t_tm5p5_n35596.author=Konrad Dybcio <konradybcio@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [97 x i8] c"panel_asus_z00t_tm5p5_n35596.description=DRM driver for tm5p5 nt35596 1080p video mode dsi panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [85 x i8] c"panel_asus_z00t_tm5p5_n35596.file=drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [44 x i8] c"panel_asus_z00t_tm5p5_n35596.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panel-tm5p5-nt35596\00", [44 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asus,z00t-tm5p5-n35596\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 288, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm5p5_nt35596_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_probe._entry_ptr = internal global ptr @tm5p5_nt35596_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get reset-gpios: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_probe._entry_ptr.11 = internal global ptr @tm5p5_nt35596_probe._entry.9, section ".printk_index", align 4
@tm5p5_nt35596_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @tm5p5_nt35596_prepare, ptr null, ptr null, ptr @tm5p5_nt35596_unprepare, ptr @tm5p5_nt35596_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 314, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create backlight: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_probe._entry_ptr.14 = internal global ptr @tm5p5_nt35596_probe._entry.12, section ".printk_index", align 4
@tm5p5_nt35596_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 322, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to attach to DSI host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_probe._entry_ptr.17 = internal global ptr @tm5p5_nt35596_probe._entry.15, section ".printk_index", align 4
@tm5p5_nt35596_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 136, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tm5p5_nt35596_prepare\00", [42 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_prepare._entry_ptr = internal global ptr @tm5p5_nt35596_prepare._entry, section ".printk_index", align 4
@tm5p5_nt35596_prepare._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 144, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize panel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_prepare._entry_ptr.22 = internal global ptr @tm5p5_nt35596_prepare._entry.20, section ".printk_index", align 4
@tm5p5_nt35596_on.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\05", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FB\01", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C51", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\04", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\84", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\05%", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\01", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\07 ", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\06", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\08", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\10", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0B\10", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0C\10", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0D\14", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0E\14", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0F\14", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\10\14", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\11\14", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\12\14", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\17\F3", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\18\C0", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\19\C0", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1A\C0", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1B\B3", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1C\B3", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1D\B3", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1E\B3", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1F\B3", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \B3", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FB\01", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\00", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FB\01", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\01", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\D3\06", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\D4\04", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.57 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"^\0D", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\11\00", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.59 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_on.d.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S$", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 166, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to un-initialize panel: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tm5p5_nt35596_unprepare\00", [40 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_unprepare._entry_ptr = internal global ptr @tm5p5_nt35596_unprepare._entry, section ".printk_index", align 4
@tm5p5_nt35596_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 109, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tm5p5_nt35596_off\00", [46 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_off._entry_ptr = internal global ptr @tm5p5_nt35596_off._entry, section ".printk_index", align 4
@tm5p5_nt35596_off._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 116, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_off._entry_ptr.67 = internal global ptr @tm5p5_nt35596_off._entry.65, section ".printk_index", align 4
@tm5p5_nt35596_off.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"O\01", [30 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 139423, i16 1080, i16 1180, i16 1188, i16 1204, i16 0, i16 1920, i16 1924, i16 1926, i16 1930, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 121, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__const.tm5p5_nt35596_create_backlight.props = private unnamed_addr constant %struct.backlight_properties { i32 255, i32 255, i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4
@tm5p5_nt35596_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @tm5p5_nt35596_bl_update_status, ptr @tm5p5_nt35596_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 337, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tm5p5_nt35596_remove\00", [43 x i8] zeroinitializer }, align 32
@tm5p5_nt35596_remove._entry_ptr = internal global ptr @tm5p5_nt35596_remove._entry, section ".printk_index", align 4
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"tm5p5_nt35596_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 350, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 354, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"tm5p5_nt35596_of_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 344, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 283, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 284, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 288, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 292, i32 40 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 295, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"tm5p5_nt35596_panel_funcs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 209, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 314, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 322, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 136, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 144, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 57, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 58, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 59, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 60, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 61, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 62, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 63, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 64, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 65, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 66, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 67, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 68, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 69, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 70, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 71, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 72, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 73, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 74, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 75, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 76, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 77, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 78, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 79, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 80, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 81, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 82, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 83, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 84, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 85, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 86, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 87, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 88, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 89, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 90, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 91, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 92, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 93, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 95, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 96, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 166, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 109, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 116, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 120, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [19 x i8] c"tm5p5_nt35596_mode\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 176, i32 38 }
@___asan_gen_.289 = private unnamed_addr constant [21 x i8] c"tm5p5_nt35596_bl_ops\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 254, i32 35 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [56 x i8] c"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 336, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_tm5p5_nt35596_driver_exit, ptr @__initcall__kmod_panel_asus_z00t_tm5p5_n35596__302_358_tm5p5_nt35596_driver_init6, ptr @tm5p5_nt35596_driver_exit, ptr @tm5p5_nt35596_off._entry, ptr @tm5p5_nt35596_off._entry.65, ptr @tm5p5_nt35596_off._entry_ptr, ptr @tm5p5_nt35596_off._entry_ptr.67, ptr @tm5p5_nt35596_prepare._entry, ptr @tm5p5_nt35596_prepare._entry.20, ptr @tm5p5_nt35596_prepare._entry_ptr, ptr @tm5p5_nt35596_prepare._entry_ptr.22, ptr @tm5p5_nt35596_probe._entry, ptr @tm5p5_nt35596_probe._entry.12, ptr @tm5p5_nt35596_probe._entry.15, ptr @tm5p5_nt35596_probe._entry.9, ptr @tm5p5_nt35596_probe._entry_ptr, ptr @tm5p5_nt35596_probe._entry_ptr.11, ptr @tm5p5_nt35596_probe._entry_ptr.14, ptr @tm5p5_nt35596_probe._entry_ptr.17, ptr @tm5p5_nt35596_remove._entry, ptr @tm5p5_nt35596_remove._entry_ptr, ptr @tm5p5_nt35596_unprepare._entry, ptr @tm5p5_nt35596_unprepare._entry_ptr, ptr @tm5p5_nt35596_driver, ptr @.str, ptr @tm5p5_nt35596_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @tm5p5_nt35596_panel_funcs, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @tm5p5_nt35596_on.d, ptr @tm5p5_nt35596_on.d.23, ptr @tm5p5_nt35596_on.d.24, ptr @tm5p5_nt35596_on.d.25, ptr @tm5p5_nt35596_on.d.26, ptr @tm5p5_nt35596_on.d.27, ptr @tm5p5_nt35596_on.d.28, ptr @tm5p5_nt35596_on.d.29, ptr @tm5p5_nt35596_on.d.30, ptr @tm5p5_nt35596_on.d.31, ptr @tm5p5_nt35596_on.d.32, ptr @tm5p5_nt35596_on.d.33, ptr @tm5p5_nt35596_on.d.34, ptr @tm5p5_nt35596_on.d.35, ptr @tm5p5_nt35596_on.d.36, ptr @tm5p5_nt35596_on.d.37, ptr @tm5p5_nt35596_on.d.38, ptr @tm5p5_nt35596_on.d.39, ptr @tm5p5_nt35596_on.d.40, ptr @tm5p5_nt35596_on.d.41, ptr @tm5p5_nt35596_on.d.42, ptr @tm5p5_nt35596_on.d.43, ptr @tm5p5_nt35596_on.d.44, ptr @tm5p5_nt35596_on.d.45, ptr @tm5p5_nt35596_on.d.46, ptr @tm5p5_nt35596_on.d.47, ptr @tm5p5_nt35596_on.d.48, ptr @tm5p5_nt35596_on.d.49, ptr @tm5p5_nt35596_on.d.50, ptr @tm5p5_nt35596_on.d.51, ptr @tm5p5_nt35596_on.d.52, ptr @tm5p5_nt35596_on.d.53, ptr @tm5p5_nt35596_on.d.54, ptr @tm5p5_nt35596_on.d.55, ptr @tm5p5_nt35596_on.d.56, ptr @tm5p5_nt35596_on.d.57, ptr @tm5p5_nt35596_on.d.58, ptr @tm5p5_nt35596_on.d.59, ptr @tm5p5_nt35596_on.d.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @tm5p5_nt35596_off.d, ptr @tm5p5_nt35596_mode, ptr @tm5p5_nt35596_bl_ops, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_prepare._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.57 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.59 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_on.d.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_off._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_off.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm5p5_nt35596_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @tm5p5_nt35596_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tm5p5_nt35596_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @tm5p5_nt35596_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.tm5p5_nt35596, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx3 = getelementptr %struct.tm5p5_nt35596, ptr %call.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %call6 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call6) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #6
  %reset_gpio = getelementptr inbounds %struct.tm5p5_nt35596, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %3) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %dsi19 = getelementptr inbounds %struct.tm5p5_nt35596, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dsi19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dsi, ptr %dsi19, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3603, ptr %mode_flags, align 8
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @tm5p5_nt35596_panel_funcs, i32 noundef 16) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #6
  %9 = call ptr @memcpy(ptr %props.i, ptr @__const.tm5p5_nt35596_create_backlight.props, i32 28)
  %init_name.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.tm5p5_nt35596_create_backlight.exit_crit_edge

if.end18.tm5p5_nt35596_create_backlight.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %tm5p5_nt35596_create_backlight.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  br label %tm5p5_nt35596_create_backlight.exit

tm5p5_nt35596_create_backlight.exit:              ; preds = %if.end.i.i, %if.end18.tm5p5_nt35596_create_backlight.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end18.tm5p5_nt35596_create_backlight.exit_crit_edge ]
  %call2.i = call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %retval.0.i.i, ptr noundef %dev1, ptr noundef %dsi, ptr noundef nonnull @tm5p5_nt35596_bl_ops, ptr noundef nonnull %props.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #6
  %backlight = getelementptr inbounds %struct.drm_panel, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i, ptr %backlight, align 4
  %cmp.i79 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then25, label %if.end32

if.then25:                                        ; preds = %tm5p5_nt35596_create_backlight.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call2.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %15) #9
  br label %cleanup

if.end32:                                         ; preds = %tm5p5_nt35596_create_backlight.exit
  call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %call34 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call34) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end32.cleanup_crit_edge, %if.then25, %if.then12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %3, %if.then12 ], [ %15, %if.then25 ], [ %call34, %do.end39 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_remove(ptr noundef %dsi) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call2) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 3
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 16000, i32 noundef 2) #6
  %10 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi, align 4
  %call.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end4.do.end10_crit_edge, label %do.body2.i

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body2.i:                                       ; preds = %if.end4
  %call4.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.23, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body2.i.do.end10_crit_edge, label %do.body13.i

do.body2.i.do.end10_crit_edge:                    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body13.i:                                      ; preds = %do.body2.i
  %call15.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.24, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.body13.i.do.end10_crit_edge, label %do.body24.i

do.body13.i.do.end10_crit_edge:                   ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body24.i:                                      ; preds = %do.body13.i
  %call26.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.25, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.body24.i.do.end10_crit_edge, label %do.body35.i

do.body24.i.do.end10_crit_edge:                   ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body35.i:                                      ; preds = %do.body24.i
  %call37.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.26, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.body35.i.do.end10_crit_edge, label %do.body46.i

do.body35.i.do.end10_crit_edge:                   ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body46.i:                                      ; preds = %do.body35.i
  %call48.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.27, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %do.body46.i.do.end10_crit_edge, label %do.body57.i

do.body46.i.do.end10_crit_edge:                   ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body57.i:                                      ; preds = %do.body46.i
  %call59.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.28, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %do.body57.i.do.end10_crit_edge, label %do.body68.i

do.body57.i.do.end10_crit_edge:                   ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body68.i:                                      ; preds = %do.body57.i
  %call70.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.29, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %cmp71.i = icmp slt i32 %call70.i, 0
  br i1 %cmp71.i, label %do.body68.i.do.end10_crit_edge, label %do.body79.i

do.body68.i.do.end10_crit_edge:                   ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body79.i:                                      ; preds = %do.body68.i
  %call81.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.30, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %cmp82.i = icmp slt i32 %call81.i, 0
  br i1 %cmp82.i, label %do.body79.i.do.end10_crit_edge, label %do.body90.i

do.body79.i.do.end10_crit_edge:                   ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body90.i:                                      ; preds = %do.body79.i
  %call92.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.31, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp slt i32 %call92.i, 0
  br i1 %cmp93.i, label %do.body90.i.do.end10_crit_edge, label %do.body101.i

do.body90.i.do.end10_crit_edge:                   ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body101.i:                                     ; preds = %do.body90.i
  %call103.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.32, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %cmp104.i = icmp slt i32 %call103.i, 0
  br i1 %cmp104.i, label %do.body101.i.do.end10_crit_edge, label %do.body112.i

do.body101.i.do.end10_crit_edge:                  ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body112.i:                                     ; preds = %do.body101.i
  %call114.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.33, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp slt i32 %call114.i, 0
  br i1 %cmp115.i, label %do.body112.i.do.end10_crit_edge, label %do.body123.i

do.body112.i.do.end10_crit_edge:                  ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body123.i:                                     ; preds = %do.body112.i
  %call125.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.34, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %cmp126.i = icmp slt i32 %call125.i, 0
  br i1 %cmp126.i, label %do.body123.i.do.end10_crit_edge, label %do.body134.i

do.body123.i.do.end10_crit_edge:                  ; preds = %do.body123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body134.i:                                     ; preds = %do.body123.i
  %call136.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.35, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.i)
  %cmp137.i = icmp slt i32 %call136.i, 0
  br i1 %cmp137.i, label %do.body134.i.do.end10_crit_edge, label %do.body145.i

do.body134.i.do.end10_crit_edge:                  ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body145.i:                                     ; preds = %do.body134.i
  %call147.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.36, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %cmp148.i = icmp slt i32 %call147.i, 0
  br i1 %cmp148.i, label %do.body145.i.do.end10_crit_edge, label %do.body156.i

do.body145.i.do.end10_crit_edge:                  ; preds = %do.body145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body156.i:                                     ; preds = %do.body145.i
  %call158.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.37, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %cmp159.i = icmp slt i32 %call158.i, 0
  br i1 %cmp159.i, label %do.body156.i.do.end10_crit_edge, label %do.body167.i

do.body156.i.do.end10_crit_edge:                  ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body167.i:                                     ; preds = %do.body156.i
  %call169.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.38, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %cmp170.i = icmp slt i32 %call169.i, 0
  br i1 %cmp170.i, label %do.body167.i.do.end10_crit_edge, label %do.body178.i

do.body167.i.do.end10_crit_edge:                  ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body178.i:                                     ; preds = %do.body167.i
  %call180.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.39, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %cmp181.i = icmp slt i32 %call180.i, 0
  br i1 %cmp181.i, label %do.body178.i.do.end10_crit_edge, label %do.body189.i

do.body178.i.do.end10_crit_edge:                  ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body189.i:                                     ; preds = %do.body178.i
  %call191.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.40, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i)
  %cmp192.i = icmp slt i32 %call191.i, 0
  br i1 %cmp192.i, label %do.body189.i.do.end10_crit_edge, label %do.body200.i

do.body189.i.do.end10_crit_edge:                  ; preds = %do.body189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body200.i:                                     ; preds = %do.body189.i
  %call202.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.41, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202.i)
  %cmp203.i = icmp slt i32 %call202.i, 0
  br i1 %cmp203.i, label %do.body200.i.do.end10_crit_edge, label %do.body211.i

do.body200.i.do.end10_crit_edge:                  ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body211.i:                                     ; preds = %do.body200.i
  %call213.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.42, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213.i)
  %cmp214.i = icmp slt i32 %call213.i, 0
  br i1 %cmp214.i, label %do.body211.i.do.end10_crit_edge, label %do.body222.i

do.body211.i.do.end10_crit_edge:                  ; preds = %do.body211.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body222.i:                                     ; preds = %do.body211.i
  %call224.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.43, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224.i)
  %cmp225.i = icmp slt i32 %call224.i, 0
  br i1 %cmp225.i, label %do.body222.i.do.end10_crit_edge, label %do.body233.i

do.body222.i.do.end10_crit_edge:                  ; preds = %do.body222.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body233.i:                                     ; preds = %do.body222.i
  %call235.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.44, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235.i)
  %cmp236.i = icmp slt i32 %call235.i, 0
  br i1 %cmp236.i, label %do.body233.i.do.end10_crit_edge, label %do.body244.i

do.body233.i.do.end10_crit_edge:                  ; preds = %do.body233.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body244.i:                                     ; preds = %do.body233.i
  %call246.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.45, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246.i)
  %cmp247.i = icmp slt i32 %call246.i, 0
  br i1 %cmp247.i, label %do.body244.i.do.end10_crit_edge, label %do.body255.i

do.body244.i.do.end10_crit_edge:                  ; preds = %do.body244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body255.i:                                     ; preds = %do.body244.i
  %call257.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.46, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257.i)
  %cmp258.i = icmp slt i32 %call257.i, 0
  br i1 %cmp258.i, label %do.body255.i.do.end10_crit_edge, label %do.body266.i

do.body255.i.do.end10_crit_edge:                  ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body266.i:                                     ; preds = %do.body255.i
  %call268.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.47, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268.i)
  %cmp269.i = icmp slt i32 %call268.i, 0
  br i1 %cmp269.i, label %do.body266.i.do.end10_crit_edge, label %do.body277.i

do.body266.i.do.end10_crit_edge:                  ; preds = %do.body266.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body277.i:                                     ; preds = %do.body266.i
  %call279.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.48, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279.i)
  %cmp280.i = icmp slt i32 %call279.i, 0
  br i1 %cmp280.i, label %do.body277.i.do.end10_crit_edge, label %do.body288.i

do.body277.i.do.end10_crit_edge:                  ; preds = %do.body277.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body288.i:                                     ; preds = %do.body277.i
  %call290.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.49, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290.i)
  %cmp291.i = icmp slt i32 %call290.i, 0
  br i1 %cmp291.i, label %do.body288.i.do.end10_crit_edge, label %do.body299.i

do.body288.i.do.end10_crit_edge:                  ; preds = %do.body288.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body299.i:                                     ; preds = %do.body288.i
  %call301.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.50, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301.i)
  %cmp302.i = icmp slt i32 %call301.i, 0
  br i1 %cmp302.i, label %do.body299.i.do.end10_crit_edge, label %do.body310.i

do.body299.i.do.end10_crit_edge:                  ; preds = %do.body299.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body310.i:                                     ; preds = %do.body299.i
  %call312.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.51, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312.i)
  %cmp313.i = icmp slt i32 %call312.i, 0
  br i1 %cmp313.i, label %do.body310.i.do.end10_crit_edge, label %do.body321.i

do.body310.i.do.end10_crit_edge:                  ; preds = %do.body310.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body321.i:                                     ; preds = %do.body310.i
  %call323.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.52, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.i)
  %cmp324.i = icmp slt i32 %call323.i, 0
  br i1 %cmp324.i, label %do.body321.i.do.end10_crit_edge, label %do.body332.i

do.body321.i.do.end10_crit_edge:                  ; preds = %do.body321.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body332.i:                                     ; preds = %do.body321.i
  %call334.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.53, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334.i)
  %cmp335.i = icmp slt i32 %call334.i, 0
  br i1 %cmp335.i, label %do.body332.i.do.end10_crit_edge, label %do.body343.i

do.body332.i.do.end10_crit_edge:                  ; preds = %do.body332.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body343.i:                                     ; preds = %do.body332.i
  %call345.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.54, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.i)
  %cmp346.i = icmp slt i32 %call345.i, 0
  br i1 %cmp346.i, label %do.body343.i.do.end10_crit_edge, label %do.body354.i

do.body343.i.do.end10_crit_edge:                  ; preds = %do.body343.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body354.i:                                     ; preds = %do.body343.i
  %call356.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.55, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356.i)
  %cmp357.i = icmp slt i32 %call356.i, 0
  br i1 %cmp357.i, label %do.body354.i.do.end10_crit_edge, label %do.body365.i

do.body354.i.do.end10_crit_edge:                  ; preds = %do.body354.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body365.i:                                     ; preds = %do.body354.i
  %call367.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.56, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367.i)
  %cmp368.i = icmp slt i32 %call367.i, 0
  br i1 %cmp368.i, label %do.body365.i.do.end10_crit_edge, label %do.body376.i

do.body365.i.do.end10_crit_edge:                  ; preds = %do.body365.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body376.i:                                     ; preds = %do.body365.i
  %call378.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.57, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378.i)
  %cmp379.i = icmp slt i32 %call378.i, 0
  br i1 %cmp379.i, label %do.body376.i.do.end10_crit_edge, label %do.body387.i

do.body376.i.do.end10_crit_edge:                  ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body387.i:                                     ; preds = %do.body376.i
  %call389.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.58, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call389.i)
  %cmp390.i = icmp slt i32 %call389.i, 0
  br i1 %cmp390.i, label %do.body387.i.do.end10_crit_edge, label %do.end397.i

do.body387.i.do.end10_crit_edge:                  ; preds = %do.body387.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end397.i:                                      ; preds = %do.body387.i
  tail call void @msleep(i32 noundef 100) #6
  %call400.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.59, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400.i)
  %cmp401.i = icmp slt i32 %call400.i, 0
  br i1 %cmp401.i, label %do.end397.i.do.end10_crit_edge, label %tm5p5_nt35596_on.exit

do.end397.i.do.end10_crit_edge:                   ; preds = %do.end397.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

tm5p5_nt35596_on.exit:                            ; preds = %do.end397.i
  %call411.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @tm5p5_nt35596_on.d.60, i32 noundef 2) #6
  %12 = tail call i32 @llvm.smin.i32(i32 %call411.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411.i)
  %cmp6 = icmp slt i32 %call411.i, 0
  br i1 %cmp6, label %tm5p5_nt35596_on.exit.do.end10_crit_edge, label %if.end14

tm5p5_nt35596_on.exit.do.end10_crit_edge:         ; preds = %tm5p5_nt35596_on.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10:                                         ; preds = %tm5p5_nt35596_on.exit.do.end10_crit_edge, %do.end397.i.do.end10_crit_edge, %do.body387.i.do.end10_crit_edge, %do.body376.i.do.end10_crit_edge, %do.body365.i.do.end10_crit_edge, %do.body354.i.do.end10_crit_edge, %do.body343.i.do.end10_crit_edge, %do.body332.i.do.end10_crit_edge, %do.body321.i.do.end10_crit_edge, %do.body310.i.do.end10_crit_edge, %do.body299.i.do.end10_crit_edge, %do.body288.i.do.end10_crit_edge, %do.body277.i.do.end10_crit_edge, %do.body266.i.do.end10_crit_edge, %do.body255.i.do.end10_crit_edge, %do.body244.i.do.end10_crit_edge, %do.body233.i.do.end10_crit_edge, %do.body222.i.do.end10_crit_edge, %do.body211.i.do.end10_crit_edge, %do.body200.i.do.end10_crit_edge, %do.body189.i.do.end10_crit_edge, %do.body178.i.do.end10_crit_edge, %do.body167.i.do.end10_crit_edge, %do.body156.i.do.end10_crit_edge, %do.body145.i.do.end10_crit_edge, %do.body134.i.do.end10_crit_edge, %do.body123.i.do.end10_crit_edge, %do.body112.i.do.end10_crit_edge, %do.body101.i.do.end10_crit_edge, %do.body90.i.do.end10_crit_edge, %do.body79.i.do.end10_crit_edge, %do.body68.i.do.end10_crit_edge, %do.body57.i.do.end10_crit_edge, %do.body46.i.do.end10_crit_edge, %do.body35.i.do.end10_crit_edge, %do.body24.i.do.end10_crit_edge, %do.body13.i.do.end10_crit_edge, %do.body2.i.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  %retval.39.i33 = phi i32 [ %12, %tm5p5_nt35596_on.exit.do.end10_crit_edge ], [ %call.i, %if.end4.do.end10_crit_edge ], [ %call4.i, %do.body2.i.do.end10_crit_edge ], [ %call15.i, %do.body13.i.do.end10_crit_edge ], [ %call26.i, %do.body24.i.do.end10_crit_edge ], [ %call37.i, %do.body35.i.do.end10_crit_edge ], [ %call48.i, %do.body46.i.do.end10_crit_edge ], [ %call59.i, %do.body57.i.do.end10_crit_edge ], [ %call70.i, %do.body68.i.do.end10_crit_edge ], [ %call81.i, %do.body79.i.do.end10_crit_edge ], [ %call92.i, %do.body90.i.do.end10_crit_edge ], [ %call103.i, %do.body101.i.do.end10_crit_edge ], [ %call114.i, %do.body112.i.do.end10_crit_edge ], [ %call125.i, %do.body123.i.do.end10_crit_edge ], [ %call136.i, %do.body134.i.do.end10_crit_edge ], [ %call147.i, %do.body145.i.do.end10_crit_edge ], [ %call158.i, %do.body156.i.do.end10_crit_edge ], [ %call169.i, %do.body167.i.do.end10_crit_edge ], [ %call180.i, %do.body178.i.do.end10_crit_edge ], [ %call191.i, %do.body189.i.do.end10_crit_edge ], [ %call202.i, %do.body200.i.do.end10_crit_edge ], [ %call213.i, %do.body211.i.do.end10_crit_edge ], [ %call224.i, %do.body222.i.do.end10_crit_edge ], [ %call235.i, %do.body233.i.do.end10_crit_edge ], [ %call246.i, %do.body244.i.do.end10_crit_edge ], [ %call257.i, %do.body255.i.do.end10_crit_edge ], [ %call268.i, %do.body266.i.do.end10_crit_edge ], [ %call279.i, %do.body277.i.do.end10_crit_edge ], [ %call290.i, %do.body288.i.do.end10_crit_edge ], [ %call301.i, %do.body299.i.do.end10_crit_edge ], [ %call312.i, %do.body310.i.do.end10_crit_edge ], [ %call323.i, %do.body321.i.do.end10_crit_edge ], [ %call334.i, %do.body332.i.do.end10_crit_edge ], [ %call345.i, %do.body343.i.do.end10_crit_edge ], [ %call356.i, %do.body354.i.do.end10_crit_edge ], [ %call367.i, %do.body365.i.do.end10_crit_edge ], [ %call378.i, %do.body376.i.do.end10_crit_edge ], [ %call389.i, %do.body387.i.do.end10_crit_edge ], [ %call400.i, %do.end397.i.do.end10_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %retval.39.i33) #9
  %13 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #6
  %call13 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  br label %cleanup

if.end14:                                         ; preds = %tm5p5_nt35596_on.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.39.i33, %do.end10 ], [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %call.i) #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 60) #6
  %call3.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %tm5p5_nt35596_off.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %call3.i) #9
  br label %do.end

tm5p5_nt35596_off.exit:                           ; preds = %if.end.i
  %call12.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %1, ptr noundef nonnull @tm5p5_nt35596_off.d, i32 noundef 2) #6
  %4 = tail call i32 @llvm.smin.i32(i32 %call12.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp = icmp slt i32 %call12.i, 0
  br i1 %cmp, label %tm5p5_nt35596_off.exit.do.end_crit_edge, label %tm5p5_nt35596_off.exit.if.end4_crit_edge

tm5p5_nt35596_off.exit.if.end4_crit_edge:         ; preds = %tm5p5_nt35596_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

tm5p5_nt35596_off.exit.do.end_crit_edge:          ; preds = %tm5p5_nt35596_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %tm5p5_nt35596_off.exit.do.end_crit_edge, %do.end8.i, %do.end.i
  %retval.1.i17 = phi i32 [ %4, %tm5p5_nt35596_off.exit.do.end_crit_edge ], [ %call3.i, %do.end8.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61, i32 noundef %retval.1.i17) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %tm5p5_nt35596_off.exit.if.end4_crit_edge
  %reset_gpio = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 3
  %5 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 0) #6
  %supplies = getelementptr inbounds %struct.tm5p5_nt35596, ptr %panel, i32 0, i32 2
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  %7 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @tm5p5_nt35596_mode) #6
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
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl, align 8
  %conv = trunc i32 %3 to i16
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fb_blank = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %6 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp eq i32 %7, 0
  br i1 %cmp5.not, label %lor.lhs.false7, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false7.if.end_crit_edge, label %lor.lhs.false7.if.then_crit_edge

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false7.if.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false7.if.end_crit_edge
  %brightness.0 = phi i16 [ 0, %if.then ], [ %conv, %lor.lhs.false7.if.end_crit_edge ]
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_flags, align 8
  %and9 = and i32 %11, -2049
  store i32 %and9, ptr %mode_flags, align 8
  %call10 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %1, i16 noundef zeroext %brightness.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_flags, align 8
  %or = or i32 %13, 2048
  store i32 %or, ptr %mode_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm5p5_nt35596_bl_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %brightness = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %brightness) #6
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl, align 8
  %conv = trunc i32 %3 to i16
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %brightness, align 2
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_flags, align 8
  %and = and i32 %6, -2049
  store i32 %and, ptr %mode_flags, align 8
  %call2 = call i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef %1, ptr noundef nonnull %brightness) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode_flags, align 8
  %or = or i32 %8, 2048
  store i32 %or, ptr %mode_flags, align 8
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %brightness, align 2
  %11 = and i16 %10, 255
  %and6 = zext i16 %11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and6, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !154, !155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_panel_asus_z00t_tm5p5_n35596__302_358_tm5p5_nt35596_driver_init6, !1, !"__initcall__kmod_panel_asus_z00t_tm5p5_n35596__302_358_tm5p5_nt35596_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 358, i32 1}
!2 = !{ptr @__exitcall_tm5p5_nt35596_driver_exit, !1, !"__exitcall_tm5p5_nt35596_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 360, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 361, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 362, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 354, i32 11}
!12 = !{ptr @tm5p5_nt35596_driver, !13, !"tm5p5_nt35596_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 350, i32 31}
!14 = !{ptr @tm5p5_nt35596_of_match, !15, !"tm5p5_nt35596_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 344, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 283, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 284, i32 28}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 288, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tm5p5_nt35596_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tm5p5_nt35596_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 292, i32 40}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 295, i32 3}
!32 = !{ptr @tm5p5_nt35596_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tm5p5_nt35596_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 314, i32 3}
!36 = !{ptr @tm5p5_nt35596_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tm5p5_nt35596_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 322, i32 3}
!40 = !{ptr @tm5p5_nt35596_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tm5p5_nt35596_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @tm5p5_nt35596_panel_funcs, !43, !"tm5p5_nt35596_panel_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 209, i32 37}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 136, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tm5p5_nt35596_prepare._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tm5p5_nt35596_prepare._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 144, i32 3}
!51 = !{ptr @tm5p5_nt35596_prepare._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tm5p5_nt35596_prepare._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @tm5p5_nt35596_on.d, !54, !"d", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 57, i32 2}
!55 = !{ptr @tm5p5_nt35596_on.d.23, !56, !"d", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 58, i32 2}
!57 = !{ptr @tm5p5_nt35596_on.d.24, !58, !"d", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 59, i32 2}
!59 = !{ptr @tm5p5_nt35596_on.d.25, !60, !"d", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 60, i32 2}
!61 = !{ptr @tm5p5_nt35596_on.d.26, !62, !"d", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 61, i32 2}
!63 = !{ptr @tm5p5_nt35596_on.d.27, !64, !"d", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 62, i32 2}
!65 = !{ptr @tm5p5_nt35596_on.d.28, !66, !"d", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 63, i32 2}
!67 = !{ptr @tm5p5_nt35596_on.d.29, !68, !"d", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 64, i32 2}
!69 = !{ptr @tm5p5_nt35596_on.d.30, !70, !"d", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 65, i32 2}
!71 = !{ptr @tm5p5_nt35596_on.d.31, !72, !"d", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 66, i32 2}
!73 = !{ptr @tm5p5_nt35596_on.d.32, !74, !"d", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 67, i32 2}
!75 = !{ptr @tm5p5_nt35596_on.d.33, !76, !"d", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 68, i32 2}
!77 = !{ptr @tm5p5_nt35596_on.d.34, !78, !"d", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 69, i32 2}
!79 = !{ptr @tm5p5_nt35596_on.d.35, !80, !"d", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 70, i32 2}
!81 = !{ptr @tm5p5_nt35596_on.d.36, !82, !"d", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 71, i32 2}
!83 = !{ptr @tm5p5_nt35596_on.d.37, !84, !"d", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 72, i32 2}
!85 = !{ptr @tm5p5_nt35596_on.d.38, !86, !"d", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 73, i32 2}
!87 = !{ptr @tm5p5_nt35596_on.d.39, !88, !"d", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 74, i32 2}
!89 = !{ptr @tm5p5_nt35596_on.d.40, !90, !"d", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 75, i32 2}
!91 = !{ptr @tm5p5_nt35596_on.d.41, !92, !"d", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 76, i32 2}
!93 = !{ptr @tm5p5_nt35596_on.d.42, !94, !"d", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 77, i32 2}
!95 = !{ptr @tm5p5_nt35596_on.d.43, !96, !"d", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 78, i32 2}
!97 = !{ptr @tm5p5_nt35596_on.d.44, !98, !"d", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 79, i32 2}
!99 = !{ptr @tm5p5_nt35596_on.d.45, !100, !"d", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 80, i32 2}
!101 = !{ptr @tm5p5_nt35596_on.d.46, !102, !"d", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 81, i32 2}
!103 = !{ptr @tm5p5_nt35596_on.d.47, !104, !"d", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 82, i32 2}
!105 = !{ptr @tm5p5_nt35596_on.d.48, !106, !"d", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 83, i32 2}
!107 = !{ptr @tm5p5_nt35596_on.d.49, !108, !"d", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 84, i32 2}
!109 = !{ptr @tm5p5_nt35596_on.d.50, !110, !"d", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 85, i32 2}
!111 = !{ptr @tm5p5_nt35596_on.d.51, !112, !"d", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 86, i32 2}
!113 = !{ptr @tm5p5_nt35596_on.d.52, !114, !"d", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 87, i32 2}
!115 = !{ptr @tm5p5_nt35596_on.d.53, !116, !"d", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 88, i32 2}
!117 = !{ptr @tm5p5_nt35596_on.d.54, !118, !"d", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 89, i32 2}
!119 = !{ptr @tm5p5_nt35596_on.d.55, !120, !"d", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 90, i32 2}
!121 = !{ptr @tm5p5_nt35596_on.d.56, !122, !"d", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 91, i32 2}
!123 = !{ptr @tm5p5_nt35596_on.d.57, !124, !"d", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 92, i32 2}
!125 = !{ptr @tm5p5_nt35596_on.d.58, !126, !"d", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 93, i32 2}
!127 = !{ptr @tm5p5_nt35596_on.d.59, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 95, i32 2}
!129 = !{ptr @tm5p5_nt35596_on.d.60, !130, !"d", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 96, i32 2}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 166, i32 3}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @tm5p5_nt35596_unprepare._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @tm5p5_nt35596_unprepare._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 109, i32 3}
!138 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @tm5p5_nt35596_off._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @tm5p5_nt35596_off._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 116, i32 3}
!143 = !{ptr @tm5p5_nt35596_off._entry.65, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @tm5p5_nt35596_off._entry_ptr.67, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @tm5p5_nt35596_off.d, !146, !"d", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 120, i32 2}
!147 = !{ptr @tm5p5_nt35596_mode, !148, !"tm5p5_nt35596_mode", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 176, i32 38}
!149 = !{ptr @tm5p5_nt35596_bl_ops, !150, !"tm5p5_nt35596_bl_ops", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 254, i32 35}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/panel/panel-asus-z00t-tm5p5-n35596.c", i32 336, i32 3}
!153 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tm5p5_nt35596_remove._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @tm5p5_nt35596_remove._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{i8 0, i8 2}
