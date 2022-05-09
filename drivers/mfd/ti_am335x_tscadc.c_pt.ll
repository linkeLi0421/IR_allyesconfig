; ModuleID = '/llk/IR_all_yes/drivers/mfd/ti_am335x_tscadc.c_pt.bc'
source_filename = "../drivers/mfd/ti_am335x_tscadc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+am335x_tsc_se_set_cache\22, \22a\22\09"
module asm "\09.weak\09__crc_am335x_tsc_se_set_cache\09\09\09\09"
module asm "\09.long\09__crc_am335x_tsc_se_set_cache\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_am335x_tsc_se_set_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22am335x_tsc_se_set_cache\22\09\09\09\09\09"
module asm "__kstrtabns_am335x_tsc_se_set_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+am335x_tsc_se_set_once\22, \22a\22\09"
module asm "\09.weak\09__crc_am335x_tsc_se_set_once\09\09\09\09"
module asm "\09.long\09__crc_am335x_tsc_se_set_once\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_am335x_tsc_se_set_once:\09\09\09\09\09"
module asm "\09.asciz \09\22am335x_tsc_se_set_once\22\09\09\09\09\09"
module asm "__kstrtabns_am335x_tsc_se_set_once:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+am335x_tsc_se_adc_done\22, \22a\22\09"
module asm "\09.weak\09__crc_am335x_tsc_se_adc_done\09\09\09\09"
module asm "\09.long\09__crc_am335x_tsc_se_adc_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_am335x_tsc_se_adc_done:\09\09\09\09\09"
module asm "\09.asciz \09\22am335x_tsc_se_adc_done\22\09\09\09\09\09"
module asm "__kstrtabns_am335x_tsc_se_adc_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+am335x_tsc_se_clr\22, \22a\22\09"
module asm "\09.weak\09__crc_am335x_tsc_se_clr\09\09\09\09"
module asm "\09.long\09__crc_am335x_tsc_se_clr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_am335x_tsc_se_clr:\09\09\09\09\09"
module asm "\09.asciz \09\22am335x_tsc_se_clr\22\09\09\09\09\09"
module asm "__kstrtabns_am335x_tsc_se_clr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.ti_tscadc_data = type { ptr, ptr, ptr, ptr, i32 }
%struct.ti_tscadc_dev = type { ptr, ptr, ptr, i32, ptr, i32, [2 x %struct.mfd_cell], i32, i32, i8, i8, %struct.wait_queue_head, %struct.spinlock, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_am335x_tsc_se_set_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_am335x_tsc_se_set_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_am335x_tsc_se_set_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @am335x_tsc_se_set_cache to i32), ptr @__kstrtab_am335x_tsc_se_set_cache, ptr @__kstrtabns_am335x_tsc_se_set_cache }, section "___ksymtab_gpl+am335x_tsc_se_set_cache", align 4
@__kstrtab_am335x_tsc_se_set_once = external dso_local constant [0 x i8], align 1
@__kstrtabns_am335x_tsc_se_set_once = external dso_local constant [0 x i8], align 1
@__ksymtab_am335x_tsc_se_set_once = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @am335x_tsc_se_set_once to i32), ptr @__kstrtab_am335x_tsc_se_set_once, ptr @__kstrtabns_am335x_tsc_se_set_once }, section "___ksymtab_gpl+am335x_tsc_se_set_once", align 4
@__kstrtab_am335x_tsc_se_adc_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_am335x_tsc_se_adc_done = external dso_local constant [0 x i8], align 1
@__ksymtab_am335x_tsc_se_adc_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @am335x_tsc_se_adc_done to i32), ptr @__kstrtab_am335x_tsc_se_adc_done, ptr @__kstrtabns_am335x_tsc_se_adc_done }, section "___ksymtab_gpl+am335x_tsc_se_adc_done", align 4
@__kstrtab_am335x_tsc_se_clr = external dso_local constant [0 x i8], align 1
@__kstrtabns_am335x_tsc_se_clr = external dso_local constant [0 x i8], align 1
@__ksymtab_am335x_tsc_se_clr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @am335x_tsc_se_clr to i32), ptr @__kstrtab_am335x_tsc_se_clr, ptr @__kstrtabns_am335x_tsc_se_clr }, section "___ksymtab_gpl+am335x_tsc_se_clr", align 4
@__initcall__kmod_ti_am335x_tscadc__204_389_ti_tscadc_driver_init6 = internal global ptr @ti_tscadc_driver_init, section ".initcall6.init", align 4
@ti_tscadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_tscadc_probe, ptr @ti_tscadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_tscadc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tscadc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_tscadc_driver_exit = internal global ptr @ti_tscadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description205 = internal constant [93 x i8] c"ti_am335x_tscadc.description=TI touchscreen/magnetic stripe reader/ADC MFD controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author206 = internal constant [53 x i8] c"ti_am335x_tscadc.author=Rachna Patil <rachna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file207 = internal constant [51 x i8] c"ti_am335x_tscadc.file=drivers/mfd/ti_am335x_tscadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license208 = internal constant [29 x i8] c"ti_am335x_tscadc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mfd/ti_am335x_tscadc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_am3359-tscadc\00", [47 x i8] zeroinitializer }, align 32
@ti_tscadc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3359-tscadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tscdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-magadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @magdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tscadc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tscadc_suspend, ptr @tscadc_resume, ptr @tscadc_suspend, ptr @tscadc_resume, ptr @tscadc_suspend, ptr @tscadc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not find valid DT data.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti_tscadc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry_ptr = internal global ptr @ti_tscadc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsc\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,wires\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,coordinate-readouts\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,coordiante-readouts\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,adc-channels\00", [16 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" PIN numbers are 0..7 (not %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry_ptr.14 = internal global ptr @ti_tscadc_probe._entry.12, section ".printk_index", align 4
@ti_tscadc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Number of i/p channels more than 8\0A\00", [60 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry_ptr.17 = internal global ptr @ti_tscadc_probe._entry.15, section ".printk_index", align 4
@ti_tscadc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Need at least one channel.\0A\00", [36 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry_ptr.20 = internal global ptr @ti_tscadc_probe._entry.18, section ".printk_index", align 4
@ti_tscadc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Too many step configurations requested\0A\00", [56 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry_ptr.23 = internal global ptr @ti_tscadc_probe._entry.21, section ".printk_index", align 4
@ti_tscadc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tscadc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.35, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ti_am335x_tscadc:212:(&tscadc_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry_ptr.27 = internal global ptr @ti_tscadc_probe._entry.25, section ".printk_index", align 4
@ti_tscadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&tscadc->reg_lock\00", [46 x i8] zeroinitializer }, align 32
@ti_tscadc_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tscadc->reg_se_wait\00", [43 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get fck\0A\00", [45 x i8] zeroinitializer }, align 32
@ti_tscadc_probe._entry_ptr.33 = internal global ptr @ti_tscadc_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,am3359-tscadc\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti_tscadc\00", [22 x i8] zeroinitializer }, align 32
@tscdata = internal constant { %struct.ti_tscadc_data, [44 x i8] } { %struct.ti_tscadc_data { ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 3000000 }, [44 x i8] zeroinitializer }, align 32
@magdata = internal constant { %struct.ti_tscadc_data, [44 x i8] } { %struct.ti_tscadc_data { ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, i32 13000000 }, [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TI-am335x-adc\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,am3359-adc\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TI-am335x-tsc\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,am3359-tsc\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TI-am43xx-adc\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,am4372-adc\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TI-am43xx-mag\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,am4372-mag\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"ti_tscadc_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 378, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 66, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 380, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"ti_tscadc_dt_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 371, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"tscadc_pm_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 353, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 138, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 145, i32 50 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 146, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 147, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 150, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 169, i32 49 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 170, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 173, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 184, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 189, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 194, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"tscadc_regmap_config\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 22, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 210, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 214, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 218, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 219, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 235, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [40 x i8] c"../include/linux/mfd/ti_am335x_tscadc.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 188, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 23, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant [8 x i8] c"tscdata\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 355, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"magdata\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 363, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 356, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 357, i32 28 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 358, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 359, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 364, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 365, i32 28 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 366, i32 28 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [34 x i8] c"../drivers/mfd/ti_am335x_tscadc.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 367, i32 34 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file207, ptr @__UNIQUE_ID_license208, ptr @__exitcall_ti_tscadc_driver_exit, ptr @__initcall__kmod_ti_am335x_tscadc__204_389_ti_tscadc_driver_init6, ptr @__ksymtab_am335x_tsc_se_adc_done, ptr @__ksymtab_am335x_tsc_se_clr, ptr @__ksymtab_am335x_tsc_se_set_cache, ptr @__ksymtab_am335x_tsc_se_set_once, ptr @ti_tscadc_driver_exit, ptr @ti_tscadc_probe._entry, ptr @ti_tscadc_probe._entry.12, ptr @ti_tscadc_probe._entry.15, ptr @ti_tscadc_probe._entry.18, ptr @ti_tscadc_probe._entry.21, ptr @ti_tscadc_probe._entry.25, ptr @ti_tscadc_probe._entry.31, ptr @ti_tscadc_probe._entry_ptr, ptr @ti_tscadc_probe._entry_ptr.14, ptr @ti_tscadc_probe._entry_ptr.17, ptr @ti_tscadc_probe._entry_ptr.20, ptr @ti_tscadc_probe._entry_ptr.23, ptr @ti_tscadc_probe._entry_ptr.27, ptr @ti_tscadc_probe._entry_ptr.33, ptr @ti_tscadc_driver, ptr @.str, ptr @.str.1, ptr @ti_tscadc_dt_ids, ptr @tscadc_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @ti_tscadc_probe._key, ptr @tscadc_regmap_config, ptr @.str.24, ptr @.str.26, ptr @ti_tscadc_probe.__key, ptr @.str.28, ptr @ti_tscadc_probe.__key.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @tscdata, ptr @magdata, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscadc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscadc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tscadc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @magdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @am335x_tsc_se_set_cache(ptr noundef %tscadc, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %reg_se_cache = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 8
  %0 = ptrtoint ptr %reg_se_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_se_cache, align 4
  %or = or i32 %1, %val
  store i32 %or, ptr %reg_se_cache, align 4
  %adc_waiting = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 9
  %2 = ptrtoint ptr %adc_waiting to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %adc_waiting, align 8, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_se_wait = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %reg_se_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end9

if.else:                                          ; preds = %entry
  %adc_in_use = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 10
  %4 = ptrtoint ptr %adc_in_use to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %adc_in_use, align 1, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.then6, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 84, i32 noundef %or) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else.if.end9_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @am335x_tsc_se_set_once(ptr noundef %tscadc, i32 noundef %val) #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !106) #7
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg.i, align 4, !annotation !117
  %regmap.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 68, ptr noundef nonnull %reg.i) #7
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.am335x_tscadc_need_adc.exit_crit_edge, label %if.then.i

entry.am335x_tscadc_need_adc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %am335x_tscadc_need_adc.exit

if.then.i:                                        ; preds = %entry
  %adc_waiting.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 9
  %18 = ptrtoint ptr %adc_waiting.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %adc_waiting.i, align 8
  %reg_se_wait.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 11
  call void @prepare_to_wait(ptr noundef %reg_se_wait.i, ptr noundef nonnull %wait.i, i32 noundef 2) #7
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  call void @schedule() #7
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
  call void @finish_wait(ptr noundef %reg_se_wait.i, ptr noundef nonnull %wait.i) #7
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 68, ptr noundef nonnull %reg.i) #7
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i, align 4
  %23 = and i32 %22, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !118

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %adc_waiting.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %adc_waiting.i, align 8
  br label %am335x_tscadc_need_adc.exit

am335x_tscadc_need_adc.exit:                      ; preds = %if.end.i, %entry.am335x_tscadc_need_adc.exit_crit_edge
  %adc_in_use.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 10
  %26 = ptrtoint ptr %adc_in_use.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %adc_in_use.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #7
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call = call i32 @regmap_write(ptr noundef %28, i32 noundef 84, i32 noundef %val) #7
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @am335x_tsc_se_adc_done(ptr noundef %tscadc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %adc_in_use = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 10
  %0 = ptrtoint ptr %adc_in_use to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %adc_in_use, align 1
  %regmap = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %reg_se_cache = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 8
  %3 = ptrtoint ptr %reg_se_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_se_cache, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 84, i32 noundef %4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @am335x_tsc_se_clr(ptr noundef %tscadc, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %neg = xor i32 %val, -1
  %reg_se_cache = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 8
  %0 = ptrtoint ptr %reg_se_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_se_cache, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %reg_se_cache, align 4
  %regmap = getelementptr inbounds %struct.ti_tscadc_dev, ptr %tscadc, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 84, i32 noundef %and) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_tscadc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_tscadc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_tscadc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_tscadc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_tscadc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %tscadc = alloca ptr, align 4
  %val = alloca i32, align 4
  %tscmag_wires = alloca i32, align 4
  %readouts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tscadc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tscmag_wires) #7
  %1 = ptrtoint ptr %tscmag_wires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tscmag_wires, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readouts) #7
  %2 = ptrtoint ptr %readouts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %readouts, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 320, i32 noundef 3520) #7
  %3 = ptrtoint ptr %tscadc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %tscadc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %7 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tscadc, align 4
  %data = getelementptr inbounds %struct.ti_tscadc_dev, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %data, align 8
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i275 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool.i.not = icmp eq i32 %call.i275, 0
  br i1 %tobool.i.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call14 = tail call ptr @of_get_child_by_name(ptr noundef %15, ptr noundef nonnull @.str.6) #7
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call14, ptr noundef nonnull @.str.7, ptr noundef nonnull %tscmag_wires, i32 noundef 1, i32 noundef 0) #7
  %call.i.i276 = call i32 @of_property_read_variable_u32_array(ptr noundef %call14, ptr noundef nonnull @.str.8, ptr noundef nonnull %readouts, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i276)
  %cmp = icmp slt i32 %call.i.i276, 0
  br i1 %cmp, label %if.then17, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i277 = call i32 @of_property_read_variable_u32_array(ptr noundef %call14, ptr noundef nonnull @.str.9, ptr noundef nonnull %readouts, i32 noundef 1, i32 noundef 0) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then11.if.end19_crit_edge
  call void @of_node_put(ptr noundef %call14) #7
  %16 = ptrtoint ptr %tscmag_wires to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tscmag_wires, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp ne i32 %17, 0
  br label %if.end26

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %tscmag_wires to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tscmag_wires, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end19
  %use_tsc.0.off0 = phi i1 [ false, %if.else ], [ %tobool20.not, %if.end19 ]
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call29 = call ptr @of_get_child_by_name(ptr noundef %20, ptr noundef nonnull @.str.10) #7
  %call30 = call ptr @of_find_property(ptr noundef %call29, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %call31 = call ptr @of_prop_next_u32(ptr noundef %call30, ptr noundef null, ptr noundef nonnull %val) #7
  %tobool32.not288 = icmp eq ptr %call31, null
  br i1 %tobool32.not288, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %adc_channels.0290 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %cur.0289 = phi ptr [ %call40, %for.inc.for.body_crit_edge ], [ %call31, %if.end26.for.body_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp33 = icmp ugt i32 %22, 7
  br i1 %cmp33, label %do.end37, label %for.inc

do.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %22) #10
  call void @of_node_put(ptr noundef %call29) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %adc_channels.0290, 1
  %call40 = call ptr @of_prop_next_u32(ptr noundef %call30, ptr noundef nonnull %cur.0289, ptr noundef nonnull %val) #7
  %tobool32.not = icmp eq ptr %call40, null
  br i1 %tobool32.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  %adc_channels.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @of_node_put(ptr noundef %call29) #7
  %23 = ptrtoint ptr %tscmag_wires to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tscmag_wires, align 4
  %add = add i32 %24, %adc_channels.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp41 = icmp sgt i32 %add, 8
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp48 = icmp eq i32 %add, 0
  br i1 %cmp48, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  br i1 %use_tsc.0.off0, label %land.lhs.true, label %if.end54.if.end65_crit_edge

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end54
  %25 = ptrtoint ptr %readouts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %readouts, align 4
  %mul56 = shl i32 %26, 1
  %add57 = add i32 %adc_channels.0.lcssa, 2
  %add58 = add i32 %add57, %mul56
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add58)
  %cmp59 = icmp sgt i32 %add58, 16
  br i1 %cmp59, label %do.end63, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end63:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end65:                                         ; preds = %land.lhs.true.if.end65_crit_edge, %if.end54.if.end65_crit_edge
  %call66 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.cleanup_crit_edge, label %if.else69

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else69:                                        ; preds = %if.end65
  %27 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tscadc, align 4
  %irq = getelementptr inbounds %struct.ti_tscadc_dev, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call66, ptr %irq, align 4
  %call71 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call73 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call71) #7
  %30 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tscadc, align 4
  %tscadc_base = getelementptr inbounds %struct.ti_tscadc_dev, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %tscadc_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call73, ptr %tscadc_base, align 8
  %cmp.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end79:                                         ; preds = %if.else69
  %34 = ptrtoint ptr %call71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call71, align 4
  %tscadc_phys_base = getelementptr inbounds %struct.ti_tscadc_dev, ptr %31, i32 0, i32 3
  %36 = ptrtoint ptr %tscadc_phys_base to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tscadc_phys_base, align 4
  %call82 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call73, ptr noundef nonnull @tscadc_regmap_config, ptr noundef nonnull @ti_tscadc_probe._key, ptr noundef nonnull @.str.24) #7
  %37 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tscadc, align 4
  %regmap = getelementptr inbounds %struct.ti_tscadc_dev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call82, ptr %regmap, align 4
  %cmp.i278 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %do.end88, label %do.body93

