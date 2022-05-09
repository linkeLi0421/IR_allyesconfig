; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-ld9040.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-ld9040.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ld9040 = type { ptr, %struct.drm_panel, [2 x %struct.regulator_bulk_data], ptr, i32, i32, %struct.videomode, i32, i32, i32, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_panel_samsung_ld9040__305_392_ld9040_driver_init6 = internal global ptr @ld9040_driver_init, section ".initcall6.init", align 4
@ld9040_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ld9040_ids, ptr @ld9040_probe, ptr @ld9040_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ld9040_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ld9040_driver_exit = internal global ptr @ld9040_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [64 x i8] c"panel_samsung_ld9040.author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [51 x i8] c"panel_samsung_ld9040.description=ld9040 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [69 x i8] c"panel_samsung_ld9040.file=drivers/gpu/drm/panel/panel-samsung-ld9040\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [36 x i8] c"panel_samsung_ld9040.license=GPL v2\00", section ".modinfo", align 1
@ld9040_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ld9040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-samsung-ld9040\00", [43 x i8] zeroinitializer }, align 32
@ld9040_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,ld9040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ld9040_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 342, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get reset-gpios %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ld9040_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-samsung-ld9040.c\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ld9040_probe._entry_ptr = internal global ptr @ld9040_probe._entry, section ".printk_index", align 4
@ld9040_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 349, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi setup failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@ld9040_probe._entry_ptr.11 = internal global ptr @ld9040_probe._entry.9, section ".printk_index", align 4
@ld9040_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ld9040_prepare, ptr @ld9040_enable, ptr @ld9040_disable, ptr @ld9040_unprepare, ptr @ld9040_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power-on-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-delay\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"panel-width-mm\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panel-height-mm\00", [16 x i8] zeroinitializer }, align 32
@ld9040_init.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@ld9040_init.d.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\F8\05e\96q}\19;\0D\19~\0D\E2\00\00~}\07\07   \02\02", [40 x i8] zeroinitializer }, align 32
@ld9040_init.d.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F2\02\08\08\10\10", [26 x i8] zeroinitializer }, align 32
@ld9040_init.d.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\04", [30 x i8] zeroinitializer }, align 32
@ld9040_init.d.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\F4\0A\87%jD\02\88", [24 x i8] zeroinitializer }, align 32
@ld9040_init.d.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B1\0D\00\16", [28 x i8] zeroinitializer }, align 32
@ld9040_init.d.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F7\09\00\00", [28 x i8] zeroinitializer }, align 32
@ld9040_init.d.22 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\11", [31 x i8] zeroinitializer }, align 32
@ld9040_init.d.23 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c")", [31 x i8] zeroinitializer }, align 32
@ld9040_dcs_write.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel_samsung_ld9040\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ld9040_dcs_write\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"writing dcs seq: %*ph\0A\00", [41 x i8] zeroinitializer }, align 32
@ld9040_dcs_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 158, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d writing dcs seq: %*ph\0A\00", [32 x i8] zeroinitializer }, align 32
@ld9040_dcs_write._entry_ptr = internal global ptr @ld9040_dcs_write._entry, section ".printk_index", align 4
@ld9040_gammas = internal constant { [25 x [22 x i8]], [154 x i8] } { [25 x [22 x i8]] [[22 x i8] c"\F9\00\13\B2\BA\D2\000\00\AF\C0\B8\CD\00=\00\A8\B8\B7\CD\00D", [22 x i8] c"\F9\00\13\B9\B9\D0\00<\00\AF\BF\B6\CB\00K\00\A8\B9\B5\CC\00R", [22 x i8] c"\F9\00\13\BA\B9\CD\00A\00\B0\BE\B5\C9\00Q\00\A9\B9\B5\CA\00W", [22 x i8] c"\F9\00\13\B9\B8\CD\00F\00\B1\BC\B5\C8\00V\00\AA\B8\B4\C9\00]", [22 x i8] c"\F9\00\13\BA\B8\CB\00K\00\B3\BC\B4\C7\00\\\00\AC\B8\B4\C8\00b", [22 x i8] c"\F9\00\13\BB\B7\CA\00O\00\B4\BB\B3\C7\00`\00\AD\B8\B4\C7\00g", [22 x i8] c"\F9\00G\BA\B6\CA\00S\00\B5\BB\B3\C6\00e\00\AE\B8\B3\C7\00l", [22 x i8] c"\F9\00q\BB\B5\C8\00W\00\B5\BB\B0\C5\00j\00\AE\B9\B1\C6\00p", [22 x i8] c"\F9\00{\BB\B4\C8\00[\00\B5\BA\B1\C4\00n\00\AE\B9\B0\C5\00u", [22 x i8] c"\F9\00\82\BA\B4\C7\00_\00\B5\BA\B0\C3\00r\00\AE\B8\B0\C3\00z", [22 x i8] c"\F9\00\89\BA\B3\C8\00b\00\B6\BA\AF\C3\00v\00\AF\B7\AE\C4\00~", [22 x i8] c"\F9\00\8B\B9\B3\C7\00e\00\B7\B8\AF\C3\00z\00\80\B6\AE\C4\00\81", [22 x i8] c"\F9\00\93\BA\B3\C5\00i\00\B8\B9\AE\C1\00\7F\00\B0\B6\AE\C3\00\85", [22 x i8] c"\F9\00\97\BA\B2\C5\00l\00\B8\B8\AE\C1\00\82\00\B0\B6\AE\C2\00\89", [22 x i8] c"\F9\00\9A\BA\B1\C4\00o\00\B8\B8\AD\C0\00\86\00\B0\B7\AD\C0\00\8D", [22 x i8] c"\F9\00\9C\B9\B0\C4\00r\00\B8\B8\AC\BF\00\8A\00\B0\B6\AC\C0\00\91", [22 x i8] c"\F9\00\9E\BA\B0\C2\00u\00\B9\B8\AB\BE\00\8E\00\B0\B6\AC\BF\00\94", [22 x i8] c"\F9\00\A0\B9\AF\C3\00w\00\B9\B7\AB\BE\00\90\00\B0\B6\AB\BF\00\97", [22 x i8] c"\F9\00\A2\B9\AF\C2\00z\00\B9\B7\AA\BD\00\94\00\B0\B5\AB\BF\00\9A", [22 x i8] c"\F9\00\A4\B9\AF\C1\00}\00\B9\B6\AA\BB\00\97\00\B1\B5\AA\BF\00\9D", [22 x i8] c"\F9\00\A4\B8\B0\BF\00\80\00\B8\B6\AA\BC\00\9A\00\B0\B5\AB\BD\00\A0", [22 x i8] c"\F9\00\A8\B8\AE\BE\00\84\00\B9\B7\A8\BC\00\9D\00\B2\B5\AA\BC\00\A4", [22 x i8] c"\F9\00\A9\B6\AD\BF\00\86\00\B8\B5\A8\BC\00\A0\00\B3\B3\A9\BC\00\A7", [22 x i8] c"\F9\00\A9\B7\AE\BD\00\89\00\B7\B6\A8\BA\00\A4\00\B1\B4\AA\BB\00\AA", [22 x i8] c"\F9\00\A7\B4\AE\BF\00\91\00\B2\B4\AA\BB\00\AC\00\B3\B1\AA\BC\00\B3"], [154 x i8] zeroinitializer }, align 32
@ld9040_brightness_set.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\FB\02Z", [29 x i8] zeroinitializer }, align 32
@ld9040_unprepare.d = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"(", [31 x i8] zeroinitializer }, align 32
@ld9040_unprepare.d.28 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\10", [31 x i8] zeroinitializer }, align 32
@ld9040_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 271, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create a new display mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ld9040_get_modes\00", [47 x i8] zeroinitializer }, align 32
@ld9040_get_modes._entry_ptr = internal global ptr @ld9040_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"ld9040_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 383, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"ld9040_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 377, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 388, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"ld9040_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 371, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 332, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 333, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 339, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 341, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 349, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"ld9040_drm_funcs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 287, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 305, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 306, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 307, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 308, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 181, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 182, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 186, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 188, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 189, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 191, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 192, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 194, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 195, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 148, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 157, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"ld9040_gammas\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 37, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 176, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 230, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 231, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-samsung-ld9040.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 271, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_ld9040_driver_exit, ptr @__initcall__kmod_panel_samsung_ld9040__305_392_ld9040_driver_init6, ptr @ld9040_dcs_write._entry, ptr @ld9040_dcs_write._entry_ptr, ptr @ld9040_driver_exit, ptr @ld9040_get_modes._entry, ptr @ld9040_get_modes._entry_ptr, ptr @ld9040_probe._entry, ptr @ld9040_probe._entry.9, ptr @ld9040_probe._entry_ptr, ptr @ld9040_probe._entry_ptr.11, ptr @ld9040_driver, ptr @ld9040_ids, ptr @.str, ptr @ld9040_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @ld9040_drm_funcs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ld9040_init.d, ptr @ld9040_init.d.16, ptr @ld9040_init.d.17, ptr @ld9040_init.d.18, ptr @ld9040_init.d.19, ptr @ld9040_init.d.20, ptr @ld9040_init.d.21, ptr @ld9040_init.d.22, ptr @ld9040_init.d.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ld9040_gammas, ptr @ld9040_brightness_set.d, ptr @ld9040_unprepare.d, ptr @ld9040_unprepare.d.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_init.d.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_dcs_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_gammas to i32), i32 550, i32 704, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_brightness_set.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_unprepare.d to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_unprepare.d.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld9040_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ld9040_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ld9040_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ld9040_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ld9040_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld9040_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 120, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call.i, align 4
  %brightness = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 24, ptr %brightness, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %vm.i = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 6
  %call.i60 = tail call i32 @of_get_videomode(ptr noundef %4, ptr noundef %vm.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i = icmp slt i32 %call.i60, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %power_on_delay.i = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %power_on_delay.i, i32 noundef 1, i32 noundef 0) #6
  %reset_delay.i = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 5
  %call.i.i18.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef %reset_delay.i, i32 noundef 1, i32 noundef 0) #6
  %width_mm.i = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 7
  %call.i.i19.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef %width_mm.i, i32 noundef 1, i32 noundef 0) #6
  %height_mm.i = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 8
  %call.i.i20.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef %height_mm.i, i32 noundef 1, i32 noundef 0) #6
  %supplies = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx7 = getelementptr %struct.ld9040, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %arrayidx7, align 4
  %call10 = tail call i32 @devm_regulator_bulk_get(ptr noundef %spi, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef 7) #6
  %reset_gpio = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %reset_gpio, align 4
  %cmp.i61 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef %8) #9
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %12 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %bits_per_word, align 1
  %call23 = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %panel = getelementptr inbounds %struct.ld9040, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %spi, ptr noundef nonnull @ld9040_drm_funcs, i32 noundef 17) #6
  tail call void @drm_panel_add(ptr noundef %panel) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end28, %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ %call23, %do.end28 ], [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end5.cleanup_crit_edge ], [ %call.i60, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld9040_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies.i = getelementptr inbounds %struct.ld9040, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  %panel = getelementptr inbounds %struct.ld9040, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld9040_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %supplies.i = getelementptr i8, ptr %panel, i32 24
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_on_delay.i = getelementptr i8, ptr %panel, i32 52
  %0 = ptrtoint ptr %power_on_delay.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_on_delay.i, align 4
  tail call void @msleep(i32 noundef %1) #6
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 48
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #6
  %reset_delay.i = getelementptr i8, ptr %panel, i32 56
  %4 = ptrtoint ptr %reset_delay.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset_delay.i, align 4
  tail call void @msleep(i32 noundef %5) #6
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #6
  %8 = ptrtoint ptr %reset_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reset_delay.i, align 4
  tail call void @msleep(i32 noundef %9) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d, i32 noundef 3) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.16, i32 noundef 24) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.17, i32 noundef 6) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.18, i32 noundef 2) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.19, i32 noundef 8) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.20, i32 noundef 4) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.21, i32 noundef 4) #6
  %brightness.i.i = getelementptr i8, ptr %panel, i32 108
  %10 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness.i.i, align 4
  %arrayidx.i.i = getelementptr [25 x [22 x i8]], ptr @ld9040_gammas, i32 0, i32 %11
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i.i, i32 noundef 22) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_brightness_set.d, i32 noundef 3) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.22, i32 noundef 1) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_init.d.23, i32 noundef 1) #6
  %error.i = getelementptr i8, ptr %panel, i32 112
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 120) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_unprepare.d, i32 noundef 1) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_unprepare.d.28, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 40) #6
  %14 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %error.i, align 4
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then4 ], [ %13, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ld9040_enable(ptr nocapture noundef readnone %panel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ld9040_disable(ptr nocapture noundef readnone %panel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld9040_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  tail call void @msleep(i32 noundef 120) #6
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_unprepare.d, i32 noundef 1)
  tail call fastcc void @ld9040_dcs_write(ptr noundef %add.ptr.i, ptr noundef nonnull @ld9040_unprepare.d.28, i32 noundef 1)
  tail call void @msleep(i32 noundef 40) #6
  %error.i = getelementptr i8, ptr %panel, i32 112
  %0 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %error.i, align 4
  %supplies.i = getelementptr i8, ptr %panel, i32 24
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld9040_get_modes(ptr noundef %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_create(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vm = getelementptr i8, ptr %panel, i32 60
  tail call void @drm_display_mode_from_videomode(ptr noundef %vm, ptr noundef nonnull %call1) #6
  %width_mm = getelementptr i8, ptr %panel, i32 100
  %4 = ptrtoint ptr %width_mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width_mm, align 4
  %conv = trunc i32 %5 to i16
  %width_mm3 = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 26
  %6 = ptrtoint ptr %width_mm3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %width_mm3, align 2
  %height_mm = getelementptr i8, ptr %panel, i32 104
  %7 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height_mm, align 4
  %conv4 = trunc i32 %8 to i16
  %height_mm5 = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 27
  %9 = ptrtoint ptr %height_mm5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv4, ptr %height_mm5, align 4
  %conv7 = and i32 %5, 65535
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %10 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %display_info, align 8
  %11 = load i16, ptr %height_mm5, align 4
  %conv10 = zext i16 %11 to i32
  %height_mm12 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %height_mm12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv10, ptr %height_mm12, align 4
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 28
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ld9040_dcs_write(ptr nocapture noundef %ctx, ptr noundef %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %data.addr.i35 = alloca i16, align 2
  %xfer.i36 = alloca %struct.spi_transfer, align 4
  %msg.i37 = alloca %struct.spi_message, align 4
  %data.addr.i = alloca i16, align 2
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.ld9040, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ld9040_dcs_write.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ld9040_dcs_write, %if.then4)) #6
          to label %do.end [label %if.then4], !srcloc !95

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ld9040_dcs_write.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %len, ptr noundef %data) #6
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %conv = zext i8 %5 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.addr.i)
  %6 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %data.addr.i, align 2
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #6
  %9 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data.addr.i, ptr %xfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end.ld9040_spi_write_word.exit_crit_edge

do.end.ld9040_spi_write_word.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ld9040_spi_write_word.exit

if.end.i.i.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %ld9040_spi_write_word.exit

ld9040_spi_write_word.exit:                       ; preds = %if.end.i.i.i.i, %do.end.ld9040_spi_write_word.exit_crit_edge
  %call1.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not53 = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not53, label %land.rhs.lr.ph, label %ld9040_spi_write_word.exit.do.end16_crit_edge

ld9040_spi_write_word.exit.do.end16_crit_edge:    ; preds = %ld9040_spi_write_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

land.rhs.lr.ph:                                   ; preds = %ld9040_spi_write_word.exit
  %23 = getelementptr inbounds i8, ptr %xfer.i36, i32 4
  %len.i38 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i36, i32 0, i32 2
  %24 = getelementptr inbounds i8, ptr %msg.i37, i32 8
  %prev.i.i.i.i39 = getelementptr inbounds %struct.list_head, ptr %msg.i37, i32 0, i32 1
  %resources.i.i.i40 = getelementptr inbounds %struct.spi_message, ptr %msg.i37, i32 0, i32 10
  %prev.i2.i.i.i41 = getelementptr inbounds %struct.spi_message, ptr %msg.i37, i32 0, i32 10, i32 1
  %transfer_list.i.i42 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i36, i32 0, i32 18
  %prev3.i.i.i.i44 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i36, i32 0, i32 18, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %ld9040_spi_write_word.exit47.land.rhs_crit_edge, %land.rhs.lr.ph
  %data.addr.055 = phi ptr [ %data, %land.rhs.lr.ph ], [ %incdec.ptr, %ld9040_spi_write_word.exit47.land.rhs_crit_edge ]
  %len.addr.054 = phi i32 [ %len, %land.rhs.lr.ph ], [ %dec, %ld9040_spi_write_word.exit47.land.rhs_crit_edge ]
  %dec = add i32 %len.addr.054, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %land.rhs.if.end19_crit_edge, label %while.body

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %data.addr.055, i32 1
  %25 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr, align 1
  %conv9 = zext i8 %26 to i16
  %or = or i16 %conv9, 256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.addr.i35)
  %27 = ptrtoint ptr %data.addr.i35 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or, ptr %data.addr.i35, align 2
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i36) #6
  %30 = call ptr @memset(ptr %23, i32 0, i32 92)
  %31 = ptrtoint ptr %xfer.i36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data.addr.i35, ptr %xfer.i36, align 4
  %32 = ptrtoint ptr %len.i38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %len.i38, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i37) #6
  %33 = call ptr @memset(ptr %24, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i37, ptr %msg.i37, align 4
  %35 = ptrtoint ptr %prev.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i37, ptr %prev.i.i.i.i39, align 4
  %36 = ptrtoint ptr %resources.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i40, ptr %resources.i.i.i40, align 4
  %37 = ptrtoint ptr %prev.i2.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i40, ptr %prev.i2.i.i.i41, align 4
  %call.i.i.i.i43 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i42, ptr noundef nonnull %msg.i37, ptr noundef nonnull %msg.i37) #6
  br i1 %call.i.i.i.i43, label %if.end.i.i.i.i45, label %while.body.ld9040_spi_write_word.exit47_crit_edge

