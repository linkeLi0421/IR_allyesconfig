; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.rpi_touchscreen = type { %struct.drm_panel, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_raspberrypi_touchscreen__306_497_rpi_touchscreen_init6 = internal global ptr @rpi_touchscreen_init, section ".initcall6.init", align 4
@rpi_touchscreen_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rpi_touchscreen_probe, ptr @rpi_touchscreen_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_touchscreen_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rpi_touchscreen_dsi_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rpi_touchscreen_dsi_probe, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_rpi_touchscreen_exit = internal global ptr @rpi_touchscreen_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [67 x i8] c"panel_raspberrypi_touchscreen.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [81 x i8] c"panel_raspberrypi_touchscreen.description=Raspberry Pi 7-inch touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [87 x i8] c"panel_raspberrypi_touchscreen.file=drivers/gpu/drm/panel/panel-raspberrypi-touchscreen\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [45 x i8] c"panel_raspberrypi_touchscreen.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpi_touchscreen\00", [16 x i8] zeroinitializer }, align 32
@rpi_touchscreen_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,7inch-touchscreen-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__const.rpi_touchscreen_probe.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"rpi-ts-dsi\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@rpi_touchscreen_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Atmel I2C read failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rpi_touchscreen_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpi_touchscreen_probe._entry_ptr = internal global ptr @rpi_touchscreen_probe._entry, section ".printk_index", align 4
@rpi_touchscreen_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown Atmel firmware revision: 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@rpi_touchscreen_probe._entry_ptr.8 = internal global ptr @rpi_touchscreen_probe._entry.6, section ".printk_index", align 4
@rpi_touchscreen_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DSI device registration failed: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@rpi_touchscreen_probe._entry_ptr.11 = internal global ptr @rpi_touchscreen_probe._entry.9, section ".printk_index", align 4
@rpi_touchscreen_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @rpi_touchscreen_noop, ptr @rpi_touchscreen_enable, ptr @rpi_touchscreen_disable, ptr @rpi_touchscreen_noop, ptr @rpi_touchscreen_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@rpi_touchscreen_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I2C write failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rpi_touchscreen_i2c_write\00", [38 x i8] zeroinitializer }, align 32
@rpi_touchscreen_i2c_write._entry_ptr = internal global ptr @rpi_touchscreen_i2c_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rpi_touchscreen_get_modes.bus_format = internal constant { i32, [28 x i8] } { i32 4106, [28 x i8] zeroinitializer }, align 32
@rpi_touchscreen_modes = internal constant { [1 x %struct.drm_display_mode], [48 x i8] } { [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 25979, i16 800, i16 801, i16 803, i16 849, i16 0, i16 480, i16 487, i16 489, i16 510, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@rpi_touchscreen_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rpi_touchscreen_get_modes\00", [38 x i8] zeroinitializer }, align 32
@rpi_touchscreen_get_modes._entry_ptr = internal global ptr @rpi_touchscreen_get_modes._entry, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpi-ts-dsi\00", [21 x i8] zeroinitializer }, align 32
@rpi_touchscreen_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to attach dsi to host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rpi_touchscreen_dsi_probe\00", [38 x i8] zeroinitializer }, align 32
@rpi_touchscreen_dsi_probe._entry_ptr = internal global ptr @rpi_touchscreen_dsi_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 195, i64 222]
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"rpi_touchscreen_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 483, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"rpi_touchscreen_dsi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 472, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 485, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"rpi_touchscreen_of_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 477, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 381, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 390, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 421, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"rpi_touchscreen_funcs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 349, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 232, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"bus_format\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 315, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"rpi_touchscreen_modes\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 198, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 323, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 473, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [57 x i8] c"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 467, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_rpi_touchscreen_exit, ptr @__initcall__kmod_panel_raspberrypi_touchscreen__306_497_rpi_touchscreen_init6, ptr @rpi_touchscreen_dsi_probe._entry, ptr @rpi_touchscreen_dsi_probe._entry_ptr, ptr @rpi_touchscreen_exit, ptr @rpi_touchscreen_get_modes._entry, ptr @rpi_touchscreen_get_modes._entry_ptr, ptr @rpi_touchscreen_i2c_write._entry, ptr @rpi_touchscreen_i2c_write._entry_ptr, ptr @rpi_touchscreen_probe._entry, ptr @rpi_touchscreen_probe._entry.6, ptr @rpi_touchscreen_probe._entry.9, ptr @rpi_touchscreen_probe._entry_ptr, ptr @rpi_touchscreen_probe._entry_ptr.11, ptr @rpi_touchscreen_probe._entry_ptr.8, ptr @rpi_touchscreen_driver, ptr @rpi_touchscreen_dsi_driver, ptr @.str, ptr @rpi_touchscreen_of_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @rpi_touchscreen_funcs, ptr @.str.12, ptr @.str.13, ptr @rpi_touchscreen_get_modes.bus_format, ptr @rpi_touchscreen_modes, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_dsi_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_get_modes.bus_format to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_modes to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_touchscreen_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_touchscreen_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @rpi_touchscreen_dsi_driver, ptr noundef null) #6
  %call1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rpi_touchscreen_driver) #6
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpi_touchscreen_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @rpi_touchscreen_driver) #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @rpi_touchscreen_dsi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_touchscreen_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %info = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #6
  %0 = call ptr @memcpy(ptr %info, ptr @__const.rpi_touchscreen_probe.info, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %i2c2 = getelementptr inbounds %struct.rpi_touchscreen, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c2, align 4
  %call.i73 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp = icmp slt i32 %call.i73, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i73) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = zext i32 %call.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i73, label %do.end8 [
    i32 222, label %if.end5.sw.epilog_crit_edge
    i32 195, label %if.end5.sw.epilog_crit_edge76
  ]

