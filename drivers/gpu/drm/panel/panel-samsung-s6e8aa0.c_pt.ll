; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s6e8aa0_variant = type { i8, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.s6e8aa0 = type { ptr, %struct.drm_panel, [2 x %struct.regulator_bulk_data], ptr, i32, i32, i32, i8, i8, %struct.videomode, i32, i32, i8, i8, ptr, i32, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@__initcall__kmod_panel_samsung_s6e8aa0__305_1055_s6e8aa0_driver_init6 = internal global ptr @s6e8aa0_driver_init, section ".initcall6.init", align 4
@s6e8aa0_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6e8aa0_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s6e8aa0_probe, ptr @s6e8aa0_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_s6e8aa0_driver_exit = internal global ptr @s6e8aa0_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [64 x i8] c"panel_samsung_s6e8aa0.author=Donghwa Lee <dh09.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [61 x i8] c"panel_samsung_s6e8aa0.author=Inki Dae <inki.dae@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [69 x i8] c"panel_samsung_s6e8aa0.author=Joongmock Shin <jmock.shin@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [68 x i8] c"panel_samsung_s6e8aa0.author=Eunchul Kim <chulspro.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [62 x i8] c"panel_samsung_s6e8aa0.author=Tomasz Figa <t.figa@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [65 x i8] c"panel_samsung_s6e8aa0.author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [81 x i8] c"panel_samsung_s6e8aa0.description=MIPI-DSI based s6e8aa0 AMOLED LCD Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [71 x i8] c"panel_samsung_s6e8aa0.file=drivers/gpu/drm/panel/panel-samsung-s6e8aa0\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [37 x i8] c"panel_samsung_s6e8aa0.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-samsung-s6e8aa0\00", [42 x i8] zeroinitializer }, align 32
@s6e8aa0_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e8aa0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@s6e8aa0_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1006, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s6e8aa0_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s6e8aa0_probe._entry_ptr = internal global ptr @s6e8aa0_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@s6e8aa0_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1013, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get reset-gpios %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@s6e8aa0_probe._entry_ptr.11 = internal global ptr @s6e8aa0_probe._entry.9, section ".printk_index", align 4
@s6e8aa0_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @s6e8aa0_prepare, ptr @s6e8aa0_enable, ptr @s6e8aa0_disable, ptr @s6e8aa0_unprepare, ptr @s6e8aa0_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power-on-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-delay\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init-delay\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"panel-width-mm\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panel-height-mm\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"flip-horizontal\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flip-vertical\00", [18 x i8] zeroinitializer }, align 32
@s6e8aa0_set_sequence.d = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c")", [31 x i8] zeroinitializer }, align 32
@s6e8aa0_set_maximum_return_packet_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 815, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error %d setting maximum return packet size to %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"s6e8aa0_set_maximum_return_packet_size\00", [57 x i8] zeroinitializer }, align 32
@s6e8aa0_set_maximum_return_packet_size._entry_ptr = internal global ptr @s6e8aa0_set_maximum_return_packet_size._entry, section ".printk_index", align 4
@s6e8aa0_read_mtp_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 827, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read id failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s6e8aa0_read_mtp_id\00", [44 x i8] zeroinitializer }, align 32
@s6e8aa0_read_mtp_id._entry_ptr = internal global ptr @s6e8aa0_read_mtp_id._entry, section ".printk_index", align 4
@s6e8aa0_read_mtp_id._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 832, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ID: 0x%2x, 0x%2x, 0x%2x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s6e8aa0_read_mtp_id._entry_ptr.26 = internal global ptr @s6e8aa0_read_mtp_id._entry.23, section ".printk_index", align 4
@s6e8aa0_variants = internal constant { [4 x %struct.s6e8aa0_variant], [32 x i8] } { [4 x %struct.s6e8aa0_variant] [%struct.s6e8aa0_variant { i8 32, ptr @s6e8aa0_gamma_tables_v32 }, %struct.s6e8aa0_variant { i8 96, ptr @s6e8aa0_gamma_tables_v96 }, %struct.s6e8aa0_variant { i8 -114, ptr @s6e8aa0_gamma_tables_v142 }, %struct.s6e8aa0_variant { i8 -46, ptr @s6e8aa0_gamma_tables_v142 }], [32 x i8] zeroinitializer }, align 32
@s6e8aa0_read_mtp_id._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.5, i32 839, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported display version %d\0A\00", [32 x i8] zeroinitializer }, align 32
@s6e8aa0_read_mtp_id._entry_ptr.29 = internal global ptr @s6e8aa0_read_mtp_id._entry.27, section ".printk_index", align 4
@s6e8aa0_dcs_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 162, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error %d reading dcs seq(%#x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s6e8aa0_dcs_read\00", [47 x i8] zeroinitializer }, align 32
@s6e8aa0_dcs_read._entry_ptr = internal global ptr @s6e8aa0_dcs_read._entry, section ".printk_index", align 4
@s6e8aa0_gamma_tables_v32 = internal constant { [25 x [26 x i8]], [182 x i8] } { [25 x [26 x i8]] [[26 x i8] c"\FA\01C\14Er^k\A1\A7\9A\B4\CB\B8\92\AC\97\B4\C3\B5\00N\007\00X", [26 x i8] c"\FA\01C\14E\85q}\A6\B6\A1\B5\CA\BA\93\AC\98\B2\C0\AF\00Y\00C\00d", [26 x i8] c"\FA\01C\14E\A4\94\9E\A0\BB\9C\C3\D2\C6\93\AA\95\B7\C2\B4\00e\00P\00t", [26 x i8] c"\FA\01C\14E\AD\A1\A6\A0\B9\9B\C3\D1\C8\90\A6\90\BB\C3\B7\00o\00[\00\80", [26 x i8] c"\FA\01C\14E\A6\9D\9F\9F\B8\9A\C7\D5\CC\90\A5\8F\B8\C1\B6\00t\00`\00\85", [26 x i8] c"\FA\01C\14E\B3\AE\AE\9E\B7\9A\C8\D6\CE\91\A6\90\B6\C0\B3\00x\00e\00\8A", [26 x i8] c"\FA\01C\14E\AD\A9\A8\A3\B9\9E\C4\D3\CB\94\A6\90\B6\BF\B3\00|\00i\00\8E", [26 x i8] c"\FA\01C\14E\AF\AF\A9\A5\BC\A2\C7\D5\CD\93\A5\8F\B4\BD\B1\00\83\00p\00\96", [26 x i8] c"\FA\01C\14E\A9\AB\A3\AA\BF\A7\C5\D3\CB\93\A5\8F\B2\BB\B0\00\86\00t\00\9B", [26 x i8] c"\FA\01C\14E\B1\B5\AB\AB\C0\A9\C7\D4\CC\94\A4\8F\B1\BB\AF\00\8A\00w\00\9E", [26 x i8] c"\FA\01C\14E\AD\B2\A7\AE\C2\AB\C5\D3\CA\93\A4\8F\B1\BA\AE\00\8D\00{\00\A2", [26 x i8] c"\FA\01C\14E\A9\AF\A3\B0\C3\AE\C4\D1\C8\93\A4\8F\B1\BA\AF\00\8F\00}\00\A5", [26 x i8] c"\FA\01C\14E\B4\BD\AF\AE\C1\AB\C2\D0\C6\94\A4\8F\B1\BA\AF\00\92\00\80\00\A8", [26 x i8] c"\FA\01C\14E\B0\B9\AC\AD\C1\AB\C4\D1\C7\95\A4\90\B0\B9\AD\00\95\00\84\00\AC", [26 x i8] c"\FA\01C\14E\AD\B6\A7\AF\C2\AE\C5\D1\C7\93\A3\8E\B0\B9\AD\00\98\00\86\00\AF", [26 x i8] c"\FA\01C\14E\B4\BF\AF\AD\C1\AB\C3\D0\C6\94\A3\8F\AF\B8\AC\00\9A\00\89\00\B2", [26 x i8] c"\FA\01C\14E\B0\BC\AC\AF\C2\AD\C2\CF\C4\94\A3\90\AF\B8\AD\00\9C\00\8B\00\B5", [26 x i8] c"\FA\01C\14E\AD\B9\A7\B1\C4\AF\C3\CF\C5\94\A3\8F\AE\B7\AC\00\9F\00\8E\00\B8", [26 x i8] c"\FA\01C\14E\AD\B9\A7\AF\C2\AD\C1\CE\C3\95\A3\90\AD\B6\AB\00\A2\00\91\00\BB", [26 x i8] c"\FA\01C\14E\B1\BE\AC\B1\C4\AF\C1\CD\C1\95\A4\91\AD\B6\AB\00\A4\00\93\00\BD", [26 x i8] c"\FA\01C\14E\AD\BB\A8\B3\C5\B2\C1\CD\C2\95\A3\90\AD\B6\AB\00\A6\00\95\00\C0", [26 x i8] c"\FA\01C\14E\AD\BB\A8\B0\C3\AF\C2\CE\C2\94\A2\90\AC\B6\AB\00\A8\00\98\00\C3", [26 x i8] c"\FA\01C\14E\A9\B8\A5\B3\C5\B2\C1\CC\C0\95\A2\90\AD\B6\AB\00\AA\00\9A\00\C5", [26 x i8] c"\FA\01C\14E\B0\C0\AC\B0\C3\AF\C1\CD\C1\95\A2\90\AC\B5\A9\00\AC\00\9C\00\C8", [26 x i8] c"\FA\01C\14E\AD\BD\A8\AF\C2\AF\C1\CC\C0\95\A2\90\AC\B5\AA\00\B1\00\A1\00\CC"], [182 x i8] zeroinitializer }, align 32
@s6e8aa0_gamma_tables_v96 = internal constant { [25 x [26 x i8]], [182 x i8] } { [25 x [26 x i8]] [[26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\DF\1F\D7\DC\B7\E1\C0\AF\C4\D2\D0\CF\00M\00@\00_", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D55\CF\DC\C1\E1\BF\B3\C1\D2\D1\CE\00S\00F\00g", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D2d\CF\DB\C6\E1\BD\B3\BD\D2\D2\CE\00Y\00K\00n", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D0|\CF\DB\C9\E0\BC\B4\BB\CF\D1\CC\00_\00P\00u", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D0\8E\D1\DB\CC\DF\BB\B6\B9\D0\D1\CD\00c\00T\00z", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D1\9E\D5\DA\CD\DD\BB\B7\B9\CE\CE\C9\00h\00Y\00\81", [26 x i8] c"\FA\01\1F\1F\1F\FF\00\FF\D0\A5\D6\DA\CF\DD\BB\B7\B8\CC\CD\C7\00l\00\\\00\86", [26 x i8] c"\FA\01\1F\1F\1F\FF\1F\FE\D0\AE\D7\D9\D0\DB\B9\B6\B5\CA\CC\C5\00t\00c\00\90", [26 x i8] c"\FA\01\1F\1F\1F\FF\1F\F9\CF\B0\D6\D9\D1\DB\B9\B6\B4\CA\CB\C5\00w\00f\00\94", [26 x i8] c"\FA\01\1F\1F\1F\FF\1F\F7\CF\B3\D7\D8\D1\D9\B7\B6\B3\C9\CA\C3\00{\00i\00\99", [26 x i8] c"\FA\01\1F\1F\1F\FD/\F7\DF\B5\D6\D8\D1\D8\B6\B5\B2\CA\CB\C4\00~\00l\00\9D", [26 x i8] c"\FA\01\1F\1F\1F\FA/\F5\CE\B6\D5\D7\D2\D8\B6\B4\B0\C7\C9\C1\00\84\00q\00\A5", [26 x i8] c"\FA\01\1F\1F\1F\F7/\F2\CE\B9\D5\D8\D2\D8\B4\B4\AF\C7\C9\C1\00\87\00s\00\A8", [26 x i8] c"\FA\01\1F\1F\1F\F5/\F0\DF\BA\D5\D7\D2\D7\B4\B4\AF\C5\C7\BF\00\8A\00v\00\AC", [26 x i8] c"\FA\01\1F\1F\1F\F2/\ED\CE\BB\D4\D6\D2\D6\B5\B4\AF\C5\C7\BF\00\8C\00x\00\AF", [26 x i8] c"\FA\01\1F\1F\1F\EF/\EB\CD\BB\D2\D7\D3\D6\B3\B4\AE\C5\C6\BE\00\91\00}\00\B6", [26 x i8] c"\FA\01\1F\1F\1F\EE/\EA\CE\BD\D4\D6\D2\D5\B2\B3\AD\C3\C4\BB\00\94\00\7F\00\BA", [26 x i8] c"\FA\01\1F\1F\1F\EC/\E8\CE\BE\D3\D6\D3\D5\B2\B2\AC\C3\C5\BC\00\96\00\81\00\BD", [26 x i8] c"\FA\01\1F\1F\1F\EB/\E7\CE\BF\D3\D6\D2\D5\B1\B2\AB\C2\C4\BB\00\99\00\83\00\C0", [26 x i8] c"\FA\01\1F\1F\1F\EF_\E9\CA\BF\D3\D5\D2\D4\B2\B2\AB\C1\C4\BA\00\9B\00\85\00\C3", [26 x i8] c"\FA\01\1F\1F\1F\EA_\E8\EE\BF\D2\D5\D2\D4\B1\B2\AB\C1\C2\B9\00\9D\00\87\00\C6", [26 x i8] c"\FA\01\1F\1F\1F\E9_\E7\CD\BF\D2\D6\D2\D4\B1\B2\AB\BE\C0\B7\00\A1\00\8A\00\CA", [26 x i8] c"\FA\01\1F\1F\1F\E8a\E6\CD\BF\D1\D6\D3\D4\AF\B0\A9\BE\C1\B7\00\A3\00\8B\00\CE", [26 x i8] c"\FA\01\1F\1F\1F\E8b\E5\CC\C0\D0\D6\D2\D4\AF\B1\A9\BD\C0\B6\00\A5\00\8D\00\D0", [26 x i8] c"\FA\01\1F\1F\1F\E7\7F\E3\CC\C1\D0\D5\D3\D3\AE\AF\A8\BE\C0\B7\00\A8\00\90\00\D3"], [182 x i8] zeroinitializer }, align 32
@s6e8aa0_gamma_tables_v142 = internal constant { [25 x [26 x i8]], [182 x i8] } { [25 x [26 x i8]] [[26 x i8] c"\FA\01q1{bUU\AF\B1\B1\BD\CE\B7\9A\B1\90\B2\C4\AE\00`\00@\00p", [26 x i8] c"\FA\01q1{thi\B8\C1\B7\BD\CD\B8\93\AB\88\B4\C4\B1\00k\00M\00}", [26 x i8] c"\FA\01q1{\95\8A\89\B4\C6\B2\C5\D2\BF\90\A8\85\B5\C4\B3\00{\00]\00\8F", [26 x i8] c"\FA\01q1{\9F\98\92\B3\C4\B0\BC\CC\B4\91\A6\87\B5\C5\B4\00\87\00j\00\9E", [26 x i8] c"\FA\01q1{\99\93\8B\B2\C2\B0\BD\CE\B4\90\A6\87\B3\C3\B2\00\8D\00p\00\A4", [26 x i8] c"\FA\01q1{\A7\A5\99\B2\C2\B0\BB\CD\B1\93\A7\8A\B2\C1\B0\00\92\00u\00\AA", [26 x i8] c"\FA\01q1{\A0\A0\93\B6\C4\B4\B5\C8\AA\94\A9\8C\B2\C0\B0\00\97\00z\00\AF", [26 x i8] c"\FA\01q1{\A3\A7\96\B3\C2\B0\BA\CB\B0\94\A8\8C\B0\BF\AF\00\9F\00\83\00\B9", [26 x i8] c"\FA\01q1{\9D\A2\90\B6\C5\B3\B8\C9\AE\94\A8\8D\AF\BD\AD\00\A4\00\88\00\BF", [26 x i8] c"\FA\01q1{\A6\AC\97\B4\C4\B1\BB\CB\B2\93\A7\8D\AE\BC\AD\00\A7\00\8C\00\C3", [26 x i8] c"\FA\01q1{\A2\A9\93\B6\C5\B2\BA\C9\B0\93\A7\8D\AE\BB\AC\00\AB\00\90\00\C8", [26 x i8] c"\FA\01q1{\9E\A6\8F\B7\C6\B3\B8\C8\B0\93\A6\8C\AE\BB\AD\00\AE\00\93\00\CC", [26 x i8] c"\FA\01q1{\AB\B4\9C\B3\C3\AF\B7\C7\AF\93\A6\8C\AF\BC\AD\00\B1\00\97\00\CF", [26 x i8] c"\FA\01q1{\A6\B1\98\B1\C2\AB\BA\C9\B2\93\A6\8D\AE\BA\AB\00\B5\00\9B\00\D4", [26 x i8] c"\FA\01q1{\A3\AE\94\B2\C3\AC\BB\CA\B4\91\A4\8A\AE\BA\AC\00\B8\00\9E\00\D8", [26 x i8] c"\FA\01q1{\AB\B7\9C\AE\C0\A9\BA\C9\B3\92\A5\8B\AD\B9\AB\00\BB\00\A1\00\DC", [26 x i8] c"\FA\01q1{\A7\B4\97\B0\C1\AA\B9\C8\B2\92\A5\8C\AE\B9\AB\00\BE\00\A4\00\DF", [26 x i8] c"\FA\01q1{\A3\B0\94\B0\C2\AB\BB\C9\B3\91\A4\8B\AD\B8\AA\00\C1\00\A8\00\E2", [26 x i8] c"\FA\01q1{\A3\B0\94\AE\BF\A8\B9\C8\B3\92\A4\8B\AD\B7\A9\00\C4\00\AB\00\E6", [26 x i8] c"\FA\01q1{\A7\B6\98\AF\C0\A8\B8\C7\B2\93\A5\8D\AD\B7\A9\00\C7\00\AE\00\E9", [26 x i8] c"\FA\01q1{\A4\B3\95\AF\C1\A9\B9\C8\B3\92\A4\8B\AD\B7\AA\00\C9\00\B0\00\EC", [26 x i8] c"\FA\01q1{\A4\B3\95\AC\BE\A6\BB\C9\B4\90\A3\8A\AD\B7\A9\00\CC\00\B4\00\F0", [26 x i8] c"\FA\01q1{\A0\B0\91\AE\C0\A6\BA\C8\B4\91\A4\8B\AD\B7\A9\00\CF\00\B7\00\F3", [26 x i8] c"\FA\01q1{\A7\B8\98\AB\BD\A4\BB\C9\B5\91\A3\8B\AC\B6\A8\00\D1\00\B9\00\F6", [26 x i8] c"\FA\01q1{\A4\B5\95\A9\BC\A1\BB\C9\B5\91\A3\8A\AD\B6\A8\00\D6\00\BF\00\FC"], [182 x i8] zeroinitializer }, align 32
@s6e8aa0_panel_init.d = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\11", [31 x i8] zeroinitializer }, align 32
@s6e8aa0_apply_level_1_key.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@s6e8aa0_apply_level_2_key.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\FCZZ", [29 x i8] zeroinitializer }, align 32
@s6e8aa0_panel_cond_set.d = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\F8\195\00\00\00\94\00<x\10'\08n\00\00\00\00\04\08n\00\00\00\00\07\07#n\C0\C1\01\81\C1\00\C3\F6\F6\C1", [57 x i8] zeroinitializer }, align 32
@s6e8aa0_panel_cond_set_v142.aids = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\04\04\04\04\04`\80\A0", [24 x i8] zeroinitializer }, align 32
@s6e8aa0_display_condition_set.d = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F2\80\03\0D", [28 x i8] zeroinitializer }, align 32
@s6e8aa0_brightness_set.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F7\03", [30 x i8] zeroinitializer }, align 32
@s6e8aa0_etc_source_control.d = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F6\00\02\00", [28 x i8] zeroinitializer }, align 32
@s6e8aa0_etc_pentile_control.pent32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\B6\0C\02\032\C0DD\C0\00", [22 x i8] zeroinitializer }, align 32
@s6e8aa0_etc_pentile_control.pent142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\B6\0C\02\032\FFDD\C0\00", [22 x i8] zeroinitializer }, align 32
@s6e8aa0_elvss_nvm_set.d = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\D9\14@\0C\CB\CEn\C4\07@A\C1\00`\19", [17 x i8] zeroinitializer }, align 32
@s6e8aa0_etc_power_control.pwr142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\F4\CF\0A\12\10\1E3\02", [24 x i8] zeroinitializer }, align 32
@s6e8aa0_etc_power_control.pwr32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\F4\CF\0A\15\10\193\02", [24 x i8] zeroinitializer }, align 32
@s6e8aa0_dcs_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 147, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %zd writing dcs seq: %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s6e8aa0_dcs_write\00", [46 x i8] zeroinitializer }, align 32
@s6e8aa0_dcs_write._entry_ptr = internal global ptr @s6e8aa0_dcs_write._entry, section ".printk_index", align 4
@s6e8aa0_unprepare.d = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\10", [31 x i8] zeroinitializer }, align 32
@s6e8aa0_unprepare.d.34 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"(", [31 x i8] zeroinitializer }, align 32
@s6e8aa0_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 930, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create a new display mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s6e8aa0_get_modes\00", [46 x i8] zeroinitializer }, align 32
@s6e8aa0_get_modes._entry_ptr = internal global ptr @s6e8aa0_get_modes._entry, section ".printk_index", align 4
@switch.table.s6e8aa0_elvss_nvm_set = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\DF\DF\DF\DF\DF\DF\DF\DD\DD\DD\DD\DD\D9\D9\D9\D9\D0\D0\D0\D0\D0\D0\D0\D0\D0", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 96, i64 142, i64 210]
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"s6e8aa0_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1047, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1051, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"s6e8aa0_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1041, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1001, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1002, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1006, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1010, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1012, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"s6e8aa0_drm_funcs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 946, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 964, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 965, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 966, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 967, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 968, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 970, i32 51 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 971, i32 49 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 854, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 813, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 827, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 832, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"s6e8aa0_variants\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 748, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 839, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 162, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [25 x i8] c"s6e8aa0_gamma_tables_v32\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 619, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [25 x i8] c"s6e8aa0_gamma_tables_v96\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 489, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"s6e8aa0_gamma_tables_v142\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 360, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 788, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 184, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 357, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 261, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [5 x i8] c"aids\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 189, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 274, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 779, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 279, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"pent32\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 284, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant [8 x i8] c"pent142\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 288, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 348, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"pwr142\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 300, i32 18 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"pwr32\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 304, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 146, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 890, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 891, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 930, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [35 x i8] c"switch.table.s6e8aa0_elvss_nvm_set\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_s6e8aa0_driver_exit, ptr @__initcall__kmod_panel_samsung_s6e8aa0__305_1055_s6e8aa0_driver_init6, ptr @s6e8aa0_dcs_read._entry, ptr @s6e8aa0_dcs_read._entry_ptr, ptr @s6e8aa0_dcs_write._entry, ptr @s6e8aa0_dcs_write._entry_ptr, ptr @s6e8aa0_driver_exit, ptr @s6e8aa0_get_modes._entry, ptr @s6e8aa0_get_modes._entry_ptr, ptr @s6e8aa0_probe._entry, ptr @s6e8aa0_probe._entry.9, ptr @s6e8aa0_probe._entry_ptr, ptr @s6e8aa0_probe._entry_ptr.11, ptr @s6e8aa0_read_mtp_id._entry, ptr @s6e8aa0_read_mtp_id._entry.23, ptr @s6e8aa0_read_mtp_id._entry.27, ptr @s6e8aa0_read_mtp_id._entry_ptr, ptr @s6e8aa0_read_mtp_id._entry_ptr.26, ptr @s6e8aa0_read_mtp_id._entry_ptr.29, ptr @s6e8aa0_set_maximum_return_packet_size._entry, ptr @s6e8aa0_set_maximum_return_packet_size._entry_ptr, ptr @s6e8aa0_driver, ptr @.str, ptr @s6e8aa0_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @s6e8aa0_drm_funcs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @s6e8aa0_set_sequence.d, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @s6e8aa0_variants, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @s6e8aa0_gamma_tables_v32, ptr @s6e8aa0_gamma_tables_v96, ptr @s6e8aa0_gamma_tables_v142, ptr @s6e8aa0_panel_init.d, ptr @s6e8aa0_apply_level_1_key.d, ptr @s6e8aa0_apply_level_2_key.d, ptr @s6e8aa0_panel_cond_set.d, ptr @s6e8aa0_panel_cond_set_v142.aids, ptr @s6e8aa0_display_condition_set.d, ptr @s6e8aa0_brightness_set.d, ptr @s6e8aa0_etc_source_control.d, ptr @s6e8aa0_etc_pentile_control.pent32, ptr @s6e8aa0_etc_pentile_control.pent142, ptr @s6e8aa0_elvss_nvm_set.d, ptr @s6e8aa0_etc_power_control.pwr142, ptr @s6e8aa0_etc_power_control.pwr32, ptr @.str.32, ptr @.str.33, ptr @s6e8aa0_unprepare.d, ptr @s6e8aa0_unprepare.d.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.s6e8aa0_elvss_nvm_set], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_set_sequence.d to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_set_maximum_return_packet_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_read_mtp_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_read_mtp_id._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_variants to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_read_mtp_id._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_dcs_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_gamma_tables_v32 to i32), i32 650, i32 832, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_gamma_tables_v96 to i32), i32 650, i32 832, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_gamma_tables_v142 to i32), i32 650, i32 832, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_panel_init.d to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_apply_level_1_key.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_apply_level_2_key.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_panel_cond_set.d to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_panel_cond_set_v142.aids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_display_condition_set.d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_brightness_set.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_etc_source_control.d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_etc_pentile_control.pent32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_etc_pentile_control.pent142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_elvss_nvm_set.d to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_etc_power_control.pwr142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_etc_power_control.pwr32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_dcs_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_unprepare.d to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_unprepare.d.34 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e8aa0_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s6e8aa0_elvss_nvm_set to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e8aa0_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @s6e8aa0_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s6e8aa0_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @s6e8aa0_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e8aa0_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1003, ptr %mode_flags, align 8
  %of_node.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %vm.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 9
  %call.i65 = tail call i32 @of_get_videomode(ptr noundef %6, ptr noundef %vm.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i = icmp slt i32 %call.i65, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %power_on_delay.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef %power_on_delay.i, i32 noundef 1, i32 noundef 0) #6
  %reset_delay.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 5
  %call.i.i28.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef %reset_delay.i, i32 noundef 1, i32 noundef 0) #6
  %init_delay.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 6
  %call.i.i29.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef %init_delay.i, i32 noundef 1, i32 noundef 0) #6
  %width_mm.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 10
  %call.i.i30.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef %width_mm.i, i32 noundef 1, i32 noundef 0) #6
  %height_mm.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 11
  %call.i.i31.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef %height_mm.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %flip_horizontal.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 7
  %frombool.i = zext i1 %tobool.i.i to i8
  %7 = ptrtoint ptr %flip_horizontal.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool.i, ptr %flip_horizontal.i, align 4
  %call.i32.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef null) #6
  %tobool.i33.i = icmp ne ptr %call.i32.i, null
  %flip_vertical.i = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 8
  %frombool9.i = zext i1 %tobool.i33.i to i8
  %8 = ptrtoint ptr %flip_vertical.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool9.i, ptr %flip_vertical.i, align 1
  %supplies = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx7 = getelementptr %struct.s6e8aa0, ptr %call.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.2, ptr %arrayidx7, align 4
  %call10 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call10) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 7) #6
  %reset_gpio = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %reset_gpio, align 4
  %cmp.i66 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %do.end20, label %if.end25

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %12) #9
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_gpio, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %brightness = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 15
  %16 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 24, ptr %brightness, align 4
  %panel = getelementptr inbounds %struct.s6e8aa0, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @s6e8aa0_drm_funcs, i32 noundef 16) #6
  tail call void @drm_panel_add(ptr noundef %panel) #6
  %call27 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_remove(ptr noundef %panel) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end25.cleanup_crit_edge, %do.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %15, %do.end20 ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %if.then29 ], [ %call27, %if.end25.cleanup_crit_edge ], [ %call.i65, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e8aa0_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  %panel = getelementptr inbounds %struct.s6e8aa0, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_videomode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e8aa0_prepare(ptr noundef %panel) #2 align 64 {
entry:
  %d.i.i.i = alloca [3 x i8], align 1
  %d.i.i.i.i = alloca [39 x i8], align 1
  %id.i.i = alloca [3 x i8], align 1
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
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  %reset_delay.i = getelementptr i8, ptr %panel, i32 56
  %6 = ptrtoint ptr %reset_delay.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_delay.i, align 4
  tail call void @msleep(i32 noundef %7) #6
  %error.i.i = getelementptr i8, ptr %panel, i32 128
  %8 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp slt i32 %9, 0
  br i1 %cmp.i.i, label %if.end.s6e8aa0_set_maximum_return_packet_size.exit.thread.i_crit_edge, label %if.end.i.i

if.end.s6e8aa0_set_maximum_return_packet_size.exit.thread.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_set_maximum_return_packet_size.exit.thread.i

if.end.i.i:                                       ; preds = %if.end
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -8
  %call1.i.i = tail call i32 @mipi_dsi_set_maximum_return_packet_size(ptr noundef %add.ptr.i.i.i, i16 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %do.end.i.i, label %s6e8aa0_set_maximum_return_packet_size.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %call1.i.i, i32 noundef 3) #9
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call1.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_set_maximum_return_packet_size.exit.thread.i

s6e8aa0_set_maximum_return_packet_size.exit.thread.i: ; preds = %do.end.i.i, %if.end.s6e8aa0_set_maximum_return_packet_size.exit.thread.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %id.i.i) #6
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %id.i.i, align 1, !annotation !143
  %16 = getelementptr inbounds [3 x i8], ptr %id.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !143
  %18 = getelementptr inbounds [3 x i8], ptr %id.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %18, align 1, !annotation !143
  br label %do.end.i4.i

