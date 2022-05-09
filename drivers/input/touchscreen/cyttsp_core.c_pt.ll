; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/cyttsp_core.c_pt.bc'
source_filename = "../drivers/input/touchscreen/cyttsp_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cyttsp_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_cyttsp_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_cyttsp_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyttsp_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22cyttsp_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_cyttsp_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cyttsp_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_cyttsp_probe\09\09\09\09"
module asm "\09.long\09__crc_cyttsp_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyttsp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22cyttsp_probe\22\09\09\09\09\09"
module asm "__kstrtabns_cyttsp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.cyttsp = type { ptr, i32, ptr, ptr, %struct.cyttsp_bootloader_data, %struct.cyttsp_sysinfo_data, %struct.cyttsp_xydata, %struct.completion, i32, i8, [2 x %struct.regulator_bulk_data], ptr, i8, i8, i8, i8, i8, ptr, [56 x i8], [0 x i8] }
%struct.cyttsp_bootloader_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cyttsp_sysinfo_data = type { i8, i8, i8, [3 x i8], i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i8, i8, i8 }
%struct.cyttsp_xydata = type { i8, i8, i8, %struct.cyttsp_tch, i8, %struct.cyttsp_tch, i8, i8, %struct.cyttsp_tch, i8, %struct.cyttsp_tch, [3 x i8], i8, i8 }
%struct.cyttsp_tch = type <{ i16, i16, i8 }>
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.cyttsp_bus_ops = type { i16, ptr, ptr }

