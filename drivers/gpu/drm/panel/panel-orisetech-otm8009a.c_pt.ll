; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-orisetech-otm8009a.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.otm8009a = type { ptr, %struct.drm_panel, ptr, ptr, ptr, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_orisetech_otm8009a__303_524_orisetech_otm8009a_driver_init6 = internal global ptr @orisetech_otm8009a_driver_init, section ".initcall6.init", align 4
@orisetech_otm8009a_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orisetech_otm8009a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @otm8009a_probe, ptr @otm8009a_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_orisetech_otm8009a_driver_exit = internal global ptr @orisetech_otm8009a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [71 x i8] c"panel_orisetech_otm8009a.author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [71 x i8] c"panel_orisetech_otm8009a.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [87 x i8] c"panel_orisetech_otm8009a.description=DRM driver for Orise Tech OTM8009A MIPI DSI panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [77 x i8] c"panel_orisetech_otm8009a.file=drivers/gpu/drm/panel/panel-orisetech-otm8009a\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [40 x i8] c"panel_orisetech_otm8009a.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panel-orisetech-otm8009a\00", [39 x i8] zeroinitializer }, align 32
@orisetech_otm8009a_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"orisetech,otm8009a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@otm8009a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get reset-gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"otm8009a_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/panel/panel-orisetech-otm8009a.c\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@otm8009a_probe._entry_ptr = internal global ptr @otm8009a_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@otm8009a_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@otm8009a_probe._entry_ptr.10 = internal global ptr @otm8009a_probe._entry.8, section ".printk_index", align 4
@otm8009a_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @otm8009a_prepare, ptr @otm8009a_enable, ptr @otm8009a_disable, ptr @otm8009a_unprepare, ptr @otm8009a_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@otm8009a_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @otm8009a_backlight_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@otm8009a_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register backlight: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@otm8009a_probe._entry_ptr.13 = internal global ptr @otm8009a_probe._entry.11, section ".printk_index", align 4
@otm8009a_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mipi_dsi_attach failed. Is host ready?\0A\00", [56 x i8] zeroinitializer }, align 32
@otm8009a_probe._entry_ptr.16 = internal global ptr @otm8009a_probe._entry.14, section ".printk_index", align 4
@otm8009a_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"otm8009a_prepare\00", [47 x i8] zeroinitializer }, align 32
@otm8009a_prepare._entry_ptr = internal global ptr @otm8009a_prepare._entry, section ".printk_index", align 4
@otm8009a_init_sequence.d = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@otm8009a_init_sequence.d.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\FF\80\09\01", [28 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\80", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\FF\80\09", [29 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\80", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C40", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@otm8009a_init_sequence.d.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\8A", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C4@", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\B1", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C5\A9", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\91", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C54", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\B4", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C0P", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.32 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@otm8009a_init_sequence.d.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\D9N", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\81", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C1f", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\92", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C5\01", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\95", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C54", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\94", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C53", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.42 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@otm8009a_init_sequence.d.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D8yy", [29 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\A3", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C0\1B", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\82", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C5\83", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\81", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C4\83", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\A1", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C1\0E", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.52 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\A6", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B3\00\01", [29 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\80", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\CE\85\01\00\84\01\00", [25 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\A0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\CE\18\04\039\00\00\00\18\03\03:\00\00\00", [17 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\B0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\CE\18\02\03;\00\00\00\18\01\03<\00\00\00", [17 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\C0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\CF\01\01  \00\00\01\02\00\00", [21 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\D0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.63 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\CF\00", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.64 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\80", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.65 = internal constant { <{ i8, [10 x i8] }>, [21 x i8] } { <{ i8, [10 x i8] }> <{ i8 -53, [10 x i8] zeroinitializer }>, [21 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\90", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.67 = internal constant { <{ i8, [15 x i8] }>, [16 x i8] } { <{ i8, [15 x i8] }> <{ i8 -53, [15 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.68 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\A0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.69 = internal constant { <{ i8, [15 x i8] }>, [16 x i8] } { <{ i8, [15 x i8] }> <{ i8 -53, [15 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\B0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.71 = internal constant { <{ i8, [10 x i8] }>, [21 x i8] } { <{ i8, [10 x i8] }> <{ i8 -53, [10 x i8] zeroinitializer }>, [21 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\C0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.73 = internal constant { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, [16 x i8] } { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 -53, i8 0, i8 4, i8 4, i8 4, i8 4, i8 4, [9 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\D0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\CB\00\00\00\00\00\00\04\04\04\04\04\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\E0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.77 = internal constant { <{ i8, [10 x i8] }>, [21 x i8] } { <{ i8, [10 x i8] }> <{ i8 -53, [10 x i8] zeroinitializer }>, [21 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\F0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\CB\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [21 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\80", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\CC\00&\09\0B\01%\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\90", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\CC\00\00\00\00\00\00\00\00\00\00\00&\0A\0C\02", [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.84 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\A0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.85 = internal constant { <{ i8, i8, [14 x i8] }>, [16 x i8] } { <{ i8, i8, [14 x i8] }> <{ i8 -52, i8 37, [14 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.86 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\B0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\CC\00%\0C\0A\02&\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.88 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\C0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\CC\00\00\00\00\00\00\00\00\00\00\00%\0B\09\01", [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.90 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\D0", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.91 = internal constant { <{ i8, i8, [14 x i8] }>, [16 x i8] } { <{ i8, i8, [14 x i8] }> <{ i8 -52, i8 38, [14 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\81", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.93 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C5f", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.94 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\B6", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F5\06", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.96 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@otm8009a_init_sequence.d.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\E1\00\09\0F\0E\07\10\0B\0A\04\07\0B\08\0F\10\0A\01", [47 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.98 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@otm8009a_init_sequence.d.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\E2\00\09\0F\0E\07\10\0B\0A\04\07\0B\08\0F\10\0A\01", [47 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.100 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@otm8009a_init_sequence.d.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\FF\FF\FF\FF", [28 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@otm8009a_init_sequence.d.104 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c",", [31 x i8] zeroinitializer }, align 32
@otm8009a_dcs_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 118, ptr @.str.107, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mipi dsi dcs write buffer failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"otm8009a_dcs_write_buf\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@otm8009a_dcs_write_buf._entry_ptr = internal global ptr @otm8009a_dcs_write_buf._entry, section ".printk_index", align 4
@modes = internal constant { [2 x %struct.drm_display_mode], [32 x i8] } { [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 29700, i16 480, i16 578, i16 610, i16 708, i16 0, i16 800, i16 815, i16 825, i16 839, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 52, i16 86, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 33000, i16 480, i16 550, i16 582, i16 654, i16 0, i16 800, i16 815, i16 825, i16 841, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 52, i16 86, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@otm8009a_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.4, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"otm8009a_get_modes\00", [45 x i8] zeroinitializer }, align 32
@otm8009a_get_modes._entry_ptr = internal global ptr @otm8009a_get_modes._entry, section ".printk_index", align 4
@otm8009a_backlight_update_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.111, ptr @.str.4, ptr @.str.112, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panel_orisetech_otm8009a\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"otm8009a_backlight_update_status\00", [63 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lcd not ready yet for setting its backlight!\0A\00", [50 x i8] zeroinitializer }, align 32
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"orisetech_otm8009a_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 516, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 520, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"orisetech_otm8009a_of_match\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 510, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 447, i32 49 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 449, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 453, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 457, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"otm8009a_drm_funcs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 387, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"otm8009a_backlight_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 433, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 479, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 492, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 319, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 139, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 142, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 144, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 147, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 150, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 151, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 152, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 153, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 154, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 155, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 156, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 157, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 158, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 159, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 160, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 161, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 162, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 163, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 165, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 166, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 168, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 170, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 173, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 175, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 176, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 178, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 180, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 181, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 183, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 185, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 186, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 189, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 191, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 193, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 195, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 197, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 199, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 202, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 204, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 206, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 209, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 214, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 228, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 245, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 256, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 118, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 76, i32 38 }
@___asan_gen_.455 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 364, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.471 = private constant [52 x i8] c"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 405, i32 3 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_orisetech_otm8009a_driver_exit, ptr @__initcall__kmod_panel_orisetech_otm8009a__303_524_orisetech_otm8009a_driver_init6, ptr @orisetech_otm8009a_driver_exit, ptr @otm8009a_dcs_write_buf._entry, ptr @otm8009a_dcs_write_buf._entry_ptr, ptr @otm8009a_get_modes._entry, ptr @otm8009a_get_modes._entry_ptr, ptr @otm8009a_prepare._entry, ptr @otm8009a_prepare._entry_ptr, ptr @otm8009a_probe._entry, ptr @otm8009a_probe._entry.11, ptr @otm8009a_probe._entry.14, ptr @otm8009a_probe._entry.8, ptr @otm8009a_probe._entry_ptr, ptr @otm8009a_probe._entry_ptr.10, ptr @otm8009a_probe._entry_ptr.13, ptr @otm8009a_probe._entry_ptr.16, ptr @orisetech_otm8009a_driver, ptr @.str, ptr @orisetech_otm8009a_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @otm8009a_drm_funcs, ptr @otm8009a_backlight_ops, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @otm8009a_init_sequence.d, ptr @otm8009a_init_sequence.d.19, ptr @otm8009a_init_sequence.d.20, ptr @otm8009a_init_sequence.d.21, ptr @otm8009a_init_sequence.d.22, ptr @otm8009a_init_sequence.d.23, ptr @otm8009a_init_sequence.d.24, ptr @otm8009a_init_sequence.d.25, ptr @otm8009a_init_sequence.d.26, ptr @otm8009a_init_sequence.d.27, ptr @otm8009a_init_sequence.d.28, ptr @otm8009a_init_sequence.d.29, ptr @otm8009a_init_sequence.d.30, ptr @otm8009a_init_sequence.d.31, ptr @otm8009a_init_sequence.d.32, ptr @otm8009a_init_sequence.d.33, ptr @otm8009a_init_sequence.d.34, ptr @otm8009a_init_sequence.d.35, ptr @otm8009a_init_sequence.d.36, ptr @otm8009a_init_sequence.d.37, ptr @otm8009a_init_sequence.d.38, ptr @otm8009a_init_sequence.d.39, ptr @otm8009a_init_sequence.d.40, ptr @otm8009a_init_sequence.d.41, ptr @otm8009a_init_sequence.d.42, ptr @otm8009a_init_sequence.d.43, ptr @otm8009a_init_sequence.d.44, ptr @otm8009a_init_sequence.d.45, ptr @otm8009a_init_sequence.d.46, ptr @otm8009a_init_sequence.d.47, ptr @otm8009a_init_sequence.d.48, ptr @otm8009a_init_sequence.d.49, ptr @otm8009a_init_sequence.d.50, ptr @otm8009a_init_sequence.d.51, ptr @otm8009a_init_sequence.d.52, ptr @otm8009a_init_sequence.d.53, ptr @otm8009a_init_sequence.d.54, ptr @otm8009a_init_sequence.d.55, ptr @otm8009a_init_sequence.d.56, ptr @otm8009a_init_sequence.d.57, ptr @otm8009a_init_sequence.d.58, ptr @otm8009a_init_sequence.d.59, ptr @otm8009a_init_sequence.d.60, ptr @otm8009a_init_sequence.d.61, ptr @otm8009a_init_sequence.d.62, ptr @otm8009a_init_sequence.d.63, ptr @otm8009a_init_sequence.d.64, ptr @otm8009a_init_sequence.d.65, ptr @otm8009a_init_sequence.d.66, ptr @otm8009a_init_sequence.d.67, ptr @otm8009a_init_sequence.d.68, ptr @otm8009a_init_sequence.d.69, ptr @otm8009a_init_sequence.d.70, ptr @otm8009a_init_sequence.d.71, ptr @otm8009a_init_sequence.d.72, ptr @otm8009a_init_sequence.d.73, ptr @otm8009a_init_sequence.d.74, ptr @otm8009a_init_sequence.d.75, ptr @otm8009a_init_sequence.d.76, ptr @otm8009a_init_sequence.d.77, ptr @otm8009a_init_sequence.d.78, ptr @otm8009a_init_sequence.d.79, ptr @otm8009a_init_sequence.d.80, ptr @otm8009a_init_sequence.d.81, ptr @otm8009a_init_sequence.d.82, ptr @otm8009a_init_sequence.d.83, ptr @otm8009a_init_sequence.d.84, ptr @otm8009a_init_sequence.d.85, ptr @otm8009a_init_sequence.d.86, ptr @otm8009a_init_sequence.d.87, ptr @otm8009a_init_sequence.d.88, ptr @otm8009a_init_sequence.d.89, ptr @otm8009a_init_sequence.d.90, ptr @otm8009a_init_sequence.d.91, ptr @otm8009a_init_sequence.d.92, ptr @otm8009a_init_sequence.d.93, ptr @otm8009a_init_sequence.d.94, ptr @otm8009a_init_sequence.d.95, ptr @otm8009a_init_sequence.d.96, ptr @otm8009a_init_sequence.d.97, ptr @otm8009a_init_sequence.d.98, ptr @otm8009a_init_sequence.d.99, ptr @otm8009a_init_sequence.d.100, ptr @otm8009a_init_sequence.d.101, ptr @otm8009a_init_sequence.d.102, ptr @otm8009a_init_sequence.d.103, ptr @otm8009a_init_sequence.d.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @modes, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orisetech_otm8009a_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orisetech_otm8009a_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.52 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.63 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.64 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.68 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.84 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.86 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.88 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.90 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.93 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.94 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.98 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.100 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_init_sequence.d.104 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_dcs_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm8009a_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orisetech_otm8009a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @orisetech_otm8009a_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orisetech_otm8009a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @orisetech_otm8009a_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.otm8009a, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %1 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset_gpio, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  %supply = getelementptr inbounds %struct.otm8009a, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %supply, align 4
  %cmp.i93 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end8
  %cmp.not = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %5) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %10 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3075, ptr %mode_flags, align 8
  %panel = getelementptr inbounds %struct.otm8009a, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @otm8009a_drm_funcs, i32 noundef 16) #5
  %init_name.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end20.dev_name.exit_crit_edge ]
  %15 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsi, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call24 = tail call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %retval.0.i, ptr noundef %18, ptr noundef nonnull %call.i, ptr noundef nonnull @otm8009a_backlight_ops, ptr noundef null) #5
  %bl_dev = getelementptr inbounds %struct.otm8009a, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %bl_dev, align 4
  %cmp.i94 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then27, label %if.end33

if.then27:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %20) #8
  br label %cleanup

if.end33:                                         ; preds = %dev_name.exit
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %call24, i32 0, i32 1
  %21 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %max_brightness, align 4
  %22 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bl_dev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 240, ptr %23, align 8
  %25 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %power, align 8
  %27 = load ptr, ptr %bl_dev, align 4
  %type = getelementptr inbounds %struct.backlight_properties, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type, align 8
  tail call void @drm_panel_add(ptr noundef %panel) #5
  %call42 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end47, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end47:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end33.cleanup_crit_edge, %if.then27, %do.end18, %if.then12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %20, %if.then27 ], [ %call42, %do.end47 ], [ -12, %entry.cleanup_crit_edge ], [ %5, %do.end18 ], [ -517, %if.then12.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  %panel = getelementptr inbounds %struct.otm8009a, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %prepared = getelementptr i8, ptr %panel, i32 36
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply = getelementptr i8, ptr %panel, i32 32
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %call1) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reset_gpio = getelementptr i8, ptr %panel, i32 28
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 0) #5
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3.if.end9_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -8
  %call1.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i, ptr noundef nonnull @otm8009a_init_sequence.d, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end9.otm8009a_dcs_write_buf.exit.i_crit_edge

if.end9.otm8009a_dcs_write_buf.exit.i_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit.i

do.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit.i

otm8009a_dcs_write_buf.exit.i:                    ; preds = %do.end.i.i, %if.end9.otm8009a_dcs_write_buf.exit.i_crit_edge
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i152.i = getelementptr i8, ptr %17, i32 -8
  %call1.i153.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i152.i, ptr noundef nonnull @otm8009a_init_sequence.d.19, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153.i)
  %cmp.i154.i = icmp slt i32 %call1.i153.i, 0
  br i1 %cmp.i154.i, label %do.end.i155.i, label %otm8009a_dcs_write_buf.exit.i.otm8009a_dcs_write_buf.exit156.i_crit_edge

otm8009a_dcs_write_buf.exit.i.otm8009a_dcs_write_buf.exit156.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit156.i

do.end.i155.i:                                    ; preds = %otm8009a_dcs_write_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit156.i

otm8009a_dcs_write_buf.exit156.i:                 ; preds = %do.end.i155.i, %otm8009a_dcs_write_buf.exit.i.otm8009a_dcs_write_buf.exit156.i_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i157.i = getelementptr i8, ptr %21, i32 -8
  %call1.i158.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i157.i, ptr noundef nonnull @otm8009a_init_sequence.d.20, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i158.i)
  %cmp.i159.i = icmp slt i32 %call1.i158.i, 0
  br i1 %cmp.i159.i, label %do.end.i160.i, label %otm8009a_dcs_write_buf.exit156.i.otm8009a_dcs_write_buf.exit161.i_crit_edge

otm8009a_dcs_write_buf.exit156.i.otm8009a_dcs_write_buf.exit161.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit161.i

do.end.i160.i:                                    ; preds = %otm8009a_dcs_write_buf.exit156.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit161.i

otm8009a_dcs_write_buf.exit161.i:                 ; preds = %do.end.i160.i, %otm8009a_dcs_write_buf.exit156.i.otm8009a_dcs_write_buf.exit161.i_crit_edge
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i162.i = getelementptr i8, ptr %25, i32 -8
  %call1.i163.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i162.i, ptr noundef nonnull @otm8009a_init_sequence.d.21, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163.i)
  %cmp.i164.i = icmp slt i32 %call1.i163.i, 0
  br i1 %cmp.i164.i, label %do.end.i165.i, label %otm8009a_dcs_write_buf.exit161.i.otm8009a_dcs_write_buf.exit166.i_crit_edge

otm8009a_dcs_write_buf.exit161.i.otm8009a_dcs_write_buf.exit166.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit166.i

do.end.i165.i:                                    ; preds = %otm8009a_dcs_write_buf.exit161.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit166.i

otm8009a_dcs_write_buf.exit166.i:                 ; preds = %do.end.i165.i, %otm8009a_dcs_write_buf.exit161.i.otm8009a_dcs_write_buf.exit166.i_crit_edge
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i167.i = getelementptr i8, ptr %29, i32 -8
  %call1.i168.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i167.i, ptr noundef nonnull @otm8009a_init_sequence.d.22, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168.i)
  %cmp.i169.i = icmp slt i32 %call1.i168.i, 0
  br i1 %cmp.i169.i, label %do.end.i170.i, label %otm8009a_dcs_write_buf.exit166.i.otm8009a_dcs_write_buf.exit171.i_crit_edge

otm8009a_dcs_write_buf.exit166.i.otm8009a_dcs_write_buf.exit171.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit171.i

do.end.i170.i:                                    ; preds = %otm8009a_dcs_write_buf.exit166.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit171.i

otm8009a_dcs_write_buf.exit171.i:                 ; preds = %do.end.i170.i, %otm8009a_dcs_write_buf.exit166.i.otm8009a_dcs_write_buf.exit171.i_crit_edge
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i172.i = getelementptr i8, ptr %33, i32 -8
  %call1.i173.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i172.i, ptr noundef nonnull @otm8009a_init_sequence.d.23, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i173.i)
  %cmp.i174.i = icmp slt i32 %call1.i173.i, 0
  br i1 %cmp.i174.i, label %do.end.i175.i, label %otm8009a_dcs_write_buf.exit171.i.otm8009a_dcs_write_buf.exit176.i_crit_edge

otm8009a_dcs_write_buf.exit171.i.otm8009a_dcs_write_buf.exit176.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit176.i

do.end.i175.i:                                    ; preds = %otm8009a_dcs_write_buf.exit171.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit176.i

otm8009a_dcs_write_buf.exit176.i:                 ; preds = %do.end.i175.i, %otm8009a_dcs_write_buf.exit171.i.otm8009a_dcs_write_buf.exit176.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #5
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i177.i = getelementptr i8, ptr %47, i32 -8
  %call1.i178.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i177.i, ptr noundef nonnull @otm8009a_init_sequence.d.24, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178.i)
  %cmp.i179.i = icmp slt i32 %call1.i178.i, 0
  br i1 %cmp.i179.i, label %do.end.i180.i, label %otm8009a_dcs_write_buf.exit176.i.otm8009a_dcs_write_buf.exit181.i_crit_edge

