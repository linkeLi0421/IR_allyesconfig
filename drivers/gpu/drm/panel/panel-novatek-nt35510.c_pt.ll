; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-novatek-nt35510.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-novatek-nt35510.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nt35510_config = type { i32, i32, %struct.drm_display_mode, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [4 x i8], i8, i16, i8, i8, i8, [3 x i8], [52 x i8], [52 x i8], [52 x i8], [52 x i8], [52 x i8], [52 x i8] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
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
%struct.nt35510 = type { ptr, ptr, %struct.drm_panel, [2 x %struct.regulator_bulk_data], ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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

@__initcall__kmod_panel_novatek_nt35510__304_1092_nt35510_driver_init6 = internal global ptr @nt35510_driver_init, section ".initcall6.init", align 4
@nt35510_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nt35510_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nt35510_probe, ptr @nt35510_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_nt35510_driver_exit = internal global ptr @nt35510_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [70 x i8] c"panel_novatek_nt35510.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [61 x i8] c"panel_novatek_nt35510.description=NT35510-based panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [71 x i8] c"panel_novatek_nt35510.file=drivers/gpu/drm/panel/panel-novatek-nt35510\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [37 x i8] c"panel_novatek_nt35510.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-novatek-nt35510\00", [42 x i8] zeroinitializer }, align 32
@nt35510_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hydis,hva40wv1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nt35510_hydis_hva40wv1 }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nt35510_hydis_hva40wv1 = internal constant { %struct.nt35510_config, [100 x i8] } { %struct.nt35510_config { i32 52, i32 86, %struct.drm_display_mode { i32 20000, i16 480, i16 482, i16 482, i16 487, i16 0, i16 800, i16 802, i16 802, i16 807, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [3 x i8] c"\09\09\09", [3 x i8] c"444", [3 x i8] c"\09\09\09", [3 x i8] c"$$$", [3 x i8] c"\05\05\05", [3 x i8] c"$$$", [3 x i8] c"\0B\0B\0B", [3 x i8] c"$$$", [3 x i8] c"\00\A3\00", [3 x i8] c"\00\A3\00", [4 x i8] c"\01\05\05\05", i8 1, i16 388, i8 7, i8 50, i8 0, [3 x i8] c"\03\00\00", [52 x i8] c"\00\01\00C\00k\00\87\00\A3\00\CE\00\F1\01'\01S\01\98\01\CE\02\22\02\83\02x\02\9E\02\DD\03\00\03.\03T\03\7F\03\95\03\B3\03\C2\03\E1\03\F1\03\FE", [52 x i8] c"\00\01\00C\00k\00\87\00\A3\00\CE\00\F1\01'\01S\01\98\01\CE\02\22\02\83\02x\02\9E\02\DD\03\00\03.\03T\03\7F\03\95\03\B3\03\C2\03\E1\03\F1\03\FE", [52 x i8] c"\00\01\00C\00k\00\87\00\A3\00\CE\00\F1\01'\01S\01\98\01\CE\02\22\02\83\02x\02\9E\02\DD\03\00\03.\03T\03\7F\03\95\03\B3\03\C2\03\E1\03\F1\03\FE", [52 x i8] c"\00\01\00C\00k\00\87\00\A3\00\CE\00\F1\01'\01S\01\98\01\CE\02\22\02C\02P\02\9E\02\DD\03\00\03.\03T\03\7F\03\95\03\B3\03\C2\03\E1\03\F1\03\FE", [52 x i8] c"\00\01\00C\00k\00\87\00\A3\00\CE\00\F1\01'\01S\01\98\01\CE\02\22\02C\02P\02\9E\02\DD\03\00\03.\03T\03\7F\03\95\03\B3\03\C2\03\E1\03\F1\03\FE", [52 x i8] c"\00\01\00C\00k\00\87\00\A3\00\CE\00\F1\01'\01S\01\98\01\CE\02\22\02C\02P\02\9E\02\DD\03\00\03.\03T\03\7F\03\95\03\B3\03\C2\03\E1\03\F1\03\FE" }, [100 x i8] zeroinitializer }, align 32
@nt35510_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing device configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nt35510_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-novatek-nt35510.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nt35510_probe._entry_ptr = internal global ptr @nt35510_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddi\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@nt35510_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 928, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error getting RESET GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@nt35510_probe._entry_ptr.11 = internal global ptr @nt35510_probe._entry.9, section ".printk_index", align 4
@nt35510_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @nt35510_prepare, ptr null, ptr null, ptr @nt35510_unprepare, ptr @nt35510_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@nt35510_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 942, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error getting external backlight %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nt35510_probe._entry_ptr.14 = internal global ptr @nt35510_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nt35510\00", [24 x i8] zeroinitializer }, align 32
@nt35510_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @nt35510_set_brightness, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nt35510_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 951, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register backlight device\0A\00", [59 x i8] zeroinitializer }, align 32
@nt35510_probe._entry_ptr.18 = internal global ptr @nt35510_probe._entry.16, section ".printk_index", align 4
@nt35510_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to exit sleep mode (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nt35510_prepare\00", [16 x i8] zeroinitializer }, align 32
@nt35510_prepare._entry_ptr = internal global ptr @nt35510_prepare._entry, section ".printk_index", align 4
@nt35510_prepare._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to turn display on (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@nt35510_prepare._entry_ptr.23 = internal global ptr @nt35510_prepare._entry.21, section ".printk_index", align 4
@nt35510_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 680, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nt35510_power_on\00", [47 x i8] zeroinitializer }, align 32
@nt35510_power_on._entry_ptr = internal global ptr @nt35510_power_on._entry, section ".printk_index", align 4
@nt35510_mauc_mtp_read_param = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\AAU%\01", [28 x i8] zeroinitializer }, align 32
@nt35510_mauc_mtp_read_setting = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\02\00 3\13\00@\00\00#\02", [20 x i8] zeroinitializer }, align 32
@nt35510_mauc_select_page_1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"U\AAR\08\01", [27 x i8] zeroinitializer }, align 32
@nt35510_mauc_select_page_0 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"U\AAR\08\00", [27 x i8] zeroinitializer }, align 32
@nt35510_send_long._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error sending DCS command seq cmd %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nt35510_send_long\00", [46 x i8] zeroinitializer }, align 32
@nt35510_send_long._entry_ptr = internal global ptr @nt35510_send_long._entry, section ".printk_index", align 4
@nt35510_send_long._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error sending generic write seq %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@nt35510_send_long._entry_ptr.30 = internal global ptr @nt35510_send_long._entry.28, section ".printk_index", align 4
@nt35510_send_long.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.27, ptr @.str.3, ptr @.str.32, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel_novatek_nt35510\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sent command %02x %02x bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@nt35510_read_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not read MTP ID1\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nt35510_read_id\00", [16 x i8] zeroinitializer }, align 32
@nt35510_read_id._entry_ptr = internal global ptr @nt35510_read_id._entry, section ".printk_index", align 4
@nt35510_read_id._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not read MTP ID2\0A\00", [40 x i8] zeroinitializer }, align 32
@nt35510_read_id._entry_ptr.37 = internal global ptr @nt35510_read_id._entry.35, section ".printk_index", align 4
@nt35510_read_id._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not read MTP ID3\0A\00", [40 x i8] zeroinitializer }, align 32
@nt35510_read_id._entry_ptr.40 = internal global ptr @nt35510_read_id._entry.38, section ".printk_index", align 4
@nt35510_read_id._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.3, i32 455, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"MTP ID manufacturer: %02x version: %02x driver: %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nt35510_read_id._entry_ptr.44 = internal global ptr @nt35510_read_id._entry.41, section ".printk_index", align 4
@nt35510_vgh_on = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\01", [31 x i8] zeroinitializer }, align 32
@nt35510_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 789, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to turn display off (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nt35510_unprepare\00", [46 x i8] zeroinitializer }, align 32
@nt35510_unprepare._entry_ptr = internal global ptr @nt35510_unprepare._entry, section ".printk_index", align 4
@nt35510_unprepare._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 797, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enter sleep mode (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@nt35510_unprepare._entry_ptr.49 = internal global ptr @nt35510_unprepare._entry.47, section ".printk_index", align 4
@nt35510_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad mode or failed to add mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nt35510_get_modes\00", [46 x i8] zeroinitializer }, align 32
@nt35510_get_modes._entry_ptr = internal global ptr @nt35510_get_modes._entry, section ".printk_index", align 4
@nt35510_set_brightness.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nt35510_set_brightness\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set brightness %d\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"nt35510_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1084, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1088, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"nt35510_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1075, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"nt35510_hydis_hva40wv1\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1006, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 907, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 911, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 912, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 926, i32 48 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 928, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"nt35510_drm_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 866, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 942, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 948, i32 44 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"nt35510_bl_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 666, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 951, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 824, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 832, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 680, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"nt35510_mauc_mtp_read_param\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 378, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant [30 x i8] c"nt35510_mauc_mtp_read_setting\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 379, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"nt35510_mauc_select_page_1\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 383, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"nt35510_mauc_select_page_0\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 382, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 406, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 418, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 424, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 436, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 441, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 446, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 455, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"nt35510_vgh_on\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 384, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 789, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 797, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 853, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-novatek-nt35510.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 656, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_nt35510_driver_exit, ptr @__initcall__kmod_panel_novatek_nt35510__304_1092_nt35510_driver_init6, ptr @nt35510_driver_exit, ptr @nt35510_get_modes._entry, ptr @nt35510_get_modes._entry_ptr, ptr @nt35510_power_on._entry, ptr @nt35510_power_on._entry_ptr, ptr @nt35510_prepare._entry, ptr @nt35510_prepare._entry.21, ptr @nt35510_prepare._entry_ptr, ptr @nt35510_prepare._entry_ptr.23, ptr @nt35510_probe._entry, ptr @nt35510_probe._entry.12, ptr @nt35510_probe._entry.16, ptr @nt35510_probe._entry.9, ptr @nt35510_probe._entry_ptr, ptr @nt35510_probe._entry_ptr.11, ptr @nt35510_probe._entry_ptr.14, ptr @nt35510_probe._entry_ptr.18, ptr @nt35510_read_id._entry, ptr @nt35510_read_id._entry.35, ptr @nt35510_read_id._entry.38, ptr @nt35510_read_id._entry.41, ptr @nt35510_read_id._entry_ptr, ptr @nt35510_read_id._entry_ptr.37, ptr @nt35510_read_id._entry_ptr.40, ptr @nt35510_read_id._entry_ptr.44, ptr @nt35510_send_long._entry, ptr @nt35510_send_long._entry.28, ptr @nt35510_send_long._entry_ptr, ptr @nt35510_send_long._entry_ptr.30, ptr @nt35510_unprepare._entry, ptr @nt35510_unprepare._entry.47, ptr @nt35510_unprepare._entry_ptr, ptr @nt35510_unprepare._entry_ptr.49, ptr @nt35510_driver, ptr @.str, ptr @nt35510_of_match, ptr @nt35510_hydis_hva40wv1, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @nt35510_drm_funcs, ptr @.str.13, ptr @.str.15, ptr @nt35510_bl_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @nt35510_mauc_mtp_read_param, ptr @nt35510_mauc_mtp_read_setting, ptr @nt35510_mauc_select_page_1, ptr @nt35510_mauc_select_page_0, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @nt35510_vgh_on, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_hydis_hva40wv1 to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_prepare._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_mauc_mtp_read_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_mauc_mtp_read_setting to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_mauc_select_page_1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_mauc_select_page_0 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_send_long._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_send_long._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_read_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_read_id._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_read_id._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_read_id._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_vgh_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_unprepare._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt35510_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35510_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @nt35510_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nt35510_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @nt35510_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35510_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

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
  store i32 2, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %format, align 4
  %hs_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 7
  %4 = ptrtoint ptr %hs_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 349440000, ptr %hs_rate, align 4
  %lp_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 8
  %5 = ptrtoint ptr %lp_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9600000, ptr %lp_rate, align 8
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %mode_flags, align 8
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %conf = getelementptr inbounds %struct.nt35510, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %conf, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup68

if.end7:                                          ; preds = %if.end
  %supplies = getelementptr inbounds %struct.nt35510, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.6, ptr %supplies, align 4
  %arrayidx9 = getelementptr %struct.nt35510, ptr %call.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.7, ptr %arrayidx9, align 4
  %call12 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end7.cleanup68_crit_edge, label %if.end14

if.end7.cleanup68_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

if.end14:                                         ; preds = %if.end7
  %consumer = getelementptr inbounds %struct.nt35510, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer, align 4
  %call17 = tail call i32 @regulator_set_voltage(ptr noundef %11, i32 noundef 2300000, i32 noundef 4800000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup68_crit_edge

if.end14.cleanup68_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

if.end20:                                         ; preds = %if.end14
  %consumer23 = getelementptr %struct.nt35510, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %12 = ptrtoint ptr %consumer23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %consumer23, align 4
  %call24 = tail call i32 @regulator_set_voltage(ptr noundef %13, i32 noundef 1650000, i32 noundef 3300000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.cleanup68_crit_edge

if.end20.cleanup68_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

if.end27:                                         ; preds = %if.end20
  %call28 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %reset_gpio = getelementptr inbounds %struct.nt35510, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call28, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup68

if.end37:                                         ; preds = %if.end27
  %panel = getelementptr inbounds %struct.nt35510, ptr %call.i, i32 0, i32 2
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @nt35510_drm_funcs, i32 noundef 16) #6
  %call39 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call39) #9
  br label %cleanup68

if.end45:                                         ; preds = %if.end37
  %backlight = getelementptr inbounds %struct.nt35510, ptr %call.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %backlight, align 4
  %tobool47.not = icmp eq ptr %19, null
  br i1 %tobool47.not, label %if.then48, label %if.end45.if.end61_crit_edge

if.end45.if.end61_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then48:                                        ; preds = %if.end45
  %call49 = tail call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull @nt35510_bl_ops, ptr noundef null) #6
  %cmp.i122 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  %20 = ptrtoint ptr %call49 to i32
  br label %cleanup68

cleanup:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %call49, i32 0, i32 1
  %21 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %max_brightness, align 4
  %22 = ptrtoint ptr %call49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 255, ptr %call49, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call49, i32 0, i32 2
  %23 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %power, align 8
  %24 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call49, ptr %backlight, align 4
  br label %if.end61

if.end61:                                         ; preds = %cleanup, %if.end45.if.end61_crit_edge
  tail call void @drm_panel_add(ptr noundef %panel) #6
  %call63 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end61.cleanup68_crit_edge

if.end61.cleanup68_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_remove(ptr noundef %panel) #6
  br label %cleanup68

cleanup68:                                        ; preds = %if.then65, %if.end61.cleanup68_crit_edge, %cleanup.thread, %do.end44, %do.end34, %if.end20.cleanup68_crit_edge, %if.end14.cleanup68_crit_edge, %if.end7.cleanup68_crit_edge, %do.end, %entry.cleanup68_crit_edge
  %retval.1 = phi i32 [ %17, %do.end34 ], [ %call39, %do.end44 ], [ -19, %do.end ], [ -12, %entry.cleanup68_crit_edge ], [ %call12, %if.end7.cleanup68_crit_edge ], [ %call17, %if.end14.cleanup68_crit_edge ], [ %call24, %if.end20.cleanup68_crit_edge ], [ 0, %if.then65 ], [ 0, %if.end61.cleanup68_crit_edge ], [ %20, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35510_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  %supplies.i = getelementptr inbounds %struct.nt35510, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nt35510_power_off.exit_crit_edge

entry.nt35510_power_off.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nt35510_power_off.exit

if.end.i:                                         ; preds = %entry
  %reset_gpio.i = getelementptr inbounds %struct.nt35510, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.nt35510_power_off.exit_crit_edge, label %if.then2.i

if.end.i.nt35510_power_off.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nt35510_power_off.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 1) #6
  br label %nt35510_power_off.exit

nt35510_power_off.exit:                           ; preds = %if.then2.i, %if.end.i.nt35510_power_off.exit_crit_edge, %entry.nt35510_power_off.exit_crit_edge
  %panel = getelementptr inbounds %struct.nt35510, ptr %1, i32 0, i32 2
  tail call void @drm_panel_remove(ptr noundef %panel) #6
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35510_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call fastcc i32 @nt35510_power_on(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %call3) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 120000, i32 noundef 150000, i32 noundef 2) #6
  %call8 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %call8) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call8, %do.end13 ], [ 0, %if.end15 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35510_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %call4 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.48, i32 noundef %call4) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #6
  %supplies.i = getelementptr i8, ptr %panel, i32 24
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 48
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ %call.i, %if.end11.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35510_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %conf = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %display_info, align 8
  %5 = load ptr, ptr %conf, align 4
  %height_mm = getelementptr inbounds %struct.nt35510_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height_mm, align 4
  %height_mm3 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %height_mm3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height_mm3, align 4
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 8
  %11 = load ptr, ptr %conf, align 4
  %mode5 = getelementptr inbounds %struct.nt35510_config, ptr %11, i32 0, i32 2
  %call6 = tail call ptr @drm_mode_duplicate(ptr noundef %10, ptr noundef %mode5) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call6) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call6, i32 0, i32 28
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 72, ptr %type, align 2
  %15 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conf, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %conv = trunc i32 %18 to i16
  %width_mm10 = getelementptr inbounds %struct.drm_display_mode, ptr %call6, i32 0, i32 26
  %19 = ptrtoint ptr %width_mm10 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %width_mm10, align 2
  %20 = load ptr, ptr %conf, align 4
  %height_mm12 = getelementptr inbounds %struct.nt35510_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %height_mm12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height_mm12, align 4
  %conv13 = trunc i32 %22 to i16
  %height_mm14 = getelementptr inbounds %struct.drm_display_mode, ptr %call6, i32 0, i32 27
  %23 = ptrtoint ptr %height_mm14 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv13, ptr %height_mm14, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nt35510_power_on(ptr noundef %nt) unnamed_addr #2 align 64 {