@cyttsp_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cyttsp_suspend, ptr @cyttsp_resume, ptr @cyttsp_suspend, ptr @cyttsp_resume, ptr @cyttsp_suspend, ptr @cyttsp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_cyttsp_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyttsp_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_cyttsp_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyttsp_pm_ops to i32), ptr @__kstrtab_cyttsp_pm_ops, ptr @__kstrtabns_cyttsp_pm_ops }, section "___ksymtab_gpl+cyttsp_pm_ops", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcpin\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cyttsp_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/cyttsp_core.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry_ptr = internal global ptr @cyttsp_probe._entry, section ".printk_index", align 4
@cyttsp_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 663, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot enable regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry_ptr.9 = internal global ptr @cyttsp_probe._entry.7, section ".printk_index", align 4
@cyttsp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 669, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to install chip disable handler\0A\00", [56 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry_ptr.12 = internal global ptr @cyttsp_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 676, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to request reset gpio, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry_ptr.16 = internal global ptr @cyttsp_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cypress TTSP TouchScreen\00", [39 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 704, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to init MT slots.\0A\00", [38 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry_ptr.20 = internal global ptr @cyttsp_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cyttsp\00", [25 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to request IRQ %d, err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry_ptr.24 = internal global ptr @cyttsp_probe._entry.22, section ".printk_index", align 4
@cyttsp_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 726, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cyttsp_probe._entry_ptr.27 = internal global ptr @cyttsp_probe._entry.25, section ".printk_index", align 4
@__kstrtab_cyttsp_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyttsp_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_cyttsp_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyttsp_probe to i32), ptr @__kstrtab_cyttsp_probe, ptr @__kstrtabns_cyttsp_probe }, section "___ksymtab_gpl+cyttsp_probe", align 4
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"cyttsp_core.file=drivers/input/touchscreen/cyttsp_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"cyttsp_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [78 x i8] c"cyttsp_core.description=Cypress TrueTouch(R) Standard touchscreen driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [27 x i8] c"cyttsp_core.author=Cypress\00", section ".modinfo", align 1
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bootloader-key\00", [17 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bootloader-key property could not be retrieved\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cyttsp_parse_properties\00", [40 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry_ptr = internal global ptr @cyttsp_parse_properties._entry, section ".printk_index", align 4
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"use-handshake\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"active-distance\00", [16 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"active-distance (%u) must be [0-15]\0A\00", [59 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry_ptr.35 = internal global ptr @cyttsp_parse_properties._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"active-interval-ms\00", [45 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.4, i32 590, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"active-interval-ms (%u) must be [0-255]\0A\00", [55 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry_ptr.39 = internal global ptr @cyttsp_parse_properties._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lowpower-interval-ms\00", [43 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.30, ptr @.str.4, i32 599, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"lowpower-interval-ms (%u) must be [0-2550]\0A\00", [52 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry_ptr.43 = internal global ptr @cyttsp_parse_properties._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"touch-timeout-ms\00", [47 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.30, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"touch-timeout-ms (%u) must be [0-2550]\0A\00", [56 x i8] zeroinitializer }, align 32
@cyttsp_parse_properties._entry_ptr.47 = internal global ptr @cyttsp_parse_properties._entry.45, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cyttsp_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 399, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not return to operational mode, err: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cyttsp_irq\00", [21 x i8] zeroinitializer }, align 32
@cyttsp_irq._entry_ptr = internal global ptr @cyttsp_irq._entry, section ".printk_index", align 4
@bl_command = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\FF\A5\00\01\02\03\04\05\06\07", [21 x i8] zeroinitializer }, align 32
@cyttsp_report_tchdata.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cyttsp_core\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyttsp_report_tchdata\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Large area detected\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp_report_tchdata.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.54, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Num touch error detected\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp_report_tchdata.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.55, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid buffer detected\0A\00", [35 x i8] zeroinitializer }, align 32
@cyttsp_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to exit bootloader mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cyttsp_power_on\00", [16 x i8] zeroinitializer }, align 32
@cyttsp_power_on._entry_ptr = internal global ptr @cyttsp_power_on._entry, section ".printk_index", align 4
@cyttsp_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to send soft reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cyttsp_soft_reset\00", [46 x i8] zeroinitializer }, align 32
@cyttsp_soft_reset._entry_ptr = internal global ptr @cyttsp_soft_reset._entry, section ".printk_index", align 4
@cyttsp_soft_reset._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout waiting for soft reset\0A\00", [32 x i8] zeroinitializer }, align 32
@cyttsp_soft_reset._entry_ptr.62 = internal global ptr @cyttsp_soft_reset._entry.60, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"cyttsp_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 528, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 651, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 652, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 656, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 663, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 669, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 673, i32 48 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 676, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 686, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 704, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 710, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 712, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 725, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 567, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 570, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 575, i32 48 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 577, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 579, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 587, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 589, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 596, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 598, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 606, i32 37 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 608, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 87, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 397, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"bl_command\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 71, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 328, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 332, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 336, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 426, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 265, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [43 x i8] c"../drivers/input/touchscreen/cyttsp_core.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 271, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__ksymtab_cyttsp_pm_ops, ptr @__ksymtab_cyttsp_probe, ptr @cyttsp_irq._entry, ptr @cyttsp_irq._entry_ptr, ptr @cyttsp_parse_properties._entry, ptr @cyttsp_parse_properties._entry.33, ptr @cyttsp_parse_properties._entry.37, ptr @cyttsp_parse_properties._entry.41, ptr @cyttsp_parse_properties._entry.45, ptr @cyttsp_parse_properties._entry_ptr, ptr @cyttsp_parse_properties._entry_ptr.35, ptr @cyttsp_parse_properties._entry_ptr.39, ptr @cyttsp_parse_properties._entry_ptr.43, ptr @cyttsp_parse_properties._entry_ptr.47, ptr @cyttsp_power_on._entry, ptr @cyttsp_power_on._entry_ptr, ptr @cyttsp_probe._entry, ptr @cyttsp_probe._entry.10, ptr @cyttsp_probe._entry.14, ptr @cyttsp_probe._entry.18, ptr @cyttsp_probe._entry.22, ptr @cyttsp_probe._entry.25, ptr @cyttsp_probe._entry.7, ptr @cyttsp_probe._entry_ptr, ptr @cyttsp_probe._entry_ptr.12, ptr @cyttsp_probe._entry_ptr.16, ptr @cyttsp_probe._entry_ptr.20, ptr @cyttsp_probe._entry_ptr.24, ptr @cyttsp_probe._entry_ptr.27, ptr @cyttsp_probe._entry_ptr.9, ptr @cyttsp_soft_reset._entry, ptr @cyttsp_soft_reset._entry.60, ptr @cyttsp_soft_reset._entry_ptr, ptr @cyttsp_soft_reset._entry_ptr.62, ptr @cyttsp_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @init_completion.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @bl_command, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_parse_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_parse_properties._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_parse_properties._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_parse_properties._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_parse_properties._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_command to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_soft_reset._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 8
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 8
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #4
  br i1 %call3, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  %6 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %cmd.addr.i.i, align 1
  %bus_ops.i.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 3
  %xfer_buf.i.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 19
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %tries.05.i.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %bus_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_ops.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %call.i.i.i = call i32 %10(ptr noundef %12, ptr noundef %xfer_buf.i.i.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then5, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i.i = add nuw nsw i32 %tries.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %cyttsp_disable.exit, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

cyttsp_disable.exit:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %if.end6

if.then5:                                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  %irq.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %14) #4
  %suspended = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %suspended, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %cyttsp_disable.exit, %entry.if.end6_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then5 ], [ -5, %cyttsp_disable.exit ], [ 0, %entry.if.end6_crit_edge ]
  %16 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input, align 8
  %mutex8 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 37
  call void @mutex_unlock(ptr noundef %mutex8) #4
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 8
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 8
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #4
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %xy_data.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 6
  %bus_ops.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 3
  %xfer_buf.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then
  %tries.01.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 %9(ptr noundef %11, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %xy_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 20) #4
  %inc.i.i = add nuw nsw i32 %tries.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %for.body.i.i
  %12 = ptrtoint ptr %xy_data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xy_data.i, align 64
  %14 = and i8 %13, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.i = icmp eq i8 %14, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %16) #4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.end.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %suspended = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %suspended, align 4
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input, align 8
  %mutex5 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cyttsp_probe(ptr noundef %bus_ops, ptr noundef %dev, i32 noundef %irq, i32 noundef %xfer_buf_size) #0 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %dt_value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %xfer_buf_size, 256
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 128
  %input = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %input, align 8
  %bus_ops8 = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %bus_ops8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bus_ops, ptr %bus_ops8, align 4
  %irq9 = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq, ptr %irq9, align 4
  %regulators = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %regulators, align 32
  %arrayidx11 = getelementptr %struct.cyttsp, ptr %call.i, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %arrayidx11, align 4
  %call14 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call14) #7
  %6 = inttoptr i32 %call14 to ptr
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call21 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call21) #7
  %7 = inttoptr i32 %call21 to ptr
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call.i161 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cyttsp_disable_regulators, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  %8 = inttoptr i32 %call.i161 to ptr
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call37 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 3) #4
  %reset_gpio = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 11
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call37, ptr %reset_gpio, align 8
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %10) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dt_value.i) #4
  %13 = ptrtoint ptr %dt_value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %dt_value.i, align 4, !annotation !132
  %call.i.i162 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 8, i32 noundef 3520) #4
  %bl_keys.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 17
  %14 = ptrtoint ptr %bl_keys.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i162, ptr %bl_keys.i, align 4
  %tobool.not.i163 = icmp eq ptr %call.i.i162, null
  br i1 %tobool.not.i163, label %if.end47.if.then50_crit_edge, label %if.end.i

if.end47.if.then50_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then50

if.end.i:                                         ; preds = %if.end47
  %use_hndshk.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 12
  %15 = ptrtoint ptr %use_hndshk.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %use_hndshk.i, align 4
  %act_dist.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 13
  %16 = ptrtoint ptr %act_dist.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -8, ptr %act_dist.i, align 1
  %act_intrvl.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 14
  %17 = ptrtoint ptr %act_intrvl.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %act_intrvl.i, align 2
  %tch_tmout.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %tch_tmout.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %tch_tmout.i, align 1
  %lp_intrvl.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 16
  %19 = ptrtoint ptr %lp_intrvl.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %lp_intrvl.i, align 64
  %call4.i = tail call i32 @device_property_read_u8_array(ptr noundef %12, ptr noundef nonnull @.str.28, ptr noundef nonnull %call.i.i162, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.29) #7
  %phi.cast = inttoptr i32 %call4.i to ptr
  br label %if.then50

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call zeroext i1 @device_property_present(ptr noundef %12, ptr noundef nonnull @.str.31) #4
  %frombool.i = zext i1 %call8.i to i8
  %20 = ptrtoint ptr %use_hndshk.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %use_hndshk.i, align 4
  %call.i97.i = call i32 @device_property_read_u32_array(ptr noundef %12, ptr noundef nonnull @.str.32, ptr noundef nonnull %dt_value.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool11.not.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end7.i.if.end23.i_crit_edge

if.end7.i.if.end23.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then12.i:                                      ; preds = %if.end7.i
  %21 = ptrtoint ptr %dt_value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dt_value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %22)
  %cmp.i164 = icmp ugt i32 %22, 15
  br i1 %cmp.i164, label %do.end16.i, label %if.end17.i