otm8009a_dcs_write_buf.exit176.i.otm8009a_dcs_write_buf.exit181.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit176.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit181.i

do.end.i180.i:                                    ; preds = %otm8009a_dcs_write_buf.exit176.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit181.i

otm8009a_dcs_write_buf.exit181.i:                 ; preds = %do.end.i180.i, %otm8009a_dcs_write_buf.exit176.i.otm8009a_dcs_write_buf.exit181.i_crit_edge
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i182.i = getelementptr i8, ptr %51, i32 -8
  %call1.i183.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i182.i, ptr noundef nonnull @otm8009a_init_sequence.d.25, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183.i)
  %cmp.i184.i = icmp slt i32 %call1.i183.i, 0
  br i1 %cmp.i184.i, label %do.end.i185.i, label %otm8009a_dcs_write_buf.exit181.i.otm8009a_dcs_write_buf.exit186.i_crit_edge

otm8009a_dcs_write_buf.exit181.i.otm8009a_dcs_write_buf.exit186.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit181.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit186.i

do.end.i185.i:                                    ; preds = %otm8009a_dcs_write_buf.exit181.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit186.i

otm8009a_dcs_write_buf.exit186.i:                 ; preds = %do.end.i185.i, %otm8009a_dcs_write_buf.exit181.i.otm8009a_dcs_write_buf.exit186.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #5
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i187.i = getelementptr i8, ptr %65, i32 -8
  %call1.i188.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i187.i, ptr noundef nonnull @otm8009a_init_sequence.d.26, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i188.i)
  %cmp.i189.i = icmp slt i32 %call1.i188.i, 0
  br i1 %cmp.i189.i, label %do.end.i190.i, label %otm8009a_dcs_write_buf.exit186.i.otm8009a_dcs_write_buf.exit191.i_crit_edge

otm8009a_dcs_write_buf.exit186.i.otm8009a_dcs_write_buf.exit191.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit186.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit191.i

do.end.i190.i:                                    ; preds = %otm8009a_dcs_write_buf.exit186.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit191.i

otm8009a_dcs_write_buf.exit191.i:                 ; preds = %do.end.i190.i, %otm8009a_dcs_write_buf.exit186.i.otm8009a_dcs_write_buf.exit191.i_crit_edge
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i192.i = getelementptr i8, ptr %69, i32 -8
  %call1.i193.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i192.i, ptr noundef nonnull @otm8009a_init_sequence.d.27, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i193.i)
  %cmp.i194.i = icmp slt i32 %call1.i193.i, 0
  br i1 %cmp.i194.i, label %do.end.i195.i, label %otm8009a_dcs_write_buf.exit191.i.otm8009a_dcs_write_buf.exit196.i_crit_edge

otm8009a_dcs_write_buf.exit191.i.otm8009a_dcs_write_buf.exit196.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit191.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit196.i

do.end.i195.i:                                    ; preds = %otm8009a_dcs_write_buf.exit191.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit196.i

otm8009a_dcs_write_buf.exit196.i:                 ; preds = %do.end.i195.i, %otm8009a_dcs_write_buf.exit191.i.otm8009a_dcs_write_buf.exit196.i_crit_edge
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i197.i = getelementptr i8, ptr %73, i32 -8
  %call1.i198.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i197.i, ptr noundef nonnull @otm8009a_init_sequence.d.28, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i198.i)
  %cmp.i199.i = icmp slt i32 %call1.i198.i, 0
  br i1 %cmp.i199.i, label %do.end.i200.i, label %otm8009a_dcs_write_buf.exit196.i.otm8009a_dcs_write_buf.exit201.i_crit_edge

otm8009a_dcs_write_buf.exit196.i.otm8009a_dcs_write_buf.exit201.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit201.i

do.end.i200.i:                                    ; preds = %otm8009a_dcs_write_buf.exit196.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit201.i

otm8009a_dcs_write_buf.exit201.i:                 ; preds = %do.end.i200.i, %otm8009a_dcs_write_buf.exit196.i.otm8009a_dcs_write_buf.exit201.i_crit_edge
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i202.i = getelementptr i8, ptr %77, i32 -8
  %call1.i203.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i202.i, ptr noundef nonnull @otm8009a_init_sequence.d.29, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i203.i)
  %cmp.i204.i = icmp slt i32 %call1.i203.i, 0
  br i1 %cmp.i204.i, label %do.end.i205.i, label %otm8009a_dcs_write_buf.exit201.i.otm8009a_dcs_write_buf.exit206.i_crit_edge

otm8009a_dcs_write_buf.exit201.i.otm8009a_dcs_write_buf.exit206.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit201.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit206.i

do.end.i205.i:                                    ; preds = %otm8009a_dcs_write_buf.exit201.i
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit206.i

otm8009a_dcs_write_buf.exit206.i:                 ; preds = %do.end.i205.i, %otm8009a_dcs_write_buf.exit201.i.otm8009a_dcs_write_buf.exit206.i_crit_edge
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i207.i = getelementptr i8, ptr %81, i32 -8
  %call1.i208.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i207.i, ptr noundef nonnull @otm8009a_init_sequence.d.30, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208.i)
  %cmp.i209.i = icmp slt i32 %call1.i208.i, 0
  br i1 %cmp.i209.i, label %do.end.i210.i, label %otm8009a_dcs_write_buf.exit206.i.otm8009a_dcs_write_buf.exit211.i_crit_edge

otm8009a_dcs_write_buf.exit206.i.otm8009a_dcs_write_buf.exit211.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit206.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit211.i

do.end.i210.i:                                    ; preds = %otm8009a_dcs_write_buf.exit206.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit211.i

otm8009a_dcs_write_buf.exit211.i:                 ; preds = %do.end.i210.i, %otm8009a_dcs_write_buf.exit206.i.otm8009a_dcs_write_buf.exit211.i_crit_edge
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i212.i = getelementptr i8, ptr %85, i32 -8
  %call1.i213.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i212.i, ptr noundef nonnull @otm8009a_init_sequence.d.31, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i213.i)
  %cmp.i214.i = icmp slt i32 %call1.i213.i, 0
  br i1 %cmp.i214.i, label %do.end.i215.i, label %otm8009a_dcs_write_buf.exit211.i.otm8009a_dcs_write_buf.exit216.i_crit_edge

otm8009a_dcs_write_buf.exit211.i.otm8009a_dcs_write_buf.exit216.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit211.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit216.i

do.end.i215.i:                                    ; preds = %otm8009a_dcs_write_buf.exit211.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit216.i

otm8009a_dcs_write_buf.exit216.i:                 ; preds = %do.end.i215.i, %otm8009a_dcs_write_buf.exit211.i.otm8009a_dcs_write_buf.exit216.i_crit_edge
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i217.i = getelementptr i8, ptr %89, i32 -8
  %call1.i218.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i217.i, ptr noundef nonnull @otm8009a_init_sequence.d.32, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i218.i)
  %cmp.i219.i = icmp slt i32 %call1.i218.i, 0
  br i1 %cmp.i219.i, label %do.end.i220.i, label %otm8009a_dcs_write_buf.exit216.i.otm8009a_dcs_write_buf.exit221.i_crit_edge

otm8009a_dcs_write_buf.exit216.i.otm8009a_dcs_write_buf.exit221.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit216.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit221.i

do.end.i220.i:                                    ; preds = %otm8009a_dcs_write_buf.exit216.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit221.i

otm8009a_dcs_write_buf.exit221.i:                 ; preds = %do.end.i220.i, %otm8009a_dcs_write_buf.exit216.i.otm8009a_dcs_write_buf.exit221.i_crit_edge
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i222.i = getelementptr i8, ptr %93, i32 -8
  %call1.i223.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i222.i, ptr noundef nonnull @otm8009a_init_sequence.d.33, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i223.i)
  %cmp.i224.i = icmp slt i32 %call1.i223.i, 0
  br i1 %cmp.i224.i, label %do.end.i225.i, label %otm8009a_dcs_write_buf.exit221.i.otm8009a_dcs_write_buf.exit226.i_crit_edge