s6e8aa0_set_maximum_return_packet_size.exit.i:    ; preds = %if.end.i.i
  %20 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %id.i.i) #6
  %21 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %id.i.i, align 1, !annotation !143
  %22 = getelementptr inbounds [3 x i8], ptr %id.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %22, align 1, !annotation !143
  %24 = getelementptr inbounds [3 x i8], ptr %id.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %24, align 1, !annotation !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.i.i, label %s6e8aa0_set_maximum_return_packet_size.exit.i.do.end.i4.i_crit_edge, label %if.end.i.i.i

s6e8aa0_set_maximum_return_packet_size.exit.i.do.end.i4.i_crit_edge: ; preds = %s6e8aa0_set_maximum_return_packet_size.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i4.i

if.end.i.i.i:                                     ; preds = %s6e8aa0_set_maximum_return_packet_size.exit.i
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %27, i32 -8
  %call2.i.i.i = call i32 @mipi_dsi_dcs_read(ptr noundef %add.ptr.i.i.i.i, i8 noundef zeroext -47, ptr noundef nonnull %id.i.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %do.end.i.i.i, label %s6e8aa0_dcs_read.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.30, i32 noundef %call2.i.i.i, i32 noundef 209) #9
  %30 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call2.i.i.i, ptr %error.i.i, align 4
  br label %do.end.i4.i

