; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.s6e63j0x03 = type { ptr, %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data], ptr }
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

@__initcall__kmod_panel_samsung_s6e63j0x03__302_517_s6e63j0x03_driver_init6 = internal global ptr @s6e63j0x03_driver_init, section ".initcall6.init", align 4
@s6e63j0x03_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6e63j0x03_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s6e63j0x03_probe, ptr @s6e63j0x03_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_s6e63j0x03_driver_exit = internal global ptr @s6e63j0x03_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [64 x i8] c"panel_samsung_s6e63j0x03.author=Inki Dae <inki.dae@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [72 x i8] c"panel_samsung_s6e63j0x03.author=Hoegeun Kwon <hoegeun.kwon@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [87 x i8] c"panel_samsung_s6e63j0x03.description=MIPI-DSI based s6e63j0x03 AMOLED LCD Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [77 x i8] c"panel_samsung_s6e63j0x03.file=drivers/gpu/drm/panel/panel-samsung-s6e63j0x03\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [40 x i8] c"panel_samsung_s6e63j0x03.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panel_samsung_s6e63j0x03\00", [39 x i8] zeroinitializer }, align 32
@s6e63j0x03_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e63j0x03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get reset-gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@s6e63j0x03_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @s6e63j0x03_prepare, ptr @s6e63j0x03_enable, ptr @s6e63j0x03_disable, ptr @s6e63j0x03_unprepare, ptr @s6e63j0x03_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s6e63j0x03\00", [21 x i8] zeroinitializer }, align 32
@s6e63j0x03_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @s6e63j0x03_set_brightness, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register backlight device\0A\00", [59 x i8] zeroinitializer }, align 32
@s6e63j0x03_panel_init.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F2\1C(", [29 x i8] zeroinitializer }, align 32
@s6e63j0x03_panel_init.d.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\B5\00\02\00", [28 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 4649, i16 320, i16 321, i16 322, i16 323, i16 0, i16 320, i16 470, i16 471, i16 473, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@s6e63j0x03_panel_init.d.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\F8\08\08\08\17\00*\02&\00\00\02\00\00", [18 x i8] zeroinitializer }, align 32
@s6e63j0x03_panel_init.d.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F7\02", [30 x i8] zeroinitializer }, align 32
@s6e63j0x03_panel_init.d.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\01", [30 x i8] zeroinitializer }, align 32
@s6e63j0x03_panel_init.d.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E2\0F", [30 x i8] zeroinitializer }, align 32
@s6e63j0x03_panel_init.d.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\00", [30 x i8] zeroinitializer }, align 32
@s6e63j0x03_enable_lv2_command.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@s6e63j0x03_apply_mtp_key.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F1ZZ", [29 x i8] zeroinitializer }, align 32
@s6e63j0x03_apply_mtp_key.d.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F1\A5\A5", [29 x i8] zeroinitializer }, align 32
@s6e63j0x03_enable.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B1\00\09", [29 x i8] zeroinitializer }, align 32
@s6e63j0x03_enable.d.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6@", [30 x i8] zeroinitializer }, align 32
@s6e63j0x03_enable.d.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S ", [30 x i8] zeroinitializer }, align 32
@s6e63j0x03_enable.d.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@s6e63j0x03_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 410, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s6e63j0x03_get_modes\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s6e63j0x03_get_modes._entry_ptr = internal global ptr @s6e63j0x03_get_modes._entry, section ".printk_index", align 4
@gamma_tbl = internal constant { [9 x [28 x i8]], [36 x i8] } { [9 x [28 x i8]] [[28 x i8] c"\D4\00\00\00\7F\7F\7FRko&(-(&'342665\00\AB\00\AE\00\BF", [28 x i8] c"\D4\00\00\00p\7F\7FNdi&'*()'121545\00\C4\00\CA\00\DC", [28 x i8] c"\D4\00\00\00e{}_gh*()(*'1/0434\00\D9\00\E4\00\F5", [28 x i8] c"\D4\00\00\00Moqgjl)((()'0.0211\00\EA\00\F6\01\09", [28 x i8] c"\D4\00\00\00=fhiii(('(('0./110\00\F9\01\05\01\1B", [28 x i8] c"\D4\00\00\001QSffg()'(''.-.110\01\04\01\11\01)", [28 x i8] c"\D4\00\00\00/OQgee)*('%&-,,000\01\14\01#\01;", [28 x i8] c"\D4\00\00\00,MPecd*,)&$%,++000\01\1E\01/\01G", [28 x i8] c"\D4\00\00\008adecd(*'&#%++*0/0\01-\01?\01W"], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"s6e63j0x03_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 509, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 513, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"s6e63j0x03_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 503, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 451, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 452, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 456, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 458, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 461, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"s6e63j0x03_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 425, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 466, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"s6e63j0x03_bl_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 214, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 470, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 267, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 272, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 44, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 287, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 292, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 297, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 302, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 307, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 135, i32 9 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 141, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 144, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 357, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 362, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 373, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 379, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 408, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"gamma_tbl\00", align 1
@___asan_gen_.123 = private constant [52 x i8] c"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 57, i32 28 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_s6e63j0x03_driver_exit, ptr @__initcall__kmod_panel_samsung_s6e63j0x03__302_517_s6e63j0x03_driver_init6, ptr @s6e63j0x03_driver_exit, ptr @s6e63j0x03_get_modes._entry, ptr @s6e63j0x03_get_modes._entry_ptr, ptr @s6e63j0x03_driver, ptr @.str, ptr @s6e63j0x03_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @s6e63j0x03_funcs, ptr @.str.6, ptr @s6e63j0x03_bl_ops, ptr @.str.7, ptr @s6e63j0x03_panel_init.d, ptr @s6e63j0x03_panel_init.d.8, ptr @default_mode, ptr @s6e63j0x03_panel_init.d.9, ptr @s6e63j0x03_panel_init.d.10, ptr @s6e63j0x03_panel_init.d.11, ptr @s6e63j0x03_panel_init.d.12, ptr @s6e63j0x03_panel_init.d.13, ptr @s6e63j0x03_enable_lv2_command.d, ptr @s6e63j0x03_apply_mtp_key.d, ptr @s6e63j0x03_apply_mtp_key.d.14, ptr @s6e63j0x03_enable.d, ptr @s6e63j0x03_enable.d.15, ptr @s6e63j0x03_enable.d.16, ptr @s6e63j0x03_enable.d.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @gamma_tbl], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_panel_init.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_panel_init.d.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_panel_init.d.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_panel_init.d.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_panel_init.d.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_panel_init.d.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_panel_init.d.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_enable_lv2_command.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_apply_mtp_key.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_apply_mtp_key.d.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_enable.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_enable.d.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_enable.d.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_enable.d.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63j0x03_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_tbl to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @s6e63j0x03_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s6e63j0x03_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @s6e63j0x03_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  store i32 1, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %mode_flags, align 8
  %supplies = getelementptr inbounds %struct.s6e63j0x03, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx4 = getelementptr %struct.s6e63j0x03, ptr %call.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %arrayidx4, align 4
  %call7 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call7, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.s6e63j0x03, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %panel = getelementptr inbounds %struct.s6e63j0x03, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @s6e63j0x03_funcs, i32 noundef 16) #5
  %call19 = tail call ptr @backlight_device_register(ptr noundef nonnull @.str.6, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull @s6e63j0x03_bl_ops, ptr noundef null) #5
  %bl_dev = getelementptr inbounds %struct.s6e63j0x03, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %bl_dev, align 4
  %cmp.i77 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call19 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %call19, i32 0, i32 1
  %11 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100, ptr %max_brightness, align 4
  %12 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bl_dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 80, ptr %13, align 8
  %15 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %power, align 8
  tail call void @drm_panel_add(ptr noundef %panel) #5
  %call33 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %remove_panel, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