otm8009a_dcs_write_buf.exit221.i.otm8009a_dcs_write_buf.exit226.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit221.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit226.i

do.end.i225.i:                                    ; preds = %otm8009a_dcs_write_buf.exit221.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit226.i

otm8009a_dcs_write_buf.exit226.i:                 ; preds = %do.end.i225.i, %otm8009a_dcs_write_buf.exit221.i.otm8009a_dcs_write_buf.exit226.i_crit_edge
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i227.i = getelementptr i8, ptr %97, i32 -8
  %call1.i228.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i227.i, ptr noundef nonnull @otm8009a_init_sequence.d.34, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228.i)
  %cmp.i229.i = icmp slt i32 %call1.i228.i, 0
  br i1 %cmp.i229.i, label %do.end.i230.i, label %otm8009a_dcs_write_buf.exit226.i.otm8009a_dcs_write_buf.exit231.i_crit_edge

otm8009a_dcs_write_buf.exit226.i.otm8009a_dcs_write_buf.exit231.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit226.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit231.i

do.end.i230.i:                                    ; preds = %otm8009a_dcs_write_buf.exit226.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit231.i

otm8009a_dcs_write_buf.exit231.i:                 ; preds = %do.end.i230.i, %otm8009a_dcs_write_buf.exit226.i.otm8009a_dcs_write_buf.exit231.i_crit_edge
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i232.i = getelementptr i8, ptr %101, i32 -8
  %call1.i233.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i232.i, ptr noundef nonnull @otm8009a_init_sequence.d.35, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i233.i)
  %cmp.i234.i = icmp slt i32 %call1.i233.i, 0
  br i1 %cmp.i234.i, label %do.end.i235.i, label %otm8009a_dcs_write_buf.exit231.i.otm8009a_dcs_write_buf.exit236.i_crit_edge

otm8009a_dcs_write_buf.exit231.i.otm8009a_dcs_write_buf.exit236.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit231.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit236.i

do.end.i235.i:                                    ; preds = %otm8009a_dcs_write_buf.exit231.i
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit236.i

otm8009a_dcs_write_buf.exit236.i:                 ; preds = %do.end.i235.i, %otm8009a_dcs_write_buf.exit231.i.otm8009a_dcs_write_buf.exit236.i_crit_edge
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i237.i = getelementptr i8, ptr %105, i32 -8
  %call1.i238.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i237.i, ptr noundef nonnull @otm8009a_init_sequence.d.36, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i238.i)
  %cmp.i239.i = icmp slt i32 %call1.i238.i, 0
  br i1 %cmp.i239.i, label %do.end.i240.i, label %otm8009a_dcs_write_buf.exit236.i.otm8009a_dcs_write_buf.exit241.i_crit_edge

otm8009a_dcs_write_buf.exit236.i.otm8009a_dcs_write_buf.exit241.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit236.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit241.i

do.end.i240.i:                                    ; preds = %otm8009a_dcs_write_buf.exit236.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit241.i

otm8009a_dcs_write_buf.exit241.i:                 ; preds = %do.end.i240.i, %otm8009a_dcs_write_buf.exit236.i.otm8009a_dcs_write_buf.exit241.i_crit_edge
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i242.i = getelementptr i8, ptr %109, i32 -8
  %call1.i243.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i242.i, ptr noundef nonnull @otm8009a_init_sequence.d.37, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i243.i)
  %cmp.i244.i = icmp slt i32 %call1.i243.i, 0
  br i1 %cmp.i244.i, label %do.end.i245.i, label %otm8009a_dcs_write_buf.exit241.i.otm8009a_dcs_write_buf.exit246.i_crit_edge

otm8009a_dcs_write_buf.exit241.i.otm8009a_dcs_write_buf.exit246.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit241.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit246.i

do.end.i245.i:                                    ; preds = %otm8009a_dcs_write_buf.exit241.i
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit246.i

otm8009a_dcs_write_buf.exit246.i:                 ; preds = %do.end.i245.i, %otm8009a_dcs_write_buf.exit241.i.otm8009a_dcs_write_buf.exit246.i_crit_edge
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i247.i = getelementptr i8, ptr %113, i32 -8
  %call1.i248.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i247.i, ptr noundef nonnull @otm8009a_init_sequence.d.38, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i248.i)
  %cmp.i249.i = icmp slt i32 %call1.i248.i, 0
  br i1 %cmp.i249.i, label %do.end.i250.i, label %otm8009a_dcs_write_buf.exit246.i.otm8009a_dcs_write_buf.exit251.i_crit_edge

otm8009a_dcs_write_buf.exit246.i.otm8009a_dcs_write_buf.exit251.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit246.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit251.i

do.end.i250.i:                                    ; preds = %otm8009a_dcs_write_buf.exit246.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit251.i

otm8009a_dcs_write_buf.exit251.i:                 ; preds = %do.end.i250.i, %otm8009a_dcs_write_buf.exit246.i.otm8009a_dcs_write_buf.exit251.i_crit_edge
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i252.i = getelementptr i8, ptr %117, i32 -8
  %call1.i253.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i252.i, ptr noundef nonnull @otm8009a_init_sequence.d.39, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i253.i)
  %cmp.i254.i = icmp slt i32 %call1.i253.i, 0
  br i1 %cmp.i254.i, label %do.end.i255.i, label %otm8009a_dcs_write_buf.exit251.i.otm8009a_dcs_write_buf.exit256.i_crit_edge

otm8009a_dcs_write_buf.exit251.i.otm8009a_dcs_write_buf.exit256.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit251.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit256.i

do.end.i255.i:                                    ; preds = %otm8009a_dcs_write_buf.exit251.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit256.i

otm8009a_dcs_write_buf.exit256.i:                 ; preds = %do.end.i255.i, %otm8009a_dcs_write_buf.exit251.i.otm8009a_dcs_write_buf.exit256.i_crit_edge
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i257.i = getelementptr i8, ptr %121, i32 -8
  %call1.i258.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i257.i, ptr noundef nonnull @otm8009a_init_sequence.d.40, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i258.i)
  %cmp.i259.i = icmp slt i32 %call1.i258.i, 0
  br i1 %cmp.i259.i, label %do.end.i260.i, label %otm8009a_dcs_write_buf.exit256.i.otm8009a_dcs_write_buf.exit261.i_crit_edge

otm8009a_dcs_write_buf.exit256.i.otm8009a_dcs_write_buf.exit261.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit256.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit261.i

do.end.i260.i:                                    ; preds = %otm8009a_dcs_write_buf.exit256.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit261.i

otm8009a_dcs_write_buf.exit261.i:                 ; preds = %do.end.i260.i, %otm8009a_dcs_write_buf.exit256.i.otm8009a_dcs_write_buf.exit261.i_crit_edge
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i262.i = getelementptr i8, ptr %125, i32 -8
  %call1.i263.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i262.i, ptr noundef nonnull @otm8009a_init_sequence.d.41, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i263.i)
  %cmp.i264.i = icmp slt i32 %call1.i263.i, 0
  br i1 %cmp.i264.i, label %do.end.i265.i, label %otm8009a_dcs_write_buf.exit261.i.otm8009a_dcs_write_buf.exit266.i_crit_edge

otm8009a_dcs_write_buf.exit261.i.otm8009a_dcs_write_buf.exit266.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit261.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit266.i

do.end.i265.i:                                    ; preds = %otm8009a_dcs_write_buf.exit261.i
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit266.i

otm8009a_dcs_write_buf.exit266.i:                 ; preds = %do.end.i265.i, %otm8009a_dcs_write_buf.exit261.i.otm8009a_dcs_write_buf.exit266.i_crit_edge
  %128 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i267.i = getelementptr i8, ptr %129, i32 -8
  %call1.i268.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i267.i, ptr noundef nonnull @otm8009a_init_sequence.d.42, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i268.i)
  %cmp.i269.i = icmp slt i32 %call1.i268.i, 0
  br i1 %cmp.i269.i, label %do.end.i270.i, label %otm8009a_dcs_write_buf.exit266.i.otm8009a_dcs_write_buf.exit271.i_crit_edge

otm8009a_dcs_write_buf.exit266.i.otm8009a_dcs_write_buf.exit271.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit266.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit271.i

do.end.i270.i:                                    ; preds = %otm8009a_dcs_write_buf.exit266.i
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit271.i

otm8009a_dcs_write_buf.exit271.i:                 ; preds = %do.end.i270.i, %otm8009a_dcs_write_buf.exit266.i.otm8009a_dcs_write_buf.exit271.i_crit_edge
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i272.i = getelementptr i8, ptr %133, i32 -8
  %call1.i273.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i272.i, ptr noundef nonnull @otm8009a_init_sequence.d.43, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i273.i)
  %cmp.i274.i = icmp slt i32 %call1.i273.i, 0
  br i1 %cmp.i274.i, label %do.end.i275.i, label %otm8009a_dcs_write_buf.exit271.i.otm8009a_dcs_write_buf.exit276.i_crit_edge

otm8009a_dcs_write_buf.exit271.i.otm8009a_dcs_write_buf.exit276.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit271.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit276.i

do.end.i275.i:                                    ; preds = %otm8009a_dcs_write_buf.exit271.i
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %135, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit276.i

otm8009a_dcs_write_buf.exit276.i:                 ; preds = %do.end.i275.i, %otm8009a_dcs_write_buf.exit271.i.otm8009a_dcs_write_buf.exit276.i_crit_edge
  %136 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i277.i = getelementptr i8, ptr %137, i32 -8
  %call1.i278.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i277.i, ptr noundef nonnull @otm8009a_init_sequence.d.44, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i278.i)
  %cmp.i279.i = icmp slt i32 %call1.i278.i, 0
  br i1 %cmp.i279.i, label %do.end.i280.i, label %otm8009a_dcs_write_buf.exit276.i.otm8009a_dcs_write_buf.exit281.i_crit_edge

otm8009a_dcs_write_buf.exit276.i.otm8009a_dcs_write_buf.exit281.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit276.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit281.i

do.end.i280.i:                                    ; preds = %otm8009a_dcs_write_buf.exit276.i
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %139, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit281.i

otm8009a_dcs_write_buf.exit281.i:                 ; preds = %do.end.i280.i, %otm8009a_dcs_write_buf.exit276.i.otm8009a_dcs_write_buf.exit281.i_crit_edge
  %140 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i282.i = getelementptr i8, ptr %141, i32 -8
  %call1.i283.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i282.i, ptr noundef nonnull @otm8009a_init_sequence.d.45, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i283.i)
  %cmp.i284.i = icmp slt i32 %call1.i283.i, 0
  br i1 %cmp.i284.i, label %do.end.i285.i, label %otm8009a_dcs_write_buf.exit281.i.otm8009a_dcs_write_buf.exit286.i_crit_edge

otm8009a_dcs_write_buf.exit281.i.otm8009a_dcs_write_buf.exit286.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit281.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit286.i

do.end.i285.i:                                    ; preds = %otm8009a_dcs_write_buf.exit281.i
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit286.i

otm8009a_dcs_write_buf.exit286.i:                 ; preds = %do.end.i285.i, %otm8009a_dcs_write_buf.exit281.i.otm8009a_dcs_write_buf.exit286.i_crit_edge
  %144 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i287.i = getelementptr i8, ptr %145, i32 -8
  %call1.i288.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i287.i, ptr noundef nonnull @otm8009a_init_sequence.d.46, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i288.i)
  %cmp.i289.i = icmp slt i32 %call1.i288.i, 0
  br i1 %cmp.i289.i, label %do.end.i290.i, label %otm8009a_dcs_write_buf.exit286.i.otm8009a_dcs_write_buf.exit291.i_crit_edge

otm8009a_dcs_write_buf.exit286.i.otm8009a_dcs_write_buf.exit291.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit286.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit291.i

do.end.i290.i:                                    ; preds = %otm8009a_dcs_write_buf.exit286.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %147, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit291.i

otm8009a_dcs_write_buf.exit291.i:                 ; preds = %do.end.i290.i, %otm8009a_dcs_write_buf.exit286.i.otm8009a_dcs_write_buf.exit291.i_crit_edge
  %148 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i292.i = getelementptr i8, ptr %149, i32 -8
  %call1.i293.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i292.i, ptr noundef nonnull @otm8009a_init_sequence.d.47, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i293.i)
  %cmp.i294.i = icmp slt i32 %call1.i293.i, 0
  br i1 %cmp.i294.i, label %do.end.i295.i, label %otm8009a_dcs_write_buf.exit291.i.otm8009a_dcs_write_buf.exit296.i_crit_edge

otm8009a_dcs_write_buf.exit291.i.otm8009a_dcs_write_buf.exit296.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit291.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit296.i

do.end.i295.i:                                    ; preds = %otm8009a_dcs_write_buf.exit291.i
  call void @__sanitizer_cov_trace_pc() #7
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit296.i

otm8009a_dcs_write_buf.exit296.i:                 ; preds = %do.end.i295.i, %otm8009a_dcs_write_buf.exit291.i.otm8009a_dcs_write_buf.exit296.i_crit_edge
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i297.i = getelementptr i8, ptr %153, i32 -8
  %call1.i298.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i297.i, ptr noundef nonnull @otm8009a_init_sequence.d.48, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i298.i)
  %cmp.i299.i = icmp slt i32 %call1.i298.i, 0
  br i1 %cmp.i299.i, label %do.end.i300.i, label %otm8009a_dcs_write_buf.exit296.i.otm8009a_dcs_write_buf.exit301.i_crit_edge

otm8009a_dcs_write_buf.exit296.i.otm8009a_dcs_write_buf.exit301.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit296.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit301.i

do.end.i300.i:                                    ; preds = %otm8009a_dcs_write_buf.exit296.i
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %155, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit301.i