s6e8aa0_dcs_read.exit.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2.i.i.i)
  %cmp1.i.i = icmp ult i32 %call2.i.i.i, 3
  br i1 %cmp1.i.i, label %s6e8aa0_dcs_read.exit.i.i.do.end.i4.i_crit_edge, label %lor.lhs.false2.i.i

s6e8aa0_dcs_read.exit.i.i.do.end.i4.i_crit_edge:  ; preds = %s6e8aa0_dcs_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i4.i

lor.lhs.false2.i.i:                               ; preds = %s6e8aa0_dcs_read.exit.i.i
  %31 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp3.i.i = icmp eq i8 %32, 0
  br i1 %cmp3.i.i, label %lor.lhs.false2.i.i.do.end.i4.i_crit_edge, label %do.end7.i.i

lor.lhs.false2.i.i.do.end.i4.i_crit_edge:         ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i4.i

do.end.i4.i:                                      ; preds = %lor.lhs.false2.i.i.do.end.i4.i_crit_edge, %s6e8aa0_dcs_read.exit.i.i.do.end.i4.i_crit_edge, %do.end.i.i.i, %s6e8aa0_set_maximum_return_packet_size.exit.i.do.end.i4.i_crit_edge, %s6e8aa0_set_maximum_return_packet_size.exit.thread.i
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.21) #9
  br label %s6e8aa0_read_mtp_id.exit.thread.i