if.end5.sw.epilog_crit_edge76:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call.i73) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end5.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge76
  %4 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c2, align 4
  %call.i75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -123, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i, label %sw.epilog.rpi_touchscreen_i2c_write.exit_crit_edge, label %do.end.i

sw.epilog.rpi_touchscreen_i2c_write.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpi_touchscreen_i2c_write.exit

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dsi.i = getelementptr inbounds %struct.rpi_touchscreen, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi.i, align 4
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %call.i75) #9
  br label %rpi_touchscreen_i2c_write.exit

rpi_touchscreen_i2c_write.exit:                   ; preds = %do.end.i, %sw.epilog.rpi_touchscreen_i2c_write.exit_crit_edge
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %9, ptr noundef null) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %rpi_touchscreen_i2c_write.exit.cleanup_crit_edge, label %if.end12

rpi_touchscreen_i2c_write.exit.cleanup_crit_edge: ; preds = %rpi_touchscreen_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %rpi_touchscreen_i2c_write.exit
  %call13 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call9) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.error_crit_edge, label %if.end16

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef nonnull %call13) #6
  tail call void @of_node_put(ptr noundef nonnull %call13) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %call9) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %call9) #6
  %node = getelementptr inbounds %struct.mipi_dsi_device_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %node, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end20.error_crit_edge, label %if.end25

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end25:                                         ; preds = %if.end20
  tail call void @of_node_put(ptr noundef nonnull %call9) #6
  %call26 = call ptr @mipi_dsi_device_register_full(ptr noundef nonnull %call17, ptr noundef nonnull %info) #6
  %dsi = getelementptr inbounds %struct.rpi_touchscreen, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dsi to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call26, ptr %dsi, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end32, label %if.end37

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %12) #9
  %13 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsi, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @rpi_touchscreen_funcs, i32 noundef 16) #6
  call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  br label %cleanup