otm8009a_dcs_write_buf.exit301.i:                 ; preds = %do.end.i300.i, %otm8009a_dcs_write_buf.exit296.i.otm8009a_dcs_write_buf.exit301.i_crit_edge
  %156 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i302.i = getelementptr i8, ptr %157, i32 -8
  %call1.i303.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i302.i, ptr noundef nonnull @otm8009a_init_sequence.d.49, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i303.i)
  %cmp.i304.i = icmp slt i32 %call1.i303.i, 0
  br i1 %cmp.i304.i, label %do.end.i305.i, label %otm8009a_dcs_write_buf.exit301.i.otm8009a_dcs_write_buf.exit306.i_crit_edge

otm8009a_dcs_write_buf.exit301.i.otm8009a_dcs_write_buf.exit306.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit301.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit306.i

do.end.i305.i:                                    ; preds = %otm8009a_dcs_write_buf.exit301.i
  call void @__sanitizer_cov_trace_pc() #7
  %158 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %159, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit306.i

otm8009a_dcs_write_buf.exit306.i:                 ; preds = %do.end.i305.i, %otm8009a_dcs_write_buf.exit301.i.otm8009a_dcs_write_buf.exit306.i_crit_edge
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i307.i = getelementptr i8, ptr %161, i32 -8
  %call1.i308.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i307.i, ptr noundef nonnull @otm8009a_init_sequence.d.50, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i308.i)
  %cmp.i309.i = icmp slt i32 %call1.i308.i, 0
  br i1 %cmp.i309.i, label %do.end.i310.i, label %otm8009a_dcs_write_buf.exit306.i.otm8009a_dcs_write_buf.exit311.i_crit_edge

otm8009a_dcs_write_buf.exit306.i.otm8009a_dcs_write_buf.exit311.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit306.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit311.i

do.end.i310.i:                                    ; preds = %otm8009a_dcs_write_buf.exit306.i
  call void @__sanitizer_cov_trace_pc() #7
  %162 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %163, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit311.i

otm8009a_dcs_write_buf.exit311.i:                 ; preds = %do.end.i310.i, %otm8009a_dcs_write_buf.exit306.i.otm8009a_dcs_write_buf.exit311.i_crit_edge
  %164 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i312.i = getelementptr i8, ptr %165, i32 -8
  %call1.i313.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i312.i, ptr noundef nonnull @otm8009a_init_sequence.d.51, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i313.i)
  %cmp.i314.i = icmp slt i32 %call1.i313.i, 0
  br i1 %cmp.i314.i, label %do.end.i315.i, label %otm8009a_dcs_write_buf.exit311.i.otm8009a_dcs_write_buf.exit316.i_crit_edge

otm8009a_dcs_write_buf.exit311.i.otm8009a_dcs_write_buf.exit316.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit311.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit316.i

do.end.i315.i:                                    ; preds = %otm8009a_dcs_write_buf.exit311.i
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit316.i

otm8009a_dcs_write_buf.exit316.i:                 ; preds = %do.end.i315.i, %otm8009a_dcs_write_buf.exit311.i.otm8009a_dcs_write_buf.exit316.i_crit_edge
  %168 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i317.i = getelementptr i8, ptr %169, i32 -8
  %call1.i318.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i317.i, ptr noundef nonnull @otm8009a_init_sequence.d.52, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i318.i)
  %cmp.i319.i = icmp slt i32 %call1.i318.i, 0
  br i1 %cmp.i319.i, label %do.end.i320.i, label %otm8009a_dcs_write_buf.exit316.i.otm8009a_dcs_write_buf.exit321.i_crit_edge

otm8009a_dcs_write_buf.exit316.i.otm8009a_dcs_write_buf.exit321.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit316.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit321.i

do.end.i320.i:                                    ; preds = %otm8009a_dcs_write_buf.exit316.i
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %171, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit321.i

otm8009a_dcs_write_buf.exit321.i:                 ; preds = %do.end.i320.i, %otm8009a_dcs_write_buf.exit316.i.otm8009a_dcs_write_buf.exit321.i_crit_edge
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i322.i = getelementptr i8, ptr %173, i32 -8
  %call1.i323.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i322.i, ptr noundef nonnull @otm8009a_init_sequence.d.53, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i323.i)
  %cmp.i324.i = icmp slt i32 %call1.i323.i, 0
  br i1 %cmp.i324.i, label %do.end.i325.i, label %otm8009a_dcs_write_buf.exit321.i.otm8009a_dcs_write_buf.exit326.i_crit_edge

otm8009a_dcs_write_buf.exit321.i.otm8009a_dcs_write_buf.exit326.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit321.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit326.i

do.end.i325.i:                                    ; preds = %otm8009a_dcs_write_buf.exit321.i
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %175, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit326.i

otm8009a_dcs_write_buf.exit326.i:                 ; preds = %do.end.i325.i, %otm8009a_dcs_write_buf.exit321.i.otm8009a_dcs_write_buf.exit326.i_crit_edge
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i327.i = getelementptr i8, ptr %177, i32 -8
  %call1.i328.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i327.i, ptr noundef nonnull @otm8009a_init_sequence.d.54, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i328.i)
  %cmp.i329.i = icmp slt i32 %call1.i328.i, 0
  br i1 %cmp.i329.i, label %do.end.i330.i, label %otm8009a_dcs_write_buf.exit326.i.otm8009a_dcs_write_buf.exit331.i_crit_edge

otm8009a_dcs_write_buf.exit326.i.otm8009a_dcs_write_buf.exit331.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit326.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit331.i

do.end.i330.i:                                    ; preds = %otm8009a_dcs_write_buf.exit326.i
  call void @__sanitizer_cov_trace_pc() #7
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %179, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit331.i

otm8009a_dcs_write_buf.exit331.i:                 ; preds = %do.end.i330.i, %otm8009a_dcs_write_buf.exit326.i.otm8009a_dcs_write_buf.exit331.i_crit_edge
  %180 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i332.i = getelementptr i8, ptr %181, i32 -8
  %call1.i333.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i332.i, ptr noundef nonnull @otm8009a_init_sequence.d.55, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i333.i)
  %cmp.i334.i = icmp slt i32 %call1.i333.i, 0
  br i1 %cmp.i334.i, label %do.end.i335.i, label %otm8009a_dcs_write_buf.exit331.i.otm8009a_dcs_write_buf.exit336.i_crit_edge

otm8009a_dcs_write_buf.exit331.i.otm8009a_dcs_write_buf.exit336.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit331.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit336.i

do.end.i335.i:                                    ; preds = %otm8009a_dcs_write_buf.exit331.i
  call void @__sanitizer_cov_trace_pc() #7
  %182 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit336.i

otm8009a_dcs_write_buf.exit336.i:                 ; preds = %do.end.i335.i, %otm8009a_dcs_write_buf.exit331.i.otm8009a_dcs_write_buf.exit336.i_crit_edge
  %184 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i337.i = getelementptr i8, ptr %185, i32 -8
  %call1.i338.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i337.i, ptr noundef nonnull @otm8009a_init_sequence.d.56, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i338.i)
  %cmp.i339.i = icmp slt i32 %call1.i338.i, 0
  br i1 %cmp.i339.i, label %do.end.i340.i, label %otm8009a_dcs_write_buf.exit336.i.otm8009a_dcs_write_buf.exit341.i_crit_edge

otm8009a_dcs_write_buf.exit336.i.otm8009a_dcs_write_buf.exit341.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit336.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit341.i

do.end.i340.i:                                    ; preds = %otm8009a_dcs_write_buf.exit336.i
  call void @__sanitizer_cov_trace_pc() #7
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %187, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit341.i

otm8009a_dcs_write_buf.exit341.i:                 ; preds = %do.end.i340.i, %otm8009a_dcs_write_buf.exit336.i.otm8009a_dcs_write_buf.exit341.i_crit_edge
  %188 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i342.i = getelementptr i8, ptr %189, i32 -8
  %call1.i343.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i342.i, ptr noundef nonnull @otm8009a_init_sequence.d.57, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i343.i)
  %cmp.i344.i = icmp slt i32 %call1.i343.i, 0
  br i1 %cmp.i344.i, label %do.end.i345.i, label %otm8009a_dcs_write_buf.exit341.i.otm8009a_dcs_write_buf.exit346.i_crit_edge

otm8009a_dcs_write_buf.exit341.i.otm8009a_dcs_write_buf.exit346.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit341.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit346.i

do.end.i345.i:                                    ; preds = %otm8009a_dcs_write_buf.exit341.i
  call void @__sanitizer_cov_trace_pc() #7
  %190 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit346.i

otm8009a_dcs_write_buf.exit346.i:                 ; preds = %do.end.i345.i, %otm8009a_dcs_write_buf.exit341.i.otm8009a_dcs_write_buf.exit346.i_crit_edge
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i347.i = getelementptr i8, ptr %193, i32 -8
  %call1.i348.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i347.i, ptr noundef nonnull @otm8009a_init_sequence.d.58, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i348.i)
  %cmp.i349.i = icmp slt i32 %call1.i348.i, 0
  br i1 %cmp.i349.i, label %do.end.i350.i, label %otm8009a_dcs_write_buf.exit346.i.otm8009a_dcs_write_buf.exit351.i_crit_edge

otm8009a_dcs_write_buf.exit346.i.otm8009a_dcs_write_buf.exit351.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit346.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit351.i

do.end.i350.i:                                    ; preds = %otm8009a_dcs_write_buf.exit346.i
  call void @__sanitizer_cov_trace_pc() #7
  %194 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %195, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit351.i

otm8009a_dcs_write_buf.exit351.i:                 ; preds = %do.end.i350.i, %otm8009a_dcs_write_buf.exit346.i.otm8009a_dcs_write_buf.exit351.i_crit_edge
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i352.i = getelementptr i8, ptr %197, i32 -8
  %call1.i353.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i352.i, ptr noundef nonnull @otm8009a_init_sequence.d.59, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i353.i)
  %cmp.i354.i = icmp slt i32 %call1.i353.i, 0
  br i1 %cmp.i354.i, label %do.end.i355.i, label %otm8009a_dcs_write_buf.exit351.i.otm8009a_dcs_write_buf.exit356.i_crit_edge

otm8009a_dcs_write_buf.exit351.i.otm8009a_dcs_write_buf.exit356.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit351.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit356.i

do.end.i355.i:                                    ; preds = %otm8009a_dcs_write_buf.exit351.i
  call void @__sanitizer_cov_trace_pc() #7
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %199, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit356.i

otm8009a_dcs_write_buf.exit356.i:                 ; preds = %do.end.i355.i, %otm8009a_dcs_write_buf.exit351.i.otm8009a_dcs_write_buf.exit356.i_crit_edge
  %200 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i357.i = getelementptr i8, ptr %201, i32 -8
  %call1.i358.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i357.i, ptr noundef nonnull @otm8009a_init_sequence.d.60, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i358.i)
  %cmp.i359.i = icmp slt i32 %call1.i358.i, 0
  br i1 %cmp.i359.i, label %do.end.i360.i, label %otm8009a_dcs_write_buf.exit356.i.otm8009a_dcs_write_buf.exit361.i_crit_edge

otm8009a_dcs_write_buf.exit356.i.otm8009a_dcs_write_buf.exit361.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit356.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit361.i

do.end.i360.i:                                    ; preds = %otm8009a_dcs_write_buf.exit356.i
  call void @__sanitizer_cov_trace_pc() #7
  %202 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %203, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit361.i

otm8009a_dcs_write_buf.exit361.i:                 ; preds = %do.end.i360.i, %otm8009a_dcs_write_buf.exit356.i.otm8009a_dcs_write_buf.exit361.i_crit_edge
  %204 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i362.i = getelementptr i8, ptr %205, i32 -8
  %call1.i363.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i362.i, ptr noundef nonnull @otm8009a_init_sequence.d.61, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i363.i)
  %cmp.i364.i = icmp slt i32 %call1.i363.i, 0
  br i1 %cmp.i364.i, label %do.end.i365.i, label %otm8009a_dcs_write_buf.exit361.i.otm8009a_dcs_write_buf.exit366.i_crit_edge

otm8009a_dcs_write_buf.exit361.i.otm8009a_dcs_write_buf.exit366.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit361.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit366.i

do.end.i365.i:                                    ; preds = %otm8009a_dcs_write_buf.exit361.i
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %207, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit366.i

otm8009a_dcs_write_buf.exit366.i:                 ; preds = %do.end.i365.i, %otm8009a_dcs_write_buf.exit361.i.otm8009a_dcs_write_buf.exit366.i_crit_edge
  %208 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i367.i = getelementptr i8, ptr %209, i32 -8
  %call1.i368.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i367.i, ptr noundef nonnull @otm8009a_init_sequence.d.62, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i368.i)
  %cmp.i369.i = icmp slt i32 %call1.i368.i, 0
  br i1 %cmp.i369.i, label %do.end.i370.i, label %otm8009a_dcs_write_buf.exit366.i.otm8009a_dcs_write_buf.exit371.i_crit_edge

otm8009a_dcs_write_buf.exit366.i.otm8009a_dcs_write_buf.exit371.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit366.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit371.i

do.end.i370.i:                                    ; preds = %otm8009a_dcs_write_buf.exit366.i
  call void @__sanitizer_cov_trace_pc() #7
  %210 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %211, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit371.i

otm8009a_dcs_write_buf.exit371.i:                 ; preds = %do.end.i370.i, %otm8009a_dcs_write_buf.exit366.i.otm8009a_dcs_write_buf.exit371.i_crit_edge
  %212 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i372.i = getelementptr i8, ptr %213, i32 -8
  %call1.i373.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i372.i, ptr noundef nonnull @otm8009a_init_sequence.d.63, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i373.i)
  %cmp.i374.i = icmp slt i32 %call1.i373.i, 0
  br i1 %cmp.i374.i, label %do.end.i375.i, label %otm8009a_dcs_write_buf.exit371.i.otm8009a_dcs_write_buf.exit376.i_crit_edge

otm8009a_dcs_write_buf.exit371.i.otm8009a_dcs_write_buf.exit376.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit371.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit376.i

do.end.i375.i:                                    ; preds = %otm8009a_dcs_write_buf.exit371.i
  call void @__sanitizer_cov_trace_pc() #7
  %214 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %215, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit376.i