remove_panel:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  %17 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %remove_panel, %if.end26.cleanup_crit_edge, %if.then22, %if.then14, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ %call17, %if.then14 ], [ %call25, %if.then22 ], [ %call33, %remove_panel ], [ -12, %entry.cleanup_crit_edge ], [ %call33, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  %panel = getelementptr inbounds %struct.s6e63j0x03, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  %bl_dev = getelementptr inbounds %struct.s6e63j0x03, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %supplies.i = getelementptr i8, ptr %panel, i32 28
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 30) #5
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 52
  %0 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -8
  %call1.i.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i, ptr noundef nonnull @s6e63j0x03_enable_lv2_command.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i14 = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i14, label %if.end.err_crit_edge, label %if.end.i15

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.i15:                                       ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i107.i = getelementptr i8, ptr %7, i32 -8
  %call1.i5.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i107.i, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %cmp3.i = icmp slt i32 %call1.i5.i.i, 0
  br i1 %cmp3.i, label %if.end.i15.err_crit_edge, label %if.end5.i

if.end.i15.err_crit_edge:                         ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end5.i:                                        ; preds = %if.end.i15
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -8
  %call1.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @s6e63j0x03_panel_init.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp7.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp7.i, label %if.end5.i.err_crit_edge, label %if.end9.i