do.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  %40 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tscadc, align 4
  %regmap90 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap90, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup

do.body93:                                        ; preds = %if.end79
  %reg_lock = getelementptr inbounds %struct.ti_tscadc_dev, ptr %38, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @ti_tscadc_probe.__key, i16 noundef signext 3) #7
  %45 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tscadc, align 4
  %reg_se_wait = getelementptr inbounds %struct.ti_tscadc_dev, ptr %46, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %reg_se_wait, ptr noundef nonnull @.str.30, ptr noundef nonnull @ti_tscadc_probe.__key.29) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i279 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %call104 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %cmp.i280 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %do.end109, label %if.end112

do.end109:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #10
  %47 = ptrtoint ptr %call104 to i32
  br label %err_disable_clk

if.end112:                                        ; preds = %do.body93
  %call113 = call i32 @clk_get_rate(ptr noundef %call104) #7
  %48 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tscadc, align 4
  %data114 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %data114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data114, align 8
  %target_clk_rate = getelementptr inbounds %struct.ti_tscadc_data, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %target_clk_rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %target_clk_rate, align 4
  %div = udiv i32 %call113, %53
  %sub = add i32 %div, -1
  %clk_div = getelementptr inbounds %struct.ti_tscadc_dev, ptr %49, i32 0, i32 13
  %54 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub, ptr %clk_div, align 4
  %regmap115 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %49, i32 0, i32 1
  %55 = ptrtoint ptr %regmap115 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap115, align 4
  %call117 = call i32 @regmap_write(ptr noundef %56, i32 noundef 76, i32 noundef %sub) #7
  %57 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tscadc, align 4
  %ctrl = getelementptr inbounds %struct.ti_tscadc_dev, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %ctrl, align 8
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %58, align 8
  %of_node.i281 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %of_node.i281 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node.i281, align 8
  %call.i282 = call i32 @of_device_is_compatible(ptr noundef %63, ptr noundef nonnull @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool.i283.not = icmp eq i32 %call.i282, 0
  %64 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tscadc, align 4
  %ctrl167 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %ctrl167 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctrl167, align 8
  br i1 %tobool.i283.not, label %if.end112.if.end169.sink.split_crit_edge, label %if.then119

if.end112.if.end169.sink.split_crit_edge:         ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169.sink.split

if.then119:                                       ; preds = %if.end112
  %or = or i32 %67, 4
  %68 = ptrtoint ptr %ctrl167 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or, ptr %ctrl167, align 8
  br i1 %use_tsc.0.off0, label %if.then122, label %if.then119.if.end169_crit_edge

if.then119.if.end169_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

if.then122:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  %or124 = or i32 %67, 132
  %69 = ptrtoint ptr %ctrl167 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or124, ptr %ctrl167, align 8
  %70 = ptrtoint ptr %tscmag_wires to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tscmag_wires, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %71)
  %cmp125 = icmp eq i32 %71, 5
  %. = select i1 %cmp125, i32 196, i32 164
  br label %if.end169.sink.split