entry:
  %id1.i = alloca i8, align 1
  %id2.i = alloca i8, align 1
  %id3.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nt, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %supplies = getelementptr inbounds %struct.nt35510, ptr %nt, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpio = getelementptr inbounds %struct.nt35510, ptr %nt, i32 0, i32 4
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 1000, i32 noundef 2) #6
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 120000, i32 noundef 140000, i32 noundef 2) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call.i = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -1, ptr noundef nonnull @nt35510_mauc_mtp_read_param, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %nt35510_send_long.exit.thread143, label %if.end6.i

nt35510_send_long.exit.thread143:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef 255) #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_power_on, %nt35510_send_long.exit.thread)) #6
          to label %if.end10 [label %nt35510_send_long.exit.thread], !srcloc !132

nt35510_send_long.exit.thread:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.32, i32 noundef 255, i32 noundef 4) #6
  br label %if.end10

if.end10:                                         ; preds = %nt35510_send_long.exit.thread, %if.end6.i
  %call.i126 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -8, ptr noundef nonnull @nt35510_mauc_mtp_read_setting, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %cmp2.i127 = icmp slt i32 %call.i126, 0
  br i1 %cmp2.i127, label %nt35510_send_long.exit132.thread148, label %if.end6.i129

nt35510_send_long.exit132.thread148:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26, i32 noundef 248) #9
  br label %cleanup