do.end16.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef %22) #7
  br label %if.then50

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %act_dist.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %act_dist.i, align 1
  %25 = and i8 %24, -16
  %26 = trunc i32 %22 to i8
  %conv22.i = or i8 %25, %26
  store i8 %conv22.i, ptr %act_dist.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end17.i, %if.end7.i.if.end23.i_crit_edge
  %call.i98.i = call i32 @device_property_read_u32_array(ptr noundef %12, ptr noundef nonnull @.str.36, ptr noundef nonnull %dt_value.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool25.not.i = icmp eq i32 %call.i98.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end23.i.if.end36.i_crit_edge

if.end23.i.if.end36.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.then26.i:                                      ; preds = %if.end23.i
  %27 = ptrtoint ptr %dt_value.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dt_value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %28)
  %cmp27.i = icmp ugt i32 %28, 255
  br i1 %cmp27.i, label %do.end32.i, label %if.end33.i

do.end32.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38, i32 noundef %28) #7
  br label %if.then50

if.end33.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv34.i = trunc i32 %28 to i8
  %29 = ptrtoint ptr %act_intrvl.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv34.i, ptr %act_intrvl.i, align 2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end33.i, %if.end23.i.if.end36.i_crit_edge
  %call.i99.i = call i32 @device_property_read_u32_array(ptr noundef %12, ptr noundef nonnull @.str.40, ptr noundef nonnull %dt_value.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool38.not.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end36.i.if.end49.i_crit_edge

if.end36.i.if.end49.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.i

if.then39.i:                                      ; preds = %if.end36.i
  %30 = ptrtoint ptr %dt_value.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dt_value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2550, i32 %31)
  %cmp40.i = icmp ugt i32 %31, 2550
  br i1 %cmp40.i, label %do.end45.i, label %if.end46.i

do.end45.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.42, i32 noundef %31) #7
  br label %if.then50

if.end46.i:                                       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #6
  %div.lhs.trunc.i = trunc i32 %31 to i16
  %div101.i = udiv i16 %div.lhs.trunc.i, 10
  %conv47.i = trunc i16 %div101.i to i8
  %32 = ptrtoint ptr %lp_intrvl.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv47.i, ptr %lp_intrvl.i, align 64
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end46.i, %if.end36.i.if.end49.i_crit_edge
  %call.i100.i = call i32 @device_property_read_u32_array(ptr noundef %12, ptr noundef nonnull @.str.44, ptr noundef nonnull %dt_value.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.i)
  %tobool51.not.i = icmp eq i32 %call.i100.i, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.end49.i.if.end52_crit_edge

if.end49.i.if.end52_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then52.i:                                      ; preds = %if.end49.i
  %33 = ptrtoint ptr %dt_value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dt_value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2550, i32 %34)
  %cmp53.i = icmp ugt i32 %34, 2550
  br i1 %cmp53.i, label %do.end58.i, label %if.end59.i

do.end58.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.46, i32 noundef %34) #7
  br label %if.then50

if.end59.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #6
  %div60.lhs.trunc.i = trunc i32 %34 to i16
  %div60102.i = udiv i16 %div60.lhs.trunc.i, 10
  %conv61.i = trunc i16 %div60102.i to i8
  %35 = ptrtoint ptr %tch_tmout.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv61.i, ptr %tch_tmout.i, align 1
  br label %if.end52

if.then50:                                        ; preds = %do.end58.i, %do.end45.i, %do.end32.i, %do.end16.i, %do.end.i, %if.end47.if.then50_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end47.if.then50_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end16.i ], [ inttoptr (i32 -22 to ptr), %do.end32.i ], [ inttoptr (i32 -22 to ptr), %do.end45.i ], [ inttoptr (i32 -22 to ptr), %do.end58.i ], [ %phi.cast, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dt_value.i) #4
  br label %cleanup

if.end52:                                         ; preds = %if.end59.i, %if.end49.i.if.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dt_value.i) #4
  %bl_ready = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %bl_ready to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %bl_ready, align 4
  %wait.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #4
  %37 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.17, ptr %call2, align 8
  %38 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bus_ops, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %40 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %id, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 128
  %parent = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 31
  %44 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @cyttsp_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 32
  %45 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @cyttsp_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 3, i32 noundef 53) #4
  call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 3, i32 noundef 54) #4
  call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #4
  call void @touchscreen_parse_properties(ptr noundef nonnull %call2, i1 noundef zeroext true, ptr noundef null) #4
  %call56 = call i32 @input_mt_init_slots(ptr noundef nonnull %call2, i32 noundef 16, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  %47 = inttoptr i32 %call56 to ptr
  br label %cleanup

if.end63:                                         ; preds = %if.end52
  %48 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq9, align 4
  %call65 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %49, ptr noundef null, ptr noundef nonnull @cyttsp_irq, i32 noundef 532480, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end74, label %do.end70

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 128
  %52 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.23, i32 noundef %53, i32 noundef %call65) #7
  %54 = inttoptr i32 %call65 to ptr
  br label %cleanup

if.end74:                                         ; preds = %if.end63
  %55 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reset_gpio, align 8
  %tobool.not.i165 = icmp eq ptr %56, null
  br i1 %tobool.not.i165, label %if.end74.cyttsp_hard_reset.exit_crit_edge, label %if.then.i166

if.end74.cyttsp_hard_reset.exit_crit_edge:        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %cyttsp_hard_reset.exit

if.then.i166:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %56, i32 noundef 1) #4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %57 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reset_gpio, align 8
  call void @gpiod_set_value_cansleep(ptr noundef %58, i32 noundef 0) #4
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #4
  br label %cyttsp_hard_reset.exit

