; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-ilitek-ili9341.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-ilitek-ili9341.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ili9341_config = type { i32, %struct.drm_display_mode, [3 x i8], [3 x i8], [4 x i8], [3 x i8], [2 x i8], [5 x i8], [2 x i8], i8, [2 x i8], i8, i8, [2 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [3 x i8], i8, i8, [15 x i8], [15 x i8] }
%struct.ili9341 = type { ptr, ptr, %struct.drm_panel, ptr, ptr, ptr, i32, [3 x %struct.regulator_bulk_data] }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mipi_dbi_dev = type { %struct.drm_device, %struct.drm_simple_display_pipe, %struct.drm_connector, %struct.drm_display_mode, ptr, i32, i32, i32, ptr, ptr, %struct.mipi_dbi }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.mipi_dbi = type { %struct.mutex, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_panel_ilitek_ili9341__320_788_ili9341_driver_init6 = internal global ptr @ili9341_driver_init, section ".initcall6.init", align 4
@ili9341_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ili9341_id, ptr @ili9341_probe, ptr @ili9341_remove, ptr @ili9341_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ili9341_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ili9341_driver_exit = internal global ptr @ili9341_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [65 x i8] c"panel_ilitek_ili9341.author=Dillon Min <dillon.minfei@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [58 x i8] c"panel_ilitek_ili9341.description=ILI9341 LCD panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [69 x i8] c"panel_ilitek_ili9341.file=drivers/gpu/drm/panel/panel-ilitek-ili9341\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [36 x i8] c"panel_ilitek_ili9341.license=GPL v2\00", section ".modinfo", align 1
@ili9341_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"yx240qv29\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sf-tc240t-9370-t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-ilitek-ili9341\00", [43 x i8] zeroinitializer }, align 32
@ili9341_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sf-tc240t-9370-t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ili9341_stm32f429_disco_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adafruit,yx240qv29\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ili9341_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 717, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get gpio 'reset'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ili9341_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-ilitek-ili9341.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ili9341_probe._entry_ptr = internal global ptr @ili9341_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dc\00", [29 x i8] zeroinitializer }, align 32
@ili9341_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 721, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get gpio 'dc'\0A\00", [39 x i8] zeroinitializer }, align 32
@ili9341_probe._entry_ptr.10 = internal global ptr @ili9341_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sf-tc240t-9370-t\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"yx240qv29\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddi\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vddi-led\00", [23 x i8] zeroinitializer }, align 32
@ili9341_dpi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 680, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ili9341_dpi_probe\00", [46 x i8] zeroinitializer }, align 32
@ili9341_dpi_probe._entry_ptr = internal global ptr @ili9341_dpi_probe._entry, section ".printk_index", align 4
@ili9341_dpi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 696, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing device configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@ili9341_dpi_probe._entry_ptr.20 = internal global ptr @ili9341_dpi_probe._entry.18, section ".printk_index", align 4
@ili9341_dpi_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ili9341_dpi_prepare, ptr @ili9341_dpi_enable, ptr @ili9341_dpi_disable, ptr @ili9341_dpi_unprepare, ptr @ili9341_dpi_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to enable vcc\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ili9341_dpi_power_on\00", [43 x i8] zeroinitializer }, align 32
@ili9341_dpi_power_on._entry_ptr = internal global ptr @ili9341_dpi_power_on._entry, section ".printk_index", align 4
@ili9341_dpi_init._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ili9341_dpi_init = private unnamed_addr constant [17 x i8] c"ili9341_dpi_init\00", align 1
@ili9341_dpi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr = internal global ptr @ili9341_dpi_init._entry, section ".printk_index", align 4
@ili9341_dpi_init._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.27 = internal global ptr @ili9341_dpi_init._entry.26, section ".printk_index", align 4
@ili9341_dpi_init._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.30 = internal global ptr @ili9341_dpi_init._entry.29, section ".printk_index", align 4
@ili9341_dpi_init._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 327, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.33 = internal global ptr @ili9341_dpi_init._entry.32, section ".printk_index", align 4
@ili9341_dpi_init._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.36 = internal global ptr @ili9341_dpi_init._entry.35, section ".printk_index", align 4
@ili9341_dpi_init._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.39 = internal global ptr @ili9341_dpi_init._entry.38, section ".printk_index", align 4
@ili9341_dpi_init._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.42 = internal global ptr @ili9341_dpi_init._entry.41, section ".printk_index", align 4
@ili9341_dpi_init._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.45 = internal global ptr @ili9341_dpi_init._entry.44, section ".printk_index", align 4
@ili9341_dpi_init._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 348, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.48 = internal global ptr @ili9341_dpi_init._entry.47, section ".printk_index", align 4
@ili9341_dpi_init._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.51 = internal global ptr @ili9341_dpi_init._entry.50, section ".printk_index", align 4
@ili9341_dpi_init._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 355, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.54 = internal global ptr @ili9341_dpi_init._entry.53, section ".printk_index", align 4
@ili9341_dpi_init._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.57 = internal global ptr @ili9341_dpi_init._entry.56, section ".printk_index", align 4
@ili9341_dpi_init._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.60 = internal global ptr @ili9341_dpi_init._entry.59, section ".printk_index", align 4
@ili9341_dpi_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.ili9341_dpi_init, ptr @.str.4, i32 360, ptr @.str.63, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Initialized display rgb interface\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ili9341_dpi_init._entry_ptr.64 = internal global ptr @ili9341_dpi_init._entry.61, section ".printk_index", align 4
@ili9341_dpi_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ili9341_dpi_enable = private unnamed_addr constant [19 x i8] c"ili9341_dpi_enable\00", align 1
@ili9341_dpi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_enable, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_enable._entry_ptr = internal global ptr @ili9341_dpi_enable._entry, section ".printk_index", align 4
@ili9341_dpi_disable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ili9341_dpi_disable = private unnamed_addr constant [20 x i8] c"ili9341_dpi_disable\00", align 1
@ili9341_dpi_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dpi_disable, ptr @.str.4, i32 401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dpi_disable._entry_ptr = internal global ptr @ili9341_dpi_disable._entry, section ".printk_index", align 4
@ili9341_dpi_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[drm] *ERROR* bad mode or failed to add mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ili9341_dpi_get_modes\00", [42 x i8] zeroinitializer }, align 32
@ili9341_dpi_get_modes._entry_ptr = internal global ptr @ili9341_dpi_get_modes._entry, section ".printk_index", align 4
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@ili9341_dbi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get optional vcc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ili9341_dbi_probe\00", [46 x i8] zeroinitializer }, align 32
@ili9341_dbi_probe._entry_ptr = internal global ptr @ili9341_dbi_probe._entry, section ".printk_index", align 4
@ili9341_dbi_driver = internal global { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_dbi_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table_vmap, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.71, ptr @.str.72, ptr @.str.73, i32 19, ptr null, i32 0, ptr @ili9341_dbi_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rotation\00", [23 x i8] zeroinitializer }, align 32
@ili9341_dbi_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @ili9341_dbi_enable, ptr @mipi_dbi_pipe_disable, ptr null, ptr @mipi_dbi_pipe_update, ptr @drm_gem_simple_display_pipe_prepare_fb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ili9341_dbi_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 1, i16 240, i16 240, i16 240, i16 240, i16 0, i16 320, i16 320, i16 320, i16 320, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 37, i16 49, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ili9341\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ilitek ILI9341\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20210716\00", [23 x i8] zeroinitializer }, align 32
@ili9341_dbi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ili9341_dbi_enable = private unnamed_addr constant [19 x i8] c"ili9341_dbi_enable\00", align 1
@ili9341_dbi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr = internal global ptr @ili9341_dbi_enable._entry, section ".printk_index", align 4
@__const.ili9341_dbi_enable.d = private unnamed_addr constant [3 x i8] c"\00\C10", align 1
@ili9341_dbi_enable._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.76 = internal global ptr @ili9341_dbi_enable._entry.75, section ".printk_index", align 4
@ili9341_dbi_enable._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 508, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.80 = internal global ptr @ili9341_dbi_enable._entry.79, section ".printk_index", align 4
@__const.ili9341_dbi_enable.d.81 = private unnamed_addr constant [3 x i8] c"\85\00x", align 1
@ili9341_dbi_enable._rs.82 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.84 = internal global ptr @ili9341_dbi_enable._entry.83, section ".printk_index", align 4
@__const.ili9341_dbi_enable.d.85 = private unnamed_addr constant [5 x i8] c"9,\004\02", align 1
@ili9341_dbi_enable._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.88 = internal global ptr @ili9341_dbi_enable._entry.87, section ".printk_index", align 4
@ili9341_dbi_enable._rs.90 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.92 = internal global ptr @ili9341_dbi_enable._entry.91, section ".printk_index", align 4
@ili9341_dbi_enable._rs.93 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 512, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.95 = internal global ptr @ili9341_dbi_enable._entry.94, section ".printk_index", align 4
@ili9341_dbi_enable._rs.97 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.99 = internal global ptr @ili9341_dbi_enable._entry.98, section ".printk_index", align 4
@ili9341_dbi_enable._rs.101 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.103 = internal global ptr @ili9341_dbi_enable._entry.102, section ".printk_index", align 4
@ili9341_dbi_enable._rs.105 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.107 = internal global ptr @ili9341_dbi_enable._entry.106, section ".printk_index", align 4
@ili9341_dbi_enable._rs.109 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.111 = internal global ptr @ili9341_dbi_enable._entry.110, section ".printk_index", align 4
@ili9341_dbi_enable._rs.113 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.115 = internal global ptr @ili9341_dbi_enable._entry.114, section ".printk_index", align 4
@ili9341_dbi_enable._rs.117 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.119 = internal global ptr @ili9341_dbi_enable._entry.118, section ".printk_index", align 4
@ili9341_dbi_enable._rs.120 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 531, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.122 = internal global ptr @ili9341_dbi_enable._entry.121, section ".printk_index", align 4
@ili9341_dbi_enable._rs.124 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 532, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.126 = internal global ptr @ili9341_dbi_enable._entry.125, section ".printk_index", align 4
@__const.ili9341_dbi_enable.d.127 = private unnamed_addr constant [15 x i8] c"\0F1+\0C\0E\08N\F17\07\10\03\0E\09\00", align 1
@ili9341_dbi_enable._rs.128 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.130 = internal global ptr @ili9341_dbi_enable._entry.129, section ".printk_index", align 4
@__const.ili9341_dbi_enable.d.131 = private unnamed_addr constant [15 x i8] c"\00\0E\14\03\11\071\C1H\08\0F\0C16\0F", align 1
@ili9341_dbi_enable._rs.132 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 538, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.134 = internal global ptr @ili9341_dbi_enable._entry.133, section ".printk_index", align 4
@ili9341_dbi_enable._rs.136 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 543, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.138 = internal global ptr @ili9341_dbi_enable._entry.137, section ".printk_index", align 4
@ili9341_dbi_enable._rs.140 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 546, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.142 = internal global ptr @ili9341_dbi_enable._entry.141, section ".printk_index", align 4
@ili9341_dbi_enable._rs.143 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.145 = internal global ptr @ili9341_dbi_enable._entry.144, section ".printk_index", align 4
@ili9341_dbi_enable._rs.146 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.148 = internal global ptr @ili9341_dbi_enable._entry.147, section ".printk_index", align 4
@ili9341_dbi_enable._rs.149 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.151 = internal global ptr @ili9341_dbi_enable._entry.150, section ".printk_index", align 4
@ili9341_dbi_enable._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @__func__.ili9341_dbi_enable, ptr @.str.4, i32 573, ptr @.str.63, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[drm] Initialized display serial interface\0A\00", [52 x i8] zeroinitializer }, align 32
@ili9341_dbi_enable._entry_ptr.154 = internal global ptr @ili9341_dbi_enable._entry.152, section ".printk_index", align 4
@ili9341_stm32f429_disco_data = internal constant { %struct.ili9341_config, [60 x i8] } { %struct.ili9341_config { i32 10000000, %struct.drm_display_mode { i32 6100, i16 240, i16 250, i16 260, i16 280, i16 0, i16 320, i16 324, i16 326, i16 328, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 65, i16 50, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [3 x i8] c"\C3\08P", [3 x i8] c"\00\C10", [4 x i8] c"d\03\12\81", [3 x i8] c"\85\00x", [2 x i8] zeroinitializer, [5 x i8] c"9,\004\02", [2 x i8] c"\00\1B", i8 32, [2 x i8] c"\0A\A2", i8 16, i8 16, [2 x i8] c"E\15", i8 -112, i8 -56, i8 0, i8 -62, [4 x i8] c"\0A\A7'\04", [4 x i8] c"\00\00\0E\EF", [4 x i8] c"\00\00\13?", [3 x i8] c"\01\00\06", i8 80, i8 1, [15 x i8] c"\0F)$\0C\0E\09Nx<\09\13\05\17\11\00", [15 x i8] c"\00\16\1B\04\11\0713B\05\0C\0A(/\0F" }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"ili9341_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 778, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant [11 x i8] c"ili9341_id\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 771, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 784, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"ili9341_of_match\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 755, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 715, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 717, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 719, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 721, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 723, i32 24 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 725, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 674, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 675, i32 28 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 676, i32 28 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 680, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 696, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"ili9341_dpi_funcs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 479, i32 37 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 375, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 315, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 321, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 322, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 327, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 328, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 331, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 332, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 347, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 348, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 350, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 355, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 357, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 358, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 360, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 430, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 401, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 458, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 614, i32 41 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 616, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [19 x i8] c"ili9341_dbi_driver\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 591, i32 26 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 634, i32 32 }
@___asan_gen_.371 = private unnamed_addr constant [18 x i8] c"ili9341_dbi_funcs\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 578, i32 51 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"ili9341_dbi_mode\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 585, i32 38 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 596, i32 12 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 597, i32 12 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 598, i32 12 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"ili9341_dbi_fops\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 589, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 505, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 507, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 508, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 509, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 510, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 511, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 512, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 515, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 516, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 518, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 520, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 523, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 527, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 531, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 532, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 533, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 536, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 541, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 546, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 547, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 550, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 571, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 573, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [29 x i8] c"ili9341_stm32f429_disco_data\00", align 1
@___asan_gen_.528 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 190, i32 36 }
@llvm.compiler.used = appending global [178 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ili9341_driver_exit, ptr @__initcall__kmod_panel_ilitek_ili9341__320_788_ili9341_driver_init6, ptr @ili9341_dbi_enable._entry, ptr @ili9341_dbi_enable._entry.102, ptr @ili9341_dbi_enable._entry.106, ptr @ili9341_dbi_enable._entry.110, ptr @ili9341_dbi_enable._entry.114, ptr @ili9341_dbi_enable._entry.118, ptr @ili9341_dbi_enable._entry.121, ptr @ili9341_dbi_enable._entry.125, ptr @ili9341_dbi_enable._entry.129, ptr @ili9341_dbi_enable._entry.133, ptr @ili9341_dbi_enable._entry.137, ptr @ili9341_dbi_enable._entry.141, ptr @ili9341_dbi_enable._entry.144, ptr @ili9341_dbi_enable._entry.147, ptr @ili9341_dbi_enable._entry.150, ptr @ili9341_dbi_enable._entry.152, ptr @ili9341_dbi_enable._entry.75, ptr @ili9341_dbi_enable._entry.79, ptr @ili9341_dbi_enable._entry.83, ptr @ili9341_dbi_enable._entry.87, ptr @ili9341_dbi_enable._entry.91, ptr @ili9341_dbi_enable._entry.94, ptr @ili9341_dbi_enable._entry.98, ptr @ili9341_dbi_enable._entry_ptr, ptr @ili9341_dbi_enable._entry_ptr.103, ptr @ili9341_dbi_enable._entry_ptr.107, ptr @ili9341_dbi_enable._entry_ptr.111, ptr @ili9341_dbi_enable._entry_ptr.115, ptr @ili9341_dbi_enable._entry_ptr.119, ptr @ili9341_dbi_enable._entry_ptr.122, ptr @ili9341_dbi_enable._entry_ptr.126, ptr @ili9341_dbi_enable._entry_ptr.130, ptr @ili9341_dbi_enable._entry_ptr.134, ptr @ili9341_dbi_enable._entry_ptr.138, ptr @ili9341_dbi_enable._entry_ptr.142, ptr @ili9341_dbi_enable._entry_ptr.145, ptr @ili9341_dbi_enable._entry_ptr.148, ptr @ili9341_dbi_enable._entry_ptr.151, ptr @ili9341_dbi_enable._entry_ptr.154, ptr @ili9341_dbi_enable._entry_ptr.76, ptr @ili9341_dbi_enable._entry_ptr.80, ptr @ili9341_dbi_enable._entry_ptr.84, ptr @ili9341_dbi_enable._entry_ptr.88, ptr @ili9341_dbi_enable._entry_ptr.92, ptr @ili9341_dbi_enable._entry_ptr.95, ptr @ili9341_dbi_enable._entry_ptr.99, ptr @ili9341_dbi_probe._entry, ptr @ili9341_dbi_probe._entry_ptr, ptr @ili9341_dpi_disable._entry, ptr @ili9341_dpi_disable._entry_ptr, ptr @ili9341_dpi_enable._entry, ptr @ili9341_dpi_enable._entry_ptr, ptr @ili9341_dpi_get_modes._entry, ptr @ili9341_dpi_get_modes._entry_ptr, ptr @ili9341_dpi_init._entry, ptr @ili9341_dpi_init._entry.26, ptr @ili9341_dpi_init._entry.29, ptr @ili9341_dpi_init._entry.32, ptr @ili9341_dpi_init._entry.35, ptr @ili9341_dpi_init._entry.38, ptr @ili9341_dpi_init._entry.41, ptr @ili9341_dpi_init._entry.44, ptr @ili9341_dpi_init._entry.47, ptr @ili9341_dpi_init._entry.50, ptr @ili9341_dpi_init._entry.53, ptr @ili9341_dpi_init._entry.56, ptr @ili9341_dpi_init._entry.59, ptr @ili9341_dpi_init._entry.61, ptr @ili9341_dpi_init._entry_ptr, ptr @ili9341_dpi_init._entry_ptr.27, ptr @ili9341_dpi_init._entry_ptr.30, ptr @ili9341_dpi_init._entry_ptr.33, ptr @ili9341_dpi_init._entry_ptr.36, ptr @ili9341_dpi_init._entry_ptr.39, ptr @ili9341_dpi_init._entry_ptr.42, ptr @ili9341_dpi_init._entry_ptr.45, ptr @ili9341_dpi_init._entry_ptr.48, ptr @ili9341_dpi_init._entry_ptr.51, ptr @ili9341_dpi_init._entry_ptr.54, ptr @ili9341_dpi_init._entry_ptr.57, ptr @ili9341_dpi_init._entry_ptr.60, ptr @ili9341_dpi_init._entry_ptr.64, ptr @ili9341_dpi_power_on._entry, ptr @ili9341_dpi_power_on._entry_ptr, ptr @ili9341_dpi_probe._entry, ptr @ili9341_dpi_probe._entry.18, ptr @ili9341_dpi_probe._entry_ptr, ptr @ili9341_dpi_probe._entry_ptr.20, ptr @ili9341_driver_exit, ptr @ili9341_probe._entry, ptr @ili9341_probe._entry.8, ptr @ili9341_probe._entry_ptr, ptr @ili9341_probe._entry_ptr.10, ptr @ili9341_driver, ptr @ili9341_id, ptr @.str, ptr @ili9341_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @ili9341_dpi_funcs, ptr @.str.21, ptr @.str.22, ptr @ili9341_dpi_init._rs, ptr @.str.23, ptr @.str.24, ptr @ili9341_dpi_init._rs.25, ptr @ili9341_dpi_init._rs.28, ptr @ili9341_dpi_init._rs.31, ptr @ili9341_dpi_init._rs.34, ptr @ili9341_dpi_init._rs.37, ptr @ili9341_dpi_init._rs.40, ptr @ili9341_dpi_init._rs.43, ptr @ili9341_dpi_init._rs.46, ptr @ili9341_dpi_init._rs.49, ptr @ili9341_dpi_init._rs.52, ptr @ili9341_dpi_init._rs.55, ptr @ili9341_dpi_init._rs.58, ptr @.str.62, ptr @.str.63, ptr @ili9341_dpi_enable._rs, ptr @ili9341_dpi_disable._rs, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @ili9341_dbi_driver, ptr @.str.70, ptr @ili9341_dbi_funcs, ptr @ili9341_dbi_mode, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @ili9341_dbi_fops, ptr @ili9341_dbi_enable._rs, ptr @ili9341_dbi_enable._rs.74, ptr @ili9341_dbi_enable._rs.78, ptr @ili9341_dbi_enable._rs.82, ptr @ili9341_dbi_enable._rs.86, ptr @ili9341_dbi_enable._rs.90, ptr @ili9341_dbi_enable._rs.93, ptr @ili9341_dbi_enable._rs.97, ptr @ili9341_dbi_enable._rs.101, ptr @ili9341_dbi_enable._rs.105, ptr @ili9341_dbi_enable._rs.109, ptr @ili9341_dbi_enable._rs.113, ptr @ili9341_dbi_enable._rs.117, ptr @ili9341_dbi_enable._rs.120, ptr @ili9341_dbi_enable._rs.124, ptr @ili9341_dbi_enable._rs.128, ptr @ili9341_dbi_enable._rs.132, ptr @ili9341_dbi_enable._rs.136, ptr @ili9341_dbi_enable._rs.140, ptr @ili9341_dbi_enable._rs.143, ptr @ili9341_dbi_enable._rs.146, ptr @ili9341_dbi_enable._rs.149, ptr @.str.153, ptr @ili9341_stm32f429_disco_data], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_disable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dpi_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.90 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.93 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.101 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.105 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.109 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.113 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.117 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.120 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.128 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.132 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.136 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.140 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.143 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.146 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._rs.149 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_dbi_enable._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9341_stm32f429_disco_data to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ili9341_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ili9341_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ili9341_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rotation.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef 3) #6
  %cmp.i36 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %do.end9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(17) @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 84, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12.cleanup_crit_edge, label %if.end.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %call.i62.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 124, i32 noundef 3520) #6
  %dbi.i = getelementptr inbounds %struct.ili9341, ptr %call.i.i, i32 0, i32 5
  %0 = ptrtoint ptr %dbi.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i62.i, ptr %dbi.i, align 4
  %tobool4.not.i = icmp eq ptr %call.i62.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %supplies.i = getelementptr inbounds %struct.ili9341, ptr %call.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.13, ptr %supplies.i, align 4
  %arrayidx8.i = getelementptr %struct.ili9341, ptr %call.i.i, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.14, ptr %arrayidx8.i, align 4
  %arrayidx11.i = getelementptr %struct.ili9341, ptr %call.i.i, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.15, ptr %arrayidx11.i, align 4
  %call14.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %spi, i32 noundef 3, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i37 = icmp slt i32 %call14.i, 0
  br i1 %cmp.i37, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %call14.i) #9
  br label %cleanup