if.end6.i129:                                     ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_power_on, %nt35510_send_long.exit132.thread)) #6
          to label %if.end14 [label %nt35510_send_long.exit132.thread], !srcloc !132

nt35510_send_long.exit132.thread:                 ; preds = %if.end6.i129
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef 248, i32 noundef 12) #6
  br label %if.end14

if.end14:                                         ; preds = %nt35510_send_long.exit132.thread, %if.end6.i129
  %16 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nt, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1.i) #6
  %18 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %id1.i, align 1, !annotation !133
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id2.i) #6
  %19 = ptrtoint ptr %id2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %id2.i, align 1, !annotation !133
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id3.i) #6
  %20 = ptrtoint ptr %id3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %id3.i, align 1, !annotation !133
  %call1.i = call i32 @mipi_dsi_dcs_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext -38, ptr noundef nonnull %id1.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i133, label %if.end.i

do.end.i133:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33) #9
  br label %nt35510_read_id.exit

if.end.i:                                         ; preds = %if.end14
  %call3.i = call i32 @mipi_dsi_dcs_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext -37, ptr noundef nonnull %id2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.36) #9
  br label %nt35510_read_id.exit

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = call i32 @mipi_dsi_dcs_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext -36, ptr noundef nonnull %id3.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  %25 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nt, align 4
  br i1 %cmp12.i, label %do.end16.i, label %do.end21.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.39) #9
  br label %nt35510_read_id.exit