cyttsp_hard_reset.exit:                           ; preds = %if.then.i166, %if.end74.cyttsp_hard_reset.exit_crit_edge
  %59 = ptrtoint ptr %bl_ready to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %bl_ready, align 4
  %state.i.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 8
  %60 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %state.i.i, align 8
  %61 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq9, align 4
  call void @enable_irq(i32 noundef %62) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #4
  %63 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %cmd.addr.i.i.i, align 1
  %xfer_buf.i.i.i.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 19
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %cyttsp_hard_reset.exit
  %tries.05.i.i.i.i = phi i32 [ 0, %cyttsp_hard_reset.exit ], [ %inc.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %64 = ptrtoint ptr %bus_ops8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus_ops8, align 4
  %write.i.i.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write.i.i.i.i, align 4
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 128
  %call.i.i.i.i = call i32 %67(ptr noundef %69, ptr noundef %xfer_buf.i.i.i.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i.i.i = add nuw nsw i32 %tries.05.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 16
  br i1 %exitcond.not.i.i.i.i, label %do.end.i.i, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i.i

do.end.i.i:                                       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #4
  br label %cyttsp_soft_reset.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #4
  %call4.i.i = call i32 @wait_for_completion_timeout(ptr noundef %bl_ready, i32 noundef 1000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.cyttsp_soft_reset.exit.i_crit_edge, label %if.end.i168

if.end.i.i.cyttsp_soft_reset.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cyttsp_soft_reset.exit.i

cyttsp_soft_reset.exit.i:                         ; preds = %if.end.i.i.cyttsp_soft_reset.exit.i_crit_edge, %do.end.i.i
  %.str.61.sink.i.i = phi ptr [ @.str.58, %do.end.i.i ], [ @.str.61, %if.end.i.i.cyttsp_soft_reset.exit.i_crit_edge ]
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull %.str.61.sink.i.i) #7
  %72 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %state.i.i, align 8
  %73 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq9, align 4
  call void @disable_irq(i32 noundef %74) #4
  br label %if.then77

if.end.i168:                                      ; preds = %if.end.i.i
  %75 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %state.i.i, align 8
  %76 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq9, align 4
  call void @disable_irq(i32 noundef %77) #4
  %bl_data.i.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 4
  %78 = call ptr @memset(ptr %bl_data.i.i, i32 0, i32 16)
  %bl_status.i.i = getelementptr inbounds %struct.cyttsp, ptr %call.i, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %bl_status.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 16, ptr %bl_status.i.i, align 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.end.i168
  %tries.01.i.i.i = phi i32 [ 0, %if.end.i168 ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %80 = ptrtoint ptr %bus_ops8 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus_ops8, align 4
  %read.i.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read.i.i.i, align 4
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 128
  %call.i.i.i = call i32 %83(ptr noundef %85, ptr noundef %xfer_buf.i.i.i.i, i16 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef %bl_data.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i.i = add nuw nsw i32 %tries.01.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.if.then77_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

if.end.i.i.i.if.then77_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

if.end4.i:                                        ; preds = %for.body.i.i.i
  %86 = ptrtoint ptr %bl_status.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bl_status.i.i, align 1
  %88 = and i8 %87, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %88)
  %.not.i = icmp eq i8 %88, 17
  br i1 %.not.i, label %if.then11.i, label %if.end4.i.if.end16.i_crit_edge

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end4.i
  %call12.i = call fastcc i32 @cyttsp_exit_bl_mode(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.if.end16.i_crit_edge, label %do.end.i169

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

do.end.i169:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.56) #7
  br label %if.then77

if.end16.i:                                       ; preds = %if.then11.i.if.end16.i_crit_edge, %if.end4.i.if.end16.i_crit_edge
  %91 = ptrtoint ptr %bl_data.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bl_data.i.i, align 16
  %93 = and i8 %92, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp.not.i = icmp eq i8 %93, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end16.i.if.then77_crit_edge

if.end16.i.if.then77_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %94 = ptrtoint ptr %bl_status.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bl_status.i.i, align 1
  %96 = and i8 %95, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool26.not.i = icmp eq i8 %96, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %lor.lhs.false.i.if.then77_crit_edge

lor.lhs.false.i.if.then77_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

if.end28.i:                                       ; preds = %lor.lhs.false.i
  %call29.i = call fastcc i32 @cyttsp_set_sysinfo_mode(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end28.i.if.then77_crit_edge

if.end28.i.if.then77_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

if.end32.i:                                       ; preds = %if.end28.i
  %call33.i = call fastcc i32 @cyttsp_set_sysinfo_regs(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i171, label %if.end32.i.if.then77_crit_edge

if.end32.i.if.then77_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

if.end36.i171:                                    ; preds = %if.end32.i
  %call37.i = call fastcc i32 @cyttsp_set_operational_mode(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i170 = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i170, label %if.end40.i, label %if.end36.i171.if.then77_crit_edge

if.end36.i171.if.then77_crit_edge:                ; preds = %if.end36.i171
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

if.end40.i:                                       ; preds = %if.end36.i171
  %call41.i = call fastcc i32 @cyttsp_act_dist_setup(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end79, label %if.end40.i.if.then77_crit_edge

if.end40.i.if.then77_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

if.then77:                                        ; preds = %if.end40.i.if.then77_crit_edge, %if.end36.i171.if.then77_crit_edge, %if.end32.i.if.then77_crit_edge, %if.end28.i.if.then77_crit_edge, %lor.lhs.false.i.if.then77_crit_edge, %if.end16.i.if.then77_crit_edge, %do.end.i169, %if.end.i.i.i.if.then77_crit_edge, %cyttsp_soft_reset.exit.i
  %retval.0.i172.ph = phi i32 [ %call41.i, %if.end40.i.if.then77_crit_edge ], [ %call37.i, %if.end36.i171.if.then77_crit_edge ], [ %call33.i, %if.end32.i.if.then77_crit_edge ], [ %call29.i, %if.end28.i.if.then77_crit_edge ], [ -19, %if.end16.i.if.then77_crit_edge ], [ -19, %lor.lhs.false.i.if.then77_crit_edge ], [ -5, %cyttsp_soft_reset.exit.i ], [ %call12.i, %do.end.i169 ], [ -5, %if.end.i.i.i.if.then77_crit_edge ]
  %97 = inttoptr i32 %retval.0.i172.ph to ptr
  br label %cleanup

if.end79:                                         ; preds = %if.end40.i
  %98 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %state.i.i, align 8
  %call80 = call i32 @input_register_device(ptr noundef nonnull %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %do.end85

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.26, i32 noundef %call80) #7
  %101 = inttoptr i32 %call80 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.end79.cleanup_crit_edge, %if.then77, %do.end70, %do.end61, %if.then50, %if.then40, %do.end34, %do.end26, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %do.end ], [ %7, %do.end26 ], [ %8, %do.end34 ], [ %call37, %if.then40 ], [ %retval.0.i.ph, %if.then50 ], [ %47, %do.end61 ], [ %54, %do.end70 ], [ %97, %if.then77 ], [ %101, %do.end85 ], [ %call.i, %if.end79.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp_disable_regulators(ptr noundef %_ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regulators = getelementptr inbounds %struct.cyttsp, ptr %_ts, i32 0, i32 10
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspended = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %xy_data.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 6
  %bus_ops.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 3
  %xfer_buf.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then
  %tries.01.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_ops.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 %7(ptr noundef %9, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %xy_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 20) #4
  %inc.i.i = add nuw nsw i32 %tries.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %for.body.i.i
  %10 = ptrtoint ptr %xy_data.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %xy_data.i, align 64
  %12 = and i8 %11, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %14) #4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.end.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %if.end4.i ], [ -5, %if.end.i.if.end_crit_edge ], [ -5, %if.end.i.i.if.end_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %suspended = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  %4 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %cmd.addr.i.i, align 1
  %bus_ops.i.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 3
  %xfer_buf.i.i.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 19
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then
  %tries.05.i.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %bus_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_ops.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %call.i.i.i = call i32 %8(ptr noundef %10, ptr noundef %xfer_buf.i.i.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i.i = add nuw nsw i32 %tries.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %ttsp_send_command.exit.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

ttsp_send_command.exit.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %if.end

if.end.i:                                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  %irq.i = getelementptr inbounds %struct.cyttsp, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %12) #4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %ttsp_send_command.exit.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_irq(i32 noundef %irq, ptr noundef %handle) #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.cyttsp, ptr %handle, i32 0, i32 8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end, !prof !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bl_ready = getelementptr inbounds %struct.cyttsp, ptr %handle, i32 0, i32 7
  tail call void @complete(ptr noundef %bl_ready) #4
  br label %out

if.end:                                           ; preds = %entry
  %xy_data = getelementptr inbounds %struct.cyttsp, ptr %handle, i32 0, i32 6
  %bus_ops.i = getelementptr inbounds %struct.cyttsp, ptr %handle, i32 0, i32 3
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp, ptr %handle, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %tries.01.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 128
  %call.i = tail call i32 %5(ptr noundef %7, ptr noundef %xfer_buf.i, i16 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %xy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @msleep(i32 noundef 20) #4
  %inc.i = add nuw nsw i32 %tries.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.out_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %for.body.i
  %use_hndshk.i = getelementptr inbounds %struct.cyttsp, ptr %handle, i32 0, i32 12
  %8 = ptrtoint ptr %use_hndshk.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_hndshk.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i41 = icmp eq i8 %9, 0
  br i1 %tobool.not.i41, label %if.end4.if.end8_crit_edge, label %if.then.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then.i:                                        ; preds = %if.end4
  %10 = ptrtoint ptr %xy_data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %xy_data, align 64
  %12 = xor i8 %11, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  %13 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %cmd.addr.i.i, align 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then.i
  %tries.05.i.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_ops.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i.i, align 4
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 128
  %call.i.i.i = call i32 %17(ptr noundef %19, ptr noundef %xfer_buf.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cyttsp_handshake.exit.thread47, label %if.end.i.i.i

cyttsp_handshake.exit.thread47:                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %if.end8

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i.i = add nuw nsw i32 %tries.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %cyttsp_handshake.exit, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

cyttsp_handshake.exit:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %out

if.end8:                                          ; preds = %cyttsp_handshake.exit.thread47, %if.end4.if.end8_crit_edge
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %if.end8.out_crit_edge, label %if.end18, !prof !134

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end18:                                         ; preds = %if.end8
  %tt_mode = getelementptr inbounds %struct.cyttsp, ptr %handle, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %tt_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tt_mode, align 1
  %24 = and i8 %23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool20.not = icmp eq i8 %24, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  %call22 = call fastcc i32 @cyttsp_exit_bl_mode(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.out_crit_edge, label %do.end

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.49, i32 noundef %call22) #7
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 8
  br label %out

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @cyttsp_report_tchdata(ptr noundef %handle)
  br label %out

out:                                              ; preds = %if.else, %do.end, %if.then21.out_crit_edge, %if.end8.out_crit_edge, %cyttsp_handshake.exit, %if.end.i.out_crit_edge, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp_exit_bl_mode(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %bl_cmd = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %bl_cmd) #4
  %0 = call ptr @memcpy(ptr %bl_cmd, ptr @bl_command, i32 11)
  %bl_keys = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 17
  %1 = ptrtoint ptr %bl_keys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bl_keys, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = getelementptr inbounds [11 x i8], ptr %bl_cmd, i32 0, i32 3
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bus_ops.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 3
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %tries.05.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_ops.i, align 4
  %write.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 4
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ts, align 128
  %call.i = call i32 %10(ptr noundef %12, ptr noundef %xfer_buf.i, i16 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull %bl_cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @msleep(i32 noundef 20) #4
  br i1 %tobool.not.i, label %if.end5, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %tries.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %for.body.i
  %bl_data.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 4
  %13 = call ptr @memset(ptr %bl_data.i, i32 0, i32 16)
  %bl_status.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bl_status.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %bl_status.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end5
  %tries.01.i.i = phi i32 [ 0, %if.end5 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_ops.i, align 4
  %read.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i.i, align 4
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ts, align 128
  %call.i.i = call i32 %18(ptr noundef %20, ptr noundef %xfer_buf.i, i16 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef %bl_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end9, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i = add nuw nsw i32 %tries.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %bl_status.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bl_status.i, align 1
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  %. = select i1 %tobool10.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end9 ], [ -5, %if.end.i.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %bl_cmd) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyttsp_report_tchdata(ptr nocapture noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  %ids = alloca [16 x i32], align 4
  %used.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %input2 = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 2
  %0 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input2, align 8
  %tt_stat = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %tt_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tt_stat, align 1
  %4 = and i8 %3, 15
  %and = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ids) #4
  %5 = getelementptr inbounds i8, ptr %ids, i32 16
  %6 = call ptr @memset(ptr %5, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used.sroa.0)
  %7 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_report_tchdata.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_report_tchdata, %if.then9)) #4
          to label %if.end54 [label %if.then9], !srcloc !135

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_report_tchdata.__UNIQUE_ID_ddebug288, ptr noundef %9, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52) #4
  br label %if.end54

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp10 = icmp ugt i8 %4, 4
  br i1 %cmp10, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_report_tchdata.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_report_tchdata, %if.then25)) #4
          to label %if.end54 [label %if.then25], !srcloc !135

if.then25:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ts, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_report_tchdata.__UNIQUE_ID_ddebug289, ptr noundef %11, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #4
  br label %if.end54

if.else30:                                        ; preds = %if.else
  %tt_mode = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %tt_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tt_mode, align 1
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool33.not = icmp eq i8 %14, 0
  br i1 %tobool33.not, label %if.else30.if.end54_crit_edge, label %if.then34

if.else30.if.end54_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_report_tchdata.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_report_tchdata, %if.then47)) #4
          to label %if.end54 [label %if.then47], !srcloc !135

if.then47:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ts, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_report_tchdata.__UNIQUE_ID_ddebug290, ptr noundef %16, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.52) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.then34, %if.else30.if.end54_crit_edge, %if.then25, %if.then12, %if.then9, %if.then
  %num_tch.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then25 ], [ 0, %if.then47 ], [ %and, %if.else30.if.end54_crit_edge ], [ 0, %if.then ], [ 0, %if.then12 ], [ 0, %if.then34 ]
  %touch12_id.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %touch12_id.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %touch12_id.i, align 1
  %19 = lshr i8 %18, 4
  %20 = zext i8 %19 to i32
  %21 = ptrtoint ptr %ids to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ids, align 4
  %22 = and i8 %18, 15
  %and.i109 = zext i8 %22 to i32
  %arrayidx3.i = getelementptr inbounds i32, ptr %ids, i32 1
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i109, ptr %arrayidx3.i, align 4
  %touch34_id.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 9
  %24 = ptrtoint ptr %touch34_id.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %touch34_id.i, align 1
  %26 = lshr i8 %25, 4
  %27 = zext i8 %26 to i32
  %arrayidx6.i = getelementptr inbounds i32, ptr %ids, i32 2
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx6.i, align 4
  %29 = and i8 %25, 15
  %and9.i = zext i8 %29 to i32
  %arrayidx10.i = getelementptr inbounds i32, ptr %ids, i32 3
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and9.i, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_tch.0)
  %cmp56115.not = icmp eq i32 %num_tch.0, 0
  br i1 %cmp56115.not, label %if.end54.for.cond65.preheader_crit_edge, label %for.body.lr.ph

if.end54.for.cond65.preheader_crit_edge:          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond65.preheader

for.body.lr.ph:                                   ; preds = %if.end54
  %tch4.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 10
  %tch3.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 8
  %tch2.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 5
  %tch1.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 3
  br label %for.body

for.cond65.preheader:                             ; preds = %cyttsp_get_tch.exit.for.cond65.preheader_crit_edge, %if.end54.for.cond65.preheader_crit_edge
  %or.i114.lcssa = phi i32 [ 0, %if.end54.for.cond65.preheader_crit_edge ], [ %or.i, %cyttsp_get_tch.exit.for.cond65.preheader_crit_edge ]
  %31 = ptrtoint ptr %used.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i114.lcssa, ptr %used.sroa.0, align 4
  br label %for.body68

for.body:                                         ; preds = %cyttsp_get_tch.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cyttsp_get_tch.exit.for.body_crit_edge ]
  %or.i114116 = phi i32 [ 0, %for.body.lr.ph ], [ %or.i, %cyttsp_get_tch.exit.for.body_crit_edge ]
  %32 = zext i32 %i.0117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0117, label %for.body.cyttsp_get_tch.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