error:                                            ; preds = %if.end20.error_crit_edge, %if.end12.error_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end37, %do.end32, %if.then19, %rpi_touchscreen_i2c_write.exit.cleanup_crit_edge, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end8 ], [ %15, %do.end32 ], [ 0, %if.end37 ], [ -19, %error ], [ -517, %if.then19 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %rpi_touchscreen_i2c_write.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_touchscreen_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dsi = getelementptr inbounds %struct.rpi_touchscreen, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %3) #6
  tail call void @drm_panel_remove(ptr noundef %1) #6
  %4 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi, align 4
  tail call void @mipi_dsi_device_unregister(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mipi_dsi_device_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rpi_touchscreen_noop(ptr nocapture noundef readnone %panel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_touchscreen_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %msg.i59 = alloca [6 x i8], align 1
  %msg.i56 = alloca [6 x i8], align 1
  %msg.i53 = alloca [6 x i8], align 1
  %msg.i50 = alloca [6 x i8], align 1
  %msg.i47 = alloca [6 x i8], align 1
  %msg.i44 = alloca [6 x i8], align 1
  %msg.i41 = alloca [6 x i8], align 1
  %msg.i38 = alloca [6 x i8], align 1
  %msg.i35 = alloca [6 x i8], align 1
  %msg.i32 = alloca [6 x i8], align 1
  %msg.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c.i = getelementptr inbounds %struct.rpi_touchscreen, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -123, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.for.body.preheader_crit_edge, label %do.end.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dsi.i = getelementptr inbounds %struct.rpi_touchscreen, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi.i, align 4
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end.i, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.076 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -126) #6
  %and = and i32 %call.i29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %inc = add nuw nsw i32 %i.076, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 100
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds [6 x i8], ptr %msg.i, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %msg.i, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %msg.i, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %msg.i, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %msg.i, i32 0, i32 5
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %msg.i, align 1
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %6, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %7, align 1
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %8, align 1
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %9, align 1
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %10, align 1
  %dsi.i30 = getelementptr inbounds %struct.rpi_touchscreen, ptr %panel, i32 0, i32 1
  %17 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsi.i30, align 4
  %call.i31 = call i32 @mipi_dsi_generic_write(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i32) #6
  %19 = getelementptr inbounds [6 x i8], ptr %msg.i32, i32 0, i32 1
  %20 = getelementptr inbounds [6 x i8], ptr %msg.i32, i32 0, i32 2
  %21 = getelementptr inbounds [6 x i8], ptr %msg.i32, i32 0, i32 3
  %22 = getelementptr inbounds [6 x i8], ptr %msg.i32, i32 0, i32 4
  %23 = getelementptr inbounds [6 x i8], ptr %msg.i32, i32 0, i32 5
  %24 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 100, ptr %msg.i32, align 1
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %19, align 1
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %20, align 1
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %21, align 1
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %22, align 1
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %23, align 1
  %30 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dsi.i30, align 4
  %call.i34 = call i32 @mipi_dsi_generic_write(ptr noundef %31, ptr noundef nonnull %msg.i32, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i32) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i35) #6
  %32 = getelementptr inbounds [6 x i8], ptr %msg.i35, i32 0, i32 1
  %33 = getelementptr inbounds [6 x i8], ptr %msg.i35, i32 0, i32 2
  %34 = getelementptr inbounds [6 x i8], ptr %msg.i35, i32 0, i32 3
  %35 = getelementptr inbounds [6 x i8], ptr %msg.i35, i32 0, i32 4
  %36 = getelementptr inbounds [6 x i8], ptr %msg.i35, i32 0, i32 5
  %37 = ptrtoint ptr %msg.i35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 104, ptr %msg.i35, align 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %32, align 1
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %33, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %34, align 1
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %35, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %36, align 1
  %43 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dsi.i30, align 4
  %call.i37 = call i32 @mipi_dsi_generic_write(ptr noundef %44, ptr noundef nonnull %msg.i35, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i35) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i38) #6
  %45 = getelementptr inbounds [6 x i8], ptr %msg.i38, i32 0, i32 1
  %46 = getelementptr inbounds [6 x i8], ptr %msg.i38, i32 0, i32 2
  %47 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 68, ptr %msg.i38, align 1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %45, align 1
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 0, ptr %46, align 1
  %50 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dsi.i30, align 4
  %call.i40 = call i32 @mipi_dsi_generic_write(ptr noundef %51, ptr noundef nonnull %msg.i38, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i38) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i41) #6
  %52 = getelementptr inbounds [6 x i8], ptr %msg.i41, i32 0, i32 1
  %53 = getelementptr inbounds [6 x i8], ptr %msg.i41, i32 0, i32 2
  %54 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 72, ptr %msg.i41, align 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %52, align 1
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 0, ptr %53, align 1
  %57 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dsi.i30, align 4
  %call.i43 = call i32 @mipi_dsi_generic_write(ptr noundef %58, ptr noundef nonnull %msg.i41, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i41) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i44) #6
  %59 = getelementptr inbounds [6 x i8], ptr %msg.i44, i32 0, i32 1
  %60 = getelementptr inbounds [6 x i8], ptr %msg.i44, i32 0, i32 2
  %61 = getelementptr inbounds [6 x i8], ptr %msg.i44, i32 0, i32 3
  %62 = getelementptr inbounds [6 x i8], ptr %msg.i44, i32 0, i32 4
  %63 = getelementptr inbounds [6 x i8], ptr %msg.i44, i32 0, i32 5
  %64 = ptrtoint ptr %msg.i44 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 20, ptr %msg.i44, align 1
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %59, align 1
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %60, align 1
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %61, align 1
  %68 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %62, align 1
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %63, align 1
  %70 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dsi.i30, align 4
  %call.i46 = call i32 @mipi_dsi_generic_write(ptr noundef %71, ptr noundef nonnull %msg.i44, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i44) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i47) #6
  %72 = getelementptr inbounds [6 x i8], ptr %msg.i47, i32 0, i32 1
  %73 = getelementptr inbounds [6 x i8], ptr %msg.i47, i32 0, i32 2
  %74 = ptrtoint ptr %msg.i47 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 80, ptr %msg.i47, align 1
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %72, align 1
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 0, ptr %73, align 1
  %77 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dsi.i30, align 4
  %call.i49 = call i32 @mipi_dsi_generic_write(ptr noundef %78, ptr noundef nonnull %msg.i47, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i47) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i50) #6
  %79 = getelementptr inbounds [6 x i8], ptr %msg.i50, i32 0, i32 1
  %80 = getelementptr inbounds [6 x i8], ptr %msg.i50, i32 0, i32 2
  %81 = getelementptr inbounds [6 x i8], ptr %msg.i50, i32 0, i32 3
  %82 = getelementptr inbounds [6 x i8], ptr %msg.i50, i32 0, i32 4
  %83 = getelementptr inbounds [6 x i8], ptr %msg.i50, i32 0, i32 5
  %84 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 32, ptr %msg.i50, align 1
  %85 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 4, ptr %79, align 1
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 80, ptr %80, align 1
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %81, align 1
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 16, ptr %82, align 1
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %83, align 1
  %90 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dsi.i30, align 4
  %call.i52 = call i32 @mipi_dsi_generic_write(ptr noundef %91, ptr noundef nonnull %msg.i50, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i50) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i53) #6
  %92 = getelementptr inbounds [6 x i8], ptr %msg.i53, i32 0, i32 1
  %93 = getelementptr inbounds [6 x i8], ptr %msg.i53, i32 0, i32 2
  %94 = getelementptr inbounds [6 x i8], ptr %msg.i53, i32 0, i32 3
  %95 = getelementptr inbounds [6 x i8], ptr %msg.i53, i32 0, i32 4
  %96 = getelementptr inbounds [6 x i8], ptr %msg.i53, i32 0, i32 5
  %97 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 100, ptr %msg.i53, align 1
  %98 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 4, ptr %92, align 1
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 15, ptr %93, align 1
  %100 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 4, ptr %94, align 1
  %101 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %95, align 1
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %96, align 1
  %103 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dsi.i30, align 4
  %call.i55 = call i32 @mipi_dsi_generic_write(ptr noundef %104, ptr noundef nonnull %msg.i53, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i53) #6
  call void @msleep(i32 noundef 100) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i56) #6
  %105 = getelementptr inbounds [6 x i8], ptr %msg.i56, i32 0, i32 1
  %106 = getelementptr inbounds [6 x i8], ptr %msg.i56, i32 0, i32 2
  %107 = getelementptr inbounds [6 x i8], ptr %msg.i56, i32 0, i32 3
  %108 = getelementptr inbounds [6 x i8], ptr %msg.i56, i32 0, i32 4
  %109 = getelementptr inbounds [6 x i8], ptr %msg.i56, i32 0, i32 5
  %110 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 4, ptr %msg.i56, align 1
  %111 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %105, align 1
  %112 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %106, align 1
  %113 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %107, align 1
  %114 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %108, align 1
  %115 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %109, align 1
  %116 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dsi.i30, align 4
  %call.i58 = call i32 @mipi_dsi_generic_write(ptr noundef %117, ptr noundef nonnull %msg.i56, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i56) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %msg.i59) #6
  %118 = getelementptr inbounds [6 x i8], ptr %msg.i59, i32 0, i32 1
  %119 = getelementptr inbounds [6 x i8], ptr %msg.i59, i32 0, i32 2
  %120 = getelementptr inbounds [6 x i8], ptr %msg.i59, i32 0, i32 3
  %121 = getelementptr inbounds [6 x i8], ptr %msg.i59, i32 0, i32 4
  %122 = getelementptr inbounds [6 x i8], ptr %msg.i59, i32 0, i32 5
  %123 = ptrtoint ptr %msg.i59 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 4, ptr %msg.i59, align 1
  %124 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %118, align 1
  %125 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %119, align 1
  %126 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %120, align 1
  %127 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %121, align 1
  %128 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %122, align 1
  %129 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dsi.i30, align 4
  %call.i61 = call i32 @mipi_dsi_generic_write(ptr noundef %130, ptr noundef nonnull %msg.i59, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %msg.i59) #6
  call void @msleep(i32 noundef 100) #6
  %131 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i2c.i, align 4
  %call.i63 = call i32 @i2c_smbus_write_byte_data(ptr noundef %132, i8 noundef zeroext -122, i8 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %for.end.rpi_touchscreen_i2c_write.exit68_crit_edge, label %do.end.i67

for.end.rpi_touchscreen_i2c_write.exit68_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpi_touchscreen_i2c_write.exit68

do.end.i67:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dsi.i30, align 4
  %dev.i66 = getelementptr inbounds %struct.mipi_dsi_device, ptr %134, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i66, ptr noundef nonnull @.str.12, i32 noundef %call.i63) #9
  br label %rpi_touchscreen_i2c_write.exit68