otm8009a_dcs_write_buf.exit376.i:                 ; preds = %do.end.i375.i, %otm8009a_dcs_write_buf.exit371.i.otm8009a_dcs_write_buf.exit376.i_crit_edge
  %216 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i377.i = getelementptr i8, ptr %217, i32 -8
  %call1.i378.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i377.i, ptr noundef nonnull @otm8009a_init_sequence.d.64, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i378.i)
  %cmp.i379.i = icmp slt i32 %call1.i378.i, 0
  br i1 %cmp.i379.i, label %do.end.i380.i, label %otm8009a_dcs_write_buf.exit376.i.otm8009a_dcs_write_buf.exit381.i_crit_edge

otm8009a_dcs_write_buf.exit376.i.otm8009a_dcs_write_buf.exit381.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit376.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit381.i

do.end.i380.i:                                    ; preds = %otm8009a_dcs_write_buf.exit376.i
  call void @__sanitizer_cov_trace_pc() #7
  %218 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %219, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit381.i

otm8009a_dcs_write_buf.exit381.i:                 ; preds = %do.end.i380.i, %otm8009a_dcs_write_buf.exit376.i.otm8009a_dcs_write_buf.exit381.i_crit_edge
  %220 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i382.i = getelementptr i8, ptr %221, i32 -8
  %call1.i383.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i382.i, ptr noundef nonnull @otm8009a_init_sequence.d.65, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i383.i)
  %cmp.i384.i = icmp slt i32 %call1.i383.i, 0
  br i1 %cmp.i384.i, label %do.end.i385.i, label %otm8009a_dcs_write_buf.exit381.i.otm8009a_dcs_write_buf.exit386.i_crit_edge

otm8009a_dcs_write_buf.exit381.i.otm8009a_dcs_write_buf.exit386.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit381.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit386.i

do.end.i385.i:                                    ; preds = %otm8009a_dcs_write_buf.exit381.i
  call void @__sanitizer_cov_trace_pc() #7
  %222 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %223, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit386.i

otm8009a_dcs_write_buf.exit386.i:                 ; preds = %do.end.i385.i, %otm8009a_dcs_write_buf.exit381.i.otm8009a_dcs_write_buf.exit386.i_crit_edge
  %224 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i387.i = getelementptr i8, ptr %225, i32 -8
  %call1.i388.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i387.i, ptr noundef nonnull @otm8009a_init_sequence.d.66, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i388.i)
  %cmp.i389.i = icmp slt i32 %call1.i388.i, 0
  br i1 %cmp.i389.i, label %do.end.i390.i, label %otm8009a_dcs_write_buf.exit386.i.otm8009a_dcs_write_buf.exit391.i_crit_edge

otm8009a_dcs_write_buf.exit386.i.otm8009a_dcs_write_buf.exit391.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit386.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit391.i

do.end.i390.i:                                    ; preds = %otm8009a_dcs_write_buf.exit386.i
  call void @__sanitizer_cov_trace_pc() #7
  %226 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %227, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit391.i

otm8009a_dcs_write_buf.exit391.i:                 ; preds = %do.end.i390.i, %otm8009a_dcs_write_buf.exit386.i.otm8009a_dcs_write_buf.exit391.i_crit_edge
  %228 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i392.i = getelementptr i8, ptr %229, i32 -8
  %call1.i393.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i392.i, ptr noundef nonnull @otm8009a_init_sequence.d.67, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i393.i)
  %cmp.i394.i = icmp slt i32 %call1.i393.i, 0
  br i1 %cmp.i394.i, label %do.end.i395.i, label %otm8009a_dcs_write_buf.exit391.i.otm8009a_dcs_write_buf.exit396.i_crit_edge

otm8009a_dcs_write_buf.exit391.i.otm8009a_dcs_write_buf.exit396.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit391.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit396.i

do.end.i395.i:                                    ; preds = %otm8009a_dcs_write_buf.exit391.i
  call void @__sanitizer_cov_trace_pc() #7
  %230 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %231, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit396.i

otm8009a_dcs_write_buf.exit396.i:                 ; preds = %do.end.i395.i, %otm8009a_dcs_write_buf.exit391.i.otm8009a_dcs_write_buf.exit396.i_crit_edge
  %232 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i397.i = getelementptr i8, ptr %233, i32 -8
  %call1.i398.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i397.i, ptr noundef nonnull @otm8009a_init_sequence.d.68, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i398.i)
  %cmp.i399.i = icmp slt i32 %call1.i398.i, 0
  br i1 %cmp.i399.i, label %do.end.i400.i, label %otm8009a_dcs_write_buf.exit396.i.otm8009a_dcs_write_buf.exit401.i_crit_edge

otm8009a_dcs_write_buf.exit396.i.otm8009a_dcs_write_buf.exit401.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit396.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit401.i

do.end.i400.i:                                    ; preds = %otm8009a_dcs_write_buf.exit396.i
  call void @__sanitizer_cov_trace_pc() #7
  %234 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %235, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit401.i

otm8009a_dcs_write_buf.exit401.i:                 ; preds = %do.end.i400.i, %otm8009a_dcs_write_buf.exit396.i.otm8009a_dcs_write_buf.exit401.i_crit_edge
  %236 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i402.i = getelementptr i8, ptr %237, i32 -8
  %call1.i403.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i402.i, ptr noundef nonnull @otm8009a_init_sequence.d.69, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i403.i)
  %cmp.i404.i = icmp slt i32 %call1.i403.i, 0
  br i1 %cmp.i404.i, label %do.end.i405.i, label %otm8009a_dcs_write_buf.exit401.i.otm8009a_dcs_write_buf.exit406.i_crit_edge

otm8009a_dcs_write_buf.exit401.i.otm8009a_dcs_write_buf.exit406.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit401.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit406.i

do.end.i405.i:                                    ; preds = %otm8009a_dcs_write_buf.exit401.i
  call void @__sanitizer_cov_trace_pc() #7
  %238 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %239, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit406.i

otm8009a_dcs_write_buf.exit406.i:                 ; preds = %do.end.i405.i, %otm8009a_dcs_write_buf.exit401.i.otm8009a_dcs_write_buf.exit406.i_crit_edge
  %240 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i407.i = getelementptr i8, ptr %241, i32 -8
  %call1.i408.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i407.i, ptr noundef nonnull @otm8009a_init_sequence.d.70, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i408.i)
  %cmp.i409.i = icmp slt i32 %call1.i408.i, 0
  br i1 %cmp.i409.i, label %do.end.i410.i, label %otm8009a_dcs_write_buf.exit406.i.otm8009a_dcs_write_buf.exit411.i_crit_edge

otm8009a_dcs_write_buf.exit406.i.otm8009a_dcs_write_buf.exit411.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit406.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit411.i

do.end.i410.i:                                    ; preds = %otm8009a_dcs_write_buf.exit406.i
  call void @__sanitizer_cov_trace_pc() #7
  %242 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %243, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit411.i

otm8009a_dcs_write_buf.exit411.i:                 ; preds = %do.end.i410.i, %otm8009a_dcs_write_buf.exit406.i.otm8009a_dcs_write_buf.exit411.i_crit_edge
  %244 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i412.i = getelementptr i8, ptr %245, i32 -8
  %call1.i413.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i412.i, ptr noundef nonnull @otm8009a_init_sequence.d.71, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i413.i)
  %cmp.i414.i = icmp slt i32 %call1.i413.i, 0
  br i1 %cmp.i414.i, label %do.end.i415.i, label %otm8009a_dcs_write_buf.exit411.i.otm8009a_dcs_write_buf.exit416.i_crit_edge

otm8009a_dcs_write_buf.exit411.i.otm8009a_dcs_write_buf.exit416.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit411.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit416.i

do.end.i415.i:                                    ; preds = %otm8009a_dcs_write_buf.exit411.i
  call void @__sanitizer_cov_trace_pc() #7
  %246 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %247, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit416.i

otm8009a_dcs_write_buf.exit416.i:                 ; preds = %do.end.i415.i, %otm8009a_dcs_write_buf.exit411.i.otm8009a_dcs_write_buf.exit416.i_crit_edge
  %248 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i417.i = getelementptr i8, ptr %249, i32 -8
  %call1.i418.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i417.i, ptr noundef nonnull @otm8009a_init_sequence.d.72, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i418.i)
  %cmp.i419.i = icmp slt i32 %call1.i418.i, 0
  br i1 %cmp.i419.i, label %do.end.i420.i, label %otm8009a_dcs_write_buf.exit416.i.otm8009a_dcs_write_buf.exit421.i_crit_edge

otm8009a_dcs_write_buf.exit416.i.otm8009a_dcs_write_buf.exit421.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit416.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit421.i

do.end.i420.i:                                    ; preds = %otm8009a_dcs_write_buf.exit416.i
  call void @__sanitizer_cov_trace_pc() #7
  %250 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %251, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit421.i

otm8009a_dcs_write_buf.exit421.i:                 ; preds = %do.end.i420.i, %otm8009a_dcs_write_buf.exit416.i.otm8009a_dcs_write_buf.exit421.i_crit_edge
  %252 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i422.i = getelementptr i8, ptr %253, i32 -8
  %call1.i423.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i422.i, ptr noundef nonnull @otm8009a_init_sequence.d.73, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i423.i)
  %cmp.i424.i = icmp slt i32 %call1.i423.i, 0
  br i1 %cmp.i424.i, label %do.end.i425.i, label %otm8009a_dcs_write_buf.exit421.i.otm8009a_dcs_write_buf.exit426.i_crit_edge

otm8009a_dcs_write_buf.exit421.i.otm8009a_dcs_write_buf.exit426.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit421.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit426.i

do.end.i425.i:                                    ; preds = %otm8009a_dcs_write_buf.exit421.i
  call void @__sanitizer_cov_trace_pc() #7
  %254 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %255, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit426.i

otm8009a_dcs_write_buf.exit426.i:                 ; preds = %do.end.i425.i, %otm8009a_dcs_write_buf.exit421.i.otm8009a_dcs_write_buf.exit426.i_crit_edge
  %256 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i427.i = getelementptr i8, ptr %257, i32 -8
  %call1.i428.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i427.i, ptr noundef nonnull @otm8009a_init_sequence.d.74, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i428.i)
  %cmp.i429.i = icmp slt i32 %call1.i428.i, 0
  br i1 %cmp.i429.i, label %do.end.i430.i, label %otm8009a_dcs_write_buf.exit426.i.otm8009a_dcs_write_buf.exit431.i_crit_edge

otm8009a_dcs_write_buf.exit426.i.otm8009a_dcs_write_buf.exit431.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit426.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit431.i

do.end.i430.i:                                    ; preds = %otm8009a_dcs_write_buf.exit426.i
  call void @__sanitizer_cov_trace_pc() #7
  %258 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %259, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit431.i

otm8009a_dcs_write_buf.exit431.i:                 ; preds = %do.end.i430.i, %otm8009a_dcs_write_buf.exit426.i.otm8009a_dcs_write_buf.exit431.i_crit_edge
  %260 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i432.i = getelementptr i8, ptr %261, i32 -8
  %call1.i433.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i432.i, ptr noundef nonnull @otm8009a_init_sequence.d.75, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i433.i)
  %cmp.i434.i = icmp slt i32 %call1.i433.i, 0
  br i1 %cmp.i434.i, label %do.end.i435.i, label %otm8009a_dcs_write_buf.exit431.i.otm8009a_dcs_write_buf.exit436.i_crit_edge

otm8009a_dcs_write_buf.exit431.i.otm8009a_dcs_write_buf.exit436.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit431.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit436.i

do.end.i435.i:                                    ; preds = %otm8009a_dcs_write_buf.exit431.i
  call void @__sanitizer_cov_trace_pc() #7
  %262 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %263, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit436.i

otm8009a_dcs_write_buf.exit436.i:                 ; preds = %do.end.i435.i, %otm8009a_dcs_write_buf.exit431.i.otm8009a_dcs_write_buf.exit436.i_crit_edge
  %264 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i437.i = getelementptr i8, ptr %265, i32 -8
  %call1.i438.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i437.i, ptr noundef nonnull @otm8009a_init_sequence.d.76, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i438.i)
  %cmp.i439.i = icmp slt i32 %call1.i438.i, 0
  br i1 %cmp.i439.i, label %do.end.i440.i, label %otm8009a_dcs_write_buf.exit436.i.otm8009a_dcs_write_buf.exit441.i_crit_edge

otm8009a_dcs_write_buf.exit436.i.otm8009a_dcs_write_buf.exit441.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit436.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit441.i

do.end.i440.i:                                    ; preds = %otm8009a_dcs_write_buf.exit436.i
  call void @__sanitizer_cov_trace_pc() #7
  %266 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %267, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit441.i

otm8009a_dcs_write_buf.exit441.i:                 ; preds = %do.end.i440.i, %otm8009a_dcs_write_buf.exit436.i.otm8009a_dcs_write_buf.exit441.i_crit_edge
  %268 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i442.i = getelementptr i8, ptr %269, i32 -8
  %call1.i443.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i442.i, ptr noundef nonnull @otm8009a_init_sequence.d.77, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i443.i)
  %cmp.i444.i = icmp slt i32 %call1.i443.i, 0
  br i1 %cmp.i444.i, label %do.end.i445.i, label %otm8009a_dcs_write_buf.exit441.i.otm8009a_dcs_write_buf.exit446.i_crit_edge

otm8009a_dcs_write_buf.exit441.i.otm8009a_dcs_write_buf.exit446.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit441.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit446.i

do.end.i445.i:                                    ; preds = %otm8009a_dcs_write_buf.exit441.i
  call void @__sanitizer_cov_trace_pc() #7
  %270 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %271, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit446.i

otm8009a_dcs_write_buf.exit446.i:                 ; preds = %do.end.i445.i, %otm8009a_dcs_write_buf.exit441.i.otm8009a_dcs_write_buf.exit446.i_crit_edge
  %272 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i447.i = getelementptr i8, ptr %273, i32 -8
  %call1.i448.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i447.i, ptr noundef nonnull @otm8009a_init_sequence.d.78, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i448.i)
  %cmp.i449.i = icmp slt i32 %call1.i448.i, 0
  br i1 %cmp.i449.i, label %do.end.i450.i, label %otm8009a_dcs_write_buf.exit446.i.otm8009a_dcs_write_buf.exit451.i_crit_edge

otm8009a_dcs_write_buf.exit446.i.otm8009a_dcs_write_buf.exit451.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit446.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit451.i