do.end21.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %id1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id1.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %id2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id2.i, align 1
  %conv23.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %id3.i, align 1
  %conv24.i = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %conv23.i, i32 noundef %conv24.i) #9
  br label %nt35510_read_id.exit

nt35510_read_id.exit:                             ; preds = %do.end21.i, %do.end16.i, %do.end8.i, %do.end.i133
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #6
  %call.i134 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -16, ptr noundef nonnull @nt35510_mauc_select_page_1, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp2.i135 = icmp slt i32 %call.i134, 0
  br i1 %cmp2.i135, label %nt35510_send_long.exit140.thread153, label %if.end6.i137

nt35510_send_long.exit140.thread153:              ; preds = %nt35510_read_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.26, i32 noundef 240) #9
  br label %cleanup

if.end6.i137:                                     ; preds = %nt35510_read_id.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_power_on, %nt35510_send_long.exit140.thread)) #6
          to label %if.end19 [label %nt35510_send_long.exit140.thread], !srcloc !132

nt35510_send_long.exit140.thread:                 ; preds = %if.end6.i137
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %36, ptr noundef nonnull @.str.32, i32 noundef 240, i32 noundef 5) #6
  br label %if.end19

if.end19:                                         ; preds = %nt35510_send_long.exit140.thread, %if.end6.i137
  %call20 = call fastcc i32 @nt35510_setup_power(ptr noundef %nt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %conf = getelementptr inbounds %struct.nt35510, ptr %nt, i32 0, i32 1
  %37 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conf, align 4
  %gamma_corr_pos_r = getelementptr inbounds %struct.nt35510_config, ptr %38, i32 0, i32 20
  %call25 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -47, i8 noundef zeroext 52, ptr noundef %gamma_corr_pos_r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %39 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %conf, align 4
  %gamma_corr_pos_g = getelementptr inbounds %struct.nt35510_config, ptr %40, i32 0, i32 21
  %call31 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -46, i8 noundef zeroext 52, ptr noundef %gamma_corr_pos_g)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %41 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %conf, align 4
  %gamma_corr_pos_b = getelementptr inbounds %struct.nt35510_config, ptr %42, i32 0, i32 22
  %call37 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -45, i8 noundef zeroext 52, ptr noundef %gamma_corr_pos_b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %43 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %conf, align 4
  %gamma_corr_neg_r = getelementptr inbounds %struct.nt35510_config, ptr %44, i32 0, i32 23
  %call43 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -44, i8 noundef zeroext 52, ptr noundef %gamma_corr_neg_r)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  %45 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %conf, align 4
  %gamma_corr_neg_g = getelementptr inbounds %struct.nt35510_config, ptr %46, i32 0, i32 24
  %call49 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -43, i8 noundef zeroext 52, ptr noundef %gamma_corr_neg_g)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %47 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %conf, align 4
  %gamma_corr_neg_b = getelementptr inbounds %struct.nt35510_config, ptr %48, i32 0, i32 25
  %call55 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -42, i8 noundef zeroext 52, ptr noundef %gamma_corr_neg_b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end52
  %call59 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -16, i8 noundef zeroext 5, ptr noundef nonnull @nt35510_mauc_select_page_0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = call fastcc i32 @nt35510_setup_display(ptr noundef %nt)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end58.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %nt35510_send_long.exit140.thread153, %nt35510_send_long.exit132.thread148, %nt35510_send_long.exit.thread143, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call31, %if.end28.cleanup_crit_edge ], [ %call37, %if.end34.cleanup_crit_edge ], [ %call43, %if.end40.cleanup_crit_edge ], [ %call49, %if.end46.cleanup_crit_edge ], [ %call55, %if.end52.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ], [ %call63, %if.end62 ], [ %call.i, %nt35510_send_long.exit.thread143 ], [ %call.i126, %nt35510_send_long.exit132.thread148 ], [ %call.i134, %nt35510_send_long.exit140.thread153 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nt35510_send_long(ptr nocapture noundef readonly %nt, ptr noundef %dsi, i8 noundef zeroext %cmd, i8 noundef zeroext %cmdlen, ptr noundef %seq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %cmdlen to i32
  %0 = tail call i32 @llvm.umin.i32(i32 %conv, i32 15)
  %call = tail call i32 @mipi_dsi_dcs_write(ptr noundef %dsi, i8 noundef zeroext %cmd, ptr noundef %seq, i32 noundef %0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nt, align 4
  %conv5 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %conv5) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %cmdlen)
  %cmp868 = icmp ugt i8 %cmdlen, 15
  br i1 %cmp868, label %while.body.preheader, label %if.end6.do.body27_crit_edge

if.end6.do.body27_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

while.body.preheader:                             ; preds = %if.end6
  %add.ptr = getelementptr i8, ptr %seq, i32 %0
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.preheader
  %seqp.070 = phi ptr [ %add.ptr26, %if.end24.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %cmdwritten.069 = phi i32 [ %add25, %if.end24.while.body_crit_edge ], [ %0, %while.body.preheader ]
  %sub = sub i32 %conv, %cmdwritten.069
  %3 = tail call i32 @llvm.smin.i32(i32 %sub, i32 15)
  %call15 = tail call i32 @mipi_dsi_generic_write(ptr noundef %dsi, ptr noundef %seqp.070, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end21, label %if.end24

do.end21:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nt, align 4
  %conv23 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29, i32 noundef %conv23) #9
  br label %cleanup

if.end24:                                         ; preds = %while.body
  %add25 = add i32 %3, %cmdwritten.069
  %add.ptr26 = getelementptr i8, ptr %seqp.070, i32 %3
  %cmp8 = icmp slt i32 %add25, %conv
  br i1 %cmp8, label %if.end24.while.body_crit_edge, label %if.end24.do.body27_crit_edge

if.end24.do.body27_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body27:                                        ; preds = %if.end24.do.body27_crit_edge, %if.end6.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_send_long, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !132

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nt, align 4
  %conv33 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %conv33, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body27, %do.end21, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call15, %do.end21 ], [ 0, %if.then31 ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nt35510_setup_power(ptr nocapture noundef readonly %nt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nt, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %conf = getelementptr inbounds %struct.nt35510, ptr %nt, i32 0, i32 1
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %avdd = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -80, ptr noundef %avdd, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %nt35510_send_long.exit.thread136, label %if.end6.i

nt35510_send_long.exit.thread136:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef 176) #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_setup_power, %nt35510_send_long.exit.thread)) #6
          to label %if.end [label %nt35510_send_long.exit.thread], !srcloc !132

nt35510_send_long.exit.thread:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef 176, i32 noundef 3) #6
  br label %if.end

if.end:                                           ; preds = %nt35510_send_long.exit.thread, %if.end6.i
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conf, align 4
  %bt1ctr = getelementptr inbounds %struct.nt35510_config, ptr %9, i32 0, i32 4
  %call.i113 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -74, ptr noundef %bt1ctr, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp2.i114 = icmp slt i32 %call.i113, 0
  br i1 %cmp2.i114, label %nt35510_send_long.exit119.thread141, label %if.end6.i116

nt35510_send_long.exit119.thread141:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef 182) #9
  br label %cleanup