do.end7.i.i:                                      ; preds = %lor.lhs.false2.i.i
  %conv.i.i = zext i8 %32 to i32
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %22, align 1
  %conv12.i.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %24, align 1
  %conv14.i.i = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.24, i32 noundef %conv.i.i, i32 noundef %conv12.i.i, i32 noundef %conv14.i.i) #9
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %22, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i8 %42, label %for.inc.3.i.i [
    i8 32, label %do.end7.i.i.s6e8aa0_read_mtp_id.exit.i_crit_edge
    i8 96, label %if.end35.fold.split.i.i
    i8 -114, label %if.end35.fold.split64.i.i
    i8 -46, label %if.end35.fold.split65.i.i
  ]

do.end7.i.i.s6e8aa0_read_mtp_id.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_read_mtp_id.exit.i

for.inc.3.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %conv33.i.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.28, i32 noundef %conv33.i.i) #9
  br label %s6e8aa0_read_mtp_id.exit.thread.i

if.end35.fold.split.i.i:                          ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_read_mtp_id.exit.i

if.end35.fold.split64.i.i:                        ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_read_mtp_id.exit.i

if.end35.fold.split65.i.i:                        ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_read_mtp_id.exit.i

s6e8aa0_read_mtp_id.exit.thread.i:                ; preds = %for.inc.3.i.i, %do.end.i4.i
  %storemerge.i = phi i32 [ -22, %for.inc.3.i.i ], [ -5, %do.end.i4.i ]
  %46 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge.i, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %id.i.i) #6
  br label %s6e8aa0_apply_level_2_key.exit.i.i

s6e8aa0_read_mtp_id.exit.i:                       ; preds = %if.end35.fold.split65.i.i, %if.end35.fold.split64.i.i, %if.end35.fold.split.i.i, %do.end7.i.i.s6e8aa0_read_mtp_id.exit.i_crit_edge
  %i.062.lcssa.i.i = phi i32 [ 0, %do.end7.i.i.s6e8aa0_read_mtp_id.exit.i_crit_edge ], [ 1, %if.end35.fold.split.i.i ], [ 2, %if.end35.fold.split64.i.i ], [ 3, %if.end35.fold.split65.i.i ]
  %arrayidx36.i.i = getelementptr [4 x %struct.s6e8aa0_variant], ptr @s6e8aa0_variants, i32 0, i32 %i.062.lcssa.i.i
  %variant.i.i = getelementptr i8, ptr %panel, i32 120
  %47 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx36.i.i, ptr %variant.i.i, align 4
  %version38.i.i = getelementptr i8, ptr %panel, i32 116
  %48 = ptrtoint ptr %version38.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %42, ptr %version38.i.i, align 4
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %24, align 1
  %id40.i.i = getelementptr i8, ptr %panel, i32 117
  %51 = ptrtoint ptr %id40.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %id40.i.i, align 1
  %52 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr17.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %id.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr17.i)
  %cmp.i.i.i.i = icmp slt i32 %.pr17.i, 0
  br i1 %cmp.i.i.i.i, label %s6e8aa0_read_mtp_id.exit.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge, label %if.end.i.i.i.i

s6e8aa0_read_mtp_id.exit.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge: ; preds = %s6e8aa0_read_mtp_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_apply_level_2_key.exit.i.i

if.end.i.i.i.i:                                   ; preds = %s6e8aa0_read_mtp_id.exit.i
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %54, i32 -8
  %call1.i.i.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i.i.i, ptr noundef nonnull @s6e8aa0_apply_level_1_key.d, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp2.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  br i1 %cmp2.i.i.i.i, label %do.end.i.i.i.i, label %s6e8aa0_apply_level_1_key.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i.i.i, i32 noundef 3, ptr noundef nonnull @s6e8aa0_apply_level_1_key.d) #9
  br label %s6e8aa0_apply_level_2_key.exit.sink.split.i.i

s6e8aa0_apply_level_1_key.exit.i.i:               ; preds = %if.end.i.i.i.i
  %57 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr.i.i = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp.i.i13.i.i = icmp slt i32 %.pr.i.i, 0
  br i1 %cmp.i.i13.i.i, label %s6e8aa0_apply_level_1_key.exit.i.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge, label %if.end.i.i17.i.i

s6e8aa0_apply_level_1_key.exit.i.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge: ; preds = %s6e8aa0_apply_level_1_key.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_apply_level_2_key.exit.i.i

if.end.i.i17.i.i:                                 ; preds = %s6e8aa0_apply_level_1_key.exit.i.i
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i14.i.i = getelementptr i8, ptr %59, i32 -8
  %call1.i.i15.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i14.i.i, ptr noundef nonnull @s6e8aa0_apply_level_2_key.d, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i15.i.i)
  %cmp2.i.i16.i.i = icmp slt i32 %call1.i.i15.i.i, 0
  br i1 %cmp2.i.i16.i.i, label %do.end.i.i18.i.i, label %if.end.i.i17.i.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge

if.end.i.i17.i.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge: ; preds = %if.end.i.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_apply_level_2_key.exit.i.i

do.end.i.i18.i.i:                                 ; preds = %if.end.i.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i15.i.i, i32 noundef 3, ptr noundef nonnull @s6e8aa0_apply_level_2_key.d) #9
  br label %s6e8aa0_apply_level_2_key.exit.sink.split.i.i

s6e8aa0_apply_level_2_key.exit.sink.split.i.i:    ; preds = %do.end.i.i18.i.i, %do.end.i.i.i.i
  %call1.i.i.sink.i.i = phi i32 [ %call1.i.i.i.i, %do.end.i.i.i.i ], [ %call1.i.i15.i.i, %do.end.i.i18.i.i ]
  %62 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call1.i.i.sink.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_apply_level_2_key.exit.i.i

s6e8aa0_apply_level_2_key.exit.i.i:               ; preds = %s6e8aa0_apply_level_2_key.exit.sink.split.i.i, %if.end.i.i17.i.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge, %s6e8aa0_apply_level_1_key.exit.i.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge, %s6e8aa0_read_mtp_id.exit.i.s6e8aa0_apply_level_2_key.exit.i.i_crit_edge, %s6e8aa0_read_mtp_id.exit.thread.i
  call void @msleep(i32 noundef 20) #6
  %63 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.i5.i = icmp slt i32 %64, 0
  br i1 %cmp.i.i5.i, label %s6e8aa0_apply_level_2_key.exit.i.i.s6e8aa0_dcs_write.exit.i.i_crit_edge, label %if.end.i.i7.i

s6e8aa0_apply_level_2_key.exit.i.i.s6e8aa0_dcs_write.exit.i.i_crit_edge: ; preds = %s6e8aa0_apply_level_2_key.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_dcs_write.exit.i.i

if.end.i.i7.i:                                    ; preds = %s6e8aa0_apply_level_2_key.exit.i.i
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i6.i = getelementptr i8, ptr %66, i32 -8
  %call1.i.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i6.i, ptr noundef nonnull @s6e8aa0_panel_init.d, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp2.i.i.i, label %do.end.i.i8.i, label %if.end.i.i7.i.s6e8aa0_dcs_write.exit.i.i_crit_edge

if.end.i.i7.i.s6e8aa0_dcs_write.exit.i.i_crit_edge: ; preds = %if.end.i.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_dcs_write.exit.i.i

do.end.i.i8.i:                                    ; preds = %if.end.i.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i.i, i32 noundef 1, ptr noundef nonnull @s6e8aa0_panel_init.d) #9
  %69 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call1.i.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_dcs_write.exit.i.i

s6e8aa0_dcs_write.exit.i.i:                       ; preds = %do.end.i.i8.i, %if.end.i.i7.i.s6e8aa0_dcs_write.exit.i.i_crit_edge, %s6e8aa0_apply_level_2_key.exit.i.i.s6e8aa0_dcs_write.exit.i.i_crit_edge
  call void @msleep(i32 noundef 40) #6
  %version.i.i.i = getelementptr i8, ptr %panel, i32 116
  %70 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %71)
  %cmp.i19.i.i = icmp ult i8 %71, -114
  br i1 %cmp.i19.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %s6e8aa0_dcs_write.exit.i.i
  %72 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i21.i.i = icmp slt i32 %73, 0
  br i1 %cmp.i.i21.i.i, label %if.then.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, label %if.end.i.i25.i.i

if.then.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.i.i

if.end.i.i25.i.i:                                 ; preds = %if.then.i.i.i
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i22.i.i = getelementptr i8, ptr %75, i32 -8
  %call1.i.i23.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i22.i.i, ptr noundef nonnull @s6e8aa0_panel_cond_set.d, i32 noundef 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i23.i.i)
  %cmp2.i.i24.i.i = icmp slt i32 %call1.i.i23.i.i, 0
  br i1 %cmp2.i.i24.i.i, label %do.end.i.i26.i.i, label %if.end.i.i25.i.i.s6e8aa0_panel_cond_set.exit.i.i_crit_edge

if.end.i.i25.i.i.s6e8aa0_panel_cond_set.exit.i.i_crit_edge: ; preds = %if.end.i.i25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_panel_cond_set.exit.i.i

do.end.i.i26.i.i:                                 ; preds = %if.end.i.i25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i23.i.i, i32 noundef 39, ptr noundef nonnull @s6e8aa0_panel_cond_set.d) #9
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.sink.split.i.i

if.else.i.i.i:                                    ; preds = %s6e8aa0_dcs_write.exit.i.i
  %id.i.i.i.i = getelementptr i8, ptr %panel, i32 117
  %78 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %id.i.i.i.i, align 1
  %80 = lshr i8 %79, 5
  %81 = zext i8 %80 to i32
  %arrayidx.i.i.i.i = getelementptr [8 x i8], ptr @s6e8aa0_panel_cond_set_v142.aids, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %flip_vertical.i.i.i.i = getelementptr i8, ptr %panel, i32 65
  %84 = ptrtoint ptr %flip_vertical.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %flip_vertical.i.i.i.i, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i.i.i = icmp eq i8 %85, 0
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, i8 61, i8 57
  %flip_horizontal.i.i.i.i = getelementptr i8, ptr %panel, i32 64
  %86 = ptrtoint ptr %flip_horizontal.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flip_horizontal.i.i.i.i, align 4, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool5.not.i.i.i.i = icmp eq i8 %87, 0
  %88 = and i8 %spec.select.i.i.i.i, 29
  %cfg.1.i.i.i.i = select i1 %tobool5.not.i.i.i.i, i8 %spec.select.i.i.i.i, i8 %88
  %89 = select i1 %tobool5.not.i.i.i.i, i1 %tobool.not.i.i.i.i, i1 false
  br i1 %89, label %if.else.i.i.i.if.end57.i.i.i.i_crit_edge, label %if.then20.i.i.i.i