do.end.i450.i:                                    ; preds = %otm8009a_dcs_write_buf.exit446.i
  call void @__sanitizer_cov_trace_pc() #7
  %274 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %275, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit451.i

otm8009a_dcs_write_buf.exit451.i:                 ; preds = %do.end.i450.i, %otm8009a_dcs_write_buf.exit446.i.otm8009a_dcs_write_buf.exit451.i_crit_edge
  %276 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i452.i = getelementptr i8, ptr %277, i32 -8
  %call1.i453.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i452.i, ptr noundef nonnull @otm8009a_init_sequence.d.79, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i453.i)
  %cmp.i454.i = icmp slt i32 %call1.i453.i, 0
  br i1 %cmp.i454.i, label %do.end.i455.i, label %otm8009a_dcs_write_buf.exit451.i.otm8009a_dcs_write_buf.exit456.i_crit_edge

otm8009a_dcs_write_buf.exit451.i.otm8009a_dcs_write_buf.exit456.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit451.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit456.i

do.end.i455.i:                                    ; preds = %otm8009a_dcs_write_buf.exit451.i
  call void @__sanitizer_cov_trace_pc() #7
  %278 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %279, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit456.i

otm8009a_dcs_write_buf.exit456.i:                 ; preds = %do.end.i455.i, %otm8009a_dcs_write_buf.exit451.i.otm8009a_dcs_write_buf.exit456.i_crit_edge
  %280 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i457.i = getelementptr i8, ptr %281, i32 -8
  %call1.i458.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i457.i, ptr noundef nonnull @otm8009a_init_sequence.d.80, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i458.i)
  %cmp.i459.i = icmp slt i32 %call1.i458.i, 0
  br i1 %cmp.i459.i, label %do.end.i460.i, label %otm8009a_dcs_write_buf.exit456.i.otm8009a_dcs_write_buf.exit461.i_crit_edge

otm8009a_dcs_write_buf.exit456.i.otm8009a_dcs_write_buf.exit461.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit456.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit461.i

do.end.i460.i:                                    ; preds = %otm8009a_dcs_write_buf.exit456.i
  call void @__sanitizer_cov_trace_pc() #7
  %282 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %283, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit461.i

otm8009a_dcs_write_buf.exit461.i:                 ; preds = %do.end.i460.i, %otm8009a_dcs_write_buf.exit456.i.otm8009a_dcs_write_buf.exit461.i_crit_edge
  %284 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i462.i = getelementptr i8, ptr %285, i32 -8
  %call1.i463.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i462.i, ptr noundef nonnull @otm8009a_init_sequence.d.81, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i463.i)
  %cmp.i464.i = icmp slt i32 %call1.i463.i, 0
  br i1 %cmp.i464.i, label %do.end.i465.i, label %otm8009a_dcs_write_buf.exit461.i.otm8009a_dcs_write_buf.exit466.i_crit_edge

otm8009a_dcs_write_buf.exit461.i.otm8009a_dcs_write_buf.exit466.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit461.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit466.i

do.end.i465.i:                                    ; preds = %otm8009a_dcs_write_buf.exit461.i
  call void @__sanitizer_cov_trace_pc() #7
  %286 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %287, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit466.i

otm8009a_dcs_write_buf.exit466.i:                 ; preds = %do.end.i465.i, %otm8009a_dcs_write_buf.exit461.i.otm8009a_dcs_write_buf.exit466.i_crit_edge
  %288 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i467.i = getelementptr i8, ptr %289, i32 -8
  %call1.i468.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i467.i, ptr noundef nonnull @otm8009a_init_sequence.d.82, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i468.i)
  %cmp.i469.i = icmp slt i32 %call1.i468.i, 0
  br i1 %cmp.i469.i, label %do.end.i470.i, label %otm8009a_dcs_write_buf.exit466.i.otm8009a_dcs_write_buf.exit471.i_crit_edge

otm8009a_dcs_write_buf.exit466.i.otm8009a_dcs_write_buf.exit471.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit466.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit471.i

do.end.i470.i:                                    ; preds = %otm8009a_dcs_write_buf.exit466.i
  call void @__sanitizer_cov_trace_pc() #7
  %290 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %291, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit471.i

otm8009a_dcs_write_buf.exit471.i:                 ; preds = %do.end.i470.i, %otm8009a_dcs_write_buf.exit466.i.otm8009a_dcs_write_buf.exit471.i_crit_edge
  %292 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i472.i = getelementptr i8, ptr %293, i32 -8
  %call1.i473.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i472.i, ptr noundef nonnull @otm8009a_init_sequence.d.83, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i473.i)
  %cmp.i474.i = icmp slt i32 %call1.i473.i, 0
  br i1 %cmp.i474.i, label %do.end.i475.i, label %otm8009a_dcs_write_buf.exit471.i.otm8009a_dcs_write_buf.exit476.i_crit_edge

otm8009a_dcs_write_buf.exit471.i.otm8009a_dcs_write_buf.exit476.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit471.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit476.i

do.end.i475.i:                                    ; preds = %otm8009a_dcs_write_buf.exit471.i
  call void @__sanitizer_cov_trace_pc() #7
  %294 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %295, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit476.i

otm8009a_dcs_write_buf.exit476.i:                 ; preds = %do.end.i475.i, %otm8009a_dcs_write_buf.exit471.i.otm8009a_dcs_write_buf.exit476.i_crit_edge
  %296 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i477.i = getelementptr i8, ptr %297, i32 -8
  %call1.i478.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i477.i, ptr noundef nonnull @otm8009a_init_sequence.d.84, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i478.i)
  %cmp.i479.i = icmp slt i32 %call1.i478.i, 0
  br i1 %cmp.i479.i, label %do.end.i480.i, label %otm8009a_dcs_write_buf.exit476.i.otm8009a_dcs_write_buf.exit481.i_crit_edge

otm8009a_dcs_write_buf.exit476.i.otm8009a_dcs_write_buf.exit481.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit476.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit481.i

do.end.i480.i:                                    ; preds = %otm8009a_dcs_write_buf.exit476.i
  call void @__sanitizer_cov_trace_pc() #7
  %298 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %299, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit481.i

otm8009a_dcs_write_buf.exit481.i:                 ; preds = %do.end.i480.i, %otm8009a_dcs_write_buf.exit476.i.otm8009a_dcs_write_buf.exit481.i_crit_edge
  %300 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i482.i = getelementptr i8, ptr %301, i32 -8
  %call1.i483.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i482.i, ptr noundef nonnull @otm8009a_init_sequence.d.85, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i483.i)
  %cmp.i484.i = icmp slt i32 %call1.i483.i, 0
  br i1 %cmp.i484.i, label %do.end.i485.i, label %otm8009a_dcs_write_buf.exit481.i.otm8009a_dcs_write_buf.exit486.i_crit_edge

otm8009a_dcs_write_buf.exit481.i.otm8009a_dcs_write_buf.exit486.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit481.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit486.i

do.end.i485.i:                                    ; preds = %otm8009a_dcs_write_buf.exit481.i
  call void @__sanitizer_cov_trace_pc() #7
  %302 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %303, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit486.i

otm8009a_dcs_write_buf.exit486.i:                 ; preds = %do.end.i485.i, %otm8009a_dcs_write_buf.exit481.i.otm8009a_dcs_write_buf.exit486.i_crit_edge
  %304 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i487.i = getelementptr i8, ptr %305, i32 -8
  %call1.i488.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i487.i, ptr noundef nonnull @otm8009a_init_sequence.d.86, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i488.i)
  %cmp.i489.i = icmp slt i32 %call1.i488.i, 0
  br i1 %cmp.i489.i, label %do.end.i490.i, label %otm8009a_dcs_write_buf.exit486.i.otm8009a_dcs_write_buf.exit491.i_crit_edge

otm8009a_dcs_write_buf.exit486.i.otm8009a_dcs_write_buf.exit491.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit486.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit491.i

do.end.i490.i:                                    ; preds = %otm8009a_dcs_write_buf.exit486.i
  call void @__sanitizer_cov_trace_pc() #7
  %306 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %307, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit491.i

otm8009a_dcs_write_buf.exit491.i:                 ; preds = %do.end.i490.i, %otm8009a_dcs_write_buf.exit486.i.otm8009a_dcs_write_buf.exit491.i_crit_edge
  %308 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i492.i = getelementptr i8, ptr %309, i32 -8
  %call1.i493.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i492.i, ptr noundef nonnull @otm8009a_init_sequence.d.87, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i493.i)
  %cmp.i494.i = icmp slt i32 %call1.i493.i, 0
  br i1 %cmp.i494.i, label %do.end.i495.i, label %otm8009a_dcs_write_buf.exit491.i.otm8009a_dcs_write_buf.exit496.i_crit_edge

otm8009a_dcs_write_buf.exit491.i.otm8009a_dcs_write_buf.exit496.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit491.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit496.i

do.end.i495.i:                                    ; preds = %otm8009a_dcs_write_buf.exit491.i
  call void @__sanitizer_cov_trace_pc() #7
  %310 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %311, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit496.i

otm8009a_dcs_write_buf.exit496.i:                 ; preds = %do.end.i495.i, %otm8009a_dcs_write_buf.exit491.i.otm8009a_dcs_write_buf.exit496.i_crit_edge
  %312 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i497.i = getelementptr i8, ptr %313, i32 -8
  %call1.i498.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i497.i, ptr noundef nonnull @otm8009a_init_sequence.d.88, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i498.i)
  %cmp.i499.i = icmp slt i32 %call1.i498.i, 0
  br i1 %cmp.i499.i, label %do.end.i500.i, label %otm8009a_dcs_write_buf.exit496.i.otm8009a_dcs_write_buf.exit501.i_crit_edge

otm8009a_dcs_write_buf.exit496.i.otm8009a_dcs_write_buf.exit501.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit496.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit501.i

do.end.i500.i:                                    ; preds = %otm8009a_dcs_write_buf.exit496.i
  call void @__sanitizer_cov_trace_pc() #7
  %314 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %315, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit501.i

otm8009a_dcs_write_buf.exit501.i:                 ; preds = %do.end.i500.i, %otm8009a_dcs_write_buf.exit496.i.otm8009a_dcs_write_buf.exit501.i_crit_edge
  %316 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i502.i = getelementptr i8, ptr %317, i32 -8
  %call1.i503.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i502.i, ptr noundef nonnull @otm8009a_init_sequence.d.89, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i503.i)
  %cmp.i504.i = icmp slt i32 %call1.i503.i, 0
  br i1 %cmp.i504.i, label %do.end.i505.i, label %otm8009a_dcs_write_buf.exit501.i.otm8009a_dcs_write_buf.exit506.i_crit_edge

otm8009a_dcs_write_buf.exit501.i.otm8009a_dcs_write_buf.exit506.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit501.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit506.i

do.end.i505.i:                                    ; preds = %otm8009a_dcs_write_buf.exit501.i
  call void @__sanitizer_cov_trace_pc() #7
  %318 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %319, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit506.i

otm8009a_dcs_write_buf.exit506.i:                 ; preds = %do.end.i505.i, %otm8009a_dcs_write_buf.exit501.i.otm8009a_dcs_write_buf.exit506.i_crit_edge
  %320 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i507.i = getelementptr i8, ptr %321, i32 -8
  %call1.i508.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i507.i, ptr noundef nonnull @otm8009a_init_sequence.d.90, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i508.i)
  %cmp.i509.i = icmp slt i32 %call1.i508.i, 0
  br i1 %cmp.i509.i, label %do.end.i510.i, label %otm8009a_dcs_write_buf.exit506.i.otm8009a_dcs_write_buf.exit511.i_crit_edge

otm8009a_dcs_write_buf.exit506.i.otm8009a_dcs_write_buf.exit511.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit506.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit511.i

do.end.i510.i:                                    ; preds = %otm8009a_dcs_write_buf.exit506.i
  call void @__sanitizer_cov_trace_pc() #7
  %322 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %323, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit511.i

otm8009a_dcs_write_buf.exit511.i:                 ; preds = %do.end.i510.i, %otm8009a_dcs_write_buf.exit506.i.otm8009a_dcs_write_buf.exit511.i_crit_edge
  %324 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i512.i = getelementptr i8, ptr %325, i32 -8
  %call1.i513.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i512.i, ptr noundef nonnull @otm8009a_init_sequence.d.91, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i513.i)
  %cmp.i514.i = icmp slt i32 %call1.i513.i, 0
  br i1 %cmp.i514.i, label %do.end.i515.i, label %otm8009a_dcs_write_buf.exit511.i.otm8009a_dcs_write_buf.exit516.i_crit_edge

otm8009a_dcs_write_buf.exit511.i.otm8009a_dcs_write_buf.exit516.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit511.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit516.i

do.end.i515.i:                                    ; preds = %otm8009a_dcs_write_buf.exit511.i
  call void @__sanitizer_cov_trace_pc() #7
  %326 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %327, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit516.i

otm8009a_dcs_write_buf.exit516.i:                 ; preds = %do.end.i515.i, %otm8009a_dcs_write_buf.exit511.i.otm8009a_dcs_write_buf.exit516.i_crit_edge
  %328 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i517.i = getelementptr i8, ptr %329, i32 -8
  %call1.i518.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i517.i, ptr noundef nonnull @otm8009a_init_sequence.d.92, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i518.i)
  %cmp.i519.i = icmp slt i32 %call1.i518.i, 0
  br i1 %cmp.i519.i, label %do.end.i520.i, label %otm8009a_dcs_write_buf.exit516.i.otm8009a_dcs_write_buf.exit521.i_crit_edge

otm8009a_dcs_write_buf.exit516.i.otm8009a_dcs_write_buf.exit521.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit516.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit521.i

do.end.i520.i:                                    ; preds = %otm8009a_dcs_write_buf.exit516.i
  call void @__sanitizer_cov_trace_pc() #7
  %330 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %331, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit521.i

otm8009a_dcs_write_buf.exit521.i:                 ; preds = %do.end.i520.i, %otm8009a_dcs_write_buf.exit516.i.otm8009a_dcs_write_buf.exit521.i_crit_edge
  %332 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i522.i = getelementptr i8, ptr %333, i32 -8
  %call1.i523.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i522.i, ptr noundef nonnull @otm8009a_init_sequence.d.93, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i523.i)
  %cmp.i524.i = icmp slt i32 %call1.i523.i, 0
  br i1 %cmp.i524.i, label %do.end.i525.i, label %otm8009a_dcs_write_buf.exit521.i.otm8009a_dcs_write_buf.exit526.i_crit_edge

