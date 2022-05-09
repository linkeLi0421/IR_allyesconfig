; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-visionox-rm69299.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-visionox-rm69299.c"
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
%struct.visionox_rm69299 = type { %struct.drm_panel, [2 x %struct.regulator_bulk_data], ptr, ptr, i8, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_visionox_rm69299__302_284_visionox_rm69299_driver_init6 = internal global ptr @visionox_rm69299_driver_init, section ".initcall6.init", align 4
@visionox_rm69299_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @visionox_rm69299_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @visionox_rm69299_probe, ptr @visionox_rm69299_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_visionox_rm69299_driver_exit = internal global ptr @visionox_rm69299_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [69 x i8] c"panel_visionox_rm69299.description=Visionox RM69299 DSI Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [73 x i8] c"panel_visionox_rm69299.file=drivers/gpu/drm/panel/panel-visionox-rm69299\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [38 x i8] c"panel_visionox_rm69299.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panel-visionox-rm69299\00", [41 x i8] zeroinitializer }, align 32
@visionox_rm69299_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"visionox,rm69299-1080p-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd3p3\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@visionox_rm69299_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 218, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get reset gpio %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"visionox_rm69299_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/panel/panel-visionox-rm69299.c\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@visionox_rm69299_probe._entry_ptr = internal global ptr @visionox_rm69299_probe._entry, section ".printk_index", align 4
@visionox_rm69299_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @visionox_rm69299_prepare, ptr null, ptr null, ptr @visionox_rm69299_unprepare, ptr @visionox_rm69299_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@visionox_rm69299_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 234, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dsi attach failed ret = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@visionox_rm69299_probe._entry_ptr.11 = internal global ptr @visionox_rm69299_probe._entry.9, section ".printk_index", align 4
@visionox_rm69299_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 240, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regulator set load failed for vdda supply ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@visionox_rm69299_probe._entry_ptr.14 = internal global ptr @visionox_rm69299_probe._entry.12, section ".printk_index", align 4
@visionox_rm69299_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 246, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"regulator set load failed for vdd3p3 supply ret = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@visionox_rm69299_probe._entry_ptr.17 = internal global ptr @visionox_rm69299_probe._entry.15, section ".printk_index", align 4
@visionox_rm69299_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 103, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd set tx 0 failed, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"visionox_rm69299_prepare\00", [39 x i8] zeroinitializer }, align 32
@visionox_rm69299_prepare._entry_ptr = internal global ptr @visionox_rm69299_prepare._entry, section ".printk_index", align 4
@visionox_rm69299_prepare._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 109, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd set tx 1 failed, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@visionox_rm69299_prepare._entry_ptr.22 = internal global ptr @visionox_rm69299_prepare._entry.20, section ".printk_index", align 4
@visionox_rm69299_prepare._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.6, i32 115, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd set tx 2 failed, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@visionox_rm69299_prepare._entry_ptr.25 = internal global ptr @visionox_rm69299_prepare._entry.23, section ".printk_index", align 4
@visionox_rm69299_prepare._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.6, i32 121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd set tx 3 failed, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@visionox_rm69299_prepare._entry_ptr.28 = internal global ptr @visionox_rm69299_prepare._entry.26, section ".printk_index", align 4
@visionox_rm69299_prepare._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.6, i32 127, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"exit_sleep_mode cmd failed ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@visionox_rm69299_prepare._entry_ptr.31 = internal global ptr @visionox_rm69299_prepare._entry.29, section ".printk_index", align 4
@visionox_rm69299_prepare._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.6, i32 136, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set_display_on cmd failed ret = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@visionox_rm69299_prepare._entry_ptr.34 = internal global ptr @visionox_rm69299_prepare._entry.32, section ".printk_index", align 4
@visionox_rm69299_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 71, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set_display_off cmd failed ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"visionox_rm69299_unprepare\00", [37 x i8] zeroinitializer }, align 32
@visionox_rm69299_unprepare._entry_ptr = internal global ptr @visionox_rm69299_unprepare._entry, section ".printk_index", align 4
@visionox_rm69299_unprepare._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.6, i32 78, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enter_sleep cmd failed ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@visionox_rm69299_unprepare._entry_ptr.39 = internal global ptr @visionox_rm69299_unprepare._entry.37, section ".printk_index", align 4
@visionox_rm69299_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 173, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create a new display mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"visionox_rm69299_get_modes\00", [37 x i8] zeroinitializer }, align 32
@visionox_rm69299_get_modes._entry_ptr = internal global ptr @visionox_rm69299_get_modes._entry, section ".printk_index", align 4
@visionox_rm69299_1080x2248_60hz = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 158695, i16 1080, i16 1106, i16 1108, i16 1144, i16 0, i16 2248, i16 2304, i16 2308, i16 2312, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1080x2248\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"visionox_rm69299_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 276, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 278, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [26 x i8] c"visionox_rm69299_of_match\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 270, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 207, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 208, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 216, i32 7 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 218, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"visionox_rm69299_drm_funcs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 186, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 234, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 240, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 246, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 103, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 109, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 115, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 121, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 127, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 136, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 71, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 78, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 173, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [32 x i8] c"visionox_rm69299_1080x2248_60hz\00", align 1
@___asan_gen_.163 = private constant [50 x i8] c"../drivers/gpu/drm/panel/panel-visionox-rm69299.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 151, i32 38 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_visionox_rm69299_driver_exit, ptr @__initcall__kmod_panel_visionox_rm69299__302_284_visionox_rm69299_driver_init6, ptr @visionox_rm69299_driver_exit, ptr @visionox_rm69299_get_modes._entry, ptr @visionox_rm69299_get_modes._entry_ptr, ptr @visionox_rm69299_prepare._entry, ptr @visionox_rm69299_prepare._entry.20, ptr @visionox_rm69299_prepare._entry.23, ptr @visionox_rm69299_prepare._entry.26, ptr @visionox_rm69299_prepare._entry.29, ptr @visionox_rm69299_prepare._entry.32, ptr @visionox_rm69299_prepare._entry_ptr, ptr @visionox_rm69299_prepare._entry_ptr.22, ptr @visionox_rm69299_prepare._entry_ptr.25, ptr @visionox_rm69299_prepare._entry_ptr.28, ptr @visionox_rm69299_prepare._entry_ptr.31, ptr @visionox_rm69299_prepare._entry_ptr.34, ptr @visionox_rm69299_probe._entry, ptr @visionox_rm69299_probe._entry.12, ptr @visionox_rm69299_probe._entry.15, ptr @visionox_rm69299_probe._entry.9, ptr @visionox_rm69299_probe._entry_ptr, ptr @visionox_rm69299_probe._entry_ptr.11, ptr @visionox_rm69299_probe._entry_ptr.14, ptr @visionox_rm69299_probe._entry_ptr.17, ptr @visionox_rm69299_unprepare._entry, ptr @visionox_rm69299_unprepare._entry.37, ptr @visionox_rm69299_unprepare._entry_ptr, ptr @visionox_rm69299_unprepare._entry_ptr.39, ptr @visionox_rm69299_driver, ptr @.str, ptr @visionox_rm69299_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @visionox_rm69299_drm_funcs, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @visionox_rm69299_1080x2248_60hz], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_prepare._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_prepare._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_prepare._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_prepare._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_prepare._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_unprepare._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visionox_rm69299_1080x2248_60hz to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @visionox_rm69299_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @visionox_rm69299_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @visionox_rm69299_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @visionox_rm69299_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visionox_rm69299_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %dsi3 = getelementptr inbounds %struct.visionox_rm69299, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dsi3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dsi, ptr %dsi3, align 4
  %supplies = getelementptr inbounds %struct.visionox_rm69299, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx5 = getelementptr %struct.visionox_rm69299, ptr %call.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %arrayidx5, align 4
  %call10 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call15 = tail call ptr @devm_gpiod_get(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef 3) #4
  %reset_gpio = getelementptr inbounds %struct.visionox_rm69299, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %8) #7
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @visionox_rm69299_drm_funcs, i32 noundef 16) #4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %call.i, align 4
  %funcs = getelementptr inbounds %struct.drm_panel, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @visionox_rm69299_drm_funcs, ptr %funcs, align 4
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %14 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %15 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %16 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3073, ptr %mode_flags, align 8
  %call29 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call29) #7
  br label %err_dsi_attach