if.end16.i:                                       ; preds = %if.end6.i
  %4 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbi.i, align 4
  %call18.i = tail call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %5, ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end16.i
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %reset_gpio.i = getelementptr inbounds %struct.ili9341, ptr %call.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %reset_gpio.i, align 4
  %call22.i = tail call ptr @of_device_get_match_data(ptr noundef %spi) #6
  %conf.i = getelementptr inbounds %struct.ili9341, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22.i, ptr %conf.i, align 4
  %tobool24.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool24.not.i, label %do.end28.i, label %if.end29.i

do.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call22.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call22.i, align 4
  %max_spi_speed31.i = getelementptr inbounds %struct.ili9341, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %max_spi_speed31.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_spi_speed31.i, align 4
  %panel.i = getelementptr inbounds %struct.ili9341, ptr %call.i.i, i32 0, i32 2
  tail call void @drm_panel_init(ptr noundef %panel.i, ptr noundef %spi, ptr noundef nonnull @ili9341_dpi_funcs, i32 noundef 17) #6
  tail call void @drm_panel_add(ptr noundef %panel.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %call16 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation.i) #6
  %12 = ptrtoint ptr %rotation.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rotation.i, align 4
  %call.i = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.67) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i38, label %if.then18.if.end.i39_crit_edge