if.end6.i116:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_setup_power, %nt35510_send_long.exit119.thread)) #6
          to label %if.end7 [label %nt35510_send_long.exit119.thread], !srcloc !132

nt35510_send_long.exit119.thread:                 ; preds = %if.end6.i116
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 182, i32 noundef 3) #6
  br label %if.end7

if.end7:                                          ; preds = %nt35510_send_long.exit119.thread, %if.end6.i116
  %14 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf, align 4
  %avee = getelementptr inbounds %struct.nt35510_config, ptr %15, i32 0, i32 5
  %call.i120 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -79, ptr noundef %avee, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp2.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp2.i121, label %nt35510_send_long.exit126.thread146, label %if.end6.i123

nt35510_send_long.exit126.thread146:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.26, i32 noundef 177) #9
  br label %cleanup

if.end6.i123:                                     ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_setup_power, %nt35510_send_long.exit126.thread)) #6
          to label %if.end13 [label %nt35510_send_long.exit126.thread], !srcloc !132

nt35510_send_long.exit126.thread:                 ; preds = %if.end6.i123
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef 177, i32 noundef 3) #6
  br label %if.end13

if.end13:                                         ; preds = %nt35510_send_long.exit126.thread, %if.end6.i123
  %20 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conf, align 4
  %bt2ctr = getelementptr inbounds %struct.nt35510_config, ptr %21, i32 0, i32 6
  %call.i127 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -73, ptr noundef %bt2ctr, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp2.i128 = icmp slt i32 %call.i127, 0
  br i1 %cmp2.i128, label %nt35510_send_long.exit133.thread151, label %if.end6.i130