if.end5.i.err_crit_edge:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end9.i:                                        ; preds = %if.end5.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i108.i = getelementptr i8, ptr %11, i32 -8
  %call1.i109.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i108.i, ptr noundef nonnull @s6e63j0x03_panel_init.d.8, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109.i)
  %cmp12.i = icmp slt i32 %call1.i109.i, 0
  br i1 %cmp12.i, label %if.end9.i.err_crit_edge, label %if.end14.i

if.end9.i.err_crit_edge:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end14.i:                                       ; preds = %if.end9.i
  %call16.i = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %add.ptr.i.i, i16 noundef zeroext 20, i16 noundef zeroext 339) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end14.i.err_crit_edge, label %if.end20.i

if.end14.i.err_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end20.i:                                       ; preds = %if.end14.i
  %call24.i = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %add.ptr.i.i, i16 noundef zeroext 0, i16 noundef zeroext 319) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end20.i.err_crit_edge, label %if.end28.i

if.end20.i.err_crit_edge:                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end28.i:                                       ; preds = %if.end20.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i110.i = getelementptr i8, ptr %13, i32 -8
  %call1.i111.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i110.i, ptr noundef nonnull @s6e63j0x03_panel_init.d.9, i32 noundef 14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111.i)
  %cmp31.i = icmp slt i32 %call1.i111.i, 0
  br i1 %cmp31.i, label %if.end28.i.err_crit_edge, label %if.end34.i

if.end28.i.err_crit_edge:                         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end34.i:                                       ; preds = %if.end28.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i112.i = getelementptr i8, ptr %15, i32 -8
  %call1.i113.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i112.i, ptr noundef nonnull @s6e63j0x03_panel_init.d.10, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113.i)
  %cmp37.i = icmp slt i32 %call1.i113.i, 0
  br i1 %cmp37.i, label %if.end34.i.err_crit_edge, label %if.end40.i

if.end34.i.err_crit_edge:                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end40.i:                                       ; preds = %if.end34.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i114.i = getelementptr i8, ptr %17, i32 -8
  %call1.i115.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i114.i, ptr noundef nonnull @s6e63j0x03_panel_init.d.11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115.i)
  %cmp43.i = icmp slt i32 %call1.i115.i, 0
  br i1 %cmp43.i, label %if.end40.i.err_crit_edge, label %if.end46.i

if.end40.i.err_crit_edge:                         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end46.i:                                       ; preds = %if.end40.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i116.i = getelementptr i8, ptr %19, i32 -8
  %call1.i117.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i116.i, ptr noundef nonnull @s6e63j0x03_panel_init.d.12, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i117.i)
  %cmp49.i = icmp slt i32 %call1.i117.i, 0
  br i1 %cmp49.i, label %if.end46.i.err_crit_edge, label %if.end52.i

if.end46.i.err_crit_edge:                         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end52.i:                                       ; preds = %if.end46.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i118.i = getelementptr i8, ptr %21, i32 -8
  %call1.i119.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i118.i, ptr noundef nonnull @s6e63j0x03_panel_init.d.13, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119.i)
  %cmp55.i = icmp slt i32 %call1.i119.i, 0
  br i1 %cmp55.i, label %if.end52.i.err_crit_edge, label %if.end58.i

if.end52.i.err_crit_edge:                         ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end58.i:                                       ; preds = %if.end52.i
  %call59.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end58.i.err_crit_edge, label %s6e63j0x03_panel_init.exit

if.end58.i.err_crit_edge:                         ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

s6e63j0x03_panel_init.exit:                       ; preds = %if.end58.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i120.i = getelementptr i8, ptr %23, i32 -8
  %call1.i5.i121.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i120.i, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d.14, i32 noundef 3) #5
  %24 = tail call i32 @llvm.smin.i32(i32 %call1.i5.i121.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i121.i)
  %cmp3 = icmp slt i32 %call1.i5.i121.i, 0
  br i1 %cmp3, label %s6e63j0x03_panel_init.exit.err_crit_edge, label %if.end5