if.then18.if.end.i39_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i39

do.end.i38:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.68) #9
  br label %if.end.i39

if.end.i39:                                       ; preds = %do.end.i38, %if.then18.if.end.i39_crit_edge
  %call3.i = tail call ptr @__devm_drm_dev_alloc(ptr noundef %spi, ptr noundef nonnull @ili9341_dbi_driver, i32 noundef 5240, i32 noundef 0) #6
  %cmp.i62.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call3.i to i32
  br label %ili9341_dbi_probe.exit

if.end7.i:                                        ; preds = %if.end.i39
  %reset10.i = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call3.i, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %reset10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %reset10.i, align 4
  %regulator.i = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call3.i, i32 0, i32 9
  %15 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %regulator.i, align 4
  %call.i.i40 = tail call i32 @drmm_mode_config_init(ptr noundef %call3.i) #6
  %call12.i = tail call ptr @devm_of_find_backlight(ptr noundef %spi) #6
  %backlight.i = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call3.i, i32 0, i32 8
  %16 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12.i, ptr %backlight.i, align 8
  %cmp.i63.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then15.i, label %if.end18.i

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call12.i to i32
  br label %ili9341_dbi_probe.exit

if.end18.i:                                       ; preds = %if.end7.i
  %dbi8.i = getelementptr inbounds %struct.mipi_dbi_dev, ptr %call3.i, i32 0, i32 10
  %call.i64.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.70, ptr noundef nonnull %rotation.i, i32 noundef 1) #6
  %call20.i = call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi8.i, ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not.i41 = icmp eq i32 %call20.i, 0
  br i1 %tobool.not.i41, label %if.end22.i, label %if.end18.i.ili9341_dbi_probe.exit_crit_edge

if.end18.i.ili9341_dbi_probe.exit_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ili9341_dbi_probe.exit

if.end22.i:                                       ; preds = %if.end18.i
  %18 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rotation.i, align 4
  %call23.i = call i32 @mipi_dbi_dev_init(ptr noundef %call3.i, ptr noundef nonnull @ili9341_dbi_funcs, ptr noundef nonnull @ili9341_dbi_mode, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i42 = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i42, label %if.end26.i, label %if.end22.i.ili9341_dbi_probe.exit_crit_edge

if.end22.i.ili9341_dbi_probe.exit_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ili9341_dbi_probe.exit

if.end26.i:                                       ; preds = %if.end22.i
  call void @drm_mode_config_reset(ptr noundef %call3.i) #6
  %call27.i = call i32 @drm_dev_register(ptr noundef %call3.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.ili9341_dbi_probe.exit_crit_edge

if.end26.i.ili9341_dbi_probe.exit_crit_edge:      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ili9341_dbi_probe.exit

if.end30.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i.i43 = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3.i, ptr %driver_data.i.i.i43, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %call3.i, i32 noundef 0) #6
  br label %ili9341_dbi_probe.exit

ili9341_dbi_probe.exit:                           ; preds = %if.end30.i, %if.end26.i.ili9341_dbi_probe.exit_crit_edge, %if.end22.i.ili9341_dbi_probe.exit_crit_edge, %if.end18.i.ili9341_dbi_probe.exit_crit_edge, %if.then15.i, %if.then5.i
  %retval.0.i44 = phi i32 [ %13, %if.then5.i ], [ %17, %if.then15.i ], [ 0, %if.end30.i ], [ %call20.i, %if.end18.i.ili9341_dbi_probe.exit_crit_edge ], [ %call23.i, %if.end22.i.ili9341_dbi_probe.exit_crit_edge ], [ %call27.i, %if.end26.i.ili9341_dbi_probe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ili9341_dbi_probe.exit, %if.else.cleanup_crit_edge, %if.end29.i, %do.end28.i, %if.end16.i.cleanup_crit_edge, %do.end.i, %if.end.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i44, %ili9341_dbi_probe.exit ], [ -1, %if.else.cleanup_crit_edge ], [ %call14.i, %do.end.i ], [ 0, %if.end29.i ], [ -19, %do.end28.i ], [ -12, %if.then12.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call18.i, %if.end16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(17) @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reset_gpio.i = getelementptr inbounds %struct.ili9341, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  %supplies.i = getelementptr inbounds %struct.ili9341, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #6
  %panel = getelementptr inbounds %struct.ili9341, ptr %1, i32 0, i32 2
  tail call void @drm_panel_remove(ptr noundef %panel) #6
  br label %if.end10

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_dev_unplug(ptr noundef %1) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else.if.end10_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ili9341_shutdown(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %call1 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_spi_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_dpi_prepare(ptr noundef %panel) #2 align 64 {
entry:
  %d194.i = alloca [0 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  %d30.i = alloca [1 x i8], align 1
  %d52.i = alloca [1 x i8], align 1
  %d76.i = alloca [1 x i8], align 1
  %d98.i = alloca [1 x i8], align 1
  %d120.i = alloca [1 x i8], align 1
  %d142.i = alloca [1 x i8], align 1
  %d172.i = alloca [1 x i8], align 1
  %d215.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  %supplies.i = getelementptr i8, ptr %panel, i32 40
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ili9341_dpi_power_on.exit.thread, label %if.end

ili9341_dpi_power_on.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #6
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 20) #6
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %dbi2.i = getelementptr i8, ptr %panel, i32 32
  %8 = ptrtoint ptr %dbi2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbi2.i, align 4
  %conf.i = getelementptr i8, ptr %panel, i32 -4
  %10 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf.i, align 4
  %ca.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 2
  %call.i7 = tail call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -54, ptr noundef %ca.i, i32 noundef 3) #6
  %power_b.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 3
  %call4.i = tail call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -49, ptr noundef %power_b.i, i32 noundef 3) #6
  %power_seq.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 4
  %call6.i = tail call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -19, ptr noundef %power_seq.i, i32 noundef 4) #6
  %dtca.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 5
  %call8.i = tail call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -24, ptr noundef %dtca.i, i32 noundef 3) #6
  %power_a.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 7
  %call10.i = tail call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -53, ptr noundef %power_a.i, i32 noundef 5) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #6
  %prc.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %prc.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prc.i, align 2
  %14 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %d.i, align 1
  %15 = ptrtoint ptr %dbi2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dbi2.i, align 4
  %spi.i = getelementptr inbounds %struct.mipi_dbi, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi.i, align 4
  %call16.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %16, i8 noundef zeroext -9, ptr noundef nonnull %d.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.end.if.end23.i_crit_edge, label %do.body.i