for.body.cyttsp_get_tch.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cyttsp_get_tch.exit

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cyttsp_get_tch.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cyttsp_get_tch.exit

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cyttsp_get_tch.exit

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cyttsp_get_tch.exit

cyttsp_get_tch.exit:                              ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %for.body.cyttsp_get_tch.exit_crit_edge
  %retval.0.i110 = phi ptr [ %tch4.i, %sw.bb3.i ], [ %tch3.i, %sw.bb2.i ], [ %tch2.i, %sw.bb1.i ], [ %tch1.i, %sw.bb.i ], [ null, %for.body.cyttsp_get_tch.exit_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr %ids, i32 0, i32 %i.0117
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %34) #4
  %call59 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #4
  %35 = ptrtoint ptr %retval.0.i110 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %retval.0.i110, align 1
  %conv60 = zext i16 %36 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %conv60) #4
  %y = getelementptr inbounds %struct.cyttsp_tch, ptr %retval.0.i110, i32 0, i32 1
  %37 = ptrtoint ptr %y to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %y, align 1
  %conv61 = zext i16 %38 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %conv61) #4
  %z = getelementptr inbounds %struct.cyttsp_tch, ptr %retval.0.i110, i32 0, i32 2
  %39 = ptrtoint ptr %z to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %z, align 1
  %conv62 = zext i8 %40 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 48, i32 noundef %conv62) #4
  %rem.i = and i32 %34, 31
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %or.i114116, %shl.i
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, %num_tch.0
  br i1 %exitcond.not, label %cyttsp_get_tch.exit.for.cond65.preheader_crit_edge, label %cyttsp_get_tch.exit.for.body_crit_edge

