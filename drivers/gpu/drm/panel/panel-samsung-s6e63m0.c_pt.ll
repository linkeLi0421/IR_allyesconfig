; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-s6e63m0.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+s6e63m0_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_s6e63m0_probe\09\09\09\09"
module asm "\09.long\09__crc_s6e63m0_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s6e63m0_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22s6e63m0_probe\22\09\09\09\09\09"
module asm "__kstrtabns_s6e63m0_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+s6e63m0_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_s6e63m0_remove\09\09\09\09"
module asm "\09.long\09__crc_s6e63m0_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s6e63m0_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22s6e63m0_remove\22\09\09\09\09\09"
module asm "__kstrtabns_s6e63m0_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.s6e63m0 = type { ptr, ptr, ptr, ptr, %struct.drm_panel, ptr, i8, i8, i8, [2 x %struct.regulator_bulk_data], ptr, i8, i8, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-brightness\00", [17 x i8] zeroinitializer }, align 32
@s6e63m0_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"illegal max brightness specified\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s6e63m0_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-samsung-s6e63m0.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s6e63m0_probe._entry_ptr = internal global ptr @s6e63m0_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@s6e63m0_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s6e63m0_probe._entry_ptr.10 = internal global ptr @s6e63m0_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@s6e63m0_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get reset-gpios %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@s6e63m0_probe._entry_ptr.14 = internal global ptr @s6e63m0_probe._entry.12, section ".printk_index", align 4
@s6e63m0_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @s6e63m0_prepare, ptr @s6e63m0_enable, ptr @s6e63m0_disable, ptr @s6e63m0_unprepare, ptr @s6e63m0_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_s6e63m0_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_s6e63m0_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_s6e63m0_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s6e63m0_probe to i32), ptr @__kstrtab_s6e63m0_probe, ptr @__kstrtabns_s6e63m0_probe }, section "___ksymtab_gpl+s6e63m0_probe", align 4
@__kstrtab_s6e63m0_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_s6e63m0_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_s6e63m0_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s6e63m0_remove to i32), ptr @__kstrtab_s6e63m0_remove, ptr @__kstrtabns_s6e63m0_remove }, section "___ksymtab_gpl+s6e63m0_remove", align 4
@__UNIQUE_ID_author302 = internal constant [76 x i8] c"panel_samsung_s6e63m0.author=Pawe\C5\82 Chmiel <pawel.mikolaj.chmiel@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [53 x i8] c"panel_samsung_s6e63m0.description=s6e63m0 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [71 x i8] c"panel_samsung_s6e63m0.file=drivers/gpu/drm/panel/panel-samsung-s6e63m0\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [37 x i8] c"panel_samsung_s6e63m0.license=GPL v2\00", section ".modinfo", align 1
@s6e63m0_prepare.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@s6e63m0_prepare.d.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F1ZZ", [29 x i8] zeroinitializer }, align 32
@s6e63m0_check_lcd_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error checking LCD type (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s6e63m0_check_lcd_type\00", [41 x i8] zeroinitializer }, align 32
@s6e63m0_check_lcd_type._entry_ptr = internal global ptr @s6e63m0_check_lcd_type._entry, section ".printk_index", align 4
@s6e63m0_check_lcd_type._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 352, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MTP ID: %02x %02x %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s6e63m0_check_lcd_type._entry_ptr.21 = internal global ptr @s6e63m0_check_lcd_type._entry.18, section ".printk_index", align 4
@s6e63m0_check_lcd_type._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 361, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"detected LCD panel AMS397GE MIPI M2\0A\00", [59 x i8] zeroinitializer }, align 32
@s6e63m0_check_lcd_type._entry_ptr.24 = internal global ptr @s6e63m0_check_lcd_type._entry.22, section ".printk_index", align 4
@s6e63m0_check_lcd_type._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.3, i32 366, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"detected LCD panel AMS397GE MIPI SM2\0A\00", [58 x i8] zeroinitializer }, align 32
@s6e63m0_check_lcd_type._entry_ptr.27 = internal global ptr @s6e63m0_check_lcd_type._entry.25, section ".printk_index", align 4
@s6e63m0_check_lcd_type._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.3, i32 370, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown LCD panel type %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@s6e63m0_check_lcd_type._entry_ptr.30 = internal global ptr @s6e63m0_check_lcd_type._entry.28, section ".printk_index", align 4
@s6e63m0_init.d = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\F8\01,,\07\07_\B3m\97\1D:\0F\00\00", [17 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\F8\01''\07\07T\9Fc\8F\1A3\0D\00\00", [17 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F2\02\03\1C\10\10", [26 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F7\03\00\00", [28 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\FA\00\18\08$dV3\B6\BA\A8\AC\B1\9D\C1\C1\B7\00\9C\00\9F\00\D6", [41 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FA\01", [30 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F6\00\8E\07", [28 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B3l", [30 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\B5,\12\0C\0A\10\0E\17\13\1F\1A*$\1F\1B\1A\17+&\22 :40,)&%#! \1E\1E", [63 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B6\00\00\11\223DDDUUffffff", [47 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\B7,\12\0C\0A\10\0E\17\13\1F\1A*$\1F\1B\1A\17+&\22 :40,)&%#! \1E\1E", [63 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B8\00\00\11\223DDDUUffffff", [47 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\B9,\12\0C\0A\10\0E\17\13\1F\1A*$\1F\1B\1A\17+&\22 :40,)&%#! \1E\1E", [63 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\BA\00\00\11\223DDDUUffffff", [47 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\C1M\96\1D\00\00\01\DF\00\00\03\1F\00\00\00\00\00\00\00\00\03\06\09\0D\0F\12\15\18", [36 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\B2\10\10\0B\05", [27 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C0\01", [30 x i8] zeroinitializer }, align 32
@s6e63m0_init.d.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B1\0B", [30 x i8] zeroinitializer }, align 32
@s6e63m0_enable.d = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\11", [31 x i8] zeroinitializer }, align 32
@s6e63m0_enable.d.48 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c")", [31 x i8] zeroinitializer }, align 32
@s6e63m0_enable.d.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\D5\E7\14`\17\0AI\C3\8F\19d\91\84v \0F\00", [47 x i8] zeroinitializer }, align 32
@s6e63m0_disable.d = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"(", [31 x i8] zeroinitializer }, align 32
@s6e63m0_disable.d.50 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\10", [31 x i8] zeroinitializer }, align 32
@s6e63m0_get_modes.bus_format = internal constant { i32, [28 x i8] } { i32 4106, [28 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 25628, i16 480, i16 496, i16 498, i16 514, i16 0, i16 800, i16 828, i16 830, i16 831, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 53, i16 89, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@s6e63m0_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s6e63m0_get_modes\00", [46 x i8] zeroinitializer }, align 32
@s6e63m0_get_modes._entry_ptr = internal global ptr @s6e63m0_get_modes._entry, section ".printk_index", align 4
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panel\00", [26 x i8] zeroinitializer }, align 32
@s6e63m0_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @s6e63m0_set_brightness, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@s6e63m0_backlight_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 686, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error registering backlight device (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s6e63m0_backlight_register\00", [37 x i8] zeroinitializer }, align 32
@s6e63m0_backlight_register._entry_ptr = internal global ptr @s6e63m0_backlight_register._entry, section ".printk_index", align 4
@s6e63m0_elvss_per_gamma = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\01\01\01\01\01\01\01\01\02\02\02\02\02\02\03\03\03\03\04\04\04\04\04\04\04\04\04\04", [36 x i8] zeroinitializer }, align 32
@s6e63m0_elvss_offsets = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0D\09\07\00", [27 x i8] zeroinitializer }, align 32
@s6e63m0_acl_per_gamma = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\06\06\06\06\06", [36 x i8] zeroinitializer }, align 32
@s6e63m0_gamma_22 = internal constant { [28 x [23 x i8]], [188 x i8] } { [28 x [23 x i8]] [[23 x i8] c"\FA\02\18\08$\A1Q{\CE\CB\C2\C7\CB\BC\DA\DD\D3\00S\00R\00o", [23 x i8] c"\FA\02\18\08$\97Xq\CC\CB\C0\C5\C9\BA\D9\DC\D1\00[\00Z\00z", [23 x i8] c"\FA\02\18\08$\96Xr\CB\CA\BF\C6\C9\BA\D6\D9\CD\00a\00a\00\83", [23 x i8] c"\FA\02\18\08$\91^n\C9\C9\BD\C4\C9\B8\D3\D7\CA\00i\00g\00\8D", [23 x i8] c"\FA\02\18\08$\8Ebk\C7\C9\BB\C3\C7\B7\D3\D7\CA\00n\00l\00\94", [23 x i8] c"\FA\02\18\08$\89he\C9\C9\BC\C1\C5\B6\D2\D5\C9\00s\00r\00\9A", [23 x i8] c"\FA\02\18\08$\89id\C7\C8\BB\C0\C5\B4\D2\D5\C9\00w\00v\00\A0", [23 x i8] c"\FA\02\18\08$\86i`\C6\C8\BA\BF\C4\B4\D0\D4\C6\00|\00z\00\A7", [23 x i8] c"\FA\02\18\08$\86j`\C5\C7\BA\BD\C3\B2\D0\D4\C5\00\80\00~\00\AD", [23 x i8] c"\FA\02\18\08$\82k^\C4\C8\B9\BD\C2\B1\CE\D2\C4\00\85\00\82\00\B3", [23 x i8] c"\FA\02\18\08$\8Cl`\C3\C7\B9\BC\C1\AF\CE\D2\C3\00\88\00\86\00\B8", [23 x i8] c"\FA\02\18\08$\80l_\C1\C6\B7\BC\C1\AE\CD\D0\C2\00\8C\00\8A\00\BE", [23 x i8] c"\FA\02\18\08$\80n_\C1\C6\B6\BC\C0\AE\CC\D0\C2\00\8F\00\8D\00\C2", [23 x i8] c"\FA\02\18\08$\7Fn_\C0\C6\B5\BA\BF\AD\CB\CF\C0\00\94\00\91\00\C8", [23 x i8] c"\FA\02\18\08$|m\\\C0\C6\B4\BB\BE\AD\CA\CF\C0\00\96\00\94\00\CC", [23 x i8] c"\FA\02\18\08${m[\C0\C5\B3\BA\BE\AD\CA\CE\BF\00\99\00\97\00\D0", [23 x i8] c"\FA\02\18\08$zmY\C1\C5\B4\B8\BD\AC\C9\CE\BE\00\9D\00\9A\00\D5", [23 x i8] c"\FA\02\18\08$ymX\C1\C4\B4\B6\BD\AA\CA\CD\BE\00\9F\00\9D\00\D9", [23 x i8] c"\FA\02\18\08$ymW\C0\C4\B4\B7\BD\AA\C8\CC\BD\00\A2\00\A0\00\DD", [23 x i8] c"\FA\02\18\08$xoX\BF\C4\B3\B5\BB\A9\C8\CC\BC\00\A6\00\A3\00\E2", [23 x i8] c"\FA\02\18\08$uoV\BF\C3\B2\B6\BB\A8\C7\CB\BC\00\A8\00\A6\00\E6", [23 x i8] c"\FA\02\18\08$voV\C0\C3\B2\B5\BA\A8\C6\CB\BB\00\AA\00\A8\00\E9", [23 x i8] c"\FA\02\18\08$tmT\BF\C3\B2\B4\BA\A7\C6\CA\BA\00\AD\00\AB\00\ED", [23 x i8] c"\FA\02\18\08$tnT\BD\C2\B0\B5\BA\A7\C5\C9\BA\00\B0\00\AE\00\F1", [23 x i8] c"\FA\02\18\08$qlP\BD\C3\B0\B4\B8\A6\C6\C9\BB\00\B2\00\B1\00\F4", [23 x i8] c"\FA\02\18\08$nlM\BE\C3\B1\B3\B8\A5\C6\C8\BB\00\B4\00\B3\00\F7", [23 x i8] c"\FA\02\18\08$qpP\BD\C1\B0\B2\B8\A4\C6\C7\BB\00\B6\00\B6\00\FA", [23 x i8] c"\FA\02\18\08$pnN\BC\C0\AF\B3\B8\A5\C5\C7\BB\00\B9\00\B8\00\FC"], [188 x i8] zeroinitializer }, align 32
@s6e63m0_set_brightness.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FA\03", [30 x i8] zeroinitializer }, align 32
@s6e63m0_acl = internal constant { <{ <{ i8, [27 x i8] }>, [28 x i8], [28 x i8], [28 x i8], [28 x i8], [28 x i8], [28 x i8] }>, [60 x i8] } { <{ <{ i8, [27 x i8] }>, [28 x i8], [28 x i8], [28 x i8], [28 x i8], [28 x i8], [28 x i8] }> <{ <{ i8, [27 x i8] }> <{ i8 -63, [27 x i8] zeroinitializer }>, [28 x i8] c"\C1M\96\1D\00\00\01\DF\00\00\03\1F\00\00\00\00\00\01\06\0C\11\16\1C!&+16", [28 x i8] c"\C1M\96\1D\00\00\01\DF\00\00\03\1F\00\00\00\00\00\01\07\0C\12\18\1E#)/4:", [28 x i8] c"\C1M\96\1D\00\00\01\DF\00\00\03\1F\00\00\00\00\00\01\07\0D\13\19\1F%+17=", [28 x i8] c"\C1M\96\1D\00\00\01\DF\00\00\03\1F\00\00\00\00\00\01\07\0E\14\1B!'.4;A", [28 x i8] c"\C1M\96\1D\00\00\01\DF\00\00\03\1F\00\00\00\00\00\01\08\0E\15\1B\22)/6<C", [28 x i8] c"\C1M\96\1D\00\00\01\DF\00\00\03\1F\00\00\00\00\00\01\08\0F\16\1D$*18?F" }>, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 164, i64 180, i64 182]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 715, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 719, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 723, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 724, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 728, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 732, i32 40 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 734, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"s6e63m0_drm_funcs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 625, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 552, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 554, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 347, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 352, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 361, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 366, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 370, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 391, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 395, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 399, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 401, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 404, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 409, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 412, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 414, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 416, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 423, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 428, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 435, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 440, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 447, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 452, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 458, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 461, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 464, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 579, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 581, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 584, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 510, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 512, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [11 x i8] c"bus_format\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 600, i32 19 }
@___asan_gen_.216 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 286, i32 38 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 604, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 681, i32 52 }
@___asan_gen_.231 = private unnamed_addr constant [22 x i8] c"s6e63m0_backlight_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 667, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 686, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [24 x i8] c"s6e63m0_elvss_per_gamma\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 248, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"s6e63m0_elvss_offsets\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 239, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"s6e63m0_acl_per_gamma\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 227, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"s6e63m0_gamma_22\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 35, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 661, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [12 x i8] c"s6e63m0_acl\00", align 1
@___asan_gen_.259 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 181, i32 17 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__ksymtab_s6e63m0_probe, ptr @__ksymtab_s6e63m0_remove, ptr @s6e63m0_backlight_register._entry, ptr @s6e63m0_backlight_register._entry_ptr, ptr @s6e63m0_check_lcd_type._entry, ptr @s6e63m0_check_lcd_type._entry.18, ptr @s6e63m0_check_lcd_type._entry.22, ptr @s6e63m0_check_lcd_type._entry.25, ptr @s6e63m0_check_lcd_type._entry.28, ptr @s6e63m0_check_lcd_type._entry_ptr, ptr @s6e63m0_check_lcd_type._entry_ptr.21, ptr @s6e63m0_check_lcd_type._entry_ptr.24, ptr @s6e63m0_check_lcd_type._entry_ptr.27, ptr @s6e63m0_check_lcd_type._entry_ptr.30, ptr @s6e63m0_get_modes._entry, ptr @s6e63m0_get_modes._entry_ptr, ptr @s6e63m0_probe._entry, ptr @s6e63m0_probe._entry.12, ptr @s6e63m0_probe._entry.8, ptr @s6e63m0_probe._entry_ptr, ptr @s6e63m0_probe._entry_ptr.10, ptr @s6e63m0_probe._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @s6e63m0_drm_funcs, ptr @s6e63m0_prepare.d, ptr @s6e63m0_prepare.d.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @s6e63m0_init.d, ptr @s6e63m0_init.d.31, ptr @s6e63m0_init.d.32, ptr @s6e63m0_init.d.33, ptr @s6e63m0_init.d.34, ptr @s6e63m0_init.d.35, ptr @s6e63m0_init.d.36, ptr @s6e63m0_init.d.37, ptr @s6e63m0_init.d.38, ptr @s6e63m0_init.d.39, ptr @s6e63m0_init.d.40, ptr @s6e63m0_init.d.41, ptr @s6e63m0_init.d.42, ptr @s6e63m0_init.d.43, ptr @s6e63m0_init.d.44, ptr @s6e63m0_init.d.45, ptr @s6e63m0_init.d.46, ptr @s6e63m0_init.d.47, ptr @s6e63m0_enable.d, ptr @s6e63m0_enable.d.48, ptr @s6e63m0_enable.d.49, ptr @s6e63m0_disable.d, ptr @s6e63m0_disable.d.50, ptr @s6e63m0_get_modes.bus_format, ptr @default_mode, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @s6e63m0_backlight_ops, ptr @.str.54, ptr @.str.55, ptr @s6e63m0_elvss_per_gamma, ptr @s6e63m0_elvss_offsets, ptr @s6e63m0_acl_per_gamma, ptr @s6e63m0_gamma_22, ptr @s6e63m0_set_brightness.d, ptr @s6e63m0_acl], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_prepare.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_prepare.d.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_check_lcd_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_check_lcd_type._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_check_lcd_type._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_check_lcd_type._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_check_lcd_type._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_init.d.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_enable.d to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_enable.d.48 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_enable.d.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_disable.d to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_disable.d.50 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_get_modes.bus_format to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_backlight_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_elvss_per_gamma to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_elvss_offsets to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_acl_per_gamma to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_gamma_22 to i32), i32 644, i32 832, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_set_brightness.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e63m0_acl to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s6e63m0_probe(ptr noundef %dev, ptr noundef %trsp, ptr noundef %dcs_read, ptr noundef %dcs_write, i1 noundef zeroext %dsi_mode) #0 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  %max_brightness = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_brightness) #5
  %0 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_brightness, align 4, !annotation !148
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %dsi_mode to i8
  %transport_data = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %transport_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %trsp, ptr %transport_data, align 4
  %dsi_mode2 = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %dsi_mode2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %dsi_mode2, align 2
  %dcs_read4 = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dcs_read4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dcs_read, ptr %dcs_read4, align 4
  %dcs_write5 = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %dcs_write5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dcs_write, ptr %dcs_write5, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %enabled = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled, align 1
  %prepared = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %prepared, align 4
  %call.i77 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %max_brightness, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool8.not = icmp eq i32 %call.i77, 0
  br i1 %tobool8.not, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 27, ptr %max_brightness, align 4
  br label %if.end12

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %.pr)
  %cmp = icmp ugt i32 %.pr, 27
  br i1 %cmp, label %do.end, label %if.end10.if.end12_crit_edge

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %11 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 27, ptr %max_brightness, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end10.if.end12_crit_edge, %if.end10.thread
  %supplies = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.6, ptr %supplies, align 4
  %arrayidx14 = getelementptr %struct.s6e63m0, ptr %call.i, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.7, ptr %arrayidx14, align 4
  %call17 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call17) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call24 = call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 7) #5
  %reset_gpio = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 10
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end30, label %if.end35

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %15) #8
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_gpio, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %panel = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 4
  %cond = select i1 %dsi_mode, i32 16, i32 17
  call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev, ptr noundef nonnull @s6e63m0_drm_funcs, i32 noundef %cond) #5
  %19 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_brightness, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #5
  %21 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 4
  %25 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 5
  %26 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 6
  %27 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %20, ptr %props.i, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %20, ptr %21, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %22, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %24, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %25, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %26, align 4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call.i78 = call ptr @devm_backlight_device_register(ptr noundef %35, ptr noundef nonnull @.str.53, ptr noundef %35, ptr noundef nonnull %call.i, ptr noundef nonnull @s6e63m0_backlight_ops, ptr noundef nonnull %props.i) #5
  %bl_dev.i = getelementptr inbounds %struct.s6e63m0, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i78, ptr %bl_dev.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %s6e63m0_backlight_register.exit, label %s6e63m0_backlight_register.exit.thread