rpi_touchscreen_i2c_write.exit68:                 ; preds = %do.end.i67, %for.end.rpi_touchscreen_i2c_write.exit68_crit_edge
  %135 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i2c.i, align 4
  %call.i70 = call i32 @i2c_smbus_write_byte_data(ptr noundef %136, i8 noundef zeroext -127, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %rpi_touchscreen_i2c_write.exit68.rpi_touchscreen_i2c_write.exit75_crit_edge, label %do.end.i74

rpi_touchscreen_i2c_write.exit68.rpi_touchscreen_i2c_write.exit75_crit_edge: ; preds = %rpi_touchscreen_i2c_write.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpi_touchscreen_i2c_write.exit75

do.end.i74:                                       ; preds = %rpi_touchscreen_i2c_write.exit68
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %dsi.i30 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dsi.i30, align 4
  %dev.i73 = getelementptr inbounds %struct.mipi_dsi_device, ptr %138, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73, ptr noundef nonnull @.str.12, i32 noundef %call.i70) #9
  br label %rpi_touchscreen_i2c_write.exit75

rpi_touchscreen_i2c_write.exit75:                 ; preds = %do.end.i74, %rpi_touchscreen_i2c_write.exit68.rpi_touchscreen_i2c_write.exit75_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_touchscreen_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c.i = getelementptr inbounds %struct.rpi_touchscreen, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -122, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.rpi_touchscreen_i2c_write.exit_crit_edge, label %do.end.i