if.end35:                                         ; preds = %if.end23
  %consumer = getelementptr inbounds %struct.visionox_rm69299, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumer, align 4
  %call38 = tail call i32 @regulator_set_load(ptr noundef %18, i32 noundef 32000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call38) #7
  br label %err_set_load

if.end44:                                         ; preds = %if.end35
  %consumer47 = getelementptr %struct.visionox_rm69299, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %consumer47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer47, align 4
  %call48 = tail call i32 @regulator_set_load(ptr noundef %20, i32 noundef 13200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end44.cleanup_crit_edge, label %do.end53

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call48) #7
  br label %err_set_load

err_set_load:                                     ; preds = %do.end53, %do.end43
  %ret.0 = phi i32 [ %call38, %do.end43 ], [ %call48, %do.end53 ]
  %call55 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  br label %err_dsi_attach

err_dsi_attach:                                   ; preds = %err_set_load, %do.end34
  %ret.1 = phi i32 [ %call29, %do.end34 ], [ %ret.0, %err_set_load ]
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_dsi_attach, %if.end44.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ %ret.1, %err_dsi_attach ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visionox_rm69299_remove(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.visionox_rm69299, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi1, align 4
  %call2 = tail call i32 @mipi_dsi_detach(ptr noundef %3) #4
  %4 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi1, align 4
  tail call void @mipi_dsi_device_unregister(ptr noundef %5) #4
  tail call void @drm_panel_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visionox_rm69299_prepare(ptr noundef %panel) #2 align 64 {
entry:
  %.compoundliteral = alloca [2 x i8], align 1
  %.compoundliteral11 = alloca [2 x i8], align 1
  %.compoundliteral25 = alloca [2 x i8], align 1
  %.compoundliteral39 = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies.i = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 1
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #4
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #4
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #4
  %dsi = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 3
  %8 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsi, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_flags, align 8
  %or = or i32 %11, 2048
  store i32 %or, ptr %mode_flags, align 8
  %12 = load ptr, ptr %dsi, align 4
  %13 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -2, ptr %.compoundliteral, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %.compoundliteral, i32 1
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayinit.element, align 1
  %call5 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %12, ptr noundef nonnull %.compoundliteral, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %call5) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %17 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsi, align 4
  %19 = ptrtoint ptr %.compoundliteral11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -62, ptr %.compoundliteral11, align 1
  %arrayinit.element13 = getelementptr inbounds i8, ptr %.compoundliteral11, i32 1
  %20 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %arrayinit.element13, align 1
  %call15 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %18, ptr noundef nonnull %.compoundliteral11, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.21, i32 noundef %call15) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %23 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dsi, align 4
  %25 = ptrtoint ptr %.compoundliteral25 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 53, ptr %.compoundliteral25, align 1
  %arrayinit.element27 = getelementptr inbounds i8, ptr %.compoundliteral25, i32 1
  %26 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayinit.element27, align 1
  %call29 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %24, ptr noundef nonnull %.compoundliteral25, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.24, i32 noundef %call29) #7
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsi, align 4
  %31 = ptrtoint ptr %.compoundliteral39 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 81, ptr %.compoundliteral39, align 1
  %arrayinit.element41 = getelementptr inbounds i8, ptr %.compoundliteral39, i32 1
  %32 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %arrayinit.element41, align 1
  %call43 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %30, ptr noundef nonnull %.compoundliteral39, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.27, i32 noundef %call43) #7
  br label %cleanup