s6e63m0_backlight_register.exit.thread:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #5
  br label %if.end40

s6e63m0_backlight_register.exit:                  ; preds = %if.end35
  %37 = ptrtoint ptr %call.i78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.54, i32 noundef %37) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #5
  %cmp38 = icmp slt ptr %call.i78, null
  br i1 %cmp38, label %s6e63m0_backlight_register.exit.cleanup_crit_edge, label %s6e63m0_backlight_register.exit.if.end40_crit_edge

s6e63m0_backlight_register.exit.if.end40_crit_edge: ; preds = %s6e63m0_backlight_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

s6e63m0_backlight_register.exit.cleanup_crit_edge: ; preds = %s6e63m0_backlight_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %s6e63m0_backlight_register.exit.if.end40_crit_edge, %s6e63m0_backlight_register.exit.thread
  call void @drm_panel_add(ptr noundef %panel) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %s6e63m0_backlight_register.exit.cleanup_crit_edge, %do.end30, %do.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end22 ], [ %18, %do.end30 ], [ 0, %if.end40 ], [ -12, %entry.cleanup_crit_edge ], [ %37, %s6e63m0_backlight_register.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_brightness) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s6e63m0_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %panel = getelementptr inbounds %struct.s6e63m0, ptr %1, i32 0, i32 4
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63m0_prepare(ptr noundef %panel) #0 align 64 {
entry:
  %id1.i = alloca i8, align 1
  %id2.i = alloca i8, align 1
  %id3.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -16
  %prepared = getelementptr i8, ptr %panel, i32 60
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies.i = getelementptr i8, ptr %panel, i32 32
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 25) #5
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 56
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 5) #5
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 120) #5
  %error.i = getelementptr i8, ptr %panel, i32 64
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i28 = icmp slt i32 %7, 0
  br i1 %cmp.i28, label %if.end3.s6e63m0_dcs_write.exit37.thread_crit_edge, label %s6e63m0_dcs_write.exit