if.end.if.end23.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

do.body.i:                                        ; preds = %if.end
  %call17.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body.i.if.end23.i_crit_edge, label %do.end.i8

do.body.i.if.end23.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

do.end.i8:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24, i32 noundef %call16.i, i32 noundef 247) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i8, %do.body.i.if.end23.i_crit_edge, %if.end.if.end23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #6
  %dtcb.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 6
  %call25.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -22, ptr noundef %dtcb.i, i32 noundef 2) #6
  %frc.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 8
  %call27.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -79, ptr noundef %frc.i, i32 noundef 2) #6
  %dfc_1.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 10
  %call29.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -74, ptr noundef %dfc_1.i, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d30.i) #6
  %power_1.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 11
  %19 = ptrtoint ptr %power_1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %power_1.i, align 1
  %21 = ptrtoint ptr %d30.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %d30.i, align 1
  %spi33.i = getelementptr inbounds %struct.mipi_dbi, ptr %9, i32 0, i32 5
  %22 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi33.i, align 4
  %call37.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -64, ptr noundef nonnull %d30.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end23.i.if.end50.i_crit_edge, label %do.body40.i

if.end23.i.if.end50.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

do.body40.i:                                      ; preds = %if.end23.i
  %call41.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.25, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %do.body40.i.if.end50.i_crit_edge, label %do.end46.i

do.body40.i.if.end50.i_crit_edge:                 ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

do.end46.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.24, i32 noundef %call37.i, i32 noundef 192) #9
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end46.i, %do.body40.i.if.end50.i_crit_edge, %if.end23.i.if.end50.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d30.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d52.i) #6
  %power_2.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 12
  %24 = ptrtoint ptr %power_2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %power_2.i, align 2
  %26 = ptrtoint ptr %d52.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %d52.i, align 1
  %27 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi33.i, align 4
  %call59.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -63, ptr noundef nonnull %d52.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end50.i.if.end72.i_crit_edge, label %do.body62.i

if.end50.i.if.end72.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

do.body62.i:                                      ; preds = %if.end50.i
  %call63.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.28, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %do.body62.i.if.end72.i_crit_edge, label %do.end68.i

do.body62.i.if.end72.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72.i

do.end68.i:                                       ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.24, i32 noundef %call59.i, i32 noundef 193) #9
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end68.i, %do.body62.i.if.end72.i_crit_edge, %if.end50.i.if.end72.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d52.i) #6
  %vcom_1.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 13
  %call75.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -59, ptr noundef %vcom_1.i, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d76.i) #6
  %vcom_2.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 14
  %29 = ptrtoint ptr %vcom_2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vcom_2.i, align 1
  %31 = ptrtoint ptr %d76.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %d76.i, align 1
  %32 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi33.i, align 4
  %call83.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -57, ptr noundef nonnull %d76.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.end72.i.if.end96.i_crit_edge, label %do.body86.i

if.end72.i.if.end96.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

do.body86.i:                                      ; preds = %if.end72.i
  %call87.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.31, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %do.body86.i.if.end96.i_crit_edge, label %do.end92.i

do.body86.i.if.end96.i_crit_edge:                 ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

do.end92.i:                                       ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.24, i32 noundef %call83.i, i32 noundef 199) #9
  br label %if.end96.i

if.end96.i:                                       ; preds = %do.end92.i, %do.body86.i.if.end96.i_crit_edge, %if.end72.i.if.end96.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d76.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d98.i) #6
  %address_mode.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 15
  %34 = ptrtoint ptr %address_mode.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %address_mode.i, align 2
  %36 = ptrtoint ptr %d98.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %d98.i, align 1
  %37 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi33.i, align 4
  %call105.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 54, ptr noundef nonnull %d98.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.end96.i.if.end118.i_crit_edge, label %do.body108.i

if.end96.i.if.end118.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118.i

do.body108.i:                                     ; preds = %if.end96.i
  %call109.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.34, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %do.body108.i.if.end118.i_crit_edge, label %do.end114.i

do.body108.i.if.end118.i_crit_edge:               ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118.i

do.end114.i:                                      ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.24, i32 noundef %call105.i, i32 noundef 54) #9
  br label %if.end118.i

if.end118.i:                                      ; preds = %do.end114.i, %do.body108.i.if.end118.i_crit_edge, %if.end96.i.if.end118.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d98.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d120.i) #6
  %g3amma_en.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 16
  %39 = ptrtoint ptr %g3amma_en.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %g3amma_en.i, align 1
  %41 = ptrtoint ptr %d120.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %d120.i, align 1
  %42 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi33.i, align 4
  %call127.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -14, ptr noundef nonnull %d120.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %tobool128.not.i = icmp eq i32 %call127.i, 0
  br i1 %tobool128.not.i, label %if.end118.i.if.end140.i_crit_edge, label %do.body130.i

if.end118.i.if.end140.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140.i

do.body130.i:                                     ; preds = %if.end118.i
  %call131.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.37, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %do.body130.i.if.end140.i_crit_edge, label %do.end136.i

do.body130.i.if.end140.i_crit_edge:               ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140.i

do.end136.i:                                      ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.24, i32 noundef %call127.i, i32 noundef 242) #9
  br label %if.end140.i

if.end140.i:                                      ; preds = %do.end136.i, %do.body130.i.if.end140.i_crit_edge, %if.end118.i.if.end140.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d120.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d142.i) #6
  %rgb_interface.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 17
  %44 = ptrtoint ptr %rgb_interface.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rgb_interface.i, align 4
  %46 = ptrtoint ptr %d142.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %d142.i, align 1
  %47 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi33.i, align 4
  %call149.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -80, ptr noundef nonnull %d142.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  br i1 %tobool150.not.i, label %if.end140.i.if.end162.i_crit_edge, label %do.body152.i

if.end140.i.if.end162.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162.i

do.body152.i:                                     ; preds = %if.end140.i
  %call153.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.40, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i)
  %tobool154.not.i = icmp eq i32 %call153.i, 0
  br i1 %tobool154.not.i, label %do.body152.i.if.end162.i_crit_edge, label %do.end158.i

do.body152.i.if.end162.i_crit_edge:               ; preds = %do.body152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162.i

do.end158.i:                                      ; preds = %do.body152.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.24, i32 noundef %call149.i, i32 noundef 176) #9
  br label %if.end162.i

if.end162.i:                                      ; preds = %do.end158.i, %do.body152.i.if.end162.i_crit_edge, %if.end140.i.if.end162.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d142.i) #6
  %dfc_2.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 18
  %call165.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -74, ptr noundef %dfc_2.i, i32 noundef 4) #6
  %column_addr.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 19
  %call167.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 42, ptr noundef %column_addr.i, i32 noundef 4) #6
  %page_addr.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 20
  %call169.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 43, ptr noundef %page_addr.i, i32 noundef 4) #6
  %interface.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 21
  %call171.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -10, ptr noundef %interface.i, i32 noundef 3) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d172.i) #6
  %pixel_format.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 22
  %49 = ptrtoint ptr %pixel_format.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pixel_format.i, align 4
  %51 = ptrtoint ptr %d172.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %d172.i, align 1
  %52 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi33.i, align 4
  %call179.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 58, ptr noundef nonnull %d172.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.i)
  %tobool180.not.i = icmp eq i32 %call179.i, 0
  br i1 %tobool180.not.i, label %if.end162.i.if.end192.i_crit_edge, label %do.body182.i

if.end162.i.if.end192.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192.i