while.body.ld9040_spi_write_word.exit47_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ld9040_spi_write_word.exit47

if.end.i.i.i.i45:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %prev.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i42, ptr %prev.i.i.i.i39, align 4
  %39 = ptrtoint ptr %transfer_list.i.i42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i37, ptr %transfer_list.i.i42, align 4
  %40 = ptrtoint ptr %prev3.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i37, ptr %prev3.i.i.i.i44, align 4
  %41 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i42, ptr %msg.i37, align 4
  br label %ld9040_spi_write_word.exit47

ld9040_spi_write_word.exit47:                     ; preds = %if.end.i.i.i.i45, %while.body.ld9040_spi_write_word.exit47_crit_edge
  %call1.i46 = call i32 @spi_sync(ptr noundef %29, ptr noundef nonnull %msg.i37) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i37) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i36) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.addr.i35)
  %tobool7.not = icmp eq i32 %call1.i46, 0
  br i1 %tobool7.not, label %ld9040_spi_write_word.exit47.land.rhs_crit_edge, label %ld9040_spi_write_word.exit47.do.end16_crit_edge

ld9040_spi_write_word.exit47.do.end16_crit_edge:  ; preds = %ld9040_spi_write_word.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

ld9040_spi_write_word.exit47.land.rhs_crit_edge:  ; preds = %ld9040_spi_write_word.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