if.end3.s6e63m0_dcs_write.exit37.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit37.thread

s6e63m0_dcs_write.exit:                           ; preds = %if.end3
  %dcs_write.i = getelementptr i8, ptr %panel, i32 -4
  %8 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dcs_write.i, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i = getelementptr i8, ptr %panel, i32 -12
  %12 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transport_data.i, align 4
  %call.i29 = tail call i32 %9(ptr noundef %11, ptr noundef %13, ptr noundef nonnull @s6e63m0_prepare.d, i32 noundef 3) #5
  %14 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i29, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i32 = icmp slt i32 %call.i29, 0
  br i1 %cmp.i32, label %s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit37.thread_crit_edge, label %s6e63m0_dcs_write.exit37

s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit37.thread_crit_edge: ; preds = %s6e63m0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit37.thread

s6e63m0_dcs_write.exit37.thread:                  ; preds = %s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit37.thread_crit_edge, %if.end3.s6e63m0_dcs_write.exit37.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1.i) #5
  %15 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %id1.i, align 1, !annotation !148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id2.i) #5
  %16 = ptrtoint ptr %id2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %id2.i, align 1, !annotation !148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id3.i) #5
  %17 = ptrtoint ptr %id3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %id3.i, align 1, !annotation !148
  br label %s6e63m0_dcs_read.exit49.thread.i

s6e63m0_dcs_write.exit37:                         ; preds = %s6e63m0_dcs_write.exit
  %18 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dcs_write.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport_data.i, align 4
  %call.i35 = tail call i32 %19(ptr noundef %21, ptr noundef %23, ptr noundef nonnull @s6e63m0_prepare.d.15, i32 noundef 3) #5
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i35, ptr %error.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1.i) #5
  %25 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %id1.i, align 1, !annotation !148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id2.i) #5
  %26 = ptrtoint ptr %id2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %id2.i, align 1, !annotation !148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id3.i) #5
  %27 = ptrtoint ptr %id3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %id3.i, align 1, !annotation !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i.i = icmp slt i32 %call.i35, 0
  br i1 %cmp.i.i, label %s6e63m0_dcs_write.exit37.s6e63m0_dcs_read.exit49.thread.i_crit_edge, label %s6e63m0_dcs_read.exit.i

s6e63m0_dcs_write.exit37.s6e63m0_dcs_read.exit49.thread.i_crit_edge: ; preds = %s6e63m0_dcs_write.exit37
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_read.exit49.thread.i

s6e63m0_dcs_read.exit.i:                          ; preds = %s6e63m0_dcs_write.exit37
  %dcs_read.i.i = getelementptr i8, ptr %panel, i32 -8
  %28 = ptrtoint ptr %dcs_read.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcs_read.i.i, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %32 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transport_data.i, align 4
  %call.i.i = call i32 %29(ptr noundef %31, ptr noundef %33, i8 noundef zeroext -38, ptr noundef nonnull %id1.i) #5
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i44.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i44.i, label %s6e63m0_dcs_read.exit.i.s6e63m0_dcs_read.exit49.thread.i_crit_edge, label %s6e63m0_dcs_read.exit49.i

s6e63m0_dcs_read.exit.i.s6e63m0_dcs_read.exit49.thread.i_crit_edge: ; preds = %s6e63m0_dcs_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_read.exit49.thread.i

s6e63m0_dcs_read.exit49.thread.i:                 ; preds = %s6e63m0_dcs_read.exit.i.s6e63m0_dcs_read.exit49.thread.i_crit_edge, %s6e63m0_dcs_write.exit37.s6e63m0_dcs_read.exit49.thread.i_crit_edge, %s6e63m0_dcs_write.exit37.thread
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_read.exit56.i

s6e63m0_dcs_read.exit49.i:                        ; preds = %s6e63m0_dcs_read.exit.i
  %36 = ptrtoint ptr %dcs_read.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dcs_read.i.i, align 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %40 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transport_data.i, align 4
  %call.i47.i = call i32 %37(ptr noundef %39, ptr noundef %41, i8 noundef zeroext -37, ptr noundef nonnull %id2.i) #5
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i47.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp.i51.i = icmp slt i32 %call.i47.i, 0
  br i1 %cmp.i51.i, label %s6e63m0_dcs_read.exit56.thread.i, label %if.end.i55.i

s6e63m0_dcs_read.exit56.thread.i:                 ; preds = %s6e63m0_dcs_read.exit49.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %error.i, align 4
  br label %s6e63m0_check_lcd_type.exit