do.body182.i:                                     ; preds = %if.end162.i
  %call183.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.43, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183.i)
  %tobool184.not.i = icmp eq i32 %call183.i, 0
  br i1 %tobool184.not.i, label %do.body182.i.if.end192.i_crit_edge, label %do.end188.i

do.body182.i.if.end192.i_crit_edge:               ; preds = %do.body182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192.i

do.end188.i:                                      ; preds = %do.body182.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.24, i32 noundef %call179.i, i32 noundef 58) #9
  br label %if.end192.i

if.end192.i:                                      ; preds = %do.end188.i, %do.body182.i.if.end192.i_crit_edge, %if.end162.i.if.end192.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d172.i) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d194.i) #6
  %54 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %spi33.i, align 4
  %call200.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 44, ptr noundef nonnull %d194.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200.i)
  %tobool201.not.i = icmp eq i32 %call200.i, 0
  br i1 %tobool201.not.i, label %if.end192.i.if.end213.i_crit_edge, label %do.body203.i

if.end192.i.if.end213.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.i

do.body203.i:                                     ; preds = %if.end192.i
  %call204.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.46, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204.i)
  %tobool205.not.i = icmp eq i32 %call204.i, 0
  br i1 %tobool205.not.i, label %do.body203.i.if.end213.i_crit_edge, label %do.end209.i

do.body203.i.if.end213.i_crit_edge:               ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.i

do.end209.i:                                      ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.24, i32 noundef %call200.i, i32 noundef 44) #9
  br label %if.end213.i

if.end213.i:                                      ; preds = %do.end209.i, %do.body203.i.if.end213.i_crit_edge, %if.end192.i.if.end213.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d194.i) #6
  call void @msleep(i32 noundef 200) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d215.i) #6
  %gamma_curve.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 23
  %56 = ptrtoint ptr %gamma_curve.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %gamma_curve.i, align 1
  %58 = ptrtoint ptr %d215.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %d215.i, align 1
  %59 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %spi33.i, align 4
  %call222.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 38, ptr noundef nonnull %d215.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222.i)
  %tobool223.not.i = icmp eq i32 %call222.i, 0
  br i1 %tobool223.not.i, label %if.end213.i.if.end235.i_crit_edge, label %do.body225.i

if.end213.i.if.end235.i_crit_edge:                ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235.i

do.body225.i:                                     ; preds = %if.end213.i
  %call226.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.49, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226.i)
  %tobool227.not.i = icmp eq i32 %call226.i, 0
  br i1 %tobool227.not.i, label %do.body225.i.if.end235.i_crit_edge, label %do.end231.i

do.body225.i.if.end235.i_crit_edge:               ; preds = %do.body225.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235.i

do.end231.i:                                      ; preds = %do.body225.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.24, i32 noundef %call222.i, i32 noundef 38) #9
  br label %if.end235.i

if.end235.i:                                      ; preds = %do.end231.i, %do.body225.i.if.end235.i_crit_edge, %if.end213.i.if.end235.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d215.i) #6
  %pgamma.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 24
  %call238.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -32, ptr noundef %pgamma.i, i32 noundef 15) #6
  %ngamma.i = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 25
  %call240.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext -31, ptr noundef %ngamma.i, i32 noundef 15) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d194.i) #6
  %61 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi33.i, align 4
  %call247.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 17, ptr noundef nonnull %d194.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247.i)
  %tobool248.not.i = icmp eq i32 %call247.i, 0
  br i1 %tobool248.not.i, label %if.end235.i.if.end260.i_crit_edge, label %do.body250.i

if.end235.i.if.end260.i_crit_edge:                ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260.i

do.body250.i:                                     ; preds = %if.end235.i
  %call251.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.52, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251.i)
  %tobool252.not.i = icmp eq i32 %call251.i, 0
  br i1 %tobool252.not.i, label %do.body250.i.if.end260.i_crit_edge, label %do.end256.i

do.body250.i.if.end260.i_crit_edge:               ; preds = %do.body250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260.i

do.end256.i:                                      ; preds = %do.body250.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.24, i32 noundef %call247.i, i32 noundef 17) #9
  br label %if.end260.i

if.end260.i:                                      ; preds = %do.end256.i, %do.body250.i.if.end260.i_crit_edge, %if.end235.i.if.end260.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d194.i) #6
  call void @msleep(i32 noundef 200) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d194.i) #6
  %63 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spi33.i, align 4
  %call268.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 41, ptr noundef nonnull %d194.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268.i)
  %tobool269.not.i = icmp eq i32 %call268.i, 0
  br i1 %tobool269.not.i, label %if.end260.i.if.end281.i_crit_edge, label %do.body271.i

if.end260.i.if.end281.i_crit_edge:                ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end281.i

do.body271.i:                                     ; preds = %if.end260.i
  %call272.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.55, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272.i)
  %tobool273.not.i = icmp eq i32 %call272.i, 0
  br i1 %tobool273.not.i, label %do.body271.i.if.end281.i_crit_edge, label %do.end277.i

do.body271.i.if.end281.i_crit_edge:               ; preds = %do.body271.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end281.i

do.end277.i:                                      ; preds = %do.body271.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.24, i32 noundef %call268.i, i32 noundef 41) #9
  br label %if.end281.i

if.end281.i:                                      ; preds = %do.end277.i, %do.body271.i.if.end281.i_crit_edge, %if.end260.i.if.end281.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d194.i) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d194.i) #6
  %65 = ptrtoint ptr %spi33.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi33.i, align 4
  %call289.i = call i32 @mipi_dbi_command_stackbuf(ptr noundef %9, i8 noundef zeroext 44, ptr noundef nonnull %d194.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289.i)
  %tobool290.not.i = icmp eq i32 %call289.i, 0
  br i1 %tobool290.not.i, label %if.end281.i.ili9341_dpi_init.exit_crit_edge, label %do.body292.i

if.end281.i.ili9341_dpi_init.exit_crit_edge:      ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ili9341_dpi_init.exit

do.body292.i:                                     ; preds = %if.end281.i
  %call293.i = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_init._rs.58, ptr noundef nonnull @__func__.ili9341_dpi_init) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293.i)
  %tobool294.not.i = icmp eq i32 %call293.i, 0
  br i1 %tobool294.not.i, label %do.body292.i.ili9341_dpi_init.exit_crit_edge, label %do.end298.i

do.body292.i.ili9341_dpi_init.exit_crit_edge:     ; preds = %do.body292.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ili9341_dpi_init.exit

do.end298.i:                                      ; preds = %do.body292.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.24, i32 noundef %call289.i, i32 noundef 44) #9
  br label %ili9341_dpi_init.exit

ili9341_dpi_init.exit:                            ; preds = %do.end298.i, %do.body292.i.ili9341_dpi_init.exit_crit_edge, %if.end281.i.ili9341_dpi_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d194.i) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.62) #9
  br label %cleanup

cleanup:                                          ; preds = %ili9341_dpi_init.exit, %ili9341_dpi_power_on.exit.thread
  %retval.0.i11 = phi i32 [ %call.i, %ili9341_dpi_power_on.exit.thread ], [ 0, %ili9341_dpi_init.exit ]
  ret i32 %retval.0.i11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_dpi_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #6
  %dbi = getelementptr i8, ptr %panel, i32 32
  %0 = ptrtoint ptr %dbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbi, align 4
  %spi = getelementptr inbounds %struct.mipi_dbi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call3 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %1, i8 noundef zeroext 41, ptr noundef nonnull %d, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_enable._rs, ptr noundef nonnull @__func__.ili9341_dpi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %call3, i32 noundef 41) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_dpi_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #6
  %dbi = getelementptr i8, ptr %panel, i32 32
  %0 = ptrtoint ptr %dbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbi, align 4
  %spi = getelementptr inbounds %struct.mipi_dbi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call3 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %1, i8 noundef zeroext 40, ptr noundef nonnull %d, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dpi_disable._rs, ptr noundef nonnull @__func__.ili9341_dpi_disable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %call3, i32 noundef 40) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_dpi_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 24
  %0 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #6
  %supplies.i = getelementptr i8, ptr %panel, i32 40
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9341_dpi_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %conf = getelementptr i8, ptr %panel, i32 -4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %width_mm = getelementptr inbounds %struct.ili9341_config, ptr %3, i32 0, i32 1, i32 26
  %4 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %display_info, align 8
  %7 = load ptr, ptr %conf, align 4
  %height_mm = getelementptr inbounds %struct.ili9341_config, ptr %7, i32 0, i32 1, i32 27
  %8 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height_mm, align 4
  %conv5 = zext i16 %9 to i32
  %height_mm6 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %height_mm6, align 4
  %11 = load ptr, ptr %conf, align 4
  %rgb_interface = getelementptr inbounds %struct.ili9341_config, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %rgb_interface to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rgb_interface, align 4
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %bus_flags9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %15 = ptrtoint ptr %bus_flags9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_flags9, align 8
  %. = select i1 %tobool.not, i32 8, i32 4
  %or10 = or i32 %16, %.
  store i32 %or10, ptr %bus_flags9, align 8
  %17 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conf, align 4
  %rgb_interface12 = getelementptr inbounds %struct.ili9341_config, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %rgb_interface12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rgb_interface12, align 4
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  %.84 = select i1 %tobool15.not, i32 2, i32 1
  %bus_flags20 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %22 = ptrtoint ptr %bus_flags20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_flags20, align 8
  %or21 = or i32 %23, %.84
  store i32 %or21, ptr %bus_flags20, align 8
  %24 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conf, align 4
  %mode24 = getelementptr inbounds %struct.ili9341_config, ptr %25, i32 0, i32 1
  %call25 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %mode24) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end, label %if.end29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.65) #9
  br label %cleanup