if.else.i.i.i.if.end57.i.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i.i.i

if.then20.i.i.i.i:                                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i.i.i

if.end57.i.i.i.i:                                 ; preds = %if.then20.i.i.i.i, %if.else.i.i.i.if.end57.i.i.i.i_crit_edge
  %int_con.0.i.i.i.i = phi i8 [ 1, %if.then20.i.i.i.i ], [ 8, %if.else.i.i.i.if.end57.i.i.i.i_crit_edge ]
  %bictl_con.0.i.i.i.i = phi i8 [ 65, %if.then20.i.i.i.i ], [ 72, %if.else.i.i.i.if.end57.i.i.i.i_crit_edge ]
  %em_clk2_con.0.i.i.i.i = phi i8 [ -10, %if.then20.i.i.i.i ], [ -1, %if.else.i.i.i.if.end57.i.i.i.i_crit_edge ]
  %em_int_con.0.i.i.i.i = phi i8 [ -63, %if.then20.i.i.i.i ], [ -56, %if.else.i.i.i.if.end57.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %d.i.i.i.i) #6
  %90 = ptrtoint ptr %d.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -8, ptr %d.i.i.i.i, align 1
  %arrayinit.element.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 1
  %91 = ptrtoint ptr %arrayinit.element.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %cfg.1.i.i.i.i, ptr %arrayinit.element.i.i.i.i, align 1
  %arrayinit.element58.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 2
  %92 = ptrtoint ptr %arrayinit.element58.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 53, ptr %arrayinit.element58.i.i.i.i, align 1
  %arrayinit.element59.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 3
  %93 = ptrtoint ptr %arrayinit.element59.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayinit.element59.i.i.i.i, align 1
  %arrayinit.element60.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 4
  %94 = ptrtoint ptr %arrayinit.element60.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %arrayinit.element60.i.i.i.i, align 1
  %arrayinit.element61.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 5
  %95 = ptrtoint ptr %arrayinit.element61.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayinit.element61.i.i.i.i, align 1
  %arrayinit.element62.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 6
  %96 = ptrtoint ptr %arrayinit.element62.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -109, ptr %arrayinit.element62.i.i.i.i, align 1
  %arrayinit.element63.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 7
  %97 = ptrtoint ptr %arrayinit.element63.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayinit.element63.i.i.i.i, align 1
  %arrayinit.element64.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 8
  %98 = ptrtoint ptr %arrayinit.element64.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 60, ptr %arrayinit.element64.i.i.i.i, align 1
  %arrayinit.element65.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 9
  %99 = ptrtoint ptr %arrayinit.element65.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 120, ptr %arrayinit.element65.i.i.i.i, align 1
  %arrayinit.element66.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 10
  %100 = ptrtoint ptr %arrayinit.element66.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 8, ptr %arrayinit.element66.i.i.i.i, align 1
  %arrayinit.element67.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 11
  %101 = ptrtoint ptr %arrayinit.element67.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 39, ptr %arrayinit.element67.i.i.i.i, align 1
  %arrayinit.element68.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 12
  %102 = ptrtoint ptr %arrayinit.element68.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 125, ptr %arrayinit.element68.i.i.i.i, align 1
  %arrayinit.element69.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 13
  %103 = ptrtoint ptr %arrayinit.element69.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 63, ptr %arrayinit.element69.i.i.i.i, align 1
  %arrayinit.element70.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 14
  %104 = ptrtoint ptr %arrayinit.element70.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayinit.element70.i.i.i.i, align 1
  %arrayinit.element71.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 15
  %105 = ptrtoint ptr %arrayinit.element71.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayinit.element71.i.i.i.i, align 1
  %arrayinit.element72.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 16
  %106 = ptrtoint ptr %arrayinit.element72.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayinit.element72.i.i.i.i, align 1
  %arrayinit.element73.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 17
  %107 = ptrtoint ptr %arrayinit.element73.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 32, ptr %arrayinit.element73.i.i.i.i, align 1
  %arrayinit.element74.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 18
  %108 = ptrtoint ptr %arrayinit.element74.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %83, ptr %arrayinit.element74.i.i.i.i, align 1
  %arrayinit.element75.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 19
  %109 = ptrtoint ptr %arrayinit.element75.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 8, ptr %arrayinit.element75.i.i.i.i, align 1
  %arrayinit.element76.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 20
  %110 = ptrtoint ptr %arrayinit.element76.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 110, ptr %arrayinit.element76.i.i.i.i, align 1
  %arrayinit.element77.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 21
  %111 = ptrtoint ptr %arrayinit.element77.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayinit.element77.i.i.i.i, align 1
  %arrayinit.element78.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 22
  %112 = ptrtoint ptr %arrayinit.element78.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayinit.element78.i.i.i.i, align 1
  %arrayinit.element79.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 23
  %113 = ptrtoint ptr %arrayinit.element79.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayinit.element79.i.i.i.i, align 1
  %arrayinit.element80.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 24
  %114 = ptrtoint ptr %arrayinit.element80.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 2, ptr %arrayinit.element80.i.i.i.i, align 1
  %arrayinit.element81.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 25
  %115 = ptrtoint ptr %arrayinit.element81.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 7, ptr %arrayinit.element81.i.i.i.i, align 1
  %arrayinit.element82.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 26
  %116 = ptrtoint ptr %arrayinit.element82.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 7, ptr %arrayinit.element82.i.i.i.i, align 1
  %arrayinit.element83.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 27
  %117 = ptrtoint ptr %arrayinit.element83.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 35, ptr %arrayinit.element83.i.i.i.i, align 1
  %arrayinit.element84.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 28
  %118 = ptrtoint ptr %arrayinit.element84.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 35, ptr %arrayinit.element84.i.i.i.i, align 1
  %arrayinit.element85.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 29
  %119 = ptrtoint ptr %arrayinit.element85.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -64, ptr %arrayinit.element85.i.i.i.i, align 1
  %arrayinit.element86.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 30
  %120 = ptrtoint ptr %arrayinit.element86.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %em_int_con.0.i.i.i.i, ptr %arrayinit.element86.i.i.i.i, align 1
  %arrayinit.element87.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 31
  %121 = ptrtoint ptr %arrayinit.element87.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %int_con.0.i.i.i.i, ptr %arrayinit.element87.i.i.i.i, align 1
  %arrayinit.element88.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 32
  %122 = ptrtoint ptr %arrayinit.element88.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %bictl_con.0.i.i.i.i, ptr %arrayinit.element88.i.i.i.i, align 1
  %arrayinit.element89.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 33
  %123 = ptrtoint ptr %arrayinit.element89.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -63, ptr %arrayinit.element89.i.i.i.i, align 1
  %arrayinit.element90.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 34
  %124 = ptrtoint ptr %arrayinit.element90.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %arrayinit.element90.i.i.i.i, align 1
  %arrayinit.element91.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 35
  %125 = ptrtoint ptr %arrayinit.element91.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -63, ptr %arrayinit.element91.i.i.i.i, align 1
  %arrayinit.element92.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 36
  %126 = ptrtoint ptr %arrayinit.element92.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %em_clk2_con.0.i.i.i.i, ptr %arrayinit.element92.i.i.i.i, align 1
  %arrayinit.element93.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 37
  %127 = ptrtoint ptr %arrayinit.element93.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %em_clk2_con.0.i.i.i.i, ptr %arrayinit.element93.i.i.i.i, align 1
  %arrayinit.element94.i.i.i.i = getelementptr inbounds i8, ptr %d.i.i.i.i, i32 38
  %128 = ptrtoint ptr %arrayinit.element94.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %em_int_con.0.i.i.i.i, ptr %arrayinit.element94.i.i.i.i, align 1
  %129 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp.i.i.i.i.i = icmp slt i32 %130, 0
  br i1 %cmp.i.i.i.i.i, label %if.end57.i.i.i.i.s6e8aa0_panel_cond_set_v142.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end57.i.i.i.i.s6e8aa0_panel_cond_set_v142.exit.i.i.i_crit_edge: ; preds = %if.end57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_panel_cond_set_v142.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end57.i.i.i.i
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %132, i32 -8
  %call1.i.i.i.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i.i.i.i, ptr noundef nonnull %d.i.i.i.i, i32 noundef 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %cmp2.i.i.i.i.i = icmp slt i32 %call1.i.i.i.i.i, 0
  br i1 %cmp2.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end.i.i.i.i.i.s6e8aa0_panel_cond_set_v142.exit.i.i.i_crit_edge

if.end.i.i.i.i.i.s6e8aa0_panel_cond_set_v142.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_panel_cond_set_v142.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i.i.i.i, i32 noundef 39, ptr noundef nonnull %d.i.i.i.i) #9
  %135 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call1.i.i.i.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_panel_cond_set_v142.exit.i.i.i

s6e8aa0_panel_cond_set_v142.exit.i.i.i:           ; preds = %do.end.i.i.i.i.i, %if.end.i.i.i.i.i.s6e8aa0_panel_cond_set_v142.exit.i.i.i_crit_edge, %if.end57.i.i.i.i.s6e8aa0_panel_cond_set_v142.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %d.i.i.i.i) #6
  br label %s6e8aa0_panel_cond_set.exit.i.i

s6e8aa0_panel_cond_set.exit.i.i:                  ; preds = %s6e8aa0_panel_cond_set_v142.exit.i.i.i, %if.end.i.i25.i.i.s6e8aa0_panel_cond_set.exit.i.i_crit_edge
  %136 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr94.i.i = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr94.i.i)
  %cmp.i.i29.i.i = icmp slt i32 %.pr94.i.i, 0
  br i1 %cmp.i.i29.i.i, label %s6e8aa0_panel_cond_set.exit.i.i.s6e8aa0_brightness_set.exitthread-pre-split.i.i_crit_edge, label %if.end.i.i33.i.i

s6e8aa0_panel_cond_set.exit.i.i.s6e8aa0_brightness_set.exitthread-pre-split.i.i_crit_edge: ; preds = %s6e8aa0_panel_cond_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_brightness_set.exitthread-pre-split.i.i