cyttsp_get_tch.exit.for.body_crit_edge:           ; preds = %cyttsp_get_tch.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cyttsp_get_tch.exit.for.cond65.preheader_crit_edge: ; preds = %cyttsp_get_tch.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond65.preheader

for.body68:                                       ; preds = %for.inc74.for.body68_crit_edge, %for.cond65.preheader
  %i.1118 = phi i32 [ 0, %for.cond65.preheader ], [ %inc75, %for.inc74.for.body68_crit_edge ]
  %41 = ptrtoint ptr %used.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %used.sroa.0.0.used.sroa.0.0. = load volatile i32, ptr %used.sroa.0, align 4
  %42 = shl nuw i32 1, %i.1118
  %43 = and i32 %used.sroa.0.0.used.sroa.0.0., %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool71.not = icmp eq i32 %43, 0
  br i1 %tobool71.not, label %if.end73, label %for.body68.for.inc74_crit_edge

for.body68.for.inc74_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc74

if.end73:                                         ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %i.1118) #4
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #4
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73, %for.body68.for.inc74_crit_edge
  %inc75 = add nuw nsw i32 %i.1118, 1
  %exitcond120.not = icmp eq i32 %inc75, 16
  br i1 %exitcond120.not, label %for.end76, label %for.inc74.for.body68_crit_edge