if.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call25) #6
  %28 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conf, align 4
  %rgb_interface31 = getelementptr inbounds %struct.ili9341_config, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %rgb_interface31 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rgb_interface31, align 4
  %32 = and i8 %31, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool34.not = icmp eq i8 %32, 0
  %flags38 = getelementptr inbounds %struct.drm_display_mode, ptr %call25, i32 0, i32 11
  %33 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags38, align 4
  %.83 = select i1 %tobool34.not, i32 2, i32 1
  %or39 = or i32 %34, %.83
  store i32 %or39, ptr %flags38, align 4
  %35 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %conf, align 4
  %rgb_interface42 = getelementptr inbounds %struct.ili9341_config, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %rgb_interface42 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rgb_interface42, align 4
  %39 = and i8 %38, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool45.not = icmp eq i8 %39, 0
  %.85 = select i1 %tobool45.not, i32 8, i32 4
  %flags50 = getelementptr inbounds %struct.drm_display_mode, ptr %call25, i32 0, i32 11
  %40 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags50, align 4
  %or51 = or i32 %41, %.85
  store i32 %or51, ptr %flags50, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  %retval.0 = phi i32 [ 1, %if.end29 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_stackbuf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_find_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_dev_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table_vmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ili9341_dbi_enable(ptr nocapture noundef readonly %pipe, ptr noundef %crtc_state, ptr noundef %plane_state) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  %idx = alloca i32, align 4
  %d24 = alloca [3 x i8], align 1
  %d45 = alloca [4 x i8], align 4
  %d66 = alloca [3 x i8], align 1
  %d87 = alloca [5 x i8], align 1
  %d108 = alloca [1 x i8], align 1
  %d129 = alloca [2 x i8], align 2
  %d150 = alloca [1 x i8], align 1
  %d171 = alloca [1 x i8], align 1
  %d192 = alloca [2 x i8], align 2
  %d213 = alloca [1 x i8], align 1
  %d234 = alloca [1 x i8], align 1
  %d255 = alloca [2 x i8], align 2
  %d276 = alloca [1 x i8], align 1
  %d297 = alloca [1 x i8], align 1
  %d318 = alloca [15 x i8], align 1
  %d339 = alloca [15 x i8], align 1
  %d360 = alloca [1 x i8], align 1
  %d381 = alloca [4 x i8], align 4
  %d447 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dbi1 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #6
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !262
  %call4 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #6
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @mipi_dbi_poweron_conditional_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.out_exit_crit_edge, label %if.end7

if.end.out_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_exit

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp8 = icmp eq i32 %call5, 1
  br i1 %cmp8, label %if.end7.out_enable_crit_edge, label %if.end10

if.end7.out_enable_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_enable

if.end10:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #6
  %spi = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %call14 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 40, ptr noundef nonnull %d, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end10.if.end23_crit_edge, label %do.body

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.body:                                          ; preds = %if.end10
  %call16 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body.if.end23_crit_edge, label %do.end

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %call14, i32 noundef 40) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end, %do.body.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d24) #6
  %5 = call ptr @memcpy(ptr %d24, ptr @__const.ili9341_dbi_enable.d, i32 3)
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %call30 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -49, ptr noundef nonnull %d24, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end23.if.end43_crit_edge, label %do.body33

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.body33:                                        ; preds = %if.end23
  %call34 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.74, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.if.end43_crit_edge, label %do.end39

do.body33.if.end43_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %call30, i32 noundef 207) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %do.body33.if.end43_crit_edge, %if.end23.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d24) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d45) #6
  %8 = ptrtoint ptr %d45 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1677922945, ptr %d45, align 4
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  %call51 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -19, ptr noundef nonnull %d45, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end43.if.end64_crit_edge, label %do.body54

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.body54:                                        ; preds = %if.end43
  %call55 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.78, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body54.if.end64_crit_edge, label %do.end60

do.body54.if.end64_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef %call51, i32 noundef 237) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end60, %do.body54.if.end64_crit_edge, %if.end43.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d45) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d66) #6
  %11 = call ptr @memcpy(ptr %d66, ptr @__const.ili9341_dbi_enable.d.81, i32 3)
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  %call72 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -24, ptr noundef nonnull %d66, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end64.if.end85_crit_edge, label %do.body75

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.body75:                                        ; preds = %if.end64
  %call76 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.82, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.body75.if.end85_crit_edge, label %do.end81

do.body75.if.end85_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.end81:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef %call72, i32 noundef 232) #9
  br label %if.end85

if.end85:                                         ; preds = %do.end81, %do.body75.if.end85_crit_edge, %if.end64.if.end85_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d66) #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %d87) #6
  %14 = call ptr @memcpy(ptr %d87, ptr @__const.ili9341_dbi_enable.d.85, i32 5)
  %15 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi, align 4
  %call93 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -53, ptr noundef nonnull %d87, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end85.if.end106_crit_edge, label %do.body96

if.end85.if.end106_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

do.body96:                                        ; preds = %if.end85
  %call97 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.86, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body96.if.end106_crit_edge, label %do.end102

do.body96.if.end106_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.24, i32 noundef %call93, i32 noundef 203) #9
  br label %if.end106

if.end106:                                        ; preds = %do.end102, %do.body96.if.end106_crit_edge, %if.end85.if.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %d87) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d108) #6
  %17 = ptrtoint ptr %d108 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %d108, align 1
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %call114 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -9, ptr noundef nonnull %d108, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end106.if.end127_crit_edge, label %do.body117

if.end106.if.end127_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.body117:                                       ; preds = %if.end106
  %call118 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.90, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.body117.if.end127_crit_edge, label %do.end123

do.body117.if.end127_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.end123:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef %call114, i32 noundef 247) #9
  br label %if.end127

if.end127:                                        ; preds = %do.end123, %do.body117.if.end127_crit_edge, %if.end106.if.end127_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d108) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d129) #6
  %20 = ptrtoint ptr %d129 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %d129, align 2
  %21 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi, align 4
  %call135 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -22, ptr noundef nonnull %d129, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end127.if.end148_crit_edge, label %do.body138

if.end127.if.end148_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

do.body138:                                       ; preds = %if.end127
  %call139 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.93, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %do.body138.if.end148_crit_edge, label %do.end144

do.body138.if.end148_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

do.end144:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.24, i32 noundef %call135, i32 noundef 234) #9
  br label %if.end148

if.end148:                                        ; preds = %do.end144, %do.body138.if.end148_crit_edge, %if.end127.if.end148_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d129) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d150) #6
  %23 = ptrtoint ptr %d150 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 35, ptr %d150, align 1
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  %call156 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -64, ptr noundef nonnull %d150, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end148.if.end169_crit_edge, label %do.body159

if.end148.if.end169_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

do.body159:                                       ; preds = %if.end148
  %call160 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.97, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %do.body159.if.end169_crit_edge, label %do.end165

do.body159.if.end169_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

do.end165:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.24, i32 noundef %call156, i32 noundef 192) #9
  br label %if.end169

if.end169:                                        ; preds = %do.end165, %do.body159.if.end169_crit_edge, %if.end148.if.end169_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d150) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d171) #6
  %26 = ptrtoint ptr %d171 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %d171, align 1
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %call177 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -63, ptr noundef nonnull %d171, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end169.if.end190_crit_edge, label %do.body180

if.end169.if.end190_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.body180:                                       ; preds = %if.end169
  %call181 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.101, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %do.body180.if.end190_crit_edge, label %do.end186

do.body180.if.end190_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

do.end186:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.24, i32 noundef %call177, i32 noundef 193) #9
  br label %if.end190

if.end190:                                        ; preds = %do.end186, %do.body180.if.end190_crit_edge, %if.end169.if.end190_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d171) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d192) #6
  %29 = ptrtoint ptr %d192 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 15912, ptr %d192, align 2
  %30 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi, align 4
  %call198 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -59, ptr noundef nonnull %d192, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end190.if.end211_crit_edge, label %do.body201

if.end190.if.end211_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

do.body201:                                       ; preds = %if.end190
  %call202 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.105, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %do.body201.if.end211_crit_edge, label %do.end207

do.body201.if.end211_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

do.end207:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.24, i32 noundef %call198, i32 noundef 197) #9
  br label %if.end211

if.end211:                                        ; preds = %do.end207, %do.body201.if.end211_crit_edge, %if.end190.if.end211_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d192) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d213) #6
  %32 = ptrtoint ptr %d213 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -122, ptr %d213, align 1
  %33 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi, align 4
  %call219 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -57, ptr noundef nonnull %d213, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end211.if.end232_crit_edge, label %do.body222

if.end211.if.end232_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

do.body222:                                       ; preds = %if.end211
  %call223 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.109, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %do.body222.if.end232_crit_edge, label %do.end228

do.body222.if.end232_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

do.end228:                                        ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef %call219, i32 noundef 199) #9
  br label %if.end232

if.end232:                                        ; preds = %do.end228, %do.body222.if.end232_crit_edge, %if.end211.if.end232_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d213) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d234) #6
  %35 = ptrtoint ptr %d234 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %d234, align 1
  %36 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi, align 4
  %call240 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 58, ptr noundef nonnull %d234, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end232.if.end253_crit_edge, label %do.body243

if.end232.if.end253_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

do.body243:                                       ; preds = %if.end232
  %call244 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.113, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %do.body243.if.end253_crit_edge, label %do.end249

do.body243.if.end253_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

do.end249:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.24, i32 noundef %call240, i32 noundef 58) #9
  br label %if.end253