if.end169.sink.split:                             ; preds = %if.then122, %if.end112.if.end169.sink.split_crit_edge
  %.sink = phi i32 [ %., %if.then122 ], [ 96, %if.end112.if.end169.sink.split_crit_edge ]
  %or163 = or i32 %67, %.sink
  %72 = ptrtoint ptr %ctrl167 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or163, ptr %ctrl167, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.end169.sink.split, %if.then119.if.end169_crit_edge
  %73 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tscadc, align 4
  %regmap170 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %regmap170 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap170, align 4
  %ctrl171 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %74, i32 0, i32 7
  %77 = ptrtoint ptr %ctrl171 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctrl171, align 8
  %call172 = call i32 @regmap_write(ptr noundef %76, i32 noundef 64, i32 noundef %78) #7
  %79 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tscadc, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 27
  %83 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i284 = call i32 @of_device_is_compatible(ptr noundef %84, ptr noundef nonnull @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i284)
  %tobool.i.not.i = icmp eq i32 %call.i.i284, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 4456448, i32 4457728
  %regmap.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i, align 4
  %call30.i = call i32 @regmap_write(ptr noundef %86, i32 noundef 88, i32 noundef %spec.select.i) #7
  %87 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tscadc, align 4
  %regmap173 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %regmap173 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap173, align 4
  %ctrl174 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %88, i32 0, i32 7
  %91 = ptrtoint ptr %ctrl174 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ctrl174, align 8
  %or175 = or i32 %92, 1
  %call176 = call i32 @regmap_write(ptr noundef %90, i32 noundef 64, i32 noundef %or175) #7
  br i1 %use_tsc.0.off0, label %if.then179, label %if.end169.if.end183_crit_edge