entry.rpi_touchscreen_i2c_write.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpi_touchscreen_i2c_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dsi.i = getelementptr inbounds %struct.rpi_touchscreen, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi.i, align 4
  %dev.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef %call.i) #9
  br label %rpi_touchscreen_i2c_write.exit

rpi_touchscreen_i2c_write.exit:                   ; preds = %do.end.i, %entry.rpi_touchscreen_i2c_write.exit_crit_edge
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -123, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %rpi_touchscreen_i2c_write.exit.rpi_touchscreen_i2c_write.exit8_crit_edge, label %do.end.i7

rpi_touchscreen_i2c_write.exit.rpi_touchscreen_i2c_write.exit8_crit_edge: ; preds = %rpi_touchscreen_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpi_touchscreen_i2c_write.exit8

do.end.i7:                                        ; preds = %rpi_touchscreen_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dsi.i5 = getelementptr inbounds %struct.rpi_touchscreen, ptr %panel, i32 0, i32 1
  %6 = ptrtoint ptr %dsi.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi.i5, align 4
  %dev.i6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i6, ptr noundef nonnull @.str.12, i32 noundef %call.i3) #9
  br label %rpi_touchscreen_i2c_write.exit8

rpi_touchscreen_i2c_write.exit8:                  ; preds = %do.end.i7, %rpi_touchscreen_i2c_write.exit.rpi_touchscreen_i2c_write.exit8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_touchscreen_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @rpi_touchscreen_modes) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @rpi_touchscreen_modes) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef 800, i32 noundef 480, i32 noundef %call3) #9
  br label %for.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 2
  %6 = or i8 %5, 72
  store i8 %6, ptr %type, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  br label %for.end