if.end253:                                        ; preds = %do.end249, %do.body243.if.end253_crit_edge, %if.end232.if.end253_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d234) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d255) #6
  %38 = ptrtoint ptr %d255 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 27, ptr %d255, align 2
  %39 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi, align 4
  %call261 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -79, ptr noundef nonnull %d255, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end253.if.end274_crit_edge, label %do.body264

if.end253.if.end274_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end274

do.body264:                                       ; preds = %if.end253
  %call265 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.117, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %do.body264.if.end274_crit_edge, label %do.end270

do.body264.if.end274_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end274

do.end270:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.24, i32 noundef %call261, i32 noundef 177) #9
  br label %if.end274

if.end274:                                        ; preds = %do.end270, %do.body264.if.end274_crit_edge, %if.end253.if.end274_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d255) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d276) #6
  %41 = ptrtoint ptr %d276 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %d276, align 1
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 4
  %call282 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -14, ptr noundef nonnull %d276, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %if.end274.if.end295_crit_edge, label %do.body285

if.end274.if.end295_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295

do.body285:                                       ; preds = %if.end274
  %call286 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.120, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %do.body285.if.end295_crit_edge, label %do.end291

do.body285.if.end295_crit_edge:                   ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295

do.end291:                                        ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.24, i32 noundef %call282, i32 noundef 242) #9
  br label %if.end295

if.end295:                                        ; preds = %do.end291, %do.body285.if.end295_crit_edge, %if.end274.if.end295_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d276) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d297) #6
  %44 = ptrtoint ptr %d297 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %d297, align 1
  %45 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi, align 4
  %call303 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 38, ptr noundef nonnull %d297, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end295.if.end316_crit_edge, label %do.body306

if.end295.if.end316_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end316

do.body306:                                       ; preds = %if.end295
  %call307 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.124, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %do.body306.if.end316_crit_edge, label %do.end312

do.body306.if.end316_crit_edge:                   ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end316

do.end312:                                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.24, i32 noundef %call303, i32 noundef 38) #9
  br label %if.end316

if.end316:                                        ; preds = %do.end312, %do.body306.if.end316_crit_edge, %if.end295.if.end316_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d297) #6
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %d318) #6
  %47 = call ptr @memcpy(ptr %d318, ptr @__const.ili9341_dbi_enable.d.127, i32 15)
  %48 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi, align 4
  %call324 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -32, ptr noundef nonnull %d318, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.end316.if.end337_crit_edge, label %do.body327

if.end316.if.end337_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end337

do.body327:                                       ; preds = %if.end316
  %call328 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.128, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %do.body327.if.end337_crit_edge, label %do.end333

do.body327.if.end337_crit_edge:                   ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end337

do.end333:                                        ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.24, i32 noundef %call324, i32 noundef 224) #9
  br label %if.end337

if.end337:                                        ; preds = %do.end333, %do.body327.if.end337_crit_edge, %if.end316.if.end337_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %d318) #6
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %d339) #6
  %50 = call ptr @memcpy(ptr %d339, ptr @__const.ili9341_dbi_enable.d.131, i32 15)
  %51 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi, align 4
  %call345 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -31, ptr noundef nonnull %d339, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %tobool346.not = icmp eq i32 %call345, 0
  br i1 %tobool346.not, label %if.end337.if.end358_crit_edge, label %do.body348

if.end337.if.end358_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end358

do.body348:                                       ; preds = %if.end337
  %call349 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.132, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349)
  %tobool350.not = icmp eq i32 %call349, 0
  br i1 %tobool350.not, label %do.body348.if.end358_crit_edge, label %do.end354

do.body348.if.end358_crit_edge:                   ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end358

do.end354:                                        ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.24, i32 noundef %call345, i32 noundef 225) #9
  br label %if.end358

if.end358:                                        ; preds = %do.end354, %do.body348.if.end358_crit_edge, %if.end337.if.end358_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %d339) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d360) #6
  %53 = ptrtoint ptr %d360 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %d360, align 1
  %54 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %spi, align 4
  %call366 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -73, ptr noundef nonnull %d360, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call366)
  %tobool367.not = icmp eq i32 %call366, 0
  br i1 %tobool367.not, label %if.end358.if.end379_crit_edge, label %do.body369

if.end358.if.end379_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end379

do.body369:                                       ; preds = %if.end358
  %call370 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.136, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call370)
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %do.body369.if.end379_crit_edge, label %do.end375

do.body369.if.end379_crit_edge:                   ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end379

do.end375:                                        ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.24, i32 noundef %call366, i32 noundef 183) #9
  br label %if.end379

if.end379:                                        ; preds = %do.end375, %do.body369.if.end379_crit_edge, %if.end358.if.end379_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d360) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d381) #6
  %56 = ptrtoint ptr %d381 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 142747392, ptr %d381, align 4
  %57 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi, align 4
  %call387 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -74, ptr noundef nonnull %d381, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.end379.if.end400_crit_edge, label %do.body390

if.end379.if.end400_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end400

do.body390:                                       ; preds = %if.end379
  %call391 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.140, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %do.body390.if.end400_crit_edge, label %do.end396

do.body390.if.end400_crit_edge:                   ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end400

do.end396:                                        ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.24, i32 noundef %call387, i32 noundef 182) #9
  br label %if.end400

if.end400:                                        ; preds = %do.end396, %do.body390.if.end400_crit_edge, %if.end379.if.end400_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d381) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #6
  %59 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %spi, align 4
  %call408 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %d, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %if.end400.if.end421_crit_edge, label %do.body411

if.end400.if.end421_crit_edge:                    ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end421

do.body411:                                       ; preds = %if.end400
  %call412 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.143, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %do.body411.if.end421_crit_edge, label %do.end417

do.body411.if.end421_crit_edge:                   ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end421

do.end417:                                        ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.24, i32 noundef %call408, i32 noundef 17) #9
  br label %if.end421

if.end421:                                        ; preds = %do.end417, %do.body411.if.end421_crit_edge, %if.end400.if.end421_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #6
  call void @msleep(i32 noundef 100) #6
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #6
  %61 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi, align 4
  %call429 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 41, ptr noundef nonnull %d, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call429)
  %tobool430.not = icmp eq i32 %call429, 0
  br i1 %tobool430.not, label %if.end421.if.end442_crit_edge, label %do.body432

if.end421.if.end442_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end442

do.body432:                                       ; preds = %if.end421
  %call433 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.146, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call433)
  %tobool434.not = icmp eq i32 %call433, 0
  br i1 %tobool434.not, label %do.body432.if.end442_crit_edge, label %do.end438

do.body432.if.end442_crit_edge:                   ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end442

do.end438:                                        ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.24, i32 noundef %call429, i32 noundef 41) #9
  br label %if.end442

if.end442:                                        ; preds = %do.end438, %do.body432.if.end442_crit_edge, %if.end421.if.end442_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #6
  call void @msleep(i32 noundef 100) #6
  br label %out_enable

out_enable:                                       ; preds = %if.end442, %if.end7.out_enable_crit_edge
  %rotation = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rotation, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %out_enable.sw.epilog_crit_edge [
    i32 90, label %sw.bb
    i32 180, label %sw.bb444
    i32 270, label %sw.bb445
  ]

out_enable.sw.epilog_crit_edge:                   ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb444:                                         ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb445:                                         ; preds = %out_enable
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb445, %sw.bb444, %sw.bb, %out_enable.sw.epilog_crit_edge
  %addr_mode.0 = phi i8 [ -24, %sw.bb445 ], [ -120, %sw.bb444 ], [ 40, %sw.bb ], [ 72, %out_enable.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d447) #6
  %66 = ptrtoint ptr %d447 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %addr_mode.0, ptr %d447, align 1
  %spi449 = getelementptr inbounds %struct.mipi_dbi_dev, ptr %1, i32 0, i32 10, i32 5
  %67 = ptrtoint ptr %spi449 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi449, align 4
  %call453 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 54, ptr noundef nonnull %d447, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call453)
  %tobool454.not = icmp eq i32 %call453, 0
  br i1 %tobool454.not, label %sw.epilog.if.end466_crit_edge, label %do.body456

sw.epilog.if.end466_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end466

do.body456:                                       ; preds = %sw.epilog
  %call457 = call i32 @___ratelimit(ptr noundef nonnull @ili9341_dbi_enable._rs.149, ptr noundef nonnull @__func__.ili9341_dbi_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457)
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %do.body456.if.end466_crit_edge, label %do.end462

do.body456.if.end466_crit_edge:                   ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end466

do.end462:                                        ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.24, i32 noundef %call453, i32 noundef 54) #9
  br label %if.end466

if.end466:                                        ; preds = %do.end462, %do.body456.if.end466_crit_edge, %sw.epilog.if.end466_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d447) #6
  call void @mipi_dbi_enable_flush(ptr noundef %1, ptr noundef %crtc_state, ptr noundef %plane_state) #6
  %dev471 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %dev471 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev471, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.153) #9
  br label %out_exit

out_exit:                                         ; preds = %if.end466, %if.end.out_exit_crit_edge
  %71 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %72) #6
  br label %cleanup