if.end169.if.end183_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end183

if.then179:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tscadc, align 4
  %cells = getelementptr inbounds %struct.ti_tscadc_dev, ptr %94, i32 0, i32 6
  %data181 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %data181 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data181, align 8
  %secondary_feature_name = getelementptr inbounds %struct.ti_tscadc_data, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %secondary_feature_name to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %secondary_feature_name, align 4
  %99 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %cells, align 8
  %secondary_feature_compatible = getelementptr inbounds %struct.ti_tscadc_data, ptr %96, i32 0, i32 3
  %100 = ptrtoint ptr %secondary_feature_compatible to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %secondary_feature_compatible, align 4
  %of_compatible = getelementptr inbounds %struct.ti_tscadc_dev, ptr %94, i32 0, i32 6, i32 0, i32 10
  %102 = ptrtoint ptr %of_compatible to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %of_compatible, align 8
  %platform_data = getelementptr inbounds %struct.ti_tscadc_dev, ptr %94, i32 0, i32 6, i32 0, i32 7
  %103 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %tscadc, ptr %platform_data, align 4
  %pdata_size = getelementptr inbounds %struct.ti_tscadc_dev, ptr %94, i32 0, i32 6, i32 0, i32 8
  %104 = ptrtoint ptr %pdata_size to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4, ptr %pdata_size, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.then179, %if.end169.if.end183_crit_edge
  %cell_idx.0 = phi i32 [ 1, %if.then179 ], [ 0, %if.end169.if.end183_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adc_channels.0.lcssa)
  %cmp184 = icmp sgt i32 %adc_channels.0.lcssa, 0
  br i1 %cmp184, label %if.then185, label %if.end183.if.end195_crit_edge