if.end.i.i33.i.i:                                 ; preds = %s6e8aa0_panel_cond_set.exit.i.i
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i30.i.i = getelementptr i8, ptr %138, i32 -8
  %call1.i.i31.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i30.i.i, ptr noundef nonnull @s6e8aa0_display_condition_set.d, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i31.i.i)
  %cmp2.i.i32.i.i = icmp slt i32 %call1.i.i31.i.i, 0
  br i1 %cmp2.i.i32.i.i, label %do.end.i.i34.i.i, label %s6e8aa0_display_condition_set.exit.i.i

do.end.i.i34.i.i:                                 ; preds = %if.end.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i31.i.i, i32 noundef 4, ptr noundef nonnull @s6e8aa0_display_condition_set.d) #9
  %141 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call1.i.i31.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_brightness_set.exitthread-pre-split.i.i

s6e8aa0_display_condition_set.exit.i.i:           ; preds = %if.end.i.i33.i.i
  %142 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pr96.pr.i.i = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr96.pr.i.i)
  %tobool.not.i.i.i = icmp eq i32 %.pr96.pr.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i38.i.i, label %s6e8aa0_display_condition_set.exit.i.i.s6e8aa0_brightness_set.exit.i.i_crit_edge

s6e8aa0_display_condition_set.exit.i.i.s6e8aa0_brightness_set.exit.i.i_crit_edge: ; preds = %s6e8aa0_display_condition_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_brightness_set.exit.i.i

if.end.i38.i.i:                                   ; preds = %s6e8aa0_display_condition_set.exit.i.i
  %variant.i.i.i = getelementptr i8, ptr %panel, i32 120
  %143 = ptrtoint ptr %variant.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %variant.i.i.i, align 4
  %gamma_tables.i.i.i = getelementptr inbounds %struct.s6e8aa0_variant, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %gamma_tables.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %gamma_tables.i.i.i, align 4
  %brightness.i.i.i = getelementptr i8, ptr %panel, i32 124
  %147 = ptrtoint ptr %brightness.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %brightness.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [26 x i8], ptr %146, i32 %148
  %149 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -115, i8 %150)
  %cmp.i37.i.i = icmp ugt i8 %150, -115
  br i1 %cmp.i37.i.i, label %if.then2.i.i.i, label %if.end.i38.i.i.if.end3.i.i.i_crit_edge

if.end.i38.i.i.if.end3.i.i.i_crit_edge:           ; preds = %if.end.i38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @s6e8aa0_elvss_nvm_set(ptr noundef %add.ptr.i) #6
  br label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.end.i38.i.i.if.end3.i.i.i_crit_edge
  %151 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i.i39.i.i = icmp slt i32 %152, 0
  br i1 %cmp.i.i39.i.i, label %if.end3.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, label %if.end.i.i43.i.i

if.end3.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.i.i

if.end.i.i43.i.i:                                 ; preds = %if.end3.i.i.i
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i40.i.i = getelementptr i8, ptr %154, i32 -8
  %call1.i.i41.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i40.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i41.i.i)
  %cmp2.i.i42.i.i = icmp slt i32 %call1.i.i41.i.i, 0
  br i1 %cmp2.i.i42.i.i, label %do.end.i.i44.i.i, label %s6e8aa0_dcs_write.exit.i.i.i

do.end.i.i44.i.i:                                 ; preds = %if.end.i.i43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i41.i.i, i32 noundef 26, ptr noundef %arrayidx.i.i.i) #9
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.sink.split.i.i

s6e8aa0_dcs_write.exit.i.i.i:                     ; preds = %if.end.i.i43.i.i
  %157 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr.i.i.i = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i.i)
  %cmp.i11.i.i.i = icmp slt i32 %.pr.i.i.i, 0
  br i1 %cmp.i11.i.i.i, label %s6e8aa0_dcs_write.exit.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, label %if.end.i15.i.i.i

s6e8aa0_dcs_write.exit.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge: ; preds = %s6e8aa0_dcs_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.i.i

if.end.i15.i.i.i:                                 ; preds = %s6e8aa0_dcs_write.exit.i.i.i
  %158 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i12.i.i.i = getelementptr i8, ptr %159, i32 -8
  %call1.i13.i.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i12.i.i.i, ptr noundef nonnull @s6e8aa0_brightness_set.d, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i.i.i)
  %cmp2.i14.i.i.i = icmp slt i32 %call1.i13.i.i.i, 0
  br i1 %cmp2.i14.i.i.i, label %do.end.i16.i.i.i, label %if.end.i15.i.i.i.s6e8aa0_brightness_set.exitthread-pre-split.i.i_crit_edge

if.end.i15.i.i.i.s6e8aa0_brightness_set.exitthread-pre-split.i.i_crit_edge: ; preds = %if.end.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_brightness_set.exitthread-pre-split.i.i

do.end.i16.i.i.i:                                 ; preds = %if.end.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.32, i32 noundef %call1.i13.i.i.i, i32 noundef 2, ptr noundef nonnull @s6e8aa0_brightness_set.d) #9
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.sink.split.i.i

s6e8aa0_brightness_set.exitthread-pre-split.i.i:  ; preds = %if.end.i15.i.i.i.s6e8aa0_brightness_set.exitthread-pre-split.i.i_crit_edge, %do.end.i.i34.i.i, %s6e8aa0_panel_cond_set.exit.i.i.s6e8aa0_brightness_set.exitthread-pre-split.i.i_crit_edge
  %162 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %.pr98.i.i = load i32, ptr %error.i.i, align 4
  br label %s6e8aa0_brightness_set.exit.i.i

s6e8aa0_brightness_set.exit.i.i:                  ; preds = %s6e8aa0_brightness_set.exitthread-pre-split.i.i, %s6e8aa0_display_condition_set.exit.i.i.s6e8aa0_brightness_set.exit.i.i_crit_edge
  %163 = phi i32 [ %.pr98.i.i, %s6e8aa0_brightness_set.exitthread-pre-split.i.i ], [ %.pr96.pr.i.i, %s6e8aa0_display_condition_set.exit.i.i.s6e8aa0_brightness_set.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp.i.i46.i.i = icmp slt i32 %163, 0
  br i1 %cmp.i.i46.i.i, label %s6e8aa0_brightness_set.exit.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, label %if.end.i.i50.i.i

s6e8aa0_brightness_set.exit.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge: ; preds = %s6e8aa0_brightness_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.i.i

if.end.i.i50.i.i:                                 ; preds = %s6e8aa0_brightness_set.exit.i.i
  %164 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i47.i.i = getelementptr i8, ptr %165, i32 -8
  %call1.i.i48.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i47.i.i, ptr noundef nonnull @s6e8aa0_etc_source_control.d, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i48.i.i)
  %cmp2.i.i49.i.i = icmp slt i32 %call1.i.i48.i.i, 0
  br i1 %cmp2.i.i49.i.i, label %do.end.i.i51.i.i, label %if.end.i.i50.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge

if.end.i.i50.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge: ; preds = %if.end.i.i50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.i.i

do.end.i.i51.i.i:                                 ; preds = %if.end.i.i50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i48.i.i, i32 noundef 4, ptr noundef nonnull @s6e8aa0_etc_source_control.d) #9
  %168 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call1.i.i48.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_etc_source_control.exit.i.i

s6e8aa0_etc_source_control.exitthread-pre-split.sink.split.i.i: ; preds = %do.end.i16.i.i.i, %do.end.i.i44.i.i, %do.end.i.i26.i.i
  %call1.i.i23.sink.i.i = phi i32 [ %call1.i.i23.i.i, %do.end.i.i26.i.i ], [ %call1.i.i41.i.i, %do.end.i.i44.i.i ], [ %call1.i13.i.i.i, %do.end.i16.i.i.i ]
  %169 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call1.i.i23.sink.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_etc_source_control.exitthread-pre-split.i.i

s6e8aa0_etc_source_control.exitthread-pre-split.i.i: ; preds = %s6e8aa0_etc_source_control.exitthread-pre-split.sink.split.i.i, %if.end.i.i50.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, %s6e8aa0_brightness_set.exit.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, %s6e8aa0_dcs_write.exit.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, %if.end3.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge, %if.then.i.i.i.s6e8aa0_etc_source_control.exitthread-pre-split.i.i_crit_edge
  %170 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %.pr100.i.i = load i32, ptr %error.i.i, align 4
  br label %s6e8aa0_etc_source_control.exit.i.i

s6e8aa0_etc_source_control.exit.i.i:              ; preds = %s6e8aa0_etc_source_control.exitthread-pre-split.i.i, %do.end.i.i51.i.i
  %171 = phi i32 [ %.pr100.i.i, %s6e8aa0_etc_source_control.exitthread-pre-split.i.i ], [ %call1.i.i48.i.i, %do.end.i.i51.i.i ]
  %172 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %173)
  %cmp.i54.i.i = icmp ult i8 %173, -114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp.i.i56.i.i = icmp slt i32 %171, 0
  br i1 %cmp.i54.i.i, label %if.then.i57.i.i, label %if.else.i63.i.i

if.then.i57.i.i:                                  ; preds = %s6e8aa0_etc_source_control.exit.i.i
  br i1 %cmp.i.i56.i.i, label %if.then.i57.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge, label %if.end.i.i61.i.i

if.then.i57.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge: ; preds = %if.then.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_pentile_control.exit.i.i

if.end.i.i61.i.i:                                 ; preds = %if.then.i57.i.i
  %174 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i58.i.i = getelementptr i8, ptr %175, i32 -8
  %call1.i.i59.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i58.i.i, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent32, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i59.i.i)
  %cmp2.i.i60.i.i = icmp slt i32 %call1.i.i59.i.i, 0
  br i1 %cmp2.i.i60.i.i, label %do.end.i.i62.i.i, label %if.end.i.i61.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge

if.end.i.i61.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge: ; preds = %if.end.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_pentile_control.exit.i.i

do.end.i.i62.i.i:                                 ; preds = %if.end.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i59.i.i, i32 noundef 10, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent32) #9
  br label %if.end.sink.split.i.i.i

if.else.i63.i.i:                                  ; preds = %s6e8aa0_etc_source_control.exit.i.i
  br i1 %cmp.i.i56.i.i, label %if.else.i63.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge, label %if.end.i9.i.i.i

if.else.i63.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge: ; preds = %if.else.i63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_pentile_control.exit.i.i

if.end.i9.i.i.i:                                  ; preds = %if.else.i63.i.i
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i6.i.i.i = getelementptr i8, ptr %179, i32 -8
  %call1.i7.i.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i6.i.i.i, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent142, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i.i)
  %cmp2.i8.i.i.i = icmp slt i32 %call1.i7.i.i.i, 0
  br i1 %cmp2.i8.i.i.i, label %do.end.i10.i.i.i, label %if.end.i9.i.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge

if.end.i9.i.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge: ; preds = %if.end.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_pentile_control.exit.i.i