otm8009a_dcs_write_buf.exit521.i.otm8009a_dcs_write_buf.exit526.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit521.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit526.i

do.end.i525.i:                                    ; preds = %otm8009a_dcs_write_buf.exit521.i
  call void @__sanitizer_cov_trace_pc() #7
  %334 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %335, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit526.i

otm8009a_dcs_write_buf.exit526.i:                 ; preds = %do.end.i525.i, %otm8009a_dcs_write_buf.exit521.i.otm8009a_dcs_write_buf.exit526.i_crit_edge
  %336 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i527.i = getelementptr i8, ptr %337, i32 -8
  %call1.i528.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i527.i, ptr noundef nonnull @otm8009a_init_sequence.d.94, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i528.i)
  %cmp.i529.i = icmp slt i32 %call1.i528.i, 0
  br i1 %cmp.i529.i, label %do.end.i530.i, label %otm8009a_dcs_write_buf.exit526.i.otm8009a_dcs_write_buf.exit531.i_crit_edge

otm8009a_dcs_write_buf.exit526.i.otm8009a_dcs_write_buf.exit531.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit526.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit531.i

do.end.i530.i:                                    ; preds = %otm8009a_dcs_write_buf.exit526.i
  call void @__sanitizer_cov_trace_pc() #7
  %338 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %339, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit531.i

otm8009a_dcs_write_buf.exit531.i:                 ; preds = %do.end.i530.i, %otm8009a_dcs_write_buf.exit526.i.otm8009a_dcs_write_buf.exit531.i_crit_edge
  %340 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i532.i = getelementptr i8, ptr %341, i32 -8
  %call1.i533.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i532.i, ptr noundef nonnull @otm8009a_init_sequence.d.95, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i533.i)
  %cmp.i534.i = icmp slt i32 %call1.i533.i, 0
  br i1 %cmp.i534.i, label %do.end.i535.i, label %otm8009a_dcs_write_buf.exit531.i.otm8009a_dcs_write_buf.exit536.i_crit_edge

otm8009a_dcs_write_buf.exit531.i.otm8009a_dcs_write_buf.exit536.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit531.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit536.i

do.end.i535.i:                                    ; preds = %otm8009a_dcs_write_buf.exit531.i
  call void @__sanitizer_cov_trace_pc() #7
  %342 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %343, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit536.i

otm8009a_dcs_write_buf.exit536.i:                 ; preds = %do.end.i535.i, %otm8009a_dcs_write_buf.exit531.i.otm8009a_dcs_write_buf.exit536.i_crit_edge
  %344 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i537.i = getelementptr i8, ptr %345, i32 -8
  %call1.i538.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i537.i, ptr noundef nonnull @otm8009a_init_sequence.d.96, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i538.i)
  %cmp.i539.i = icmp slt i32 %call1.i538.i, 0
  br i1 %cmp.i539.i, label %do.end.i540.i, label %otm8009a_dcs_write_buf.exit536.i.otm8009a_dcs_write_buf.exit541.i_crit_edge

otm8009a_dcs_write_buf.exit536.i.otm8009a_dcs_write_buf.exit541.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit536.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit541.i

do.end.i540.i:                                    ; preds = %otm8009a_dcs_write_buf.exit536.i
  call void @__sanitizer_cov_trace_pc() #7
  %346 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %347, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit541.i

otm8009a_dcs_write_buf.exit541.i:                 ; preds = %do.end.i540.i, %otm8009a_dcs_write_buf.exit536.i.otm8009a_dcs_write_buf.exit541.i_crit_edge
  %348 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i542.i = getelementptr i8, ptr %349, i32 -8
  %call1.i543.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i542.i, ptr noundef nonnull @otm8009a_init_sequence.d.97, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i543.i)
  %cmp.i544.i = icmp slt i32 %call1.i543.i, 0
  br i1 %cmp.i544.i, label %do.end.i545.i, label %otm8009a_dcs_write_buf.exit541.i.otm8009a_dcs_write_buf.exit546.i_crit_edge

otm8009a_dcs_write_buf.exit541.i.otm8009a_dcs_write_buf.exit546.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit541.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit546.i

do.end.i545.i:                                    ; preds = %otm8009a_dcs_write_buf.exit541.i
  call void @__sanitizer_cov_trace_pc() #7
  %350 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %351, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit546.i

otm8009a_dcs_write_buf.exit546.i:                 ; preds = %do.end.i545.i, %otm8009a_dcs_write_buf.exit541.i.otm8009a_dcs_write_buf.exit546.i_crit_edge
  %352 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i547.i = getelementptr i8, ptr %353, i32 -8
  %call1.i548.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i547.i, ptr noundef nonnull @otm8009a_init_sequence.d.98, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i548.i)
  %cmp.i549.i = icmp slt i32 %call1.i548.i, 0
  br i1 %cmp.i549.i, label %do.end.i550.i, label %otm8009a_dcs_write_buf.exit546.i.otm8009a_dcs_write_buf.exit551.i_crit_edge

otm8009a_dcs_write_buf.exit546.i.otm8009a_dcs_write_buf.exit551.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit546.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit551.i

do.end.i550.i:                                    ; preds = %otm8009a_dcs_write_buf.exit546.i
  call void @__sanitizer_cov_trace_pc() #7
  %354 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %355, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit551.i

otm8009a_dcs_write_buf.exit551.i:                 ; preds = %do.end.i550.i, %otm8009a_dcs_write_buf.exit546.i.otm8009a_dcs_write_buf.exit551.i_crit_edge
  %356 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i552.i = getelementptr i8, ptr %357, i32 -8
  %call1.i553.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i552.i, ptr noundef nonnull @otm8009a_init_sequence.d.99, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i553.i)
  %cmp.i554.i = icmp slt i32 %call1.i553.i, 0
  br i1 %cmp.i554.i, label %do.end.i555.i, label %otm8009a_dcs_write_buf.exit551.i.otm8009a_dcs_write_buf.exit556.i_crit_edge

otm8009a_dcs_write_buf.exit551.i.otm8009a_dcs_write_buf.exit556.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit551.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit556.i

do.end.i555.i:                                    ; preds = %otm8009a_dcs_write_buf.exit551.i
  call void @__sanitizer_cov_trace_pc() #7
  %358 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %359, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit556.i

otm8009a_dcs_write_buf.exit556.i:                 ; preds = %do.end.i555.i, %otm8009a_dcs_write_buf.exit551.i.otm8009a_dcs_write_buf.exit556.i_crit_edge
  %360 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i557.i = getelementptr i8, ptr %361, i32 -8
  %call1.i558.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i557.i, ptr noundef nonnull @otm8009a_init_sequence.d.100, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i558.i)
  %cmp.i559.i = icmp slt i32 %call1.i558.i, 0
  br i1 %cmp.i559.i, label %do.end.i560.i, label %otm8009a_dcs_write_buf.exit556.i.otm8009a_dcs_write_buf.exit561.i_crit_edge

otm8009a_dcs_write_buf.exit556.i.otm8009a_dcs_write_buf.exit561.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit556.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit561.i

do.end.i560.i:                                    ; preds = %otm8009a_dcs_write_buf.exit556.i
  call void @__sanitizer_cov_trace_pc() #7
  %362 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %363, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit561.i

otm8009a_dcs_write_buf.exit561.i:                 ; preds = %do.end.i560.i, %otm8009a_dcs_write_buf.exit556.i.otm8009a_dcs_write_buf.exit561.i_crit_edge
  %364 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i562.i = getelementptr i8, ptr %365, i32 -8
  %call1.i563.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i562.i, ptr noundef nonnull @otm8009a_init_sequence.d.101, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i563.i)
  %cmp.i564.i = icmp slt i32 %call1.i563.i, 0
  br i1 %cmp.i564.i, label %do.end.i565.i, label %otm8009a_dcs_write_buf.exit561.i.otm8009a_dcs_write_buf.exit566.i_crit_edge

otm8009a_dcs_write_buf.exit561.i.otm8009a_dcs_write_buf.exit566.i_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit561.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit566.i

do.end.i565.i:                                    ; preds = %otm8009a_dcs_write_buf.exit561.i
  call void @__sanitizer_cov_trace_pc() #7
  %366 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %367, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit566.i

otm8009a_dcs_write_buf.exit566.i:                 ; preds = %do.end.i565.i, %otm8009a_dcs_write_buf.exit561.i.otm8009a_dcs_write_buf.exit566.i_crit_edge
  %call7.i = tail call i32 @mipi_dsi_dcs_nop(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i, label %otm8009a_dcs_write_buf.exit566.i.cleanup_crit_edge

otm8009a_dcs_write_buf.exit566.i.cleanup_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit566.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %otm8009a_dcs_write_buf.exit566.i
  %call9.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.while.body17.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.while.body17.i_crit_edge:                ; preds = %if.end.i
  br label %while.body17.i

while.body17.i:                                   ; preds = %while.body17.i.while.body17.i_crit_edge, %if.end.i.while.body17.i_crit_edge
  %__ms13.0574.i = phi i32 [ %dec15.i, %while.body17.i.while.body17.i_crit_edge ], [ 120, %if.end.i.while.body17.i_crit_edge ]
  %dec15.i = add nsw i32 %__ms13.0574.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %368 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %368(i32 noundef 214748000) #5
  %tobool16.not.i = icmp eq i32 %dec15.i, 0
  br i1 %tobool16.not.i, label %while.end18.i, label %while.body17.i.while.body17.i_crit_edge

while.body17.i.while.body17.i_crit_edge:          ; preds = %while.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body17.i

while.end18.i:                                    ; preds = %while.body17.i
  %369 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i567.i = getelementptr i8, ptr %370, i32 -8
  %call1.i568.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i567.i, ptr noundef nonnull @otm8009a_init_sequence.d.102, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i568.i)
  %cmp.i569.i = icmp slt i32 %call1.i568.i, 0
  br i1 %cmp.i569.i, label %do.end.i570.i, label %while.end18.i.otm8009a_dcs_write_buf.exit571.i_crit_edge

while.end18.i.otm8009a_dcs_write_buf.exit571.i_crit_edge: ; preds = %while.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %otm8009a_dcs_write_buf.exit571.i

do.end.i570.i:                                    ; preds = %while.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %371 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %372, ptr noundef nonnull @.str.105) #8
  br label %otm8009a_dcs_write_buf.exit571.i

otm8009a_dcs_write_buf.exit571.i:                 ; preds = %do.end.i570.i, %while.end18.i.otm8009a_dcs_write_buf.exit571.i_crit_edge
  %call19.i = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %add.ptr.i.i, i16 noundef zeroext 0, i16 noundef zeroext 479) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %otm8009a_dcs_write_buf.exit571.i.cleanup_crit_edge