if.end183.if.end195_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then185:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tscadc, align 4
  %inc187 = add nuw nsw i32 %cell_idx.0, 1
  %arrayidx188 = getelementptr %struct.ti_tscadc_dev, ptr %106, i32 0, i32 6, i32 %cell_idx.0
  %data189 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %data189 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data189, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %arrayidx188, align 8
  %112 = load ptr, ptr %tscadc, align 4
  %data191 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %data191 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data191, align 8
  %adc_feature_compatible = getelementptr inbounds %struct.ti_tscadc_data, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %adc_feature_compatible to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %adc_feature_compatible, align 4
  %of_compatible192 = getelementptr %struct.ti_tscadc_dev, ptr %106, i32 0, i32 6, i32 %cell_idx.0, i32 10
  %117 = ptrtoint ptr %of_compatible192 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %of_compatible192, align 8
  %platform_data193 = getelementptr %struct.ti_tscadc_dev, ptr %106, i32 0, i32 6, i32 %cell_idx.0, i32 7
  %118 = ptrtoint ptr %platform_data193 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %tscadc, ptr %platform_data193, align 4
  %pdata_size194 = getelementptr %struct.ti_tscadc_dev, ptr %106, i32 0, i32 6, i32 %cell_idx.0, i32 8
  %119 = ptrtoint ptr %pdata_size194 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 4, ptr %pdata_size194, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then185, %if.end183.if.end195_crit_edge
  %cell_idx.1 = phi i32 [ %inc187, %if.then185 ], [ %cell_idx.0, %if.end183.if.end195_crit_edge ]
  %120 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tscadc, align 4
  %cells197 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %121, i32 0, i32 6
  %call198 = call i32 @mfd_add_devices(ptr noundef %dev, i32 noundef -2, ptr noundef %cells197, i32 noundef %cell_idx.1, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199 = icmp slt i32 %call198, 0
  br i1 %cmp199, label %if.end195.err_disable_clk_crit_edge, label %if.end201

if.end195.err_disable_clk_crit_edge:              ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end201:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %tscadc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tscadc, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %124 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %driver_data.i.i, align 4
  br label %cleanup

err_disable_clk:                                  ; preds = %if.end195.err_disable_clk_crit_edge, %do.end109
  %err.0 = phi i32 [ %47, %do.end109 ], [ %call198, %if.end195.err_disable_clk_crit_edge ]
  %call.i285 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end201, %do.end88, %if.then76, %if.end65.cleanup_crit_edge, %do.end63, %do.end52, %do.end45, %do.end37, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end37 ], [ -22, %do.end45 ], [ -22, %do.end52 ], [ -22, %do.end63 ], [ %33, %if.then76 ], [ %44, %do.end88 ], [ %err.0, %err_disable_clk ], [ 0, %if.end201 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readouts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tscmag_wires) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tscadc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_tscadc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.ti_tscadc_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 84, i32 noundef 0) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @mfd_remove_devices(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscadc_suspend(ptr noundef %dev) #0 align 64 {
entry:
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ti_tscadc_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 84, i32 noundef 0) #7
  %call2 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @ti_tscadc_can_wakeup) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #7
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ctrl, align 4, !annotation !117
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %6, i32 noundef 64, ptr noundef nonnull %ctrl) #7
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl, align 4
  %and = and i32 %8, -18
  %or = or i32 %and, 1
  store i32 %or, ptr %ctrl, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_write(ptr noundef %10, i32 noundef 64, i32 noundef %or) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscadc_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %regmap = getelementptr inbounds %struct.ti_tscadc_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %clk_div = getelementptr inbounds %struct.ti_tscadc_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_div, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 76, i32 noundef %5) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %ctrl = getelementptr inbounds %struct.ti_tscadc_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl, align 8
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 64, i32 noundef %9) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 4456448, i32 4457728
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call30.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 88, i32 noundef %spec.select.i) #7
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrl, align 8
  %or = or i32 %19, 1
  %call7 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 64, i32 noundef %or) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_tscadc_can_wakeup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %2, null
  %phi.cast = zext i1 %tobool2.i to i32
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %3 = phi i32 [ 0, %entry.device_may_wakeup.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  ret i32 %3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104}
!llvm.named.register.sp = !{!106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__ksymtab_am335x_tsc_se_set_cache, !1, !"__ksymtab_am335x_tsc_se_set_cache", i1 false, i1 false}
!1 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 42, i32 1}
!2 = !{ptr @__ksymtab_am335x_tsc_se_set_once, !3, !"__ksymtab_am335x_tsc_se_set_once", i1 false, i1 false}
!3 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 80, i32 1}
!4 = !{ptr @__ksymtab_am335x_tsc_se_adc_done, !5, !"__ksymtab_am335x_tsc_se_adc_done", i1 false, i1 false}
!5 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 91, i32 1}
!6 = !{ptr @__ksymtab_am335x_tsc_se_clr, !7, !"__ksymtab_am335x_tsc_se_clr", i1 false, i1 false}
!7 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 102, i32 1}
!8 = !{ptr @__initcall__kmod_ti_am335x_tscadc__204_389_ti_tscadc_driver_init6, !9, !"__initcall__kmod_ti_am335x_tscadc__204_389_ti_tscadc_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 389, i32 1}
!10 = !{ptr @__exitcall_ti_tscadc_driver_exit, !9, !"__exitcall_ti_tscadc_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description205, !12, !"__UNIQUE_ID_description205", i1 false, i1 false}
!12 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 391, i32 1}
!13 = !{ptr @__UNIQUE_ID_author206, !14, !"__UNIQUE_ID_author206", i1 false, i1 false}
!14 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 392, i32 1}
!15 = !{ptr @__UNIQUE_ID_file207, !16, !"__UNIQUE_ID_file207", i1 false, i1 false}
!16 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 393, i32 1}
!17 = !{ptr @__UNIQUE_ID_license208, !16, !"__UNIQUE_ID_license208", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 66, i32 3}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 380, i32 13}
!22 = !{ptr @ti_tscadc_driver, !23, !"ti_tscadc_driver", i1 false, i1 false}
!23 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 378, i32 31}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 138, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ti_tscadc_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @ti_tscadc_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 145, i32 50}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 146, i32 30}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 147, i32 36}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 150, i32 31}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 169, i32 49}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 170, i32 2}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 173, i32 4}
!45 = !{ptr @ti_tscadc_probe._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ti_tscadc_probe._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 184, i32 3}
!49 = !{ptr @ti_tscadc_probe._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ti_tscadc_probe._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 189, i32 3}
!53 = !{ptr @ti_tscadc_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ti_tscadc_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 194, i32 3}
!57 = !{ptr @ti_tscadc_probe._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ti_tscadc_probe._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @ti_tscadc_probe._key, !60, !"_key", i1 false, i1 false}
!60 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 210, i32 19}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 214, i32 3}
!64 = !{ptr @ti_tscadc_probe._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ti_tscadc_probe._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ti_tscadc_probe.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 218, i32 2}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ti_tscadc_probe.__key.29, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 219, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 235, i32 3}
!74 = !{ptr @ti_tscadc_probe._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ti_tscadc_probe._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/mfd/ti_am335x_tscadc.h", i32 188, i32 12}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 23, i32 10}
!80 = !{ptr @tscadc_regmap_config, !81, !"tscadc_regmap_config", i1 false, i1 false}
!81 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 22, i32 35}
!82 = !{ptr @ti_tscadc_dt_ids, !83, !"ti_tscadc_dt_ids", i1 false, i1 false}
!83 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 371, i32 34}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 356, i32 22}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 357, i32 28}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 358, i32 28}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 359, i32 34}
!92 = !{ptr @tscdata, !93, !"tscdata", i1 false, i1 false}
!93 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 355, i32 36}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 364, i32 22}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 365, i32 28}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 366, i32 28}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 367, i32 34}
!102 = !{ptr @magdata, !103, !"magdata", i1 false, i1 false}
!103 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 363, i32 36}
!104 = !{ptr @tscadc_pm_ops, !105, !"tscadc_pm_ops", i1 false, i1 false}
!105 = !{!"../drivers/mfd/ti_am335x_tscadc.c", i32 353, i32 8}
!106 = !{!"sp"}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i8 0, i8 2}
!117 = !{!"auto-init"}
!118 = !{!"branch_weights", i32 1, i32 2000}