if.end.i55.i:                                     ; preds = %s6e63m0_dcs_read.exit49.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dcs_read.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dcs_read.i.i, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %48 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %transport_data.i, align 4
  %call.i54.i = call i32 %45(ptr noundef %47, ptr noundef %49, i8 noundef zeroext -36, ptr noundef nonnull %id3.i) #5
  br label %s6e63m0_dcs_read.exit56.i

s6e63m0_dcs_read.exit56.i:                        ; preds = %if.end.i55.i, %s6e63m0_dcs_read.exit49.thread.i
  %50 = phi i32 [ %.pr.i, %s6e63m0_dcs_read.exit49.thread.i ], [ %call.i54.i, %if.end.i55.i ]
  %51 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %do.end3.i, label %s6e63m0_dcs_read.exit56.i.s6e63m0_check_lcd_type.exit_crit_edge

s6e63m0_dcs_read.exit56.i.s6e63m0_check_lcd_type.exit_crit_edge: ; preds = %s6e63m0_dcs_read.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_check_lcd_type.exit

do.end3.i:                                        ; preds = %s6e63m0_dcs_read.exit56.i
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  %54 = ptrtoint ptr %id1.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %id1.i, align 1
  %conv.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %id2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %id2.i, align 1
  %conv5.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %id3.i, align 1
  %conv6.i = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i) #8
  %60 = ptrtoint ptr %id2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %id2.i, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i8 %61, label %do.end20.i [
    i8 -92, label %do.end10.i
    i8 -76, label %do.end3.i.do.end15.i_crit_edge
    i8 -74, label %do.end3.i.do.end15.i_crit_edge58
  ]

do.end3.i.do.end15.i_crit_edge58:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end3.i.do.end15.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end10.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.23) #8
  %65 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id3.i, align 1
  br label %s6e63m0_check_lcd_type.exit.thread

do.end15.i:                                       ; preds = %do.end3.i.do.end15.i_crit_edge, %do.end3.i.do.end15.i_crit_edge58
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.26) #8
  %69 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %id3.i, align 1
  br label %s6e63m0_check_lcd_type.exit.thread

do.end20.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i = zext i8 %61 to i32
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.29, i32 noundef %conv7.i) #8
  br label %s6e63m0_check_lcd_type.exit.thread

s6e63m0_check_lcd_type.exit.thread:               ; preds = %do.end20.i, %do.end15.i, %do.end10.i
  %.sink.i = phi i8 [ 22, %do.end20.i ], [ %70, %do.end15.i ], [ %66, %do.end10.i ]
  %elvss_pulse23.i = getelementptr i8, ptr %panel, i32 29
  %73 = ptrtoint ptr %elvss_pulse23.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %.sink.i, ptr %elvss_pulse23.i, align 1
  %74 = ptrtoint ptr %id2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %id2.i, align 1
  %lcd_type24.i55 = getelementptr i8, ptr %panel, i32 28
  %76 = ptrtoint ptr %lcd_type24.i55 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %lcd_type24.i55, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #5
  br label %if.end7

s6e63m0_check_lcd_type.exit:                      ; preds = %s6e63m0_dcs_read.exit56.i.s6e63m0_check_lcd_type.exit_crit_edge, %s6e63m0_dcs_read.exit56.thread.i
  %77 = phi i32 [ %call.i47.i, %s6e63m0_dcs_read.exit56.thread.i ], [ %50, %s6e63m0_dcs_read.exit56.i.s6e63m0_check_lcd_type.exit_crit_edge ]
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.16, i32 noundef %77) #8
  %lcd_type24.i = getelementptr i8, ptr %panel, i32 28
  %80 = ptrtoint ptr %lcd_type24.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %lcd_type24.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp5 = icmp slt i32 %77, 0
  br i1 %cmp5, label %s6e63m0_check_lcd_type.exit.cleanup_crit_edge, label %s6e63m0_check_lcd_type.exit.if.end7_crit_edge

s6e63m0_check_lcd_type.exit.if.end7_crit_edge:    ; preds = %s6e63m0_check_lcd_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

s6e63m0_check_lcd_type.exit.cleanup_crit_edge:    ; preds = %s6e63m0_check_lcd_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %s6e63m0_check_lcd_type.exit.if.end7_crit_edge, %s6e63m0_check_lcd_type.exit.thread
  %81 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i20.i = icmp slt i32 %82, 0
  br i1 %cmp.i20.i, label %if.end7.s6e63m0_dcs_write.exit39.thread.i_crit_edge, label %if.end.i40

if.end7.s6e63m0_dcs_write.exit39.thread.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit39.thread.i

if.end.i40:                                       ; preds = %if.end7
  %dsi_mode.i = getelementptr i8, ptr %panel, i32 30
  %83 = ptrtoint ptr %dsi_mode.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dsi_mode.i, align 2, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i39 = icmp eq i8 %84, 0
  %s6e63m0_init.d.31.s6e63m0_init.d.i = select i1 %tobool.not.i39, ptr @s6e63m0_init.d.31, ptr @s6e63m0_init.d
  %dcs_write.i21.i = getelementptr i8, ptr %panel, i32 -4
  %85 = ptrtoint ptr %dcs_write.i21.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dcs_write.i21.i, align 4
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i22.i = getelementptr i8, ptr %panel, i32 -12
  %89 = ptrtoint ptr %transport_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %transport_data.i22.i, align 4
  %call.i23.i = call i32 %86(ptr noundef %88, ptr noundef %90, ptr noundef nonnull %s6e63m0_init.d.31.s6e63m0_init.d.i, i32 noundef 15) #5
  %91 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.i23.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp.i27.i = icmp slt i32 %call.i23.i, 0
  br i1 %cmp.i27.i, label %if.end.i40.s6e63m0_dcs_write.exit39.thread.i_crit_edge, label %s6e63m0_dcs_write.exit32.i

if.end.i40.s6e63m0_dcs_write.exit39.thread.i_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit39.thread.i

s6e63m0_dcs_write.exit32.i:                       ; preds = %if.end.i40
  %92 = ptrtoint ptr %dcs_write.i21.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dcs_write.i21.i, align 4
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 4
  %96 = ptrtoint ptr %transport_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %transport_data.i22.i, align 4
  %call.i30.i = call i32 %93(ptr noundef %95, ptr noundef %97, ptr noundef nonnull @s6e63m0_init.d.32, i32 noundef 6) #5
  %98 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call.i30.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %cmp.i34.i = icmp slt i32 %call.i30.i, 0
  br i1 %cmp.i34.i, label %s6e63m0_dcs_write.exit32.i.s6e63m0_dcs_write.exit39.thread.i_crit_edge, label %s6e63m0_dcs_write.exit39.i

s6e63m0_dcs_write.exit32.i.s6e63m0_dcs_write.exit39.thread.i_crit_edge: ; preds = %s6e63m0_dcs_write.exit32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit39.thread.i

s6e63m0_dcs_write.exit39.thread.i:                ; preds = %s6e63m0_dcs_write.exit32.i.s6e63m0_dcs_write.exit39.thread.i_crit_edge, %if.end.i40.s6e63m0_dcs_write.exit39.thread.i_crit_edge, %if.end7.s6e63m0_dcs_write.exit39.thread.i_crit_edge
  %99 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr.i41 = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit46.i

s6e63m0_dcs_write.exit39.i:                       ; preds = %s6e63m0_dcs_write.exit32.i
  %100 = ptrtoint ptr %dcs_write.i21.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dcs_write.i21.i, align 4
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  %104 = ptrtoint ptr %transport_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %transport_data.i22.i, align 4
  %call.i37.i = call i32 %101(ptr noundef %103, ptr noundef %105, ptr noundef nonnull @s6e63m0_init.d.33, i32 noundef 4) #5
  %106 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call.i37.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp.i41.i = icmp slt i32 %call.i37.i, 0
  br i1 %cmp.i41.i, label %s6e63m0_dcs_write.exit39.i.s6e63m0_dcs_write.exit74thread-pre-split.i_crit_edge, label %if.end.i45.i

s6e63m0_dcs_write.exit39.i.s6e63m0_dcs_write.exit74thread-pre-split.i_crit_edge: ; preds = %s6e63m0_dcs_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit74thread-pre-split.i

if.end.i45.i:                                     ; preds = %s6e63m0_dcs_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %dcs_write.i21.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dcs_write.i21.i, align 4
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 4
  %111 = ptrtoint ptr %transport_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %transport_data.i22.i, align 4
  %call.i44.i = call i32 %108(ptr noundef %110, ptr noundef %112, ptr noundef nonnull @s6e63m0_init.d.34, i32 noundef 23) #5
  %113 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call.i44.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit46.i