do.end.i10.i.i.i:                                 ; preds = %if.end.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %180 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.32, i32 noundef %call1.i7.i.i.i, i32 noundef 10, ptr noundef nonnull @s6e8aa0_etc_pentile_control.pent142) #9
  br label %if.end.sink.split.i.i.i

if.end.sink.split.i.i.i:                          ; preds = %do.end.i10.i.i.i, %do.end.i.i62.i.i
  %call1.i7.sink.i.i.i = phi i32 [ %call1.i7.i.i.i, %do.end.i10.i.i.i ], [ %call1.i.i59.i.i, %do.end.i.i62.i.i ]
  %182 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %call1.i7.sink.i.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_etc_pentile_control.exit.i.i

s6e8aa0_etc_pentile_control.exit.i.i:             ; preds = %if.end.sink.split.i.i.i, %if.end.i9.i.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge, %if.else.i63.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge, %if.end.i.i61.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge, %if.then.i57.i.i.s6e8aa0_etc_pentile_control.exit.i.i_crit_edge
  call fastcc void @s6e8aa0_elvss_nvm_set(ptr noundef %add.ptr.i) #6
  %183 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %184)
  %cmp.i66.i.i = icmp ult i8 %184, -114
  %185 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i.i68.i.i = icmp slt i32 %186, 0
  br i1 %cmp.i66.i.i, label %if.then.i69.i.i, label %if.else.i75.i.i

if.then.i69.i.i:                                  ; preds = %s6e8aa0_etc_pentile_control.exit.i.i
  br i1 %cmp.i.i68.i.i, label %if.then.i69.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge, label %if.end.i.i73.i.i

if.then.i69.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge: ; preds = %if.then.i69.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_power_control.exit.i.i

if.end.i.i73.i.i:                                 ; preds = %if.then.i69.i.i
  %187 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i70.i.i = getelementptr i8, ptr %188, i32 -8
  %call1.i.i71.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i70.i.i, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr32, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i71.i.i)
  %cmp2.i.i72.i.i = icmp slt i32 %call1.i.i71.i.i, 0
  br i1 %cmp2.i.i72.i.i, label %do.end.i.i74.i.i, label %if.end.i.i73.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge

if.end.i.i73.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge: ; preds = %if.end.i.i73.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_power_control.exit.i.i

do.end.i.i74.i.i:                                 ; preds = %if.end.i.i73.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %189 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i71.i.i, i32 noundef 8, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr32) #9
  br label %if.end.sink.split.i82.i.i

if.else.i75.i.i:                                  ; preds = %s6e8aa0_etc_pentile_control.exit.i.i
  br i1 %cmp.i.i68.i.i, label %if.else.i75.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge, label %if.end.i9.i79.i.i

if.else.i75.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge: ; preds = %if.else.i75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_power_control.exit.i.i

if.end.i9.i79.i.i:                                ; preds = %if.else.i75.i.i
  %191 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i6.i76.i.i = getelementptr i8, ptr %192, i32 -8
  %call1.i7.i77.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i6.i76.i.i, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr142, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i77.i.i)
  %cmp2.i8.i78.i.i = icmp slt i32 %call1.i7.i77.i.i, 0
  br i1 %cmp2.i8.i78.i.i, label %do.end.i10.i80.i.i, label %if.end.i9.i79.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge

if.end.i9.i79.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge: ; preds = %if.end.i9.i79.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_etc_power_control.exit.i.i

do.end.i10.i80.i.i:                               ; preds = %if.end.i9.i79.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %193 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.32, i32 noundef %call1.i7.i77.i.i, i32 noundef 8, ptr noundef nonnull @s6e8aa0_etc_power_control.pwr142) #9
  br label %if.end.sink.split.i82.i.i

if.end.sink.split.i82.i.i:                        ; preds = %do.end.i10.i80.i.i, %do.end.i.i74.i.i
  %call1.i7.sink.i81.i.i = phi i32 [ %call1.i7.i77.i.i, %do.end.i10.i80.i.i ], [ %call1.i.i71.i.i, %do.end.i.i74.i.i ]
  %195 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %call1.i7.sink.i81.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_etc_power_control.exit.i.i

s6e8aa0_etc_power_control.exit.i.i:               ; preds = %if.end.sink.split.i82.i.i, %if.end.i9.i79.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge, %if.else.i75.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge, %if.end.i.i73.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge, %if.then.i69.i.i.s6e8aa0_etc_power_control.exit.i.i_crit_edge
  %id1.i.i.i = getelementptr i8, ptr %panel, i32 117
  %196 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %id1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i84.i.i = icmp eq i8 %197, 0
  %conv2.i.i.i = select i1 %tobool.not.i84.i.i, i8 -107, i8 0
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d.i.i.i) #6
  %198 = getelementptr inbounds [3 x i8], ptr %d.i.i.i, i32 0, i32 1
  %199 = getelementptr inbounds [3 x i8], ptr %d.i.i.i, i32 0, i32 2
  %200 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -79, ptr %d.i.i.i, align 1
  %201 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 4, ptr %198, align 1
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv2.i.i.i, ptr %199, align 1
  %203 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i.i86.i.i = icmp slt i32 %204, 0
  br i1 %cmp.i.i86.i.i, label %s6e8aa0_etc_power_control.exit.i.i.s6e8aa0_panel_init.exit.i_crit_edge, label %if.end.i.i90.i.i

s6e8aa0_etc_power_control.exit.i.i.s6e8aa0_panel_init.exit.i_crit_edge: ; preds = %s6e8aa0_etc_power_control.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_panel_init.exit.i

if.end.i.i90.i.i:                                 ; preds = %s6e8aa0_etc_power_control.exit.i.i
  %205 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i87.i.i = getelementptr i8, ptr %206, i32 -8
  %call1.i.i88.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i87.i.i, ptr noundef nonnull %d.i.i.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i88.i.i)
  %cmp2.i.i89.i.i = icmp slt i32 %call1.i.i88.i.i, 0
  br i1 %cmp2.i.i89.i.i, label %do.end.i.i91.i.i, label %if.end.i.i90.i.i.s6e8aa0_panel_init.exit.i_crit_edge

if.end.i.i90.i.i.s6e8aa0_panel_init.exit.i_crit_edge: ; preds = %if.end.i.i90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_panel_init.exit.i

do.end.i.i91.i.i:                                 ; preds = %if.end.i.i90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i88.i.i, i32 noundef 3, ptr noundef nonnull %d.i.i.i) #9
  %209 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %call1.i.i88.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_panel_init.exit.i

s6e8aa0_panel_init.exit.i:                        ; preds = %do.end.i.i91.i.i, %if.end.i.i90.i.i.s6e8aa0_panel_init.exit.i_crit_edge, %s6e8aa0_etc_power_control.exit.i.i.s6e8aa0_panel_init.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d.i.i.i) #6
  %init_delay.i.i = getelementptr i8, ptr %panel, i32 60
  %210 = ptrtoint ptr %init_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %init_delay.i.i, align 4
  call void @msleep(i32 noundef %211) #6
  %212 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp.i10.i = icmp slt i32 %213, 0
  br i1 %cmp.i10.i, label %s6e8aa0_panel_init.exit.i.if.then3_crit_edge, label %if.end.i14.i

s6e8aa0_panel_init.exit.i.if.then3_crit_edge:     ; preds = %s6e8aa0_panel_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i14.i:                                     ; preds = %s6e8aa0_panel_init.exit.i
  %214 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %215, i32 -8
  %call1.i12.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i11.i, ptr noundef nonnull @s6e8aa0_set_sequence.d, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %cmp2.i13.i = icmp slt i32 %call1.i12.i, 0
  br i1 %cmp2.i13.i, label %do.end.i15.i, label %s6e8aa0_set_sequence.exit

do.end.i15.i:                                     ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  %216 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.32, i32 noundef %call1.i12.i, i32 noundef 1, ptr noundef nonnull @s6e8aa0_set_sequence.d) #9
  %218 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %call1.i12.i, ptr %error.i.i, align 4
  br label %if.then3

s6e8aa0_set_sequence.exit:                        ; preds = %if.end.i14.i
  %219 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %.pr = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp2 = icmp slt i32 %.pr, 0
  br i1 %cmp2, label %s6e8aa0_set_sequence.exit.if.then3_crit_edge, label %s6e8aa0_set_sequence.exit.cleanup_crit_edge

s6e8aa0_set_sequence.exit.cleanup_crit_edge:      ; preds = %s6e8aa0_set_sequence.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