s6e63j0x03_panel_init.exit.err_crit_edge:         ; preds = %s6e63j0x03_panel_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end5:                                          ; preds = %s6e63j0x03_panel_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %25 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %power, align 8
  br label %cleanup

err:                                              ; preds = %s6e63j0x03_panel_init.exit.err_crit_edge, %if.end58.i.err_crit_edge, %if.end52.i.err_crit_edge, %if.end46.i.err_crit_edge, %if.end40.i.err_crit_edge, %if.end34.i.err_crit_edge, %if.end28.i.err_crit_edge, %if.end20.i.err_crit_edge, %if.end14.i.err_crit_edge, %if.end9.i.err_crit_edge, %if.end5.i.err_crit_edge, %if.end.i15.err_crit_edge, %if.end.err_crit_edge
  %retval.0.i1623 = phi i32 [ %24, %s6e63j0x03_panel_init.exit.err_crit_edge ], [ %call59.i, %if.end58.i.err_crit_edge ], [ %call1.i119.i, %if.end52.i.err_crit_edge ], [ %call1.i117.i, %if.end46.i.err_crit_edge ], [ %call1.i115.i, %if.end40.i.err_crit_edge ], [ %call1.i113.i, %if.end34.i.err_crit_edge ], [ %call1.i111.i, %if.end28.i.err_crit_edge ], [ %call24.i, %if.end20.i.err_crit_edge ], [ %call16.i, %if.end14.i.err_crit_edge ], [ %call1.i109.i, %if.end9.i.err_crit_edge ], [ %call1.i.i, %if.end5.i.err_crit_edge ], [ %call1.i5.i.i, %if.end.i15.err_crit_edge ], [ %call1.i.i.i, %if.end.err_crit_edge ]
  %call.i18 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i1623, %err ], [ 0, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %1, i32 -8
  tail call void @msleep(i32 noundef 120) #5
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -8
  %call1.i5.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %cmp = icmp slt i32 %call1.i5.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -8
  %call1.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i, ptr noundef nonnull @s6e63j0x03_enable.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4 = icmp slt i32 %call1.i, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %7, i32 -8
  %call1.i68 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i67, ptr noundef nonnull @s6e63j0x03_enable.d.15, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %cmp9 = icmp slt i32 %call1.i68, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %add.ptr.i66, i16 noundef zeroext 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %9, i32 -8
  %call1.i70 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i69, ptr noundef nonnull @s6e63j0x03_enable.d.16, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %cmp18 = icmp slt i32 %call1.i70, 0
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %11, i32 -8
  %call1.i72 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i71, ptr noundef nonnull @s6e63j0x03_enable.d.17, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %cmp23 = icmp slt i32 %call1.i72, 0
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %add.ptr.i66, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i73 = getelementptr i8, ptr %13, i32 -8
  %call1.i5.i74 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i73, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d.14, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i74)
  %cmp31 = icmp slt i32 %call1.i5.i74, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %14 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %call1.i5.i, %entry.cleanup_crit_edge ], [ %call1.i, %if.end.cleanup_crit_edge ], [ %call1.i68, %if.end6.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call1.i70, %if.end15.cleanup_crit_edge ], [ %call1.i72, %if.end20.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call1.i5.i74, %if.end29.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %power, align 8
  %call3 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 120) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies.i = getelementptr i8, ptr %panel, i32 28
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %0 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef 320, i32 noundef 320, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %5 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 29, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 29, ptr %height_mm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
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
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63j0x03_set_brightness(ptr nocapture noundef readonly %bl_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl_dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl_dev, align 8
  %bl_dev1.i = getelementptr inbounds %struct.s6e63j0x03, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bl_dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bl_dev1.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 -8
  %call1.i5.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i.i, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %cmp.i = icmp slt i32 %call1.i5.i.i, 0
  br i1 %cmp.i, label %entry.s6e63j0x03_update_gamma.exit_crit_edge, label %if.end.i

entry.s6e63j0x03_update_gamma.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63j0x03_update_gamma.exit

if.end.i:                                         ; preds = %entry
  %div.i.i = udiv i32 %3, 11
  %8 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 8) #5
  %arrayidx.i = getelementptr [9 x [28 x i8]], ptr @gamma_tbl, i32 0, i32 %8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 -8
  %call1.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i, ptr noundef %arrayidx.i, i32 noundef 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp4.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp4.i, label %if.end.i.s6e63j0x03_update_gamma.exit_crit_edge, label %if.end6.i