nt35510_send_long.exit133.thread151:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef 183) #9
  br label %cleanup

if.end6.i130:                                     ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_setup_power, %nt35510_send_long.exit133.thread)) #6
          to label %if.end19 [label %nt35510_send_long.exit133.thread], !srcloc !132

nt35510_send_long.exit133.thread:                 ; preds = %if.end6.i130
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %25, ptr noundef nonnull @.str.32, i32 noundef 183, i32 noundef 3) #6
  br label %if.end19

if.end19:                                         ; preds = %nt35510_send_long.exit133.thread, %if.end6.i130
  %26 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conf, align 4
  %vgh = getelementptr inbounds %struct.nt35510_config, ptr %27, i32 0, i32 7
  %call22 = tail call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -77, i8 noundef zeroext 3, ptr noundef %vgh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conf, align 4
  %bt4ctr = getelementptr inbounds %struct.nt35510_config, ptr %29, i32 0, i32 8
  %call28 = tail call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -71, i8 noundef zeroext 3, ptr noundef %bt4ctr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %call32 = tail call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -65, i8 noundef zeroext 1, ptr noundef nonnull @nt35510_vgh_on)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %30 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conf, align 4
  %vgl = getelementptr inbounds %struct.nt35510_config, ptr %31, i32 0, i32 9
  %call38 = tail call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -75, i8 noundef zeroext 3, ptr noundef %vgl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %32 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conf, align 4
  %bt5ctr = getelementptr inbounds %struct.nt35510_config, ptr %33, i32 0, i32 10
  %call44 = tail call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -70, i8 noundef zeroext 3, ptr noundef %bt5ctr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %34 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conf, align 4
  %vgp = getelementptr inbounds %struct.nt35510_config, ptr %35, i32 0, i32 11
  %call50 = tail call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -68, i8 noundef zeroext 3, ptr noundef %vgp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  %36 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conf, align 4
  %vgn = getelementptr inbounds %struct.nt35510_config, ptr %37, i32 0, i32 12
  %call56 = tail call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -67, i8 noundef zeroext 3, ptr noundef %vgn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end53.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %nt35510_send_long.exit133.thread151, %nt35510_send_long.exit126.thread146, %nt35510_send_long.exit119.thread141, %nt35510_send_long.exit.thread136
  %retval.0 = phi i32 [ 0, %if.end59 ], [ %call22, %if.end19.cleanup_crit_edge ], [ %call28, %if.end25.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call38, %if.end35.cleanup_crit_edge ], [ %call44, %if.end41.cleanup_crit_edge ], [ %call50, %if.end47.cleanup_crit_edge ], [ %call56, %if.end53.cleanup_crit_edge ], [ %call.i, %nt35510_send_long.exit.thread136 ], [ %call.i113, %nt35510_send_long.exit119.thread141 ], [ %call.i120, %nt35510_send_long.exit126.thread146 ], [ %call.i127, %nt35510_send_long.exit133.thread151 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nt35510_setup_display(ptr nocapture noundef readonly %nt) unnamed_addr #2 align 64 {
entry:
  %dopctr = alloca [2 x i8], align 1
  %gseqctr = alloca [2 x i8], align 1
  %dpfrctr = alloca [5 x i8], align 1
  %addr_mode = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nt, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %conf1 = getelementptr inbounds %struct.nt35510, ptr %nt, i32 0, i32 1
  %2 = ptrtoint ptr %conf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dopctr) #6
  %4 = getelementptr inbounds [2 x i8], ptr %dopctr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gseqctr) #6
  %5 = getelementptr inbounds [2 x i8], ptr %gseqctr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dpfrctr) #6
  %6 = getelementptr inbounds [5 x i8], ptr %dpfrctr, i32 0, i32 1
  %7 = getelementptr inbounds [5 x i8], ptr %dpfrctr, i32 0, i32 2
  %8 = getelementptr inbounds [5 x i8], ptr %dpfrctr, i32 0, i32 3
  %9 = getelementptr inbounds [5 x i8], ptr %dpfrctr, i32 0, i32 4
  %10 = call ptr @memset(ptr %dpfrctr, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_mode) #6
  %11 = ptrtoint ptr %addr_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %addr_mode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %12 = ptrtoint ptr %dopctr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 76, ptr %dopctr, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %4, align 1
  %call.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -79, ptr noundef nonnull %dopctr, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %nt35510_send_long.exit.thread131, label %if.end6.i