for.end:                                          ; preds = %if.end, %do.end
  %num.0.lcssa = phi i32 [ 1, %if.end ], [ 0, %do.end ]
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %7 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %bpc, align 8
  %8 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 154, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 86, ptr %height_mm, align 4
  %call19 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @rpi_touchscreen_get_modes.bus_format, i32 noundef 1) #6
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_touchscreen_dsi_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2053, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %1 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %format, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %lanes, align 8
  %call = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_panel_raspberrypi_touchscreen__306_497_rpi_touchscreen_init6, !1, !"__initcall__kmod_panel_raspberrypi_touchscreen__306_497_rpi_touchscreen_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 497, i32 1}
!2 = !{ptr @__exitcall_rpi_touchscreen_exit, !3, !"__exitcall_rpi_touchscreen_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 504, i32 1}
!4 = !{ptr @__UNIQUE_ID_author307, !5, !"__UNIQUE_ID_author307", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 506, i32 1}
!6 = !{ptr @__UNIQUE_ID_description308, !7, !"__UNIQUE_ID_description308", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 507, i32 1}
!8 = !{ptr @__UNIQUE_ID_file309, !9, !"__UNIQUE_ID_file309", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 508, i32 1}
!10 = !{ptr @__UNIQUE_ID_license310, !9, !"__UNIQUE_ID_license310", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 485, i32 11}
!13 = !{ptr @rpi_touchscreen_driver, !14, !"rpi_touchscreen_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 483, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 381, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rpi_touchscreen_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rpi_touchscreen_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 390, i32 3}
!25 = !{ptr @rpi_touchscreen_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rpi_touchscreen_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 421, i32 3}
!29 = !{ptr @rpi_touchscreen_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rpi_touchscreen_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 232, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rpi_touchscreen_i2c_write._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @rpi_touchscreen_i2c_write._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @rpi_touchscreen_funcs, !37, !"rpi_touchscreen_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 349, i32 37}
!38 = !{ptr @rpi_touchscreen_get_modes.bus_format, !39, !"bus_format", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 315, i32 19}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 323, i32 4}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rpi_touchscreen_get_modes._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rpi_touchscreen_get_modes._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rpi_touchscreen_modes, !46, !"rpi_touchscreen_modes", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 198, i32 38}
!47 = !{ptr @rpi_touchscreen_of_ids, !48, !"rpi_touchscreen_of_ids", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 477, i32 34}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 473, i32 17}
!51 = !{ptr @rpi_touchscreen_dsi_driver, !52, !"rpi_touchscreen_dsi_driver", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 472, i32 31}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c", i32 467, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rpi_touchscreen_dsi_probe._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @rpi_touchscreen_dsi_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