s6e8aa0_set_sequence.exit.if.then3_crit_edge:     ; preds = %s6e8aa0_set_sequence.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %s6e8aa0_set_sequence.exit.if.then3_crit_edge, %do.end.i15.i, %s6e8aa0_panel_init.exit.i.if.then3_crit_edge
  %220 = phi i32 [ %.pr, %s6e8aa0_set_sequence.exit.if.then3_crit_edge ], [ %call1.i12.i, %do.end.i15.i ], [ %213, %s6e8aa0_panel_init.exit.i.if.then3_crit_edge ]
  %call4 = call i32 @s6e8aa0_unprepare(ptr noundef %panel)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %s6e8aa0_set_sequence.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %220, %if.then3 ], [ %.pr, %s6e8aa0_set_sequence.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s6e8aa0_enable(ptr nocapture noundef readnone %panel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s6e8aa0_disable(ptr nocapture noundef readnone %panel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e8aa0_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %error.i = getelementptr i8, ptr %panel, i32 128
  %0 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.s6e8aa0_dcs_write.exit13_crit_edge, label %if.end.i

entry.s6e8aa0_dcs_write.exit13_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_dcs_write.exit13

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -8
  %call1.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i, ptr noundef nonnull @s6e8aa0_unprepare.d, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end.i, label %s6e8aa0_dcs_write.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %call1.i, i32 noundef 1, ptr noundef nonnull @s6e8aa0_unprepare.d) #9
  br label %s6e8aa0_dcs_write.exit13.sink.split

s6e8aa0_dcs_write.exit:                           ; preds = %if.end.i
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i7 = icmp slt i32 %.pr, 0
  br i1 %cmp.i7, label %s6e8aa0_dcs_write.exit.s6e8aa0_dcs_write.exit13_crit_edge, label %if.end.i11

s6e8aa0_dcs_write.exit.s6e8aa0_dcs_write.exit13_crit_edge: ; preds = %s6e8aa0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_dcs_write.exit13

if.end.i11:                                       ; preds = %s6e8aa0_dcs_write.exit
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %8, i32 -8
  %call1.i9 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i8, ptr noundef nonnull @s6e8aa0_unprepare.d.34, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %cmp2.i10 = icmp slt i32 %call1.i9, 0
  br i1 %cmp2.i10, label %do.end.i12, label %if.end.i11.s6e8aa0_dcs_write.exit13_crit_edge

if.end.i11.s6e8aa0_dcs_write.exit13_crit_edge:    ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_dcs_write.exit13

do.end.i12:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.32, i32 noundef %call1.i9, i32 noundef 1, ptr noundef nonnull @s6e8aa0_unprepare.d.34) #9
  br label %s6e8aa0_dcs_write.exit13.sink.split

s6e8aa0_dcs_write.exit13.sink.split:              ; preds = %do.end.i12, %do.end.i
  %call1.i.sink = phi i32 [ %call1.i, %do.end.i ], [ %call1.i9, %do.end.i12 ]
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i.sink, ptr %error.i, align 4
  br label %s6e8aa0_dcs_write.exit13

s6e8aa0_dcs_write.exit13:                         ; preds = %s6e8aa0_dcs_write.exit13.sink.split, %if.end.i11.s6e8aa0_dcs_write.exit13_crit_edge, %s6e8aa0_dcs_write.exit.s6e8aa0_dcs_write.exit13_crit_edge, %entry.s6e8aa0_dcs_write.exit13_crit_edge
  tail call void @msleep(i32 noundef 40) #6
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %error.i, align 4
  %supplies.i = getelementptr i8, ptr %panel, i32 24
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e8aa0_get_modes(ptr noundef %panel, ptr noundef %connector) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vm = getelementptr i8, ptr %panel, i32 68
  tail call void @drm_display_mode_from_videomode(ptr noundef %vm, ptr noundef nonnull %call1) #6
  %width_mm = getelementptr i8, ptr %panel, i32 108
  %4 = ptrtoint ptr %width_mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width_mm, align 4
  %conv = trunc i32 %5 to i16
  %width_mm3 = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 26
  %6 = ptrtoint ptr %width_mm3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %width_mm3, align 2
  %height_mm = getelementptr i8, ptr %panel, i32 112
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_set_maximum_return_packet_size(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s6e8aa0_elvss_nvm_set(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %d.i = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.s6e8aa0, ptr %ctx, i32 0, i32 12
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -114, i8 %1)
  %cmp = icmp ult i8 %1, -114
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %error.i = getelementptr inbounds %struct.s6e8aa0, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -8
  %call1.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i, ptr noundef nonnull @s6e8aa0_elvss_nvm_set.d, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %call1.i, i32 noundef 15, ptr noundef nonnull @s6e8aa0_elvss_nvm_set.d) #9
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1.i, ptr %error.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %brightness.i = getelementptr inbounds %struct.s6e8aa0, ptr %ctx, i32 0, i32 15
  %9 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %10)
  %11 = icmp ult i32 %10, 25
  br i1 %11, label %switch.lookup, label %if.else.sw.epilog.i_crit_edge

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [25 x i8], ptr @switch.table.s6e8aa0_elvss_nvm_set, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %12)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.else.sw.epilog.i_crit_edge
  %br.0.i = phi i8 [ %switch.load, %switch.lookup ], [ -39, %if.else.sw.epilog.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %d.i) #6
  %13 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 1
  %14 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 2
  %15 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 3
  %16 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 4
  %17 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 5
  %18 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 6
  %19 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 7
  %20 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 8
  %21 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 9
  %22 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 10
  %23 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 11
  %24 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 12
  %25 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 13
  %26 = getelementptr inbounds [15 x i8], ptr %d.i, i32 0, i32 14
  %27 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -39, ptr %d.i, align 1
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 20, ptr %13, align 1
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 64, ptr %14, align 1
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 12, ptr %15, align 1
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -53, ptr %16, align 1
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -50, ptr %17, align 1
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 110, ptr %18, align 1
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -60, ptr %19, align 1
  %35 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %20, align 1
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 64, ptr %21, align 1
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 65, ptr %22, align 1
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %br.0.i, ptr %23, align 1
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %24, align 1
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 96, ptr %25, align 1
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 25, ptr %26, align 1
  %error.i.i = getelementptr inbounds %struct.s6e8aa0, ptr %ctx, i32 0, i32 16
  %42 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i = icmp slt i32 %43, 0
  br i1 %cmp.i.i, label %sw.epilog.i.s6e8aa0_elvss_nvm_set_v142.exit_crit_edge, label %if.end.i.i

sw.epilog.i.s6e8aa0_elvss_nvm_set_v142.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_elvss_nvm_set_v142.exit

if.end.i.i:                                       ; preds = %sw.epilog.i
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 -8
  %call1.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %d.i, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %do.end.i.i, label %if.end.i.i.s6e8aa0_elvss_nvm_set_v142.exit_crit_edge

if.end.i.i.s6e8aa0_elvss_nvm_set_v142.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s6e8aa0_elvss_nvm_set_v142.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.32, i32 noundef %call1.i.i, i32 noundef 15, ptr noundef nonnull %d.i) #9
  %48 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call1.i.i, ptr %error.i.i, align 4
  br label %s6e8aa0_elvss_nvm_set_v142.exit

s6e8aa0_elvss_nvm_set_v142.exit:                  ; preds = %do.end.i.i, %if.end.i.i.s6e8aa0_elvss_nvm_set_v142.exit_crit_edge, %sw.epilog.i.s6e8aa0_elvss_nvm_set_v142.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %d.i) #6
  br label %if.end

if.end:                                           ; preds = %s6e8aa0_elvss_nvm_set_v142.exit, %do.end.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_panel_samsung_s6e8aa0__305_1055_s6e8aa0_driver_init6, !1, !"__initcall__kmod_panel_samsung_s6e8aa0__305_1055_s6e8aa0_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1055, i32 1}
!2 = !{ptr @__exitcall_s6e8aa0_driver_exit, !1, !"__exitcall_s6e8aa0_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1057, i32 1}
!5 = !{ptr @__UNIQUE_ID_author307, !6, !"__UNIQUE_ID_author307", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1058, i32 1}
!7 = !{ptr @__UNIQUE_ID_author308, !8, !"__UNIQUE_ID_author308", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1059, i32 1}
!9 = !{ptr @__UNIQUE_ID_author309, !10, !"__UNIQUE_ID_author309", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1060, i32 1}
!11 = !{ptr @__UNIQUE_ID_author310, !12, !"__UNIQUE_ID_author310", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1061, i32 1}
!13 = !{ptr @__UNIQUE_ID_author311, !14, !"__UNIQUE_ID_author311", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1062, i32 1}
!15 = !{ptr @__UNIQUE_ID_description312, !16, !"__UNIQUE_ID_description312", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1063, i32 1}
!17 = !{ptr @__UNIQUE_ID_file313, !18, !"__UNIQUE_ID_file313", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1064, i32 1}
!19 = !{ptr @__UNIQUE_ID_license314, !18, !"__UNIQUE_ID_license314", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1051, i32 11}
!22 = !{ptr @s6e8aa0_driver, !23, !"s6e8aa0_driver", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1047, i32 31}
!24 = !{ptr @s6e8aa0_of_match, !25, !"s6e8aa0_of_match", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1041, i32 34}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1001, i32 28}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1002, i32 28}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1006, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @s6e8aa0_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @s6e8aa0_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1010, i32 40}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 1012, i32 3}
!42 = !{ptr @s6e8aa0_probe._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @s6e8aa0_probe._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 964, i32 27}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 965, i32 27}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 966, i32 27}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 967, i32 27}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 968, i32 27}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 970, i32 51}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 971, i32 49}
!58 = !{ptr @s6e8aa0_drm_funcs, !59, !"s6e8aa0_drm_funcs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 946, i32 37}
!60 = !{ptr @s6e8aa0_set_sequence.d, !61, !"d", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 854, i32 2}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 813, i32 3}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @s6e8aa0_set_maximum_return_packet_size._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @s6e8aa0_set_maximum_return_packet_size._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 827, i32 3}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @s6e8aa0_read_mtp_id._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @s6e8aa0_read_mtp_id._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 832, i32 2}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @s6e8aa0_read_mtp_id._entry.23, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @s6e8aa0_read_mtp_id._entry_ptr.26, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 839, i32 3}
!79 = !{ptr @s6e8aa0_read_mtp_id._entry.27, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @s6e8aa0_read_mtp_id._entry_ptr.29, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 162, i32 3}
!83 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @s6e8aa0_dcs_read._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @s6e8aa0_dcs_read._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @s6e8aa0_variants, !87, !"s6e8aa0_variants", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 748, i32 37}
!88 = !{ptr @s6e8aa0_gamma_tables_v32, !89, !"s6e8aa0_gamma_tables_v32", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 619, i32 34}
!90 = !{ptr @s6e8aa0_gamma_tables_v96, !91, !"s6e8aa0_gamma_tables_v96", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 489, i32 34}
!92 = !{ptr @s6e8aa0_gamma_tables_v142, !93, !"s6e8aa0_gamma_tables_v142", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 360, i32 34}
!94 = !{ptr @s6e8aa0_panel_init.d, !95, !"d", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 788, i32 2}
!96 = !{ptr @s6e8aa0_apply_level_1_key.d, !97, !"d", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 184, i32 2}
!98 = !{ptr @s6e8aa0_apply_level_2_key.d, !99, !"d", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 357, i32 2}
!100 = !{ptr @s6e8aa0_panel_cond_set.d, !101, !"d", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 261, i32 3}
!102 = !{ptr @s6e8aa0_panel_cond_set_v142.aids, !103, !"aids", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 189, i32 18}
!104 = !{ptr @s6e8aa0_display_condition_set.d, !105, !"d", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 274, i32 2}
!106 = !{ptr @s6e8aa0_brightness_set.d, !107, !"d", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 779, i32 2}
!108 = !{ptr @s6e8aa0_etc_source_control.d, !109, !"d", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 279, i32 2}
!110 = !{ptr @s6e8aa0_etc_pentile_control.pent32, !111, !"pent32", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 284, i32 18}
!112 = !{ptr @s6e8aa0_etc_pentile_control.pent142, !113, !"pent142", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 288, i32 18}
!114 = !{ptr @s6e8aa0_elvss_nvm_set.d, !115, !"d", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 348, i32 3}
!116 = !{ptr @s6e8aa0_etc_power_control.pwr142, !117, !"pwr142", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 300, i32 18}
!118 = !{ptr @s6e8aa0_etc_power_control.pwr32, !119, !"pwr32", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 304, i32 18}
!120 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 146, i32 3}
!122 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @s6e8aa0_dcs_write._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @s6e8aa0_dcs_write._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @s6e8aa0_unprepare.d, !126, !"d", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 890, i32 2}
!127 = !{ptr @s6e8aa0_unprepare.d.34, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 891, i32 2}
!129 = !{ptr @.str.35, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c", i32 930, i32 3}
!131 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @s6e8aa0_get_modes._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @s6e8aa0_get_modes._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"auto-init"}
!144 = !{i8 0, i8 2}