s6e63m0_dcs_write.exit46.i:                       ; preds = %if.end.i45.i, %s6e63m0_dcs_write.exit39.thread.i
  %114 = phi i32 [ %.pr.i41, %s6e63m0_dcs_write.exit39.thread.i ], [ %call.i44.i, %if.end.i45.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i48.i = icmp slt i32 %114, 0
  br i1 %cmp.i48.i, label %s6e63m0_dcs_write.exit53thread-pre-split.i, label %if.end.i52.i

if.end.i52.i:                                     ; preds = %s6e63m0_dcs_write.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i49.i = getelementptr i8, ptr %panel, i32 -4
  %115 = ptrtoint ptr %dcs_write.i49.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dcs_write.i49.i, align 4
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i50.i = getelementptr i8, ptr %panel, i32 -12
  %119 = ptrtoint ptr %transport_data.i50.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %transport_data.i50.i, align 4
  %call.i51.i = call i32 %116(ptr noundef %118, ptr noundef %120, ptr noundef nonnull @s6e63m0_init.d.35, i32 noundef 2) #5
  %121 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call.i51.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit53.i

s6e63m0_dcs_write.exit53thread-pre-split.i:       ; preds = %s6e63m0_dcs_write.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr141.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit53.i

s6e63m0_dcs_write.exit53.i:                       ; preds = %s6e63m0_dcs_write.exit53thread-pre-split.i, %if.end.i52.i
  %123 = phi i32 [ %.pr141.i, %s6e63m0_dcs_write.exit53thread-pre-split.i ], [ %call.i51.i, %if.end.i52.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.i55.i = icmp slt i32 %123, 0
  br i1 %cmp.i55.i, label %s6e63m0_dcs_write.exit60thread-pre-split.i, label %if.end.i59.i

if.end.i59.i:                                     ; preds = %s6e63m0_dcs_write.exit53.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i56.i = getelementptr i8, ptr %panel, i32 -4
  %124 = ptrtoint ptr %dcs_write.i56.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dcs_write.i56.i, align 4
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i57.i = getelementptr i8, ptr %panel, i32 -12
  %128 = ptrtoint ptr %transport_data.i57.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %transport_data.i57.i, align 4
  %call.i58.i = call i32 %125(ptr noundef %127, ptr noundef %129, ptr noundef nonnull @s6e63m0_init.d.36, i32 noundef 4) #5
  %130 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %call.i58.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit60.i

s6e63m0_dcs_write.exit60thread-pre-split.i:       ; preds = %s6e63m0_dcs_write.exit53.i
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr143.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit60.i

s6e63m0_dcs_write.exit60.i:                       ; preds = %s6e63m0_dcs_write.exit60thread-pre-split.i, %if.end.i59.i
  %132 = phi i32 [ %.pr143.i, %s6e63m0_dcs_write.exit60thread-pre-split.i ], [ %call.i58.i, %if.end.i59.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.i62.i = icmp slt i32 %132, 0
  br i1 %cmp.i62.i, label %s6e63m0_dcs_write.exit67thread-pre-split.i, label %if.end.i66.i

if.end.i66.i:                                     ; preds = %s6e63m0_dcs_write.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i63.i = getelementptr i8, ptr %panel, i32 -4
  %133 = ptrtoint ptr %dcs_write.i63.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dcs_write.i63.i, align 4
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i64.i = getelementptr i8, ptr %panel, i32 -12
  %137 = ptrtoint ptr %transport_data.i64.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %transport_data.i64.i, align 4
  %call.i65.i = call i32 %134(ptr noundef %136, ptr noundef %138, ptr noundef nonnull @s6e63m0_init.d.37, i32 noundef 2) #5
  %139 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call.i65.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit67.i

s6e63m0_dcs_write.exit67thread-pre-split.i:       ; preds = %s6e63m0_dcs_write.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  %140 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pr145.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit67.i

s6e63m0_dcs_write.exit67.i:                       ; preds = %s6e63m0_dcs_write.exit67thread-pre-split.i, %if.end.i66.i
  %141 = phi i32 [ %.pr145.i, %s6e63m0_dcs_write.exit67thread-pre-split.i ], [ %call.i65.i, %if.end.i66.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp.i69.i = icmp slt i32 %141, 0
  br i1 %cmp.i69.i, label %s6e63m0_dcs_write.exit67.i.s6e63m0_dcs_write.exit74thread-pre-split.i_crit_edge, label %if.end.i73.i

s6e63m0_dcs_write.exit67.i.s6e63m0_dcs_write.exit74thread-pre-split.i_crit_edge: ; preds = %s6e63m0_dcs_write.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit74thread-pre-split.i

if.end.i73.i:                                     ; preds = %s6e63m0_dcs_write.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i70.i = getelementptr i8, ptr %panel, i32 -4
  %142 = ptrtoint ptr %dcs_write.i70.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dcs_write.i70.i, align 4
  %144 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i71.i = getelementptr i8, ptr %panel, i32 -12
  %146 = ptrtoint ptr %transport_data.i71.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %transport_data.i71.i, align 4
  %call.i72.i = call i32 %143(ptr noundef %145, ptr noundef %147, ptr noundef nonnull @s6e63m0_init.d.38, i32 noundef 33) #5
  %148 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call.i72.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit74.i

s6e63m0_dcs_write.exit74thread-pre-split.i:       ; preds = %s6e63m0_dcs_write.exit67.i.s6e63m0_dcs_write.exit74thread-pre-split.i_crit_edge, %s6e63m0_dcs_write.exit39.i.s6e63m0_dcs_write.exit74thread-pre-split.i_crit_edge
  %149 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pr147.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit74.i

s6e63m0_dcs_write.exit74.i:                       ; preds = %s6e63m0_dcs_write.exit74thread-pre-split.i, %if.end.i73.i
  %150 = phi i32 [ %.pr147.i, %s6e63m0_dcs_write.exit74thread-pre-split.i ], [ %call.i72.i, %if.end.i73.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp.i76.i = icmp slt i32 %150, 0
  br i1 %cmp.i76.i, label %s6e63m0_dcs_write.exit81thread-pre-split.i, label %if.end.i80.i

if.end.i80.i:                                     ; preds = %s6e63m0_dcs_write.exit74.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i77.i = getelementptr i8, ptr %panel, i32 -4
  %151 = ptrtoint ptr %dcs_write.i77.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dcs_write.i77.i, align 4
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i78.i = getelementptr i8, ptr %panel, i32 -12
  %155 = ptrtoint ptr %transport_data.i78.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %transport_data.i78.i, align 4
  %call.i79.i = call i32 %152(ptr noundef %154, ptr noundef %156, ptr noundef nonnull @s6e63m0_init.d.39, i32 noundef 17) #5
  %157 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call.i79.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit81.i

s6e63m0_dcs_write.exit81thread-pre-split.i:       ; preds = %s6e63m0_dcs_write.exit74.i
  call void @__sanitizer_cov_trace_pc() #7
  %158 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr148.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit81.i

s6e63m0_dcs_write.exit81.i:                       ; preds = %s6e63m0_dcs_write.exit81thread-pre-split.i, %if.end.i80.i
  %159 = phi i32 [ %.pr148.i, %s6e63m0_dcs_write.exit81thread-pre-split.i ], [ %call.i79.i, %if.end.i80.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i83.i = icmp slt i32 %159, 0
  br i1 %cmp.i83.i, label %s6e63m0_dcs_write.exit88thread-pre-split.i, label %if.end.i87.i

if.end.i87.i:                                     ; preds = %s6e63m0_dcs_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i84.i = getelementptr i8, ptr %panel, i32 -4
  %160 = ptrtoint ptr %dcs_write.i84.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dcs_write.i84.i, align 4
  %162 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i85.i = getelementptr i8, ptr %panel, i32 -12
  %164 = ptrtoint ptr %transport_data.i85.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %transport_data.i85.i, align 4
  %call.i86.i = call i32 %161(ptr noundef %163, ptr noundef %165, ptr noundef nonnull @s6e63m0_init.d.40, i32 noundef 33) #5
  %166 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call.i86.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit88.i

s6e63m0_dcs_write.exit88thread-pre-split.i:       ; preds = %s6e63m0_dcs_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pr149.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit88.i

s6e63m0_dcs_write.exit88.i:                       ; preds = %s6e63m0_dcs_write.exit88thread-pre-split.i, %if.end.i87.i
  %168 = phi i32 [ %.pr149.i, %s6e63m0_dcs_write.exit88thread-pre-split.i ], [ %call.i86.i, %if.end.i87.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp.i90.i = icmp slt i32 %168, 0
  br i1 %cmp.i90.i, label %s6e63m0_dcs_write.exit95thread-pre-split.i, label %if.end.i94.i

if.end.i94.i:                                     ; preds = %s6e63m0_dcs_write.exit88.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i91.i = getelementptr i8, ptr %panel, i32 -4
  %169 = ptrtoint ptr %dcs_write.i91.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dcs_write.i91.i, align 4
  %171 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i92.i = getelementptr i8, ptr %panel, i32 -12
  %173 = ptrtoint ptr %transport_data.i92.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %transport_data.i92.i, align 4
  %call.i93.i = call i32 %170(ptr noundef %172, ptr noundef %174, ptr noundef nonnull @s6e63m0_init.d.41, i32 noundef 17) #5
  %175 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %call.i93.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit95.i

s6e63m0_dcs_write.exit95thread-pre-split.i:       ; preds = %s6e63m0_dcs_write.exit88.i
  call void @__sanitizer_cov_trace_pc() #7
  %176 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pr150.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit95.i

s6e63m0_dcs_write.exit95.i:                       ; preds = %s6e63m0_dcs_write.exit95thread-pre-split.i, %if.end.i94.i
  %177 = phi i32 [ %.pr150.i, %s6e63m0_dcs_write.exit95thread-pre-split.i ], [ %call.i93.i, %if.end.i94.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp.i97.i = icmp slt i32 %177, 0
  br i1 %cmp.i97.i, label %s6e63m0_dcs_write.exit102thread-pre-split.i, label %if.end.i101.i

if.end.i101.i:                                    ; preds = %s6e63m0_dcs_write.exit95.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i98.i = getelementptr i8, ptr %panel, i32 -4
  %178 = ptrtoint ptr %dcs_write.i98.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dcs_write.i98.i, align 4
  %180 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i99.i = getelementptr i8, ptr %panel, i32 -12
  %182 = ptrtoint ptr %transport_data.i99.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %transport_data.i99.i, align 4
  %call.i100.i = call i32 %179(ptr noundef %181, ptr noundef %183, ptr noundef nonnull @s6e63m0_init.d.42, i32 noundef 33) #5
  %184 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %call.i100.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit102.i

s6e63m0_dcs_write.exit102thread-pre-split.i:      ; preds = %s6e63m0_dcs_write.exit95.i
  call void @__sanitizer_cov_trace_pc() #7
  %185 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pr151.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit102.i

s6e63m0_dcs_write.exit102.i:                      ; preds = %s6e63m0_dcs_write.exit102thread-pre-split.i, %if.end.i101.i
  %186 = phi i32 [ %.pr151.i, %s6e63m0_dcs_write.exit102thread-pre-split.i ], [ %call.i100.i, %if.end.i101.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i104.i = icmp slt i32 %186, 0
  br i1 %cmp.i104.i, label %s6e63m0_dcs_write.exit109thread-pre-split.i, label %if.end.i108.i

if.end.i108.i:                                    ; preds = %s6e63m0_dcs_write.exit102.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i105.i = getelementptr i8, ptr %panel, i32 -4
  %187 = ptrtoint ptr %dcs_write.i105.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dcs_write.i105.i, align 4
  %189 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i106.i = getelementptr i8, ptr %panel, i32 -12
  %191 = ptrtoint ptr %transport_data.i106.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %transport_data.i106.i, align 4
  %call.i107.i = call i32 %188(ptr noundef %190, ptr noundef %192, ptr noundef nonnull @s6e63m0_init.d.43, i32 noundef 17) #5
  %193 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %call.i107.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit109.i

s6e63m0_dcs_write.exit109thread-pre-split.i:      ; preds = %s6e63m0_dcs_write.exit102.i
  call void @__sanitizer_cov_trace_pc() #7
  %194 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %.pr152.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit109.i

s6e63m0_dcs_write.exit109.i:                      ; preds = %s6e63m0_dcs_write.exit109thread-pre-split.i, %if.end.i108.i
  %195 = phi i32 [ %.pr152.i, %s6e63m0_dcs_write.exit109thread-pre-split.i ], [ %call.i107.i, %if.end.i108.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp.i111.i = icmp slt i32 %195, 0
  br i1 %cmp.i111.i, label %s6e63m0_dcs_write.exit116thread-pre-split.i, label %if.end.i115.i

if.end.i115.i:                                    ; preds = %s6e63m0_dcs_write.exit109.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i112.i = getelementptr i8, ptr %panel, i32 -4
  %196 = ptrtoint ptr %dcs_write.i112.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dcs_write.i112.i, align 4
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i113.i = getelementptr i8, ptr %panel, i32 -12
  %200 = ptrtoint ptr %transport_data.i113.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %transport_data.i113.i, align 4
  %call.i114.i = call i32 %197(ptr noundef %199, ptr noundef %201, ptr noundef nonnull @s6e63m0_init.d.44, i32 noundef 28) #5
  %202 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %call.i114.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit116.i

s6e63m0_dcs_write.exit116thread-pre-split.i:      ; preds = %s6e63m0_dcs_write.exit109.i
  call void @__sanitizer_cov_trace_pc() #7
  %203 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %.pr153.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit116.i

s6e63m0_dcs_write.exit116.i:                      ; preds = %s6e63m0_dcs_write.exit116thread-pre-split.i, %if.end.i115.i
  %204 = phi i32 [ %.pr153.i, %s6e63m0_dcs_write.exit116thread-pre-split.i ], [ %call.i114.i, %if.end.i115.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i118.i = icmp slt i32 %204, 0
  br i1 %cmp.i118.i, label %s6e63m0_dcs_write.exit123thread-pre-split.i, label %if.end.i122.i

if.end.i122.i:                                    ; preds = %s6e63m0_dcs_write.exit116.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i119.i = getelementptr i8, ptr %panel, i32 -4
  %205 = ptrtoint ptr %dcs_write.i119.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dcs_write.i119.i, align 4
  %207 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i120.i = getelementptr i8, ptr %panel, i32 -12
  %209 = ptrtoint ptr %transport_data.i120.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %transport_data.i120.i, align 4
  %call.i121.i = call i32 %206(ptr noundef %208, ptr noundef %210, ptr noundef nonnull @s6e63m0_init.d.45, i32 noundef 5) #5
  %211 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %call.i121.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit123.i

s6e63m0_dcs_write.exit123thread-pre-split.i:      ; preds = %s6e63m0_dcs_write.exit116.i
  call void @__sanitizer_cov_trace_pc() #7
  %212 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pr154.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit123.i

s6e63m0_dcs_write.exit123.i:                      ; preds = %s6e63m0_dcs_write.exit123thread-pre-split.i, %if.end.i122.i
  %213 = phi i32 [ %.pr154.i, %s6e63m0_dcs_write.exit123thread-pre-split.i ], [ %call.i121.i, %if.end.i122.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp.i125.i = icmp slt i32 %213, 0
  br i1 %cmp.i125.i, label %s6e63m0_dcs_write.exit130thread-pre-split.i, label %if.end.i129.i

if.end.i129.i:                                    ; preds = %s6e63m0_dcs_write.exit123.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i126.i = getelementptr i8, ptr %panel, i32 -4
  %214 = ptrtoint ptr %dcs_write.i126.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dcs_write.i126.i, align 4
  %216 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i127.i = getelementptr i8, ptr %panel, i32 -12
  %218 = ptrtoint ptr %transport_data.i127.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %transport_data.i127.i, align 4
  %call.i128.i = call i32 %215(ptr noundef %217, ptr noundef %219, ptr noundef nonnull @s6e63m0_init.d.46, i32 noundef 2) #5
  %220 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %call.i128.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit130.i

s6e63m0_dcs_write.exit130thread-pre-split.i:      ; preds = %s6e63m0_dcs_write.exit123.i
  call void @__sanitizer_cov_trace_pc() #7
  %221 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %.pr155.i = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit130.i

s6e63m0_dcs_write.exit130.i:                      ; preds = %s6e63m0_dcs_write.exit130thread-pre-split.i, %if.end.i129.i
  %222 = phi i32 [ %.pr155.i, %s6e63m0_dcs_write.exit130thread-pre-split.i ], [ %call.i128.i, %if.end.i129.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp.i132.i = icmp slt i32 %222, 0
  br i1 %cmp.i132.i, label %s6e63m0_init.exitthread-pre-split, label %if.end.i136.i

if.end.i136.i:                                    ; preds = %s6e63m0_dcs_write.exit130.i
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i133.i = getelementptr i8, ptr %panel, i32 -4
  %223 = ptrtoint ptr %dcs_write.i133.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dcs_write.i133.i, align 4
  %225 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i134.i = getelementptr i8, ptr %panel, i32 -12
  %227 = ptrtoint ptr %transport_data.i134.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %transport_data.i134.i, align 4
  %call.i135.i = call i32 %224(ptr noundef %226, ptr noundef %228, ptr noundef nonnull @s6e63m0_init.d.47, i32 noundef 2) #5
  br label %s6e63m0_init.exit

s6e63m0_init.exitthread-pre-split:                ; preds = %s6e63m0_dcs_write.exit130.i
  call void @__sanitizer_cov_trace_pc() #7
  %229 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %.pr = load i32, ptr %error.i, align 4
  br label %s6e63m0_init.exit

s6e63m0_init.exit:                                ; preds = %s6e63m0_init.exitthread-pre-split, %if.end.i136.i
  %230 = phi i32 [ %.pr, %s6e63m0_init.exitthread-pre-split ], [ %call.i135.i, %if.end.i136.i ]
  %231 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp9 = icmp slt i32 %230, 0
  br i1 %cmp9, label %if.then10, label %s6e63m0_init.exit.if.end12_crit_edge

s6e63m0_init.exit.if.end12_crit_edge:             ; preds = %s6e63m0_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %s6e63m0_init.exit
  %232 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %prepared, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.i43 = icmp eq i8 %233, 0
  br i1 %tobool.not.i43, label %if.then10.if.end12_crit_edge, label %if.end.i47

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i47:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %234 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value(ptr noundef %235, i32 noundef 1) #5
  call void @msleep(i32 noundef 120) #5
  %call.i.i45 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end.i47, %if.then10.if.end12_crit_edge, %s6e63m0_init.exit.if.end12_crit_edge
  %236 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %s6e63m0_check_lcd_type.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %230, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ %77, %s6e63m0_check_lcd_type.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63m0_enable(ptr nocapture noundef %panel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -16
  %enabled = getelementptr i8, ptr %panel, i32 61
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %error.i = getelementptr i8, ptr %panel, i32 64
  %2 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end.s6e63m0_dcs_write.exit_crit_edge, label %if.end.i

if.end.s6e63m0_dcs_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i = getelementptr i8, ptr %panel, i32 -4
  %4 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcs_write.i, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i = getelementptr i8, ptr %panel, i32 -12
  %8 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transport_data.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7, ptr noundef %9, ptr noundef nonnull @s6e63m0_enable.d, i32 noundef 1) #5
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit

s6e63m0_dcs_write.exit:                           ; preds = %if.end.i, %if.end.s6e63m0_dcs_write.exit_crit_edge
  tail call void @msleep(i32 noundef 120) #5
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i9 = icmp slt i32 %12, 0
  br i1 %cmp.i9, label %s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit14_crit_edge, label %if.end.i13

s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit14_crit_edge: ; preds = %s6e63m0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit14

if.end.i13:                                       ; preds = %s6e63m0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i10 = getelementptr i8, ptr %panel, i32 -4
  %13 = ptrtoint ptr %dcs_write.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcs_write.i10, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i11 = getelementptr i8, ptr %panel, i32 -12
  %17 = ptrtoint ptr %transport_data.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transport_data.i11, align 4
  %call.i12 = tail call i32 %14(ptr noundef %16, ptr noundef %18, ptr noundef nonnull @s6e63m0_enable.d.48, i32 noundef 1) #5
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i12, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit14

s6e63m0_dcs_write.exit14:                         ; preds = %if.end.i13, %s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit14_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i16 = icmp slt i32 %21, 0
  br i1 %cmp.i16, label %s6e63m0_dcs_write.exit14.s6e63m0_dcs_write.exit21_crit_edge, label %if.end.i20

s6e63m0_dcs_write.exit14.s6e63m0_dcs_write.exit21_crit_edge: ; preds = %s6e63m0_dcs_write.exit14
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit21

if.end.i20:                                       ; preds = %s6e63m0_dcs_write.exit14
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i17 = getelementptr i8, ptr %panel, i32 -4
  %22 = ptrtoint ptr %dcs_write.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dcs_write.i17, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i18 = getelementptr i8, ptr %panel, i32 -12
  %26 = ptrtoint ptr %transport_data.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transport_data.i18, align 4
  %call.i19 = tail call i32 %23(ptr noundef %25, ptr noundef %27, ptr noundef nonnull @s6e63m0_enable.d.49, i32 noundef 17) #5
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i19, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit21

s6e63m0_dcs_write.exit21:                         ; preds = %if.end.i20, %s6e63m0_dcs_write.exit14.s6e63m0_dcs_write.exit21_crit_edge
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %29 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bl_dev, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %s6e63m0_dcs_write.exit21.backlight_enable.exit_crit_edge, label %if.end.i22

s6e63m0_dcs_write.exit21.backlight_enable.exit_crit_edge: ; preds = %s6e63m0_dcs_write.exit21
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_enable.exit

if.end.i22:                                       ; preds = %s6e63m0_dcs_write.exit21
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %30, i32 0, i32 3
  %32 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i, align 4
  %and.i = and i32 %34, -3
  store i32 %and.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %30, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i22.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i22.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i22
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %38(ptr noundef nonnull %30) #5
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i22.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  br label %backlight_enable.exit

backlight_enable.exit:                            ; preds = %backlight_update_status.exit.i, %s6e63m0_dcs_write.exit21.backlight_enable.exit_crit_edge
  %39 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %backlight_enable.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63m0_disable(ptr nocapture noundef %panel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -16
  %enabled = getelementptr i8, ptr %panel, i32 61
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.backlight_disable.exit_crit_edge, label %if.end.i

if.end.backlight_disable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_disable.exit

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %or.i = or i32 %7, 2
  store i32 %or.i, ptr %state.i, align 4
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
  br label %backlight_disable.exit

backlight_disable.exit:                           ; preds = %backlight_update_status.exit.i, %if.end.backlight_disable.exit_crit_edge
  %error.i = getelementptr i8, ptr %panel, i32 64
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp slt i32 %13, 0
  br i1 %cmp.i, label %backlight_disable.exit.s6e63m0_dcs_write.exit_crit_edge, label %if.end.i7

backlight_disable.exit.s6e63m0_dcs_write.exit_crit_edge: ; preds = %backlight_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit

if.end.i7:                                        ; preds = %backlight_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i = getelementptr i8, ptr %panel, i32 -4
  %14 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcs_write.i, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i = getelementptr i8, ptr %panel, i32 -12
  %18 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport_data.i, align 4
  %call.i = tail call i32 %15(ptr noundef %17, ptr noundef %19, ptr noundef nonnull @s6e63m0_disable.d, i32 noundef 1) #5
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit

s6e63m0_dcs_write.exit:                           ; preds = %if.end.i7, %backlight_disable.exit.s6e63m0_dcs_write.exit_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i9 = icmp slt i32 %22, 0
  br i1 %cmp.i9, label %s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit14_crit_edge, label %if.end.i13

s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit14_crit_edge: ; preds = %s6e63m0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit14

if.end.i13:                                       ; preds = %s6e63m0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dcs_write.i10 = getelementptr i8, ptr %panel, i32 -4
  %23 = ptrtoint ptr %dcs_write.i10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dcs_write.i10, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %transport_data.i11 = getelementptr i8, ptr %panel, i32 -12
  %27 = ptrtoint ptr %transport_data.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transport_data.i11, align 4
  %call.i12 = tail call i32 %24(ptr noundef %26, ptr noundef %28, ptr noundef nonnull @s6e63m0_disable.d.50, i32 noundef 1) #5
  %29 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i12, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit14

s6e63m0_dcs_write.exit14:                         ; preds = %if.end.i13, %s6e63m0_dcs_write.exit.s6e63m0_dcs_write.exit14_crit_edge
  tail call void @msleep(i32 noundef 120) #5
  %30 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %s6e63m0_dcs_write.exit14, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63m0_unprepare(ptr noundef %panel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr i8, ptr %panel, i32 60
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %error.i = getelementptr i8, ptr %panel, i32 64
  %2 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error.i, align 4
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 56
  %3 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 120) #5
  %supplies.i = getelementptr i8, ptr %panel, i32 32
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63m0_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #0 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.51, i32 noundef 480, i32 noundef 800, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 26
  %4 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %width_mm, align 2
  %conv4 = zext i16 %5 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %6 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv4, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 27
  %7 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %height_mm, align 4
  %conv6 = zext i16 %8 to i32
  %height_mm8 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %height_mm8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv6, ptr %height_mm8, align 4
  %call10 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @s6e63m0_get_modes.bus_format, i32 noundef 1) #5
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %10 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9, ptr %bus_flags, align 8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e63m0_set_brightness(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  %elvss_cmd_set = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bd, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %elvss_cmd_set) #5
  %4 = getelementptr inbounds [5 x i8], ptr %elvss_cmd_set, i32 0, i32 1
  %arrayidx = getelementptr [28 x i8], ptr @s6e63m0_elvss_per_gamma, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %elvss_pulse = getelementptr inbounds %struct.s6e63m0, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %elvss_pulse to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %elvss_pulse, align 1
  %arrayidx3 = getelementptr [5 x i8], ptr @s6e63m0_elvss_offsets, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3, align 1
  %add = add i8 %10, %8
  %11 = tail call i8 @llvm.umin.i8(i8 %add, i8 31)
  %12 = ptrtoint ptr %elvss_cmd_set to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -78, ptr %elvss_cmd_set, align 1
  %error.i = getelementptr inbounds %struct.s6e63m0, ptr %1, i32 0, i32 13
  %13 = zext i8 %11 to i32
  %14 = call ptr @memset(ptr %4, i32 %13, i32 4)
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp slt i32 %16, 0
  br i1 %cmp.i, label %entry.s6e63m0_dcs_write.exit53_crit_edge, label %s6e63m0_dcs_write.exit

entry.s6e63m0_dcs_write.exit53_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit53

s6e63m0_dcs_write.exit:                           ; preds = %entry
  %dcs_write.i = getelementptr inbounds %struct.s6e63m0, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dcs_write.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %transport_data.i = getelementptr inbounds %struct.s6e63m0, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transport_data.i, align 4
  %call.i = call i32 %18(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %elvss_cmd_set, i32 noundef 5) #5
  %23 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i34 = icmp slt i32 %call.i, 0
  br i1 %cmp.i34, label %s6e63m0_dcs_write.exit39thread-pre-split, label %if.end.i38

if.end.i38:                                       ; preds = %s6e63m0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13 = getelementptr [28 x i8], ptr @s6e63m0_acl_per_gamma, i32 0, i32 %3
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %25 to i32
  %arrayidx15 = getelementptr [7 x [28 x i8]], ptr @s6e63m0_acl, i32 0, i32 %conv14
  %26 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dcs_write.i, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transport_data.i, align 4
  %call.i37 = call i32 %27(ptr noundef %29, ptr noundef %31, ptr noundef %arrayidx15, i32 noundef 28) #5
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i37, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit39

s6e63m0_dcs_write.exit39thread-pre-split:         ; preds = %s6e63m0_dcs_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit39

s6e63m0_dcs_write.exit39:                         ; preds = %s6e63m0_dcs_write.exit39thread-pre-split, %if.end.i38
  %34 = phi i32 [ %.pr, %s6e63m0_dcs_write.exit39thread-pre-split ], [ %call.i37, %if.end.i38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i41 = icmp slt i32 %34, 0
  br i1 %cmp.i41, label %s6e63m0_dcs_write.exit46thread-pre-split, label %if.end.i45

if.end.i45:                                       ; preds = %s6e63m0_dcs_write.exit39
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17 = getelementptr [28 x [23 x i8]], ptr @s6e63m0_gamma_22, i32 0, i32 %3
  %35 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dcs_write.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transport_data.i, align 4
  %call.i44 = call i32 %36(ptr noundef %38, ptr noundef %40, ptr noundef %arrayidx17, i32 noundef 23) #5
  %41 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i44, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit46

s6e63m0_dcs_write.exit46thread-pre-split:         ; preds = %s6e63m0_dcs_write.exit39
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr61 = load i32, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit46

s6e63m0_dcs_write.exit46:                         ; preds = %s6e63m0_dcs_write.exit46thread-pre-split, %if.end.i45
  %43 = phi i32 [ %.pr61, %s6e63m0_dcs_write.exit46thread-pre-split ], [ %call.i44, %if.end.i45 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i48 = icmp slt i32 %43, 0
  br i1 %cmp.i48, label %s6e63m0_dcs_write.exit46.s6e63m0_dcs_write.exit53_crit_edge, label %if.end.i52

s6e63m0_dcs_write.exit46.s6e63m0_dcs_write.exit53_crit_edge: ; preds = %s6e63m0_dcs_write.exit46
  call void @__sanitizer_cov_trace_pc() #7
  br label %s6e63m0_dcs_write.exit53

if.end.i52:                                       ; preds = %s6e63m0_dcs_write.exit46
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dcs_write.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dcs_write.i, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %transport_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %transport_data.i, align 4
  %call.i51 = call i32 %45(ptr noundef %47, ptr noundef %49, ptr noundef nonnull @s6e63m0_set_brightness.d, i32 noundef 2) #5
  %50 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i51, ptr %error.i, align 4
  br label %s6e63m0_dcs_write.exit53

s6e63m0_dcs_write.exit53:                         ; preds = %if.end.i52, %s6e63m0_dcs_write.exit46.s6e63m0_dcs_write.exit53_crit_edge, %entry.s6e63m0_dcs_write.exit53_crit_edge
  %51 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %elvss_cmd_set) #5
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !133, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 715, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 719, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @s6e63m0_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @s6e63m0_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 723, i32 28}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 724, i32 28}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 728, i32 3}
!16 = !{ptr @s6e63m0_probe._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @s6e63m0_probe._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 732, i32 40}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 734, i32 3}
!22 = !{ptr @s6e63m0_probe._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @s6e63m0_probe._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_s6e63m0_probe, !25, !"__ksymtab_s6e63m0_probe", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 750, i32 1}
!26 = !{ptr @__ksymtab_s6e63m0_remove, !27, !"__ksymtab_s6e63m0_remove", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 758, i32 1}
!28 = !{ptr @__UNIQUE_ID_author302, !29, !"__UNIQUE_ID_author302", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 760, i32 1}
!30 = !{ptr @__UNIQUE_ID_description303, !31, !"__UNIQUE_ID_description303", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 761, i32 1}
!32 = !{ptr @__UNIQUE_ID_file304, !33, !"__UNIQUE_ID_file304", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 762, i32 1}
!34 = !{ptr @__UNIQUE_ID_license305, !33, !"__UNIQUE_ID_license305", i1 false, i1 false}
!35 = !{ptr @s6e63m0_drm_funcs, !36, !"s6e63m0_drm_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 625, i32 37}
!37 = !{ptr @s6e63m0_prepare.d, !38, !"d", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 552, i32 2}
!39 = !{ptr @s6e63m0_prepare.d.15, !40, !"d", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 554, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 347, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @s6e63m0_check_lcd_type._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @s6e63m0_check_lcd_type._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 352, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @s6e63m0_check_lcd_type._entry.18, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @s6e63m0_check_lcd_type._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 361, i32 3}
!53 = !{ptr @s6e63m0_check_lcd_type._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @s6e63m0_check_lcd_type._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 366, i32 3}
!57 = !{ptr @s6e63m0_check_lcd_type._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @s6e63m0_check_lcd_type._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 370, i32 3}
!61 = !{ptr @s6e63m0_check_lcd_type._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @s6e63m0_check_lcd_type._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @s6e63m0_init.d, !64, !"d", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 391, i32 3}
!65 = !{ptr @s6e63m0_init.d.31, !66, !"d", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 395, i32 3}
!67 = !{ptr @s6e63m0_init.d.32, !68, !"d", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 399, i32 2}
!69 = !{ptr @s6e63m0_init.d.33, !70, !"d", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 401, i32 2}
!71 = !{ptr @s6e63m0_init.d.34, !72, !"d", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 404, i32 2}
!73 = !{ptr @s6e63m0_init.d.35, !74, !"d", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 409, i32 2}
!75 = !{ptr @s6e63m0_init.d.36, !76, !"d", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 412, i32 2}
!77 = !{ptr @s6e63m0_init.d.37, !78, !"d", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 414, i32 2}
!79 = !{ptr @s6e63m0_init.d.38, !80, !"d", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 416, i32 2}
!81 = !{ptr @s6e63m0_init.d.39, !82, !"d", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 423, i32 2}
!83 = !{ptr @s6e63m0_init.d.40, !84, !"d", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 428, i32 2}
!85 = !{ptr @s6e63m0_init.d.41, !86, !"d", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 435, i32 2}
!87 = !{ptr @s6e63m0_init.d.42, !88, !"d", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 440, i32 2}
!89 = !{ptr @s6e63m0_init.d.43, !90, !"d", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 447, i32 2}
!91 = !{ptr @s6e63m0_init.d.44, !92, !"d", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 452, i32 2}
!93 = !{ptr @s6e63m0_init.d.45, !94, !"d", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 458, i32 2}
!95 = !{ptr @s6e63m0_init.d.46, !96, !"d", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 461, i32 2}
!97 = !{ptr @s6e63m0_init.d.47, !98, !"d", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 464, i32 2}
!99 = !{ptr @s6e63m0_enable.d, !100, !"d", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 579, i32 2}
!101 = !{ptr @s6e63m0_enable.d.48, !102, !"d", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 581, i32 2}
!103 = !{ptr @s6e63m0_enable.d.49, !104, !"d", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 584, i32 2}
!105 = !{ptr @s6e63m0_disable.d, !106, !"d", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 510, i32 2}
!107 = !{ptr @s6e63m0_disable.d.50, !108, !"d", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 512, i32 2}
!109 = !{ptr @s6e63m0_get_modes.bus_format, !110, !"bus_format", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 600, i32 19}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 604, i32 3}
!113 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @s6e63m0_get_modes._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @s6e63m0_get_modes._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @default_mode, !117, !"default_mode", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 286, i32 38}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 681, i32 52}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 686, i32 3}
!122 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @s6e63m0_backlight_register._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @s6e63m0_backlight_register._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @s6e63m0_backlight_ops, !126, !"s6e63m0_backlight_ops", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 667, i32 35}
!127 = !{ptr @s6e63m0_set_brightness.d, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 661, i32 2}
!129 = !{ptr @s6e63m0_elvss_per_gamma, !130, !"s6e63m0_elvss_per_gamma", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 248, i32 17}
!131 = !{ptr @s6e63m0_elvss_offsets, !132, !"s6e63m0_elvss_offsets", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 239, i32 17}
!133 = !{ptr @s6e63m0_acl_per_gamma, !134, !"s6e63m0_acl_per_gamma", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 227, i32 17}
!135 = !{ptr @s6e63m0_acl, !136, !"s6e63m0_acl", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 181, i32 17}
!137 = !{ptr @s6e63m0_gamma_22, !138, !"s6e63m0_gamma_22", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e63m0.c", i32 35, i32 17}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"auto-init"}
!149 = !{i8 0, i8 2}