nt35510_send_long.exit.thread131:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef 177) #9
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_setup_display, %nt35510_send_long.exit.thread)) #6
          to label %if.end [label %nt35510_send_long.exit.thread], !srcloc !132

nt35510_send_long.exit.thread:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %17, ptr noundef nonnull @.str.32, i32 noundef 177, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %nt35510_send_long.exit.thread, %if.end6.i
  %call4 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 54, ptr noundef nonnull %addr_mode, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %val, align 1
  %call7 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -74, ptr noundef nonnull %val, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %gseqctr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %gseqctr, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %5, align 1
  %call.i115 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -73, ptr noundef nonnull %gseqctr, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp2.i116 = icmp slt i32 %call.i115, 0
  br i1 %cmp2.i116, label %nt35510_send_long.exit121.thread136, label %if.end6.i118

nt35510_send_long.exit121.thread136:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef 183) #9
  br label %cleanup

if.end6.i118:                                     ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_setup_display, %nt35510_send_long.exit121.thread)) #6
          to label %if.end17 [label %nt35510_send_long.exit121.thread], !srcloc !132

nt35510_send_long.exit121.thread:                 ; preds = %if.end6.i118
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %24, ptr noundef nonnull @.str.32, i32 noundef 183, i32 noundef 2) #6
  br label %if.end17

if.end17:                                         ; preds = %nt35510_send_long.exit121.thread, %if.end6.i118
  %sdeqctr = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 13
  %call.i122 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -72, ptr noundef %sdeqctr, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp2.i123 = icmp slt i32 %call.i122, 0
  br i1 %cmp2.i123, label %nt35510_send_long.exit128.thread141, label %if.end6.i125

nt35510_send_long.exit128.thread141:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.26, i32 noundef 184) #9
  br label %cleanup

if.end6.i125:                                     ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_setup_display, %nt35510_send_long.exit128.thread)) #6
          to label %if.end22 [label %nt35510_send_long.exit128.thread], !srcloc !132

nt35510_send_long.exit128.thread:                 ; preds = %if.end6.i125
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nt, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_send_long.__UNIQUE_ID_ddebug302, ptr noundef %28, ptr noundef nonnull @.str.32, i32 noundef 184, i32 noundef 4) #6
  br label %if.end22