cleanup:                                          ; preds = %out_exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_pipe_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_pipe_update(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_simple_display_pipe_prepare_fb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_poweron_conditional_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dbi_enable_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !137, !138, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !251}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @__initcall__kmod_panel_ilitek_ili9341__320_788_ili9341_driver_init6, !1, !"__initcall__kmod_panel_ilitek_ili9341__320_788_ili9341_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 788, i32 1}
!2 = !{ptr @__exitcall_ili9341_driver_exit, !1, !"__exitcall_ili9341_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author321, !4, !"__UNIQUE_ID_author321", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 790, i32 1}
!5 = !{ptr @__UNIQUE_ID_description322, !6, !"__UNIQUE_ID_description322", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 791, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 792, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 784, i32 11}
!12 = !{ptr @ili9341_driver, !13, !"ili9341_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 778, i32 26}
!14 = !{ptr @ili9341_id, !15, !"ili9341_id", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 771, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 715, i32 39}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 717, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ili9341_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ili9341_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 719, i32 36}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 721, i32 3}
!30 = !{ptr @ili9341_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ili9341_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 723, i32 24}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 725, i32 29}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 674, i32 28}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 675, i32 28}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 676, i32 28}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 680, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ili9341_dpi_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ili9341_dpi_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 696, i32 3}
!49 = !{ptr @ili9341_dpi_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ili9341_dpi_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ili9341_dpi_funcs, !52, !"ili9341_dpi_funcs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 479, i32 37}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 375, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ili9341_dpi_power_on._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ili9341_dpi_power_on._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 315, i32 2}
!60 = !{ptr @ili9341_dpi_init._rs, !59, !"_rs", i1 false, i1 false}
!61 = !{ptr @__func__.ili9341_dpi_init, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ili9341_dpi_init._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @ili9341_dpi_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ili9341_dpi_init._rs.25, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 321, i32 2}
!67 = !{ptr @ili9341_dpi_init._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ili9341_dpi_init._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ili9341_dpi_init._rs.28, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 322, i32 2}
!71 = !{ptr @ili9341_dpi_init._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ili9341_dpi_init._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ili9341_dpi_init._rs.31, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 327, i32 2}
!75 = !{ptr @ili9341_dpi_init._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ili9341_dpi_init._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ili9341_dpi_init._rs.34, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 328, i32 2}
!79 = !{ptr @ili9341_dpi_init._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ili9341_dpi_init._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ili9341_dpi_init._rs.37, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 331, i32 2}
!83 = !{ptr @ili9341_dpi_init._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ili9341_dpi_init._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @ili9341_dpi_init._rs.40, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 332, i32 2}
!87 = !{ptr @ili9341_dpi_init._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ili9341_dpi_init._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @ili9341_dpi_init._rs.43, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 347, i32 2}
!91 = !{ptr @ili9341_dpi_init._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ili9341_dpi_init._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ili9341_dpi_init._rs.46, !94, !"_rs", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 348, i32 2}
!95 = !{ptr @ili9341_dpi_init._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ili9341_dpi_init._entry_ptr.48, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @ili9341_dpi_init._rs.49, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 350, i32 2}
!99 = !{ptr @ili9341_dpi_init._entry.50, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @ili9341_dpi_init._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ili9341_dpi_init._rs.52, !102, !"_rs", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 355, i32 2}
!103 = !{ptr @ili9341_dpi_init._entry.53, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ili9341_dpi_init._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @ili9341_dpi_init._rs.55, !106, !"_rs", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 357, i32 2}
!107 = !{ptr @ili9341_dpi_init._entry.56, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ili9341_dpi_init._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @ili9341_dpi_init._rs.58, !110, !"_rs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 358, i32 2}
!111 = !{ptr @ili9341_dpi_init._entry.59, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ili9341_dpi_init._entry_ptr.60, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 360, i32 2}
!115 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ili9341_dpi_init._entry.61, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ili9341_dpi_init._entry_ptr.64, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @ili9341_dpi_enable._rs, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 430, i32 2}
!120 = !{ptr @__func__.ili9341_dpi_enable, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ili9341_dpi_enable._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ili9341_dpi_enable._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @ili9341_dpi_disable._rs, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 401, i32 2}
!125 = !{ptr @__func__.ili9341_dpi_disable, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ili9341_dpi_disable._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @ili9341_dpi_disable._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 458, i32 3}
!130 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ili9341_dpi_get_modes._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @ili9341_dpi_get_modes._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 614, i32 41}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 616, i32 3}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ili9341_dbi_probe._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ili9341_dbi_probe._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 634, i32 32}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 596, i32 12}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 597, i32 12}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 598, i32 12}
!148 = !{ptr @ili9341_dbi_driver, !149, !"ili9341_dbi_driver", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 591, i32 26}
!150 = !{ptr @ili9341_dbi_fops, !151, !"ili9341_dbi_fops", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 589, i32 1}
!152 = !{ptr @ili9341_dbi_funcs, !153, !"ili9341_dbi_funcs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 578, i32 51}
!154 = !{ptr @ili9341_dbi_enable._rs, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 505, i32 2}
!156 = !{ptr @__func__.ili9341_dbi_enable, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ili9341_dbi_enable._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @ili9341_dbi_enable._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @ili9341_dbi_enable._rs.74, !160, !"_rs", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 507, i32 2}
!161 = !{ptr @ili9341_dbi_enable._entry.75, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @ili9341_dbi_enable._entry_ptr.76, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @ili9341_dbi_enable._rs.78, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 508, i32 2}
!165 = !{ptr @ili9341_dbi_enable._entry.79, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ili9341_dbi_enable._entry_ptr.80, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @ili9341_dbi_enable._rs.82, !168, !"_rs", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 509, i32 2}
!169 = !{ptr @ili9341_dbi_enable._entry.83, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ili9341_dbi_enable._entry_ptr.84, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @ili9341_dbi_enable._rs.86, !172, !"_rs", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 510, i32 2}
!173 = !{ptr @ili9341_dbi_enable._entry.87, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ili9341_dbi_enable._entry_ptr.88, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @ili9341_dbi_enable._rs.90, !176, !"_rs", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 511, i32 2}
!177 = !{ptr @ili9341_dbi_enable._entry.91, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ili9341_dbi_enable._entry_ptr.92, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @ili9341_dbi_enable._rs.93, !180, !"_rs", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 512, i32 2}
!181 = !{ptr @ili9341_dbi_enable._entry.94, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ili9341_dbi_enable._entry_ptr.95, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @ili9341_dbi_enable._rs.97, !184, !"_rs", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 515, i32 2}
!185 = !{ptr @ili9341_dbi_enable._entry.98, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ili9341_dbi_enable._entry_ptr.99, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @ili9341_dbi_enable._rs.101, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 516, i32 2}
!189 = !{ptr @ili9341_dbi_enable._entry.102, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ili9341_dbi_enable._entry_ptr.103, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @ili9341_dbi_enable._rs.105, !192, !"_rs", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 518, i32 2}
!193 = !{ptr @ili9341_dbi_enable._entry.106, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ili9341_dbi_enable._entry_ptr.107, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @ili9341_dbi_enable._rs.109, !196, !"_rs", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 520, i32 2}
!197 = !{ptr @ili9341_dbi_enable._entry.110, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @ili9341_dbi_enable._entry_ptr.111, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @ili9341_dbi_enable._rs.113, !200, !"_rs", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 523, i32 2}
!201 = !{ptr @ili9341_dbi_enable._entry.114, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @ili9341_dbi_enable._entry_ptr.115, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @ili9341_dbi_enable._rs.117, !204, !"_rs", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 527, i32 2}
!205 = !{ptr @ili9341_dbi_enable._entry.118, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @ili9341_dbi_enable._entry_ptr.119, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @ili9341_dbi_enable._rs.120, !208, !"_rs", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 531, i32 2}
!209 = !{ptr @ili9341_dbi_enable._entry.121, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @ili9341_dbi_enable._entry_ptr.122, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @ili9341_dbi_enable._rs.124, !212, !"_rs", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 532, i32 2}
!213 = !{ptr @ili9341_dbi_enable._entry.125, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @ili9341_dbi_enable._entry_ptr.126, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @ili9341_dbi_enable._rs.128, !216, !"_rs", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 533, i32 2}
!217 = !{ptr @ili9341_dbi_enable._entry.129, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @ili9341_dbi_enable._entry_ptr.130, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @ili9341_dbi_enable._rs.132, !220, !"_rs", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 536, i32 2}
!221 = !{ptr @ili9341_dbi_enable._entry.133, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @ili9341_dbi_enable._entry_ptr.134, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @ili9341_dbi_enable._rs.136, !224, !"_rs", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 541, i32 2}
!225 = !{ptr @ili9341_dbi_enable._entry.137, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ili9341_dbi_enable._entry_ptr.138, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @ili9341_dbi_enable._rs.140, !228, !"_rs", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 546, i32 2}
!229 = !{ptr @ili9341_dbi_enable._entry.141, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @ili9341_dbi_enable._entry_ptr.142, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @ili9341_dbi_enable._rs.143, !232, !"_rs", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 547, i32 2}
!233 = !{ptr @ili9341_dbi_enable._entry.144, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @ili9341_dbi_enable._entry_ptr.145, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @ili9341_dbi_enable._rs.146, !236, !"_rs", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 550, i32 2}
!237 = !{ptr @ili9341_dbi_enable._entry.147, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @ili9341_dbi_enable._entry_ptr.148, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @ili9341_dbi_enable._rs.149, !240, !"_rs", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 571, i32 2}
!241 = !{ptr @ili9341_dbi_enable._entry.150, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @ili9341_dbi_enable._entry_ptr.151, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.153, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 573, i32 2}
!245 = !{ptr @ili9341_dbi_enable._entry.152, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @ili9341_dbi_enable._entry_ptr.154, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @ili9341_dbi_mode, !248, !"ili9341_dbi_mode", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 585, i32 38}
!249 = !{ptr @ili9341_of_match, !250, !"ili9341_of_match", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 755, i32 34}
!251 = !{ptr @ili9341_stm32f429_disco_data, !252, !"ili9341_stm32f429_disco_data", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9341.c", i32 190, i32 36}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{!"auto-init"}