otm8009a_dcs_write_buf.exit571.i.cleanup_crit_edge: ; preds = %otm8009a_dcs_write_buf.exit571.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22.i:                                       ; preds = %otm8009a_dcs_write_buf.exit571.i
  %call23.i = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %add.ptr.i.i, i16 noundef zeroext 0, i16 noundef zeroext 799) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26.i:                                       ; preds = %if.end22.i
  %call27.i = tail call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %add.ptr.i.i, i8 noundef zeroext 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.i:                                       ; preds = %if.end26.i
  tail call fastcc void @otm8009a_dcs_write_buf(ptr noundef %add.ptr.i, ptr noundef nonnull @otm8009a_init_sequence.d.103, i32 noundef 2) #5
  %call31.i = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34.i:                                       ; preds = %if.end30.i
  %call35.i = tail call i32 @mipi_dsi_dcs_nop(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end13, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @otm8009a_dcs_write_buf(ptr noundef %add.ptr.i, ptr noundef nonnull @otm8009a_init_sequence.d.104, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %373 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %373(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %374 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %374(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %375 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %375(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %376 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %376(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %377 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %377(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %378 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %378(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %379 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %379(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %380 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %380(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %381 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %381(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %382 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %382(i32 noundef 214748000) #5
  %383 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end34.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %otm8009a_dcs_write_buf.exit571.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %otm8009a_dcs_write_buf.exit566.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ %call35.i, %if.end34.i.cleanup_crit_edge ], [ %call31.i, %if.end30.i.cleanup_crit_edge ], [ %call27.i, %if.end26.i.cleanup_crit_edge ], [ %call23.i, %if.end22.i.cleanup_crit_edge ], [ %call19.i, %otm8009a_dcs_write_buf.exit571.i.cleanup_crit_edge ], [ %call9.i, %if.end.i.cleanup_crit_edge ], [ %call7.i, %otm8009a_dcs_write_buf.exit566.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_enable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %panel, i32 37
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.backlight_enable.exit_crit_edge, label %if.end.i

if.end.backlight_enable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_enable.exit

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i = and i32 %7, -3
  store i32 %and.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %11(ptr noundef nonnull %3) #5
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  br label %backlight_enable.exit

backlight_enable.exit:                            ; preds = %backlight_update_status.exit.i, %if.end.backlight_enable.exit_crit_edge
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %backlight_enable.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %1, i32 -8
  %enabled = getelementptr i8, ptr %panel, i32 37
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %4 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bl_dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.backlight_disable.exit_crit_edge, label %if.end.i

if.end.backlight_disable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_disable.exit

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %or.i = or i32 %9, 2
  store i32 %or.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %13(ptr noundef nonnull %5) #5
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  br label %backlight_disable.exit

backlight_disable.exit:                           ; preds = %backlight_update_status.exit.i, %if.end.backlight_disable.exit_crit_edge
  %call3 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %backlight_disable.exit.cleanup_crit_edge

backlight_disable.exit.cleanup_crit_edge:         ; preds = %backlight_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %backlight_disable.exit
  %call7 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 120) #5
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %backlight_disable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %backlight_disable.exit.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr i8, ptr %panel, i32 36
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpio = getelementptr i8, ptr %panel, i32 28
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %supply = getelementptr i8, ptr %panel, i32 32
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %5) #5
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @modes) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %i.038.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %if.end.do.end_crit_edge ]
  %arrayidx.lcssa = phi ptr [ @modes, %entry.do.end_crit_edge ], [ getelementptr inbounds ([2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 1), %if.end.do.end_crit_edge ]
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %hdisplay = getelementptr [2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 %i.038.lcssa, i32 1
  %4 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %5 to i32
  %vdisplay = getelementptr [2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 %i.038.lcssa, i32 6
  %6 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay, align 2
  %conv4 = zext i16 %7 to i32
  %call6 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull %arrayidx.lcssa) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.108, i32 noundef %conv, i32 noundef %conv4, i32 noundef %call6) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 8
  %call.1 = tail call ptr @drm_mode_duplicate(ptr noundef %10, ptr noundef getelementptr inbounds ([2 x %struct.drm_display_mode], ptr @modes, i32 0, i32 1)) #5
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %if.end.do.end_crit_edge, label %if.end.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %type.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 28
  %11 = ptrtoint ptr %type.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %type.1, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %call.1) #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.1) #5
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 26
  %12 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %width_mm, align 2
  %conv13 = zext i16 %13 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %14 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv13, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 27
  %15 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %height_mm, align 4
  %conv15 = zext i16 %16 to i32
  %height_mm17 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %height_mm17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv15, ptr %height_mm17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.1, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 2, %if.end.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @otm8009a_dcs_write_buf(ptr nocapture noundef readonly %ctx, ptr noundef %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call1 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.105) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_nop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm8009a_backlight_update_status(ptr noundef %bd) #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %2 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.otm8009a, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %prepared, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @otm8009a_backlight_update_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@otm8009a_backlight_update_status, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !211

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @otm8009a_backlight_update_status.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.112) #5
  br label %cleanup

if.end6:                                          ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %5 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp slt i32 %6, 2
  br i1 %cmp, label %if.then7, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 81, ptr %data, align 1
  %8 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd, align 8
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %2, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -8
  %call1.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i, ptr noundef nonnull %data, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.105) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end.i, %if.then7.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %storemerge = phi i8 [ 0, %if.end6.if.end12_crit_edge ], [ 36, %if.then7.if.end12_crit_edge ], [ 36, %do.end.i ]
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge, ptr %2, align 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 83, ptr %data, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %18, i32 -8
  %call1.i22 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i21, ptr noundef nonnull %data, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %cmp.i23 = icmp slt i32 %call1.i22, 0
  br i1 %cmp.i23, label %do.end.i24, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i24:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.105) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i24, %if.end12.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -6, %if.then5 ], [ -6, %do.body ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %do.end.i24 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !179, !181, !183, !184, !185, !186, !187, !189, !190, !191, !192, !194, !196, !198, !199, !200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__initcall__kmod_panel_orisetech_otm8009a__303_524_orisetech_otm8009a_driver_init6, !1, !"__initcall__kmod_panel_orisetech_otm8009a__303_524_orisetech_otm8009a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 524, i32 1}
!2 = !{ptr @__exitcall_orisetech_otm8009a_driver_exit, !1, !"__exitcall_orisetech_otm8009a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 526, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 527, i32 1}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 528, i32 1}
!9 = !{ptr @__UNIQUE_ID_file307, !10, !"__UNIQUE_ID_file307", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 529, i32 1}
!11 = !{ptr @__UNIQUE_ID_license308, !10, !"__UNIQUE_ID_license308", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 520, i32 11}
!14 = !{ptr @orisetech_otm8009a_driver, !15, !"orisetech_otm8009a_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 516, i32 31}
!16 = !{ptr @orisetech_otm8009a_of_match, !17, !"orisetech_otm8009a_of_match", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 510, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 447, i32 49}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 449, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @otm8009a_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @otm8009a_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 453, i32 40}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 457, i32 4}
!32 = !{ptr @otm8009a_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @otm8009a_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 479, i32 3}
!36 = !{ptr @otm8009a_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @otm8009a_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 492, i32 3}
!40 = !{ptr @otm8009a_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @otm8009a_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @otm8009a_drm_funcs, !43, !"otm8009a_drm_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 387, i32 37}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 319, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @otm8009a_prepare._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @otm8009a_prepare._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @otm8009a_init_sequence.d, !50, !"d", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 139, i32 2}
!51 = !{ptr @otm8009a_init_sequence.d.19, !50, !"d", i1 false, i1 false}
!52 = !{ptr @otm8009a_init_sequence.d.20, !53, !"d", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 142, i32 2}
!54 = !{ptr @otm8009a_init_sequence.d.21, !53, !"d", i1 false, i1 false}
!55 = !{ptr @otm8009a_init_sequence.d.22, !56, !"d", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 144, i32 2}
!57 = !{ptr @otm8009a_init_sequence.d.23, !56, !"d", i1 false, i1 false}
!58 = !{ptr @otm8009a_init_sequence.d.24, !59, !"d", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 147, i32 2}
!60 = !{ptr @otm8009a_init_sequence.d.25, !59, !"d", i1 false, i1 false}
!61 = !{ptr @otm8009a_init_sequence.d.26, !62, !"d", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 150, i32 2}
!63 = !{ptr @otm8009a_init_sequence.d.27, !62, !"d", i1 false, i1 false}
!64 = !{ptr @otm8009a_init_sequence.d.28, !65, !"d", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 151, i32 2}
!66 = !{ptr @otm8009a_init_sequence.d.29, !65, !"d", i1 false, i1 false}
!67 = !{ptr @otm8009a_init_sequence.d.30, !68, !"d", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 152, i32 2}
!69 = !{ptr @otm8009a_init_sequence.d.31, !68, !"d", i1 false, i1 false}
!70 = !{ptr @otm8009a_init_sequence.d.32, !71, !"d", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 153, i32 2}
!72 = !{ptr @otm8009a_init_sequence.d.33, !71, !"d", i1 false, i1 false}
!73 = !{ptr @otm8009a_init_sequence.d.34, !74, !"d", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 154, i32 2}
!75 = !{ptr @otm8009a_init_sequence.d.35, !74, !"d", i1 false, i1 false}
!76 = !{ptr @otm8009a_init_sequence.d.36, !77, !"d", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 155, i32 2}
!78 = !{ptr @otm8009a_init_sequence.d.37, !77, !"d", i1 false, i1 false}
!79 = !{ptr @otm8009a_init_sequence.d.38, !80, !"d", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 156, i32 2}
!81 = !{ptr @otm8009a_init_sequence.d.39, !80, !"d", i1 false, i1 false}
!82 = !{ptr @otm8009a_init_sequence.d.40, !83, !"d", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 157, i32 2}
!84 = !{ptr @otm8009a_init_sequence.d.41, !83, !"d", i1 false, i1 false}
!85 = !{ptr @otm8009a_init_sequence.d.42, !86, !"d", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 158, i32 2}
!87 = !{ptr @otm8009a_init_sequence.d.43, !86, !"d", i1 false, i1 false}
!88 = !{ptr @otm8009a_init_sequence.d.44, !89, !"d", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 159, i32 2}
!90 = !{ptr @otm8009a_init_sequence.d.45, !89, !"d", i1 false, i1 false}
!91 = !{ptr @otm8009a_init_sequence.d.46, !92, !"d", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 160, i32 2}
!93 = !{ptr @otm8009a_init_sequence.d.47, !92, !"d", i1 false, i1 false}
!94 = !{ptr @otm8009a_init_sequence.d.48, !95, !"d", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 161, i32 2}
!96 = !{ptr @otm8009a_init_sequence.d.49, !95, !"d", i1 false, i1 false}
!97 = !{ptr @otm8009a_init_sequence.d.50, !98, !"d", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 162, i32 2}
!99 = !{ptr @otm8009a_init_sequence.d.51, !98, !"d", i1 false, i1 false}
!100 = !{ptr @otm8009a_init_sequence.d.52, !101, !"d", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 163, i32 2}
!102 = !{ptr @otm8009a_init_sequence.d.53, !101, !"d", i1 false, i1 false}
!103 = !{ptr @otm8009a_init_sequence.d.54, !104, !"d", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 165, i32 2}
!105 = !{ptr @otm8009a_init_sequence.d.55, !104, !"d", i1 false, i1 false}
!106 = !{ptr @otm8009a_init_sequence.d.56, !107, !"d", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 166, i32 2}
!108 = !{ptr @otm8009a_init_sequence.d.57, !107, !"d", i1 false, i1 false}
!109 = !{ptr @otm8009a_init_sequence.d.58, !110, !"d", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 168, i32 2}
!111 = !{ptr @otm8009a_init_sequence.d.59, !110, !"d", i1 false, i1 false}
!112 = !{ptr @otm8009a_init_sequence.d.60, !113, !"d", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 170, i32 2}
!114 = !{ptr @otm8009a_init_sequence.d.61, !113, !"d", i1 false, i1 false}
!115 = !{ptr @otm8009a_init_sequence.d.62, !116, !"d", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 173, i32 2}
!117 = !{ptr @otm8009a_init_sequence.d.63, !116, !"d", i1 false, i1 false}
!118 = !{ptr @otm8009a_init_sequence.d.64, !119, !"d", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 175, i32 2}
!120 = !{ptr @otm8009a_init_sequence.d.65, !119, !"d", i1 false, i1 false}
!121 = !{ptr @otm8009a_init_sequence.d.66, !122, !"d", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 176, i32 2}
!123 = !{ptr @otm8009a_init_sequence.d.67, !122, !"d", i1 false, i1 false}
!124 = !{ptr @otm8009a_init_sequence.d.68, !125, !"d", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 178, i32 2}
!126 = !{ptr @otm8009a_init_sequence.d.69, !125, !"d", i1 false, i1 false}
!127 = !{ptr @otm8009a_init_sequence.d.70, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 180, i32 2}
!129 = !{ptr @otm8009a_init_sequence.d.71, !128, !"d", i1 false, i1 false}
!130 = !{ptr @otm8009a_init_sequence.d.72, !131, !"d", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 181, i32 2}
!132 = !{ptr @otm8009a_init_sequence.d.73, !131, !"d", i1 false, i1 false}
!133 = !{ptr @otm8009a_init_sequence.d.74, !134, !"d", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 183, i32 2}
!135 = !{ptr @otm8009a_init_sequence.d.75, !134, !"d", i1 false, i1 false}
!136 = !{ptr @otm8009a_init_sequence.d.76, !137, !"d", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 185, i32 2}
!138 = !{ptr @otm8009a_init_sequence.d.77, !137, !"d", i1 false, i1 false}
!139 = !{ptr @otm8009a_init_sequence.d.78, !140, !"d", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 186, i32 2}
!141 = !{ptr @otm8009a_init_sequence.d.79, !140, !"d", i1 false, i1 false}
!142 = !{ptr @otm8009a_init_sequence.d.80, !143, !"d", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 189, i32 2}
!144 = !{ptr @otm8009a_init_sequence.d.81, !143, !"d", i1 false, i1 false}
!145 = !{ptr @otm8009a_init_sequence.d.82, !146, !"d", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 191, i32 2}
!147 = !{ptr @otm8009a_init_sequence.d.83, !146, !"d", i1 false, i1 false}
!148 = !{ptr @otm8009a_init_sequence.d.84, !149, !"d", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 193, i32 2}
!150 = !{ptr @otm8009a_init_sequence.d.85, !149, !"d", i1 false, i1 false}
!151 = !{ptr @otm8009a_init_sequence.d.86, !152, !"d", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 195, i32 2}
!153 = !{ptr @otm8009a_init_sequence.d.87, !152, !"d", i1 false, i1 false}
!154 = !{ptr @otm8009a_init_sequence.d.88, !155, !"d", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 197, i32 2}
!156 = !{ptr @otm8009a_init_sequence.d.89, !155, !"d", i1 false, i1 false}
!157 = !{ptr @otm8009a_init_sequence.d.90, !158, !"d", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 199, i32 2}
!159 = !{ptr @otm8009a_init_sequence.d.91, !158, !"d", i1 false, i1 false}
!160 = !{ptr @otm8009a_init_sequence.d.92, !161, !"d", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 202, i32 2}
!162 = !{ptr @otm8009a_init_sequence.d.93, !161, !"d", i1 false, i1 false}
!163 = !{ptr @otm8009a_init_sequence.d.94, !164, !"d", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 204, i32 2}
!165 = !{ptr @otm8009a_init_sequence.d.95, !164, !"d", i1 false, i1 false}
!166 = !{ptr @otm8009a_init_sequence.d.96, !167, !"d", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 206, i32 2}
!168 = !{ptr @otm8009a_init_sequence.d.97, !167, !"d", i1 false, i1 false}
!169 = !{ptr @otm8009a_init_sequence.d.98, !170, !"d", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 209, i32 2}
!171 = !{ptr @otm8009a_init_sequence.d.99, !170, !"d", i1 false, i1 false}
!172 = !{ptr @otm8009a_init_sequence.d.100, !173, !"d", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 214, i32 2}
!174 = !{ptr @otm8009a_init_sequence.d.101, !173, !"d", i1 false, i1 false}
!175 = !{ptr @otm8009a_init_sequence.d.102, !176, !"d", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 228, i32 2}
!177 = !{ptr @otm8009a_init_sequence.d.103, !178, !"d", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 245, i32 2}
!179 = !{ptr @otm8009a_init_sequence.d.104, !180, !"d", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 256, i32 2}
!181 = !{ptr @.str.105, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 118, i32 3}
!183 = !{ptr @.str.106, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.107, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @otm8009a_dcs_write_buf._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @otm8009a_dcs_write_buf._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.108, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 364, i32 4}
!189 = !{ptr @.str.109, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @otm8009a_get_modes._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @otm8009a_get_modes._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @modes, !193, !"modes", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 76, i32 38}
!194 = !{ptr @otm8009a_backlight_ops, !195, !"otm8009a_backlight_ops", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 433, i32 35}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/panel/panel-orisetech-otm8009a.c", i32 405, i32 3}
!198 = !{ptr @.str.111, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.112, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @otm8009a_backlight_update_status.__UNIQUE_ID_ddebug302, !197, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{i8 0, i8 2}
!211 = !{i64 2148304069, i64 2148304074, i64 2148304087, i64 2148304131, i64 2148304165, i64 2148304186}