if.end22:                                         ; preds = %nt35510_send_long.exit128.thread, %if.end6.i125
  %sdvpctr = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 14
  %call23 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -70, ptr noundef %sdvpctr, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %t1 = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %t1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %t1, align 4
  %31 = lshr i16 %30, 8
  %conv27 = trunc i16 %31 to i8
  %32 = ptrtoint ptr %dpfrctr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv27, ptr %dpfrctr, align 1
  %conv32 = trunc i16 %30 to i8
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv32, ptr %6, align 1
  %vbp = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 16
  %34 = ptrtoint ptr %vbp to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vbp, align 2
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %7, align 1
  %vfp = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 17
  %37 = ptrtoint ptr %vfp to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vfp, align 1
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %8, align 1
  %psel = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 18
  %40 = ptrtoint ptr %psel to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %psel, align 4
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %9, align 1
  %call38 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -67, i8 noundef zeroext 5, ptr noundef nonnull %dpfrctr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end26
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %8, align 1
  %dec = add i8 %44, -1
  store i8 %dec, ptr %8, align 1
  %call44 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -66, i8 noundef zeroext 5, ptr noundef nonnull %dpfrctr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %call49 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -65, i8 noundef zeroext 5, ptr noundef nonnull %dpfrctr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %call53 = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %add.ptr.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %dpmctr12 = getelementptr inbounds %struct.nt35510_config, ptr %3, i32 0, i32 19
  %call58 = call fastcc i32 @nt35510_send_long(ptr noundef %nt, ptr noundef %add.ptr.i, i8 noundef zeroext -52, i8 noundef zeroext 3, ptr noundef %dpmctr12)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %nt35510_send_long.exit128.thread141, %nt35510_send_long.exit121.thread136, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nt35510_send_long.exit.thread131
  %retval.0 = phi i32 [ %call4, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call38, %if.end26.cleanup_crit_edge ], [ %call44, %if.end41.cleanup_crit_edge ], [ %call49, %if.end47.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call58, %if.end56 ], [ %call.i, %nt35510_send_long.exit.thread131 ], [ %call.i115, %nt35510_send_long.exit121.thread136 ], [ %call.i122, %nt35510_send_long.exit128.thread141 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_mode) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dpfrctr) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gseqctr) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dopctr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt35510_set_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %brightness = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %brightness) #6
  %4 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bl, align 8
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %brightness, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nt35510_set_brightness.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nt35510_set_brightness, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %brightness, align 1
  %conv7 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nt35510_set_brightness.__UNIQUE_ID_ddebug303, ptr noundef %8, ptr noundef nonnull @.str.53, i32 noundef %conv7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %call8 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 81, ptr noundef nonnull %brightness, i32 noundef 1) #6
  %11 = call i32 @llvm.smin.i32(i32 %call8, i32 0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %brightness) #6
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_panel_novatek_nt35510__304_1092_nt35510_driver_init6, !1, !"__initcall__kmod_panel_novatek_nt35510__304_1092_nt35510_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1092, i32 1}
!2 = !{ptr @__exitcall_nt35510_driver_exit, !1, !"__exitcall_nt35510_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1094, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1095, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1096, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1088, i32 11}
!12 = !{ptr @nt35510_driver, !13, !"nt35510_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1084, i32 31}
!14 = !{ptr @nt35510_of_match, !15, !"nt35510_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1075, i32 34}
!16 = !{ptr @nt35510_hydis_hva40wv1, !17, !"nt35510_hydis_hva40wv1", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 1006, i32 36}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 907, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nt35510_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @nt35510_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 911, i32 27}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 912, i32 27}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 926, i32 48}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 928, i32 3}
!34 = !{ptr @nt35510_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nt35510_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 942, i32 3}
!38 = !{ptr @nt35510_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nt35510_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 948, i32 44}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 951, i32 4}
!44 = !{ptr @nt35510_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nt35510_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @nt35510_drm_funcs, !47, !"nt35510_drm_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 866, i32 37}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 824, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nt35510_prepare._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nt35510_prepare._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 832, i32 3}
!55 = !{ptr @nt35510_prepare._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nt35510_prepare._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 680, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nt35510_power_on._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nt35510_power_on._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 406, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nt35510_send_long._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @nt35510_send_long._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 418, i32 4}
!69 = !{ptr @nt35510_send_long._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @nt35510_send_long._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 424, i32 2}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @nt35510_send_long.__UNIQUE_ID_ddebug302, !72, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!75 = !{ptr @nt35510_mauc_mtp_read_param, !76, !"nt35510_mauc_mtp_read_param", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 378, i32 17}
!77 = !{ptr @nt35510_mauc_mtp_read_setting, !78, !"nt35510_mauc_mtp_read_setting", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 379, i32 17}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 436, i32 3}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @nt35510_read_id._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @nt35510_read_id._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 441, i32 3}
!86 = !{ptr @nt35510_read_id._entry.35, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @nt35510_read_id._entry_ptr.37, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 446, i32 3}
!90 = !{ptr @nt35510_read_id._entry.38, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @nt35510_read_id._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 455, i32 2}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @nt35510_read_id._entry.41, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @nt35510_read_id._entry_ptr.44, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @nt35510_mauc_select_page_1, !98, !"nt35510_mauc_select_page_1", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 383, i32 17}
!99 = !{ptr @nt35510_vgh_on, !100, !"nt35510_vgh_on", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 384, i32 17}
!101 = !{ptr @nt35510_mauc_select_page_0, !102, !"nt35510_mauc_select_page_0", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 382, i32 17}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 789, i32 3}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nt35510_unprepare._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nt35510_unprepare._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 797, i32 3}
!110 = !{ptr @nt35510_unprepare._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nt35510_unprepare._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 853, i32 3}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nt35510_get_modes._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @nt35510_get_modes._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @nt35510_bl_ops, !118, !"nt35510_bl_ops", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 666, i32 35}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt35510.c", i32 656, i32 2}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @nt35510_set_brightness.__UNIQUE_ID_ddebug303, !120, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2148321242, i64 2148321247, i64 2148321260, i64 2148321304, i64 2148321338, i64 2148321359}
!133 = !{!"auto-init"}