if.end51:                                         ; preds = %if.end37
  %35 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dsi, align 4
  %call53 = call i32 @mipi_dsi_dcs_write(ptr noundef %36, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.30, i32 noundef %call53) #7
  br label %cleanup

if.end61:                                         ; preds = %if.end51
  call void @msleep(i32 noundef 120) #4
  %39 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dsi, align 4
  %call63 = call i32 @mipi_dsi_dcs_write(ptr noundef %40, i8 noundef zeroext 41, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %if.end71

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %panel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.33, i32 noundef %call63) #7
  br label %cleanup

if.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  call void @msleep(i32 noundef 120) #4
  %43 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end68, %do.end58, %do.end48, %do.end34, %do.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %do.end ], [ %call15, %do.end20 ], [ %call29, %do.end34 ], [ %call43, %do.end48 ], [ %call53, %do.end58 ], [ %call63, %do.end68 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visionox_rm69299_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mode_flags, align 8
  %3 = load ptr, ptr %dsi, align 4
  %call2 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %3, i8 noundef zeroext 40, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, i32 noundef %call2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @msleep(i32 noundef 120) #4
  %6 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi, align 4
  %call5 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %7, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.38, i32 noundef %call5) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.end.if.end13_crit_edge
  %reset_gpio.i = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 2
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #4
  %supplies.i = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 1
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #4
  %prepared = getelementptr inbounds %struct.visionox_rm69299, ptr %panel, i32 0, i32 4
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %prepared, align 4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visionox_rm69299_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_create(ptr noundef %1) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %4 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 74, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 131, ptr %height_mm, align 4
  tail call void @drm_mode_copy(ptr noundef nonnull %call1, ptr noundef nonnull @visionox_rm69299_1080x2248_60hz) #4
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 28
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_panel_visionox_rm69299__302_284_visionox_rm69299_driver_init6, !1, !"__initcall__kmod_panel_visionox_rm69299__302_284_visionox_rm69299_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 284, i32 1}
!2 = !{ptr @__exitcall_visionox_rm69299_driver_exit, !1, !"__exitcall_visionox_rm69299_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 286, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 287, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 278, i32 11}
!10 = !{ptr @visionox_rm69299_driver, !11, !"visionox_rm69299_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 276, i32 31}
!12 = !{ptr @visionox_rm69299_of_match, !13, !"visionox_rm69299_of_match", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 270, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 207, i32 28}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 208, i32 28}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 216, i32 7}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 218, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @visionox_rm69299_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @visionox_rm69299_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 234, i32 3}
!30 = !{ptr @visionox_rm69299_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @visionox_rm69299_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 240, i32 3}
!34 = !{ptr @visionox_rm69299_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @visionox_rm69299_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 246, i32 3}
!38 = !{ptr @visionox_rm69299_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @visionox_rm69299_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @visionox_rm69299_drm_funcs, !41, !"visionox_rm69299_drm_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 186, i32 37}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 103, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @visionox_rm69299_prepare._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @visionox_rm69299_prepare._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 109, i32 3}
!49 = !{ptr @visionox_rm69299_prepare._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @visionox_rm69299_prepare._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 115, i32 3}
!53 = !{ptr @visionox_rm69299_prepare._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @visionox_rm69299_prepare._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 121, i32 3}
!57 = !{ptr @visionox_rm69299_prepare._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @visionox_rm69299_prepare._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 127, i32 3}
!61 = !{ptr @visionox_rm69299_prepare._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @visionox_rm69299_prepare._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 136, i32 3}
!65 = !{ptr @visionox_rm69299_prepare._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @visionox_rm69299_prepare._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 71, i32 3}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @visionox_rm69299_unprepare._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @visionox_rm69299_unprepare._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 78, i32 3}
!74 = !{ptr @visionox_rm69299_unprepare._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @visionox_rm69299_unprepare._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 173, i32 3}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @visionox_rm69299_get_modes._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @visionox_rm69299_get_modes._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @visionox_rm69299_1080x2248_60hz, !82, !"visionox_rm69299_1080x2248_60hz", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-visionox-rm69299.c", i32 151, i32 38}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i8 0, i8 2}