if.end.i.s6e63j0x03_update_gamma.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63j0x03_update_gamma.exit

if.end6.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i23.i = getelementptr i8, ptr %12, i32 -8
  %call1.i5.i24.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i23.i, ptr noundef nonnull @s6e63j0x03_apply_mtp_key.d.14, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i24.i)
  %cmp8.i = icmp slt i32 %call1.i5.i24.i, 0
  br i1 %cmp8.i, label %if.end6.i.s6e63j0x03_update_gamma.exit_crit_edge, label %if.end10.i

if.end6.i.s6e63j0x03_update_gamma.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63j0x03_update_gamma.exit

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %5, align 8
  br label %s6e63j0x03_update_gamma.exit

s6e63j0x03_update_gamma.exit:                     ; preds = %if.end10.i, %if.end6.i.s6e63j0x03_update_gamma.exit_crit_edge, %if.end.i.s6e63j0x03_update_gamma.exit_crit_edge, %entry.s6e63j0x03_update_gamma.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call1.i5.i.i, %entry.s6e63j0x03_update_gamma.exit_crit_edge ], [ %call1.i.i, %if.end.i.s6e63j0x03_update_gamma.exit_crit_edge ], [ %call1.i5.i24.i, %if.end6.i.s6e63j0x03_update_gamma.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !71, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_panel_samsung_s6e63j0x03__302_517_s6e63j0x03_driver_init6, !1, !"__initcall__kmod_panel_samsung_s6e63j0x03__302_517_s6e63j0x03_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 517, i32 1}
!2 = !{ptr @__exitcall_s6e63j0x03_driver_exit, !1, !"__exitcall_s6e63j0x03_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 519, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 520, i32 1}
!7 = !{ptr @__UNIQUE_ID_description305, !8, !"__UNIQUE_ID_description305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 521, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 522, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 513, i32 11}
!14 = !{ptr @s6e63j0x03_driver, !15, !"s6e63j0x03_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 509, i32 31}
!16 = !{ptr @s6e63j0x03_of_match, !17, !"s6e63j0x03_of_match", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 503, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 451, i32 28}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 452, i32 28}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 456, i32 34}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 458, i32 40}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 461, i32 10}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 466, i32 42}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 470, i32 10}
!32 = !{ptr @s6e63j0x03_funcs, !33, !"s6e63j0x03_funcs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 425, i32 37}
!34 = !{ptr @s6e63j0x03_panel_init.d, !35, !"d", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 267, i32 8}
!36 = !{ptr @s6e63j0x03_panel_init.d.8, !37, !"d", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 272, i32 8}
!38 = !{ptr @s6e63j0x03_panel_init.d.9, !39, !"d", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 287, i32 8}
!40 = !{ptr @s6e63j0x03_panel_init.d.10, !41, !"d", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 292, i32 8}
!42 = !{ptr @s6e63j0x03_panel_init.d.11, !43, !"d", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 297, i32 8}
!44 = !{ptr @s6e63j0x03_panel_init.d.12, !45, !"d", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 302, i32 8}
!46 = !{ptr @s6e63j0x03_panel_init.d.13, !47, !"d", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 307, i32 8}
!48 = !{ptr @s6e63j0x03_enable_lv2_command.d, !49, !"d", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 135, i32 9}
!50 = !{ptr @s6e63j0x03_apply_mtp_key.d, !51, !"d", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 141, i32 10}
!52 = !{ptr @s6e63j0x03_apply_mtp_key.d.14, !53, !"d", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 144, i32 9}
!54 = !{ptr @default_mode, !55, !"default_mode", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 44, i32 38}
!56 = !{ptr @s6e63j0x03_enable.d, !57, !"d", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 357, i32 8}
!58 = !{ptr @s6e63j0x03_enable.d.15, !59, !"d", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 362, i32 8}
!60 = !{ptr @s6e63j0x03_enable.d.16, !61, !"d", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 373, i32 8}
!62 = !{ptr @s6e63j0x03_enable.d.17, !63, !"d", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 379, i32 8}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 408, i32 3}
!66 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @s6e63j0x03_get_modes._entry, !65, !"_entry", i1 false, i1 false}
!71 = !{ptr @s6e63j0x03_get_modes._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @s6e63j0x03_bl_ops, !73, !"s6e63j0x03_bl_ops", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 214, i32 35}
!74 = !{ptr @gamma_tbl, !75, !"gamma_tbl", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c", i32 57, i32 28}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