for.inc74.for.body68_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body68

for.end76:                                        ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used.sroa.0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ids) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp_set_sysinfo_mode(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sysinfo_data = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 5
  %0 = call ptr @memset(ptr %sysinfo_data, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %1 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 16, ptr %cmd.addr.i, align 1
  %bus_ops.i.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 3
  %xfer_buf.i.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %tries.05.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i, align 4
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 128
  %call.i.i = call i32 %5(ptr noundef %7, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i = add nuw nsw i32 %tries.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %ttsp_send_command.exit, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

ttsp_send_command.exit:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  call void @msleep(i32 noundef 20) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %tries.01.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_ops.i.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ts, align 128
  %call.i = call i32 %11(ptr noundef %13, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %sysinfo_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @msleep(i32 noundef 20) #4
  %inc.i = add nuw nsw i32 %tries.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %for.body.i
  %use_hndshk.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 12
  %14 = ptrtoint ptr %use_hndshk.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_hndshk.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i27 = icmp eq i8 %15, 0
  br i1 %tobool.not.i27, label %if.end5.if.end9_crit_edge, label %if.then.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then.i:                                        ; preds = %if.end5
  %xy_data.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6
  %16 = ptrtoint ptr %xy_data.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %xy_data.i, align 64
  %18 = xor i8 %17, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  %19 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %cmd.addr.i.i, align 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then.i
  %tries.05.i.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_ops.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i.i.i, align 4
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts, align 128
  %call.i.i.i = call i32 %23(ptr noundef %25, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cyttsp_handshake.exit.thread35, label %if.end.i.i.i

cyttsp_handshake.exit.thread35:                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %if.end9

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i.i = add nuw nsw i32 %tries.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %cyttsp_handshake.exit, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

cyttsp_handshake.exit:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %cleanup

if.end9:                                          ; preds = %cyttsp_handshake.exit.thread35, %if.end5.if.end9_crit_edge
  %tts_verh = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 5, i32 8
  %26 = ptrtoint ptr %tts_verh to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tts_verh, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not = icmp eq i8 %27, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end9
  %tts_verl = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 5, i32 9
  %28 = ptrtoint ptr %tts_verl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tts_verl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool13.not = icmp eq i8 %29, 0
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true.cleanup_crit_edge, %cyttsp_handshake.exit, %if.end.i.cleanup_crit_edge, %ttsp_send_command.exit
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -5, %ttsp_send_command.exit ], [ -5, %cyttsp_handshake.exit ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp_set_sysinfo_regs(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %intrvl_ray = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %act_intrvl = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 14
  %0 = ptrtoint ptr %act_intrvl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %act_intrvl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tch_tmout = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 15
  %2 = ptrtoint ptr %tch_tmout to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tch_tmout, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp4.not = icmp eq i8 %3, -1
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %lp_intrvl = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 16
  %4 = ptrtoint ptr %lp_intrvl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lp_intrvl, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp8.not = icmp eq i8 %5, 10
  br i1 %cmp8.not, label %lor.lhs.false6.if.end_crit_edge, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false6.if.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %intrvl_ray) #4
  %6 = getelementptr inbounds [3 x i8], ptr %intrvl_ray, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %intrvl_ray, i32 0, i32 2
  %8 = ptrtoint ptr %intrvl_ray to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %intrvl_ray, align 1
  %tch_tmout11 = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 15
  %9 = ptrtoint ptr %tch_tmout11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tch_tmout11, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %6, align 1
  %lp_intrvl13 = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 16
  %12 = ptrtoint ptr %lp_intrvl13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lp_intrvl13, align 64
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %7, align 1
  %bus_ops.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 3
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %tries.05.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_ops.i, align 4
  %write.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ts, align 128
  %call.i = call i32 %18(ptr noundef %20, ptr noundef %xfer_buf.i, i16 noundef zeroext 29, i8 noundef zeroext 3, ptr noundef nonnull %intrvl_ray) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.ttsp_write_block_data.exit_crit_edge, label %if.end.i

for.body.i.ttsp_write_block_data.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttsp_write_block_data.exit

if.end.i:                                         ; preds = %for.body.i
  call void @msleep(i32 noundef 20) #4
  %inc.i = add nuw nsw i32 %tries.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.ttsp_write_block_data.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.ttsp_write_block_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttsp_write_block_data.exit

ttsp_write_block_data.exit:                       ; preds = %if.end.i.ttsp_write_block_data.exit_crit_edge, %for.body.i.ttsp_write_block_data.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.i.ttsp_write_block_data.exit_crit_edge ], [ -5, %if.end.i.ttsp_write_block_data.exit_crit_edge ]
  call void @msleep(i32 noundef 20) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %intrvl_ray) #4
  br label %if.end

if.end:                                           ; preds = %ttsp_write_block_data.exit, %lor.lhs.false6.if.end_crit_edge
  %retval1.0 = phi i32 [ %retval.0.i, %ttsp_write_block_data.exit ], [ 0, %lor.lhs.false6.if.end_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp_set_operational_mode(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %0 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cmd.addr.i, align 1
  %bus_ops.i.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 3
  %xfer_buf.i.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %tries.05.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %1 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus_ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i.i, align 4
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ts, align 128
  %call.i.i = call i32 %4(ptr noundef %6, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i = add nuw nsw i32 %tries.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %ttsp_send_command.exit, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

ttsp_send_command.exit:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %xy_data = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %tries.01.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_ops.i.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ts, align 128
  %call.i = call i32 %10(ptr noundef %12, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %xy_data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @msleep(i32 noundef 20) #4
  %inc.i = add nuw nsw i32 %tries.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %for.body.i
  %use_hndshk.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 12
  %13 = ptrtoint ptr %use_hndshk.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_hndshk.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i20 = icmp eq i8 %14, 0
  br i1 %tobool.not.i20, label %if.end4.if.end8_crit_edge, label %if.then.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then.i:                                        ; preds = %if.end4
  %15 = ptrtoint ptr %xy_data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %xy_data, align 64
  %17 = xor i8 %16, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  %18 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %cmd.addr.i.i, align 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then.i
  %tries.05.i.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_ops.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i.i, align 4
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ts, align 128
  %call.i.i.i = call i32 %22(ptr noundef %24, ptr noundef %xfer_buf.i.i, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cyttsp_handshake.exit.thread28, label %if.end.i.i.i

cyttsp_handshake.exit.thread28:                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %if.end8

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @msleep(i32 noundef 20) #4
  %inc.i.i.i = add nuw nsw i32 %tries.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %cyttsp_handshake.exit, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

cyttsp_handshake.exit:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #4
  br label %cleanup

if.end8:                                          ; preds = %cyttsp_handshake.exit.thread28, %if.end4.if.end8_crit_edge
  %act_dist = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 6, i32 12
  %25 = ptrtoint ptr %act_dist to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %act_dist, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %26)
  %cmp = icmp eq i8 %26, -8
  %cond = select i1 %cmp, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %cyttsp_handshake.exit, %if.end.i.cleanup_crit_edge, %ttsp_send_command.exit
  %retval.0 = phi i32 [ %cond, %if.end8 ], [ -5, %ttsp_send_command.exit ], [ -5, %cyttsp_handshake.exit ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp_act_dist_setup(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %act_dist_setup = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %act_dist_setup) #4
  %act_dist = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 13
  %0 = ptrtoint ptr %act_dist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %act_dist, align 1
  %2 = ptrtoint ptr %act_dist_setup to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %act_dist_setup, align 1
  %bus_ops.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 3
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp, ptr %ts, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %tries.05.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_ops.i, align 4
  %write.i = getelementptr inbounds %struct.cyttsp_bus_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i, align 4
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ts, align 128
  %call.i = call i32 %6(ptr noundef %8, ptr noundef %xfer_buf.i, i16 noundef zeroext 30, i8 noundef zeroext 1, ptr noundef nonnull %act_dist_setup) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.ttsp_write_block_data.exit_crit_edge, label %if.end.i

for.body.i.ttsp_write_block_data.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttsp_write_block_data.exit

if.end.i:                                         ; preds = %for.body.i
  call void @msleep(i32 noundef 20) #4
  %inc.i = add nuw nsw i32 %tries.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.ttsp_write_block_data.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.ttsp_write_block_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ttsp_write_block_data.exit

ttsp_write_block_data.exit:                       ; preds = %if.end.i.ttsp_write_block_data.exit_crit_edge, %for.body.i.ttsp_write_block_data.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.i.ttsp_write_block_data.exit_crit_edge ], [ -5, %if.end.i.ttsp_write_block_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %act_dist_setup) #4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @cyttsp_pm_ops, !1, !"cyttsp_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 528, i32 1}
!2 = !{ptr @__ksymtab_cyttsp_pm_ops, !3, !"__ksymtab_cyttsp_pm_ops", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 529, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 651, i32 29}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 652, i32 29}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 656, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cyttsp_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @cyttsp_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 663, i32 3}
!18 = !{ptr @cyttsp_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cyttsp_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 669, i32 3}
!22 = !{ptr @cyttsp_probe._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cyttsp_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 673, i32 48}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 676, i32 3}
!28 = !{ptr @cyttsp_probe._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cyttsp_probe._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 686, i32 20}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 704, i32 3}
!34 = !{ptr @cyttsp_probe._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cyttsp_probe._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 710, i32 8}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 712, i32 3}
!40 = !{ptr @cyttsp_probe._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cyttsp_probe._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 725, i32 3}
!44 = !{ptr @cyttsp_probe._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cyttsp_probe._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__ksymtab_cyttsp_probe, !47, !"__ksymtab_cyttsp_probe", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 732, i32 1}
!48 = !{ptr @__UNIQUE_ID_file291, !49, !"__UNIQUE_ID_file291", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 734, i32 1}
!50 = !{ptr @__UNIQUE_ID_license292, !49, !"__UNIQUE_ID_license292", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_description293, !52, !"__UNIQUE_ID_description293", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 735, i32 1}
!53 = !{ptr @__UNIQUE_ID_author294, !54, !"__UNIQUE_ID_author294", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 736, i32 1}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 567, i32 43}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 570, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cyttsp_parse_properties._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cyttsp_parse_properties._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 575, i32 48}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 577, i32 37}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 579, i32 4}
!68 = !{ptr @cyttsp_parse_properties._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cyttsp_parse_properties._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 587, i32 37}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 589, i32 4}
!74 = !{ptr @cyttsp_parse_properties._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cyttsp_parse_properties._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 596, i32 37}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 598, i32 4}
!80 = !{ptr @cyttsp_parse_properties._entry.41, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cyttsp_parse_properties._entry_ptr.43, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 606, i32 37}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 608, i32 4}
!86 = !{ptr @cyttsp_parse_properties._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cyttsp_parse_properties._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @init_completion.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../include/linux/completion.h", i32 87, i32 2}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 397, i32 4}
!93 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cyttsp_irq._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @cyttsp_irq._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @bl_command, !97, !"bl_command", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 71, i32 17}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 328, i32 3}
!100 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cyttsp_report_tchdata.__UNIQUE_ID_ddebug288, !99, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 332, i32 3}
!105 = !{ptr @cyttsp_report_tchdata.__UNIQUE_ID_ddebug289, !104, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 336, i32 3}
!108 = !{ptr @cyttsp_report_tchdata.__UNIQUE_ID_ddebug290, !107, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 426, i32 4}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cyttsp_power_on._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @cyttsp_power_on._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 265, i32 3}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cyttsp_soft_reset._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @cyttsp_soft_reset._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/cyttsp_core.c", i32 271, i32 3}
!121 = !{ptr @cyttsp_soft_reset._entry.60, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cyttsp_soft_reset._entry_ptr.62, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
!133 = !{i8 0, i8 2}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2148771812, i64 2148771817, i64 2148771830, i64 2148771874, i64 2148771908, i64 2148771929}