do.end16:                                         ; preds = %ld9040_spi_write_word.exit47.do.end16_crit_edge, %ld9040_spi_write_word.exit.do.end16_crit_edge
  %ret.0.lcssa = phi i32 [ %call1.i, %ld9040_spi_write_word.exit.do.end16_crit_edge ], [ %call1.i46, %ld9040_spi_write_word.exit47.do.end16_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %len, %ld9040_spi_write_word.exit.do.end16_crit_edge ], [ %dec, %ld9040_spi_write_word.exit47.do.end16_crit_edge ]
  %data.addr.0.lcssa = phi ptr [ %data, %ld9040_spi_write_word.exit.do.end16_crit_edge ], [ %incdec.ptr, %ld9040_spi_write_word.exit47.do.end16_crit_edge ]
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.27, i32 noundef %ret.0.lcssa, i32 noundef %len.addr.0.lcssa, ptr noundef %data.addr.0.lcssa) #9
  %44 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %ret.0.lcssa, ptr %error, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %land.rhs.if.end19_crit_edge
  call void @usleep_range_state(i32 noundef 300, i32 noundef 310, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_panel_samsung_ld9040__305_392_ld9040_driver_init6, !1, !"__initcall__kmod_panel_samsung_ld9040__305_392_ld9040_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 392, i32 1}
!2 = !{ptr @__exitcall_ld9040_driver_exit, !1, !"__exitcall_ld9040_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 394, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 395, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 396, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 388, i32 11}
!12 = !{ptr @ld9040_driver, !13, !"ld9040_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 383, i32 26}
!14 = !{ptr @ld9040_ids, !15, !"ld9040_ids", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 377, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 332, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 333, i32 28}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 339, i32 40}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 341, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ld9040_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ld9040_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 349, i32 3}
!32 = !{ptr @ld9040_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ld9040_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 305, i32 27}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 306, i32 27}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 307, i32 27}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 308, i32 27}
!42 = !{ptr @ld9040_drm_funcs, !43, !"ld9040_drm_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 287, i32 37}
!44 = !{ptr @ld9040_init.d, !45, !"d", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 181, i32 2}
!46 = !{ptr @ld9040_init.d.16, !47, !"d", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 182, i32 2}
!48 = !{ptr @ld9040_init.d.17, !49, !"d", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 186, i32 2}
!50 = !{ptr @ld9040_init.d.18, !51, !"d", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 188, i32 2}
!52 = !{ptr @ld9040_init.d.19, !53, !"d", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 189, i32 2}
!54 = !{ptr @ld9040_init.d.20, !55, !"d", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 191, i32 2}
!56 = !{ptr @ld9040_init.d.21, !57, !"d", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 192, i32 2}
!58 = !{ptr @ld9040_init.d.22, !59, !"d", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 194, i32 2}
!60 = !{ptr @ld9040_init.d.23, !61, !"d", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 195, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 148, i32 2}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ld9040_dcs_write.__UNIQUE_ID_ddebug304, !63, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 157, i32 3}
!69 = !{ptr @ld9040_dcs_write._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ld9040_dcs_write._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ld9040_brightness_set.d, !72, !"d", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 176, i32 2}
!73 = !{ptr @ld9040_gammas, !74, !"ld9040_gammas", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 37, i32 17}
!75 = !{ptr @ld9040_unprepare.d, !76, !"d", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 230, i32 2}
!77 = !{ptr @ld9040_unprepare.d.28, !78, !"d", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 231, i32 2}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 271, i32 3}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ld9040_get_modes._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ld9040_get_modes._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @ld9040_of_match, !85, !"ld9040_of_match", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-samsung-ld9040.c", i32 371, i32 34}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148766299, i64 2148766304, i64 2148766317, i64 2148766361, i64 2148766395, i64 2148766416}
