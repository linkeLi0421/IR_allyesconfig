; ModuleID = '/llk/IR_all_yes/kernel/time/clocksource.c_pt.bc'
source_filename = "../kernel/time/clocksource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clocks_calc_mult_shift\22, \22a\22\09"
module asm "\09.weak\09__crc_clocks_calc_mult_shift\09\09\09\09"
module asm "\09.long\09__crc_clocks_calc_mult_shift\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clocks_calc_mult_shift:\09\09\09\09\09"
module asm "\09.asciz \09\22clocks_calc_mult_shift\22\09\09\09\09\09"
module asm "__kstrtabns_clocks_calc_mult_shift:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__clocksource_update_freq_scale\22, \22a\22\09"
module asm "\09.weak\09__crc___clocksource_update_freq_scale\09\09\09\09"
module asm "\09.long\09__crc___clocksource_update_freq_scale\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clocksource_update_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22__clocksource_update_freq_scale\22\09\09\09\09\09"
module asm "__kstrtabns___clocksource_update_freq_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__clocksource_register_scale\22, \22a\22\09"
module asm "\09.weak\09__crc___clocksource_register_scale\09\09\09\09"
module asm "\09.long\09__crc___clocksource_register_scale\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clocksource_register_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22__clocksource_register_scale\22\09\09\09\09\09"
module asm "__kstrtabns___clocksource_register_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+clocksource_change_rating\22, \22a\22\09"
module asm "\09.weak\09__crc_clocksource_change_rating\09\09\09\09"
module asm "\09.long\09__crc_clocksource_change_rating\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clocksource_change_rating:\09\09\09\09\09"
module asm "\09.asciz \09\22clocksource_change_rating\22\09\09\09\09\09"
module asm "__kstrtabns_clocksource_change_rating:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+clocksource_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_clocksource_unregister\09\09\09\09"
module asm "\09.long\09__crc_clocksource_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clocksource_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22clocksource_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_clocksource_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_clocks_calc_mult_shift = external dso_local constant [0 x i8], align 1
@__kstrtabns_clocks_calc_mult_shift = external dso_local constant [0 x i8], align 1
@__ksymtab_clocks_calc_mult_shift = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clocks_calc_mult_shift to i32), ptr @__kstrtab_clocks_calc_mult_shift, ptr @__kstrtabns_clocks_calc_mult_shift }, section "___ksymtab_gpl+clocks_calc_mult_shift", align 4
@suspend_clocksource = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@suspend_start = internal global { i64, [24 x i8] } zeroinitializer, align 32
@clocksource_start_suspend_timing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clocksource_start_suspend_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014clocksource: Failed to enable the non-suspend-able clocksource.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clocksource_start_suspend_timing\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/time/clocksource.c\00", [38 x i8] zeroinitializer }, align 32
@clocksource_start_suspend_timing._entry_ptr = internal global ptr @clocksource_start_suspend_timing._entry, section ".printk_index", align 4
@clocksource_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clocksource_list, ptr @clocksource_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_clocksource__172_1032_clocksource_done_booting5 = internal global ptr @clocksource_done_booting, section ".initcall5.init", align 4
@__clocksource_update_freq_scale.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__clocksource_update_freq_scale.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"timekeeping: Clocksource %s might overflow on 11%% adjustment\0A\00", [33 x i8] zeroinitializer }, align 32
@__clocksource_update_freq_scale._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1135, ptr null, ptr null }, align 1
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016clocksource: %s: mask: 0x%llx max_cycles: 0x%llx, max_idle_ns: %lld ns\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__clocksource_update_freq_scale\00", [32 x i8] zeroinitializer }, align 32
@__clocksource_update_freq_scale._entry_ptr = internal global ptr @__clocksource_update_freq_scale._entry, section ".printk_index", align 4
@__kstrtab___clocksource_update_freq_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns___clocksource_update_freq_scale = external dso_local constant [0 x i8], align 1
@__ksymtab___clocksource_update_freq_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clocksource_update_freq_scale to i32), ptr @__kstrtab___clocksource_update_freq_scale, ptr @__kstrtabns___clocksource_update_freq_scale }, section "___ksymtab_gpl+__clocksource_update_freq_scale", align 4
@__clocksource_register_scale.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__clocksource_register_scale._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1161, ptr null, ptr null }, align 1
@.str.7 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014clocksource: clocksource %s registered with invalid VDSO mode %d. Disabling VDSO support.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__clocksource_register_scale\00", [35 x i8] zeroinitializer }, align 32
@__clocksource_register_scale._entry_ptr = internal global ptr @__clocksource_register_scale._entry, section ".printk_index", align 4
@clocksource_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @clocksource_mutex, i64 52), ptr getelementptr (i8, ptr @clocksource_mutex, i64 52) }, ptr @clocksource_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab___clocksource_register_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns___clocksource_register_scale = external dso_local constant [0 x i8], align 1
@__ksymtab___clocksource_register_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clocksource_register_scale to i32), ptr @__kstrtab___clocksource_register_scale, ptr @__kstrtabns___clocksource_register_scale }, section "___ksymtab_gpl+__clocksource_register_scale", align 4
@__kstrtab_clocksource_change_rating = external dso_local constant [0 x i8], align 1
@__kstrtabns_clocksource_change_rating = external dso_local constant [0 x i8], align 1
@__ksymtab_clocksource_change_rating = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clocksource_change_rating to i32), ptr @__kstrtab_clocksource_change_rating, ptr @__kstrtabns_clocksource_change_rating }, section "___ksymtab+clocksource_change_rating", align 4
@__kstrtab_clocksource_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_clocksource_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_clocksource_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clocksource_unregister to i32), ptr @__kstrtab_clocksource_unregister, ptr @__kstrtabns_clocksource_unregister }, section "___ksymtab+clocksource_unregister", align 4
@__initcall__kmod_clocksource__177_1433_init_clocksource_sysfs6 = internal global ptr @init_clocksource_sysfs, section ".initcall6.init", align 4
@__setup_str_boot_override_clocksource = internal constant [13 x i8] c"clocksource=\00", section ".init.rodata", align 1
@__setup_boot_override_clocksource = internal global %struct.obs_kernel_param { ptr @__setup_str_boot_override_clocksource, ptr @boot_override_clocksource, i32 0 }, section ".init.setup", align 4
@__setup_str_boot_override_clock = internal constant [7 x i8] c"clock=\00", section ".init.rodata", align 1
@__setup_boot_override_clock = internal global %struct.obs_kernel_param { ptr @__setup_str_boot_override_clock, ptr @boot_override_clock, i32 0 }, section ".init.setup", align 4
@curr_clocksource = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@finished_booting = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clocksource_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clocksource_mutex\00", [46 x i8] zeroinitializer }, align 32
@override_name = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@__clocksource_select._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 971, ptr null, ptr null }, align 1
@.str.11 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\014clocksource: Override clocksource %s is unstable and not HRT compatible - cannot switch while in HRT/NOHZ mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__clocksource_select\00", [43 x i8] zeroinitializer }, align 32
@__clocksource_select._entry_ptr = internal global ptr @__clocksource_select._entry, section ".printk_index", align 4
@__clocksource_select._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 979, ptr null, ptr null }, align 1
@.str.14 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016clocksource: Override clocksource %s is not currently HRT compatible - deferring\0A\00", [44 x i8] zeroinitializer }, align 32
@__clocksource_select._entry_ptr.15 = internal global ptr @__clocksource_select._entry.13, section ".printk_index", align 4
@__clocksource_select._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 989, ptr null, ptr null }, align 1
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016clocksource: Switched to clocksource %s\0A\00", [53 x i8] zeroinitializer }, align 32
@__clocksource_select._entry_ptr.18 = internal global ptr @__clocksource_select._entry.16, section ".printk_index", align 4
@__clocksource_suspend_select._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 696, ptr null, ptr null }, align 1
@.str.19 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014clocksource: Nonstop clocksource %s should not supply suspend/resume interfaces\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__clocksource_suspend_select\00", [35 x i8] zeroinitializer }, align 32
@__clocksource_suspend_select._entry_ptr = internal global ptr @__clocksource_suspend_select._entry, section ".printk_index", align 4
@clocksource_subsys = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.21, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@device_clocksource = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @clocksource_subsys, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @clocksource_groups, ptr null, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clocksource\00", [20 x i8] zeroinitializer }, align 32
@clocksource_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @clocksource_group, ptr null], [24 x i8] zeroinitializer }, align 32
@clocksource_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @clocksource_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@clocksource_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_current_clocksource, ptr @dev_attr_unbind_clocksource, ptr @dev_attr_available_clocksource, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_current_clocksource = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_clocksource_show, ptr @current_clocksource_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_unbind_clocksource = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @unbind_clocksource_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_clocksource = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_clocksource_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"current_clocksource\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unbind_clocksource\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"available_clocksource\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pmtmr\00", [26 x i8] zeroinitializer }, align 32
@boot_override_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014clocksource: clock=pmtmr is deprecated - use clocksource=acpi_pm\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boot_override_clock\00", [44 x i8] zeroinitializer }, align 32
@boot_override_clock._entry_ptr = internal global ptr @boot_override_clock._entry, section ".printk_index", align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acpi_pm\00", [24 x i8] zeroinitializer }, align 32
@boot_override_clock._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014clocksource: clock= boot option is deprecated - use clocksource=xyz\0A\00", [57 x i8] zeroinitializer }, align 32
@boot_override_clock._entry_ptr.34 = internal global ptr @boot_override_clock._entry.32, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"suspend_clocksource\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 91, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"suspend_start\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 96, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 755, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"clocksource_list\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 92, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1128, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1134, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1160, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"clocksource_mutex\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"curr_clocksource\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 90, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"finished_booting\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 93, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"override_name\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 94, i32 13 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 970, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 978, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 989, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 695, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"clocksource_subsys\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1412, i32 24 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"device_clocksource\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1417, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1413, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"clocksource_groups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"clocksource_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1410, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"clocksource_attrs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1404, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [29 x i8] c"dev_attr_current_clocksource\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [28 x i8] c"dev_attr_unbind_clocksource\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [31 x i8] c"dev_attr_available_clocksource\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1331, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1282, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1366, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1402, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1393, i32 7 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1398, i32 51 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1463, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1464, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1465, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [29 x i8] c"../kernel/time/clocksource.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1467, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__clocksource_register_scale._entry, ptr @__clocksource_register_scale._entry_ptr, ptr @__clocksource_select._entry, ptr @__clocksource_select._entry.13, ptr @__clocksource_select._entry.16, ptr @__clocksource_select._entry_ptr, ptr @__clocksource_select._entry_ptr.15, ptr @__clocksource_select._entry_ptr.18, ptr @__clocksource_suspend_select._entry, ptr @__clocksource_suspend_select._entry_ptr, ptr @__clocksource_update_freq_scale._entry, ptr @__clocksource_update_freq_scale._entry_ptr, ptr @__initcall__kmod_clocksource__172_1032_clocksource_done_booting5, ptr @__initcall__kmod_clocksource__177_1433_init_clocksource_sysfs6, ptr @__ksymtab___clocksource_register_scale, ptr @__ksymtab___clocksource_update_freq_scale, ptr @__ksymtab_clocks_calc_mult_shift, ptr @__ksymtab_clocksource_change_rating, ptr @__ksymtab_clocksource_unregister, ptr @__setup_boot_override_clock, ptr @__setup_boot_override_clocksource, ptr @boot_override_clock._entry, ptr @boot_override_clock._entry.32, ptr @boot_override_clock._entry_ptr, ptr @boot_override_clock._entry_ptr.34, ptr @clocksource_start_suspend_timing._entry, ptr @clocksource_start_suspend_timing._entry_ptr, ptr @suspend_clocksource, ptr @suspend_start, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clocksource_list, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @clocksource_mutex, ptr @curr_clocksource, ptr @finished_booting, ptr @.str.9, ptr @.str.10, ptr @override_name, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @clocksource_subsys, ptr @device_clocksource, ptr @.str.21, ptr @clocksource_groups, ptr @clocksource_group, ptr @clocksource_attrs, ptr @dev_attr_current_clocksource, ptr @dev_attr_unbind_clocksource, ptr @dev_attr_available_clocksource, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_clocksource to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_start to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_start_suspend_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curr_clocksource to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @finished_booting to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @override_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_subsys to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_clocksource to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_clocksource to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_unbind_clocksource to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_clocksource to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_override_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_override_clock._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @clocks_calc_mult_shift(ptr nocapture noundef writeonly %mult, ptr nocapture noundef writeonly %shift, i32 noundef %from, i32 noundef %to, i32 noundef %maxsec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %maxsec to i64
  %conv1 = zext i32 %from to i64
  %mul = mul nuw i64 %conv, %conv1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %tobool.not318 = icmp ult i64 %mul, 4294967296
  br i1 %tobool.not318, label %entry.for.cond.preheader_crit_edge, label %while.body.preheader

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

while.body.preheader:                             ; preds = %entry
  %shr = lshr i64 %mul, 32
  br label %while.body

for.cond.preheader:                               ; preds = %while.body.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %sftacc.0.lcssa = phi i32 [ 32, %entry.for.cond.preheader_crit_edge ], [ %dec, %while.body.for.cond.preheader_crit_edge ]
  %conv4 = zext i32 %to to i64
  %div289 = lshr i32 %from, 1
  %conv5 = zext i32 %div289 to i64
  %sh_prom196 = zext i32 %sftacc.0.lcssa to i64
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %sftacc.0320 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 32, %while.body.preheader ]
  %tmp.0319 = phi i64 [ %shr2, %while.body.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %shr2 = lshr i64 %tmp.0319, 1
  %dec = add nsw i32 %sftacc.0320, -1
  %tobool.not = icmp ult i64 %tmp.0319, 2
  br i1 %tobool.not, label %while.body.for.cond.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.for.cond.preheader_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %sft.0324 = phi i32 [ 32, %for.cond.preheader ], [ %dec202, %for.inc.for.body_crit_edge ]
  %sh_prom = zext i32 %sft.0324 to i64
  %shl = shl i64 %conv4, %sh_prom
  %add = add i64 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp180 = icmp ult i64 %add, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !126

if.then184:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv185 = trunc i64 %add to i32
  %div188 = udiv i32 %conv185, %from
  %conv189 = zext i32 %div188 to i64
  br label %if.end194

if.else190:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %from, i64 %add) #15, !srcloc !127
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %tmp.2 = phi i64 [ %conv189, %if.then184 ], [ %asmresult1.i, %if.else190 ]
  %shr197 = lshr i64 %tmp.2, %sh_prom196
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr197)
  %cmp198 = icmp eq i64 %shr197, 0
  br i1 %cmp198, label %if.end194.for.end_crit_edge, label %for.inc

if.end194.for.end_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end194
  %dec202 = add nsw i32 %sft.0324, -1
  %cmp.not = icmp eq i32 %dec202, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end194.for.end_crit_edge
  %sft.0.lcssa = phi i32 [ %sft.0324, %if.end194.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %extract.t317.le = trunc i64 %tmp.2 to i32
  %1 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %extract.t317.le, ptr %mult, align 4
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sft.0.lcssa, ptr %shift, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @clocksource_mark_unstable(ptr nocapture noundef %cs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clocksource_start_suspend_timing(ptr nocapture noundef readnone %cs, i64 noundef %start_cycles) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @suspend_clocksource, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %cmp.i = icmp eq ptr %0, %cs
  br i1 %cmp.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store i64 %start_cycles, ptr @suspend_start, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %enable = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 14
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enable, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end2.if.end23_crit_edge, label %land.lhs.true

if.end2.if.end23_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end2
  %call5 = tail call i32 %2(ptr noundef nonnull %0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end23_crit_edge, label %land.end

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.end:                                         ; preds = %land.lhs.true
  %.b26 = load i1, ptr @clocksource_start_suspend_timing.__already_done, align 1
  br i1 %.b26, label %land.end.return_crit_edge, label %if.then13, !prof !126

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @clocksource_start_suspend_timing.__already_done, align 1
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %return

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end2.if.end23_crit_edge
  %3 = load ptr, ptr @suspend_clocksource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call24 = tail call i64 %5(ptr noundef %3) #12
  store i64 %call24, ptr @suspend_start, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then13, %land.end.return_crit_edge, %if.then1, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @clocksource_stop_suspend_timing(ptr nocapture noundef readnone %cs, i64 noundef %cycle_now) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @suspend_clocksource, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp eq ptr %0, %cs
  br i1 %cmp.i, label %if.end.if.end3_crit_edge, label %if.else

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %call2 = tail call i64 %2(ptr noundef nonnull %0) #12
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end.if.end3_crit_edge
  %now.0 = phi i64 [ %call2, %if.else ], [ %cycle_now, %if.end.if.end3_crit_edge ]
  %3 = load i64, ptr @suspend_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %now.0, i64 %3)
  %cmp = icmp ugt i64 %now.0, %3
  br i1 %cmp, label %if.then4, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end3
  %4 = load ptr, ptr @suspend_clocksource, align 4
  %mask = getelementptr inbounds %struct.clocksource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %mask, align 8
  %sub.i = sub i64 %now.0, %3
  %and.i = and i64 %6, %sub.i
  %mult = getelementptr inbounds %struct.clocksource, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mult, align 8
  %shift = getelementptr inbounds %struct.clocksource, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %conv.i.i = and i64 %and.i, 4294967295
  %conv1.i.i = zext i32 %8 to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %sh_prom.i = zext i32 %10 to i64
  %shr2.i = lshr i64 %mul.i.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %tobool.not.i = icmp ult i64 %and.i, 4294967296
  br i1 %tobool.not.i, label %if.then4.if.end7_crit_edge, label %if.then.i

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i64 %and.i, 32
  %mul.i12.i = mul nuw i64 %shr.i, %conv1.i.i
  %sub.i18 = sub i32 32, %10
  %sh_prom4.i = zext i32 %sub.i18 to i64
  %shl.i = shl i64 %mul.i12.i, %sh_prom4.i
  %add.i = add i64 %shl.i, %shr2.i
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then4.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %nsec.0 = phi i64 [ 0, %if.end3.if.end7_crit_edge ], [ %add.i, %if.then.i ], [ %shr2.i, %if.then4.if.end7_crit_edge ]
  %11 = load ptr, ptr @suspend_clocksource, align 4
  %cmp.i19 = icmp eq ptr %11, %cs
  br i1 %cmp.i19, label %if.end7.cleanup_crit_edge, label %land.lhs.true

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %disable = getelementptr inbounds %struct.clocksource, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable, align 8
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %13(ptr noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ %nsec.0, %if.then10 ], [ %nsec.0, %land.lhs.true.cleanup_crit_edge ], [ %nsec.0, %if.end7.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clocksource_suspend() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clocksource_list, i32 0, i32 1), align 4
  %cmp.not12 = icmp eq ptr %.pn10, @clocksource_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %suspend = getelementptr i8, ptr %.pn13, i32 32
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %cs.014 = getelementptr i8, ptr %.pn13, i32 -52
  tail call void %1(ptr noundef %cs.014) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn13, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clocksource_resume() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn10 = load ptr, ptr @clocksource_list, align 4
  %cmp.not12 = icmp eq ptr %.pn10, @clocksource_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %resume = getelementptr i8, ptr %.pn13, i32 36
  %0 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resume, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %cs.014 = getelementptr i8, ptr %.pn13, i32 -52
  tail call void %1(ptr noundef %cs.014) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @clocksource_touch_watchdog() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i64 @clocks_calc_max_nsecs(i32 noundef %mult, i32 noundef %shift, i32 noundef %maxadj, i64 noundef %mask, ptr noundef writeonly %max_cyc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %maxadj, %mult
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 -1) #15, !srcloc !127
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  %1 = tail call i64 @llvm.umin.i64(i64 %asmresult1.i, i64 %mask)
  %tobool190.not = icmp eq ptr %max_cyc, null
  br i1 %tobool190.not, label %entry.if.end192_crit_edge, label %if.then191

entry.if.end192_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %max_cyc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %max_cyc, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %entry.if.end192_crit_edge
  %sub188 = sub i32 %mult, %maxadj
  %conv.i = zext i32 %sub188 to i64
  %mul.i = mul i64 %1, %conv.i
  %sh_prom.i = zext i32 %shift to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %shr193 = lshr i64 %shr.i, 1
  ret i64 %shr193
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clocksource_done_booting() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %call = tail call ptr @clocksource_default_clock() #16
  store ptr %call, ptr @curr_clocksource, align 4
  store i1 true, ptr @finished_booting, align 4
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__clocksource_update_freq_scale(ptr noundef %cs, i32 noundef %scale, i32 noundef %freq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool.not = icmp eq i32 %freq, 0
  br i1 %tobool.not, label %entry.if.else435_crit_edge, label %if.then

entry.if.else435_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else435

if.then:                                          ; preds = %entry
  %mask = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp166 = icmp ult i64 %1, 4294967296
  br i1 %cmp166, label %if.then170, label %if.else176, !prof !126

if.then170:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv171 = trunc i64 %1 to i32
  %div174 = udiv i32 %conv171, %freq
  %conv175 = zext i32 %div174 to i64
  br label %if.else381

if.else176:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %freq, i64 %1) #15, !srcloc !127
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  br label %if.else381

if.else381:                                       ; preds = %if.else176, %if.then170
  %sec.0 = phi i64 [ %conv175, %if.then170 ], [ %asmresult1.i, %if.else176 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sec.0)
  %cmp383 = icmp ult i64 %sec.0, 4294967296
  br i1 %cmp383, label %if.then391, label %if.else397, !prof !126

if.then391:                                       ; preds = %if.else381
  call void @__sanitizer_cov_trace_pc() #14
  %conv392 = trunc i64 %sec.0 to i32
  %div395 = udiv i32 %conv392, %scale
  %conv396 = zext i32 %div395 to i64
  br label %if.end401

if.else397:                                       ; preds = %if.else381
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %scale, i64 %sec.0) #15, !srcloc !127
  %asmresult1.i812 = extractvalue { i64, i64 } %3, 1
  br label %if.end401

if.end401:                                        ; preds = %if.else397, %if.then391
  %sec.1 = phi i64 [ %conv396, %if.then391 ], [ %asmresult1.i812, %if.else397 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sec.1)
  %tobool403.not = icmp eq i64 %sec.1, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 600, i64 %sec.1)
  %cmp406 = icmp ugt i64 %sec.1, 600
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %1)
  %cmp410 = icmp ugt i64 %1, 4294967295
  %or.cond876 = select i1 %cmp406, i1 %cmp410, i1 false
  %mult = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 2
  %shift = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 3
  %div415 = udiv i32 1000000000, %scale
  %4 = trunc i64 %sec.1 to i32
  %5 = select i1 %or.cond876, i32 600, i32 %4
  %6 = select i1 %tobool403.not, i32 1, i32 %5
  %conv418 = mul i32 %6, %scale
  %conv.i = zext i32 %conv418 to i64
  %conv1.i = zext i32 %freq to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %tobool.not318.i = icmp ult i64 %mul.i, 4294967296
  br i1 %tobool.not318.i, label %if.end401.for.cond.preheader.i_crit_edge, label %while.body.preheader.i

if.end401.for.cond.preheader.i_crit_edge:         ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

while.body.preheader.i:                           ; preds = %if.end401
  %shr.i = lshr i64 %mul.i, 32
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %while.body.i.for.cond.preheader.i_crit_edge, %if.end401.for.cond.preheader.i_crit_edge
  %sftacc.0.lcssa.i = phi i32 [ 32, %if.end401.for.cond.preheader.i_crit_edge ], [ %dec.i, %while.body.i.for.cond.preheader.i_crit_edge ]
  %conv4.i = zext i32 %div415 to i64
  %div289.i = lshr i32 %freq, 1
  %conv5.i = zext i32 %div289.i to i64
  %sh_prom196.i = zext i32 %sftacc.0.lcssa.i to i64
  br label %for.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %sftacc.0320.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 32, %while.body.preheader.i ]
  %tmp.0319.i = phi i64 [ %shr2.i, %while.body.i.while.body.i_crit_edge ], [ %shr.i, %while.body.preheader.i ]
  %shr2.i = lshr i64 %tmp.0319.i, 1
  %dec.i = add nsw i32 %sftacc.0320.i, -1
  %tobool.not.i = icmp ult i64 %tmp.0319.i, 2
  br i1 %tobool.not.i, label %while.body.i.for.cond.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.for.cond.preheader.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %sft.0324.i = phi i32 [ 32, %for.cond.preheader.i ], [ %dec202.i, %for.inc.i.for.body.i_crit_edge ]
  %sh_prom.i = zext i32 %sft.0324.i to i64
  %shl.i = shl i64 %conv4.i, %sh_prom.i
  %add.i = add i64 %shl.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp180.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp180.i, label %if.then184.i, label %if.else190.i, !prof !126

if.then184.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv185.i = trunc i64 %add.i to i32
  %div188.i = udiv i32 %conv185.i, %freq
  %conv189.i = zext i32 %div188.i to i64
  br label %if.end194.i

if.else190.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %freq, i64 %add.i) #15, !srcloc !127
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.else190.i, %if.then184.i
  %tmp.2.i = phi i64 [ %conv189.i, %if.then184.i ], [ %asmresult1.i.i, %if.else190.i ]
  %shr197.i = lshr i64 %tmp.2.i, %sh_prom196.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr197.i)
  %cmp198.i = icmp eq i64 %shr197.i, 0
  br i1 %cmp198.i, label %if.end194.i.if.end419_crit_edge, label %for.inc.i

if.end194.i.if.end419_crit_edge:                  ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

for.inc.i:                                        ; preds = %if.end194.i
  %dec202.i = add nsw i32 %sft.0324.i, -1
  %cmp.not.i813 = icmp eq i32 %dec202.i, 0
  br i1 %cmp.not.i813, label %for.inc.i.if.end419_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end419_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

if.end419:                                        ; preds = %for.inc.i.if.end419_crit_edge, %if.end194.i.if.end419_crit_edge
  %sft.0.lcssa.i = phi i32 [ %sft.0324.i, %if.end194.i.if.end419_crit_edge ], [ 0, %for.inc.i.if.end419_crit_edge ]
  %extract.t317.le.i = trunc i64 %tmp.2.i to i32
  %8 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %extract.t317.le.i, ptr %mult, align 4
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sft.0.lcssa.i, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scale)
  %tobool420.not = icmp eq i32 %scale, 0
  br i1 %tobool420.not, label %if.end419.if.else435_crit_edge, label %land.lhs.true423

if.end419.if.else435_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else435

land.lhs.true423:                                 ; preds = %if.end419
  %uncertainty_margin = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 6
  %10 = ptrtoint ptr %uncertainty_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uncertainty_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool424.not = icmp eq i32 %11, 0
  br i1 %tobool424.not, label %if.then425, label %land.lhs.true423.if.else435_crit_edge

land.lhs.true423.if.else435_crit_edge:            ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else435

if.then425:                                       ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #14
  %mul426 = mul i32 %freq, %scale
  %div427 = udiv i32 1000000000, %mul426
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %mul426)
  %cmp430 = icmp ugt i32 %mul426, 5000
  %spec.store.select = select i1 %cmp430, i32 200000, i32 %div427
  %12 = ptrtoint ptr %uncertainty_margin to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %uncertainty_margin, align 4
  br label %if.end441

if.else435:                                       ; preds = %land.lhs.true423.if.else435_crit_edge, %if.end419.if.else435_crit_edge, %entry.if.else435_crit_edge
  %uncertainty_margin436 = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 6
  %13 = ptrtoint ptr %uncertainty_margin436 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uncertainty_margin436, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool437.not = icmp eq i32 %14, 0
  br i1 %tobool437.not, label %if.then438, label %if.else435.if.end441_crit_edge

if.else435.if.end441_crit_edge:                   ; preds = %if.else435
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end441

if.then438:                                       ; preds = %if.else435
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %uncertainty_margin436 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 31250000, ptr %uncertainty_margin436, align 4
  br label %if.end441

if.end441:                                        ; preds = %if.then438, %if.else435.if.end441_crit_edge, %if.then425
  %uncertainty_margin442 = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 6
  %16 = ptrtoint ptr %uncertainty_margin442 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uncertainty_margin442, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %17)
  %cmp443 = icmp ult i32 %17, 200000
  br i1 %cmp443, label %land.rhs, label %if.end441.if.end483_crit_edge

if.end441.if.end483_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end483

land.rhs:                                         ; preds = %if.end441
  %.b784 = load i1, ptr @__clocksource_update_freq_scale.__already_done, align 1
  br i1 %.b784, label %land.rhs.if.end483_crit_edge, label %if.then460, !prof !126

land.rhs.if.end483_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end483

if.then460:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__clocksource_update_freq_scale.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1110, i32 noundef 9, ptr noundef null) #12
  br label %if.end483

if.end483:                                        ; preds = %if.then460, %land.rhs.if.end483_crit_edge, %if.end441.if.end483_crit_edge
  %mult.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 2
  %18 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mult.i, align 8
  %conv.i814 = zext i32 %19 to i64
  %mul.i815 = mul nuw nsw i64 %conv.i814, 11
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i815, i32 0) #15, !srcloc !128
  %asmresult.i.i816 = extractvalue { i64, i32 } %20, 0
  %asmresult4.i.i817 = extractvalue { i64, i32 } %20, 1
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i815, i64 %asmresult.i.i816, i32 %asmresult4.i.i817) #15, !srcloc !129
  %asmresult10.i.i818 = extractvalue { i64, i32 } %21, 0
  %extract264.i = lshr i64 %asmresult10.i.i818, 6
  %extract.t265.i = trunc i64 %extract264.i to i32
  %maxadj = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 5
  %22 = ptrtoint ptr %maxadj to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %extract.t265.i, ptr %maxadj, align 8
  br i1 %tobool.not, label %if.end483.while.end_crit_edge, label %land.rhs493.preheader

if.end483.while.end_crit_edge:                    ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs493.preheader:                            ; preds = %if.end483
  %23 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mult.i, align 8
  %25 = ptrtoint ptr %maxadj to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxadj, align 8
  %27 = xor i32 %24, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp498877 = icmp ugt i32 %26, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp504878 = icmp ugt i32 %26, %24
  %or.cond879 = or i1 %cmp498877, %cmp504878
  br i1 %or.cond879, label %while.body.lr.ph, label %land.rhs493.preheader.while.end_crit_edge

land.rhs493.preheader.while.end_crit_edge:        ; preds = %land.rhs493.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %land.rhs493.preheader
  %shift509 = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %28 = phi i32 [ %24, %while.body.lr.ph ], [ %shr508, %while.body.while.body_crit_edge ]
  %shr508 = lshr i32 %28, 1
  %29 = ptrtoint ptr %mult.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr508, ptr %mult.i, align 8
  %30 = ptrtoint ptr %shift509 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shift509, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %shift509, align 4
  %conv.i820 = zext i32 %shr508 to i64
  %mul.i821 = mul nuw nsw i64 %conv.i820, 11
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i821, i32 0) #15, !srcloc !128
  %asmresult.i.i822 = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i823 = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i821, i64 %asmresult.i.i822, i32 %asmresult4.i.i823) #15, !srcloc !129
  %asmresult10.i.i824 = extractvalue { i64, i32 } %33, 0
  %extract264.i825 = lshr i64 %asmresult10.i.i824, 6
  %extract.t265.i826 = trunc i64 %extract264.i825 to i32
  %34 = ptrtoint ptr %maxadj to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %extract.t265.i826, ptr %maxadj, align 8
  %35 = xor i32 %shr508, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %extract.t265.i826, i32 %35)
  %cmp498 = icmp ugt i32 %extract.t265.i826, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %shr508, i32 %extract.t265.i826)
  %cmp504 = icmp ult i32 %shr508, %extract.t265.i826
  %or.cond = or i1 %cmp498, %cmp504
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs493.preheader.while.end_crit_edge, %if.end483.while.end_crit_edge
  %36 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mult.i, align 8
  %38 = ptrtoint ptr %maxadj to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxadj, align 8
  %40 = xor i32 %37, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %40)
  %cmp517 = icmp ugt i32 %39, %40
  br i1 %cmp517, label %land.rhs526, label %while.end.if.end564_crit_edge

while.end.if.end564_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end564

land.rhs526:                                      ; preds = %while.end
  %.b782783 = load i1, ptr @__clocksource_update_freq_scale.__already_done.3, align 1
  br i1 %.b782783, label %land.rhs526.if.end564_crit_edge, label %if.then537, !prof !126

land.rhs526.if.end564_crit_edge:                  ; preds = %land.rhs526
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end564

if.then537:                                       ; preds = %land.rhs526
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__clocksource_update_freq_scale.__already_done.3, align 1
  %name = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 8
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1130, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %42) #12
  br label %if.end564

if.end564:                                        ; preds = %if.then537, %land.rhs526.if.end564_crit_edge, %while.end.if.end564_crit_edge
  %43 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mult.i, align 8
  %shift.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 3
  %45 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %shift.i, align 4
  %47 = ptrtoint ptr %maxadj to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %maxadj, align 8
  %mask.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 1
  %49 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %mask.i, align 8
  %add.i.i = add i32 %48, %44
  %51 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i.i, i64 -1) #15, !srcloc !127
  %asmresult1.i.i.i = extractvalue { i64, i64 } %51, 1
  %max_cycles.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 7
  %52 = tail call i64 @llvm.umin.i64(i64 %asmresult1.i.i.i, i64 %50) #12
  %53 = ptrtoint ptr %max_cycles.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %max_cycles.i, align 8
  %sub188.i.i = sub i32 %44, %48
  %conv.i.i.i = zext i32 %sub188.i.i to i64
  %mul.i.i.i = mul i64 %52, %conv.i.i.i
  %sh_prom.i.i.i = zext i32 %46 to i64
  %shr.i.i.i = lshr i64 %mul.i.i.i, %sh_prom.i.i.i
  %shr193.i.i = lshr i64 %shr.i.i.i, 1
  %max_idle_ns.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 4
  %54 = ptrtoint ptr %max_idle_ns.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shr193.i.i, ptr %max_idle_ns.i, align 8
  %name576 = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 8
  %55 = ptrtoint ptr %name576 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name576, align 8
  %call578 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %56, i64 noundef %50, i64 noundef %52, i64 noundef %shr193.i.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__clocksource_register_scale(ptr noundef %cs, i32 noundef %scale, i32 noundef %freq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.rhs:                                         ; preds = %entry
  %.b63 = load i1, ptr @__clocksource_register_scale.__already_done, align 1
  br i1 %.b63, label %land.rhs.if.then36_crit_edge, label %if.then, !prof !126

land.rhs.if.then36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__clocksource_register_scale.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1156, i32 noundef 9, ptr noundef null) #12
  br label %if.then36

if.then36:                                        ; preds = %if.then, %land.rhs.if.then36_crit_edge
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %id, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %entry.if.end38_crit_edge
  %vdso_clock_mode = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 12
  %3 = ptrtoint ptr %vdso_clock_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vdso_clock_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp41 = icmp ugt i32 %4, 1
  br i1 %cmp41, label %do.end45, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 8
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %6, i32 noundef %4) #16
  %7 = ptrtoint ptr %vdso_clock_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %vdso_clock_mode, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end45, %if.end38.if.end49_crit_edge
  tail call void @__clocksource_update_freq_scale(ptr noundef %cs, i32 noundef %scale, i32 noundef %freq)
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %rating3.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end49
  %entry1.0.i = phi ptr [ @clocksource_list, %if.end49 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %entry1.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @clocksource_list
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %rating.i = getelementptr i8, ptr %.pn.i, i32 8
  %9 = ptrtoint ptr %rating.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rating.i, align 4
  %11 = ptrtoint ptr %rating3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rating3.i, align 4
  %cmp4.i = icmp slt i32 %10, %12
  br i1 %cmp4.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %list10.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list10.i, ptr noundef %entry1.0.i, ptr noundef %.pn.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.clocksource_enqueue.exit_crit_edge

for.end.i.clocksource_enqueue.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clocksource_enqueue.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list10.i, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %list10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.i, ptr %list10.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry1.0.i, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %entry1.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list10.i, ptr %entry1.0.i, align 4
  br label %clocksource_enqueue.exit

clocksource_enqueue.exit:                         ; preds = %if.end.i.i.i, %for.end.i.clocksource_enqueue.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 13
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %clocksource_enqueue.exit.clocksource_enqueue_watchdog.exit_crit_edge, label %if.then.i

clocksource_enqueue.exit.clocksource_enqueue_watchdog.exit_crit_edge: ; preds = %clocksource_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clocksource_enqueue_watchdog.exit

if.then.i:                                        ; preds = %clocksource_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %18, 32
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %flags.i, align 8
  br label %clocksource_enqueue_watchdog.exit

clocksource_enqueue_watchdog.exit:                ; preds = %if.then.i, %clocksource_enqueue.exit.clocksource_enqueue_watchdog.exit_crit_edge
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #12
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 8
  %and.i66 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i67, label %clocksource_enqueue_watchdog.exit.__clocksource_suspend_select.exit_crit_edge, label %if.end.i

clocksource_enqueue_watchdog.exit.__clocksource_suspend_select.exit_crit_edge: ; preds = %clocksource_enqueue_watchdog.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__clocksource_suspend_select.exit

if.end.i:                                         ; preds = %clocksource_enqueue_watchdog.exit
  %suspend.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 16
  %22 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %resume.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 17
  %24 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resume.i, align 8
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end4.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i.if.end4.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %name.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 8
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %27) #16
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %lor.lhs.false.i.if.end4.i_crit_edge
  %28 = load ptr, ptr @suspend_clocksource, align 4
  %tobool5.not.i = icmp eq ptr %28, null
  br i1 %tobool5.not.i, label %if.end4.i.if.then8.i_crit_edge, label %lor.lhs.false6.i

if.end4.i.if.then8.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

lor.lhs.false6.i:                                 ; preds = %if.end4.i
  %29 = ptrtoint ptr %rating3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rating3.i, align 4
  %rating7.i = getelementptr inbounds %struct.clocksource, ptr %28, i32 0, i32 10
  %31 = ptrtoint ptr %rating7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rating7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i = icmp sgt i32 %30, %32
  br i1 %cmp.i, label %lor.lhs.false6.i.if.then8.i_crit_edge, label %lor.lhs.false6.i.__clocksource_suspend_select.exit_crit_edge

lor.lhs.false6.i.__clocksource_suspend_select.exit_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__clocksource_suspend_select.exit

lor.lhs.false6.i.if.then8.i_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false6.i.if.then8.i_crit_edge, %if.end4.i.if.then8.i_crit_edge
  store ptr %cs, ptr @suspend_clocksource, align 4
  br label %__clocksource_suspend_select.exit

__clocksource_suspend_select.exit:                ; preds = %if.then8.i, %lor.lhs.false6.i.__clocksource_suspend_select.exit_crit_edge, %clocksource_enqueue_watchdog.exit.__clocksource_suspend_select.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clocksource_change_rating(ptr noundef %cs, i32 noundef %rating) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %list.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del.exit.i_crit_edge

entry.list_del.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %entry.list_del.exit.i_crit_edge
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rating1.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 10
  %8 = ptrtoint ptr %rating1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rating, ptr %rating1.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %list_del.exit.i
  %entry1.0.i.i = phi ptr [ @clocksource_list, %list_del.exit.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %entry1.0.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @clocksource_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %rating.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %10 = ptrtoint ptr %rating.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rating.i.i, align 4
  %cmp4.i.i = icmp slt i32 %11, %rating
  br i1 %cmp4.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %entry1.0.i.i, ptr noundef %.pn.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.__clocksource_change_rating.exit_crit_edge

for.end.i.i.__clocksource_change_rating.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__clocksource_change_rating.exit

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i4.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %prev1.i.i.i4.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.pn.i.i, ptr %list.i, align 4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry1.0.i.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %entry1.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %entry1.0.i.i, align 4
  br label %__clocksource_change_rating.exit

__clocksource_change_rating.exit:                 ; preds = %if.end.i.i.i.i, %for.end.i.i.__clocksource_change_rating.exit_crit_edge
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #12
  %.pn13.i = load ptr, ptr @clocksource_list, align 4
  %cmp.not15.i = icmp eq ptr %.pn13.i, @clocksource_list
  br i1 %cmp.not15.i, label %__clocksource_change_rating.exit.clocksource_suspend_select.exit_crit_edge, label %__clocksource_change_rating.exit.for.body.i_crit_edge

__clocksource_change_rating.exit.for.body.i_crit_edge: ; preds = %__clocksource_change_rating.exit
  br label %for.body.i

__clocksource_change_rating.exit.clocksource_suspend_select.exit_crit_edge: ; preds = %__clocksource_change_rating.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clocksource_suspend_select.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %__clocksource_change_rating.exit.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %__clocksource_change_rating.exit.for.body.i_crit_edge ]
  %cs.017.i = getelementptr i8, ptr %.pn16.i, i32 -52
  %flags.i.i = getelementptr i8, ptr %.pn16.i, i32 20
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %suspend.i.i = getelementptr i8, ptr %.pn16.i, i32 32
  %18 = ptrtoint ptr %suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %suspend.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %resume.i.i = getelementptr i8, ptr %.pn16.i, i32 36
  %20 = ptrtoint ptr %resume.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resume.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end4.i.i_crit_edge, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

lor.lhs.false.i.i.if.end4.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %name.i.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %22 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i.i, align 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %23) #16
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %do.end.i.i, %lor.lhs.false.i.i.if.end4.i.i_crit_edge
  %24 = load ptr, ptr @suspend_clocksource, align 4
  %tobool5.not.i.i = icmp eq ptr %24, null
  br i1 %tobool5.not.i.i, label %if.end4.i.i.if.then8.i.i_crit_edge, label %lor.lhs.false6.i.i

if.end4.i.i.if.then8.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i.i

lor.lhs.false6.i.i:                               ; preds = %if.end4.i.i
  %rating.i.i1 = getelementptr i8, ptr %.pn16.i, i32 8
  %25 = ptrtoint ptr %rating.i.i1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rating.i.i1, align 4
  %rating7.i.i = getelementptr inbounds %struct.clocksource, ptr %24, i32 0, i32 10
  %27 = ptrtoint ptr %rating7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rating7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i.i = icmp sgt i32 %26, %28
  br i1 %cmp.i.i, label %lor.lhs.false6.i.i.if.then8.i.i_crit_edge, label %lor.lhs.false6.i.i.for.inc.i_crit_edge

lor.lhs.false6.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false6.i.i.if.then8.i.i_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %lor.lhs.false6.i.i.if.then8.i.i_crit_edge, %if.end4.i.i.if.then8.i.i_crit_edge
  store ptr %cs.017.i, ptr @suspend_clocksource, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i.i, %lor.lhs.false6.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @clocksource_list
  br i1 %cmp.not.i, label %for.inc.i.clocksource_suspend_select.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.clocksource_suspend_select.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clocksource_suspend_select.exit

clocksource_suspend_select.exit:                  ; preds = %for.inc.i.clocksource_suspend_select.exit_crit_edge, %__clocksource_change_rating.exit.clocksource_suspend_select.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clocksource_unregister(ptr noundef %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %list = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @clocksource_unbind(ptr noundef %cs)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clocksource_unbind(ptr noundef %cs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @curr_clocksource, align 4
  %cmp = icmp eq ptr %0, %cs
  br i1 %cmp, label %if.then4, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %entry
  tail call fastcc void @__clocksource_select(i1 noundef zeroext true) #12
  %1 = load ptr, ptr @curr_clocksource, align 4
  %cmp5 = icmp eq ptr %1, %cs
  br i1 %cmp5, label %if.then4.cleanup_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %entry.if.end8_crit_edge
  %2 = load ptr, ptr @suspend_clocksource, align 4
  %cmp.i = icmp eq ptr %2, %cs
  br i1 %cmp.i, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  store ptr null, ptr @suspend_clocksource, align 4
  %.pn13.i = load ptr, ptr @clocksource_list, align 4
  %cmp.not15.i = icmp eq ptr %.pn13.i, @clocksource_list
  br i1 %cmp.not15.i, label %if.then10.if.end11_crit_edge, label %if.then10.for.body.i_crit_edge

if.then10.for.body.i_crit_edge:                   ; preds = %if.then10
  br label %for.body.i

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then10.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %if.then10.for.body.i_crit_edge ]
  %cs.017.i = getelementptr i8, ptr %.pn16.i, i32 -52
  %cmp2.i = icmp eq ptr %cs.017.i, %cs
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %flags.i.i = getelementptr i8, ptr %.pn16.i, i32 20
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.for.inc.i_crit_edge, label %if.end.i.i

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end4.i
  %suspend.i.i = getelementptr i8, ptr %.pn16.i, i32 32
  %5 = ptrtoint ptr %suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %suspend.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %resume.i.i = getelementptr i8, ptr %.pn16.i, i32 36
  %7 = ptrtoint ptr %resume.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resume.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end4.i.i_crit_edge, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

lor.lhs.false.i.i.if.end4.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %name.i.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %9 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i.i, align 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %10) #16
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %do.end.i.i, %lor.lhs.false.i.i.if.end4.i.i_crit_edge
  %11 = load ptr, ptr @suspend_clocksource, align 4
  %tobool5.not.i.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i.i, label %if.end4.i.i.if.then8.i.i_crit_edge, label %lor.lhs.false6.i.i

if.end4.i.i.if.then8.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i.i

lor.lhs.false6.i.i:                               ; preds = %if.end4.i.i
  %rating.i.i = getelementptr i8, ptr %.pn16.i, i32 8
  %12 = ptrtoint ptr %rating.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rating.i.i, align 4
  %rating7.i.i = getelementptr inbounds %struct.clocksource, ptr %11, i32 0, i32 10
  %14 = ptrtoint ptr %rating7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rating7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i.i = icmp sgt i32 %13, %15
  br i1 %cmp.i.i, label %lor.lhs.false6.i.i.if.then8.i.i_crit_edge, label %lor.lhs.false6.i.i.for.inc.i_crit_edge

lor.lhs.false6.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false6.i.i.if.then8.i.i_crit_edge:        ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %lor.lhs.false6.i.i.if.then8.i.i_crit_edge, %if.end4.i.i.if.then8.i.i_crit_edge
  store ptr %cs.017.i, ptr @suspend_clocksource, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i.i, %lor.lhs.false6.i.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %16 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @clocksource_list
  br i1 %cmp.not.i, label %for.inc.i.if.end11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %for.inc.i.if.end11_crit_edge, %if.then10.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %list = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9
  %call.i.i18 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i18, label %if.end.i.i19, label %if.end11.list_del_init.exit_crit_edge

if.end11.list_del_init.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i19:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i19, %if.end11.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.clocksource, ptr %cs, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del_init.exit ], [ -16, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sysfs_get_uname(ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %dst, i32 noundef %cnt) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %cnt, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %0)
  %1 = icmp ult i32 %0, -31
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %cnt, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp1 = icmp eq i8 %3, 10
  %spec.select = select i1 %cmp1, i32 %sub, i32 %cnt
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp5.not = icmp eq i32 %spec.select, 0
  br i1 %cmp5.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %dst, ptr %buf, i32 %spec.select)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %arrayidx9 = getelementptr i8, ptr %dst, i32 %spec.select
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_clocksource_sysfs() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @subsys_system_register(ptr noundef nonnull @clocksource_subsys, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @device_register(ptr noundef nonnull @device_clocksource) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  ret i32 %error.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_override_clocksource(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strlcpy(ptr noundef nonnull @override_name, ptr noundef nonnull %str, i32 noundef 32) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_override_clock(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(6) @.str.28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  %call2 = tail call i32 @boot_override_clocksource(ptr noundef nonnull @.str.31) #18
  br label %return

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #16
  %call7 = tail call i32 @boot_override_clocksource(ptr noundef %str) #18
  br label %return

return:                                           ; preds = %do.end4, %do.end
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @clocksource_default_clock() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__clocksource_select(i1 noundef zeroext %skipcur) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tick_oneshot_mode_active() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not72 = icmp eq i32 %call, 0
  %.b.i = load i1, ptr @finished_booting, align 4
  br i1 %.b.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load volatile ptr, ptr @clocksource_list, align 4
  %cmp.i.not.i = icmp eq ptr %0, @clocksource_list
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.for.body.i_crit_edge

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.pr.i, %for.inc.i.for.body.i_crit_edge ], [ %0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %cs.024.i = getelementptr i8, ptr %.pn22.i, i32 -52
  br i1 %skipcur, label %land.lhs.true.i, label %for.body.i.if.end6.i_crit_edge

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %1 = load ptr, ptr @curr_clocksource, align 4
  %cmp4.i = icmp eq ptr %cs.024.i, %1
  br i1 %cmp4.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %for.body.i.if.end6.i_crit_edge
  br i1 %tobool.not72, label %if.end6.i.clocksource_find_best.exit_crit_edge, label %land.lhs.true8.i

if.end6.i.clocksource_find_best.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clocksource_find_best.exit

land.lhs.true8.i:                                 ; preds = %if.end6.i
  %flags.i = getelementptr i8, ptr %.pn22.i, i32 20
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true8.i.for.inc.i_crit_edge, label %land.lhs.true8.i.clocksource_find_best.exit_crit_edge

land.lhs.true8.i.clocksource_find_best.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clocksource_find_best.exit

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.pr.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.pr.i, @clocksource_list
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

clocksource_find_best.exit:                       ; preds = %land.lhs.true8.i.clocksource_find_best.exit_crit_edge, %if.end6.i.clocksource_find_best.exit_crit_edge
  %tobool5.not = icmp eq ptr %cs.024.i, null
  br i1 %tobool5.not, label %clocksource_find_best.exit.cleanup_crit_edge, label %if.end

clocksource_find_best.exit.cleanup_crit_edge:     ; preds = %clocksource_find_best.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %clocksource_find_best.exit
  %char0 = load i8, ptr @override_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool7.not = icmp eq i8 %char0, 0
  br i1 %tobool7.not, label %if.end.found_crit_edge, label %for.cond.preheader

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

for.cond.preheader:                               ; preds = %if.end
  %.pn76 = load ptr, ptr @clocksource_list, align 4
  %cmp.not78 = icmp eq ptr %.pn76, @clocksource_list
  br i1 %cmp.not78, label %for.cond.preheader.found_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.found_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn79 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn76, %for.cond.preheader.for.body_crit_edge ]
  %cs.081 = getelementptr i8, ptr %.pn79, i32 -52
  br i1 %skipcur, label %land.lhs.true, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr @curr_clocksource, align 4
  %cmp11 = icmp eq ptr %cs.081, %5
  br i1 %cmp11, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %name = getelementptr i8, ptr %.pn79, i32 -4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call14 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull @override_name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end17, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end17:                                         ; preds = %if.end13
  %flags = getelementptr i8, ptr %.pn79, i32 20
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp ne i32 %and, 0
  %brmerge = or i1 %tobool.not72, %tobool18.not
  br i1 %brmerge, label %if.end17.found_crit_edge, label %if.then21

if.end17.found_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

if.then21:                                        ; preds = %if.end17
  %and23 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end31, label %do.end

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %7) #16
  store i8 0, ptr @override_name, align 1
  br label %found

do.end31:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %7) #16
  br label %found

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %cmp.not, label %for.inc.found_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

found:                                            ; preds = %for.inc.found_crit_edge, %do.end31, %do.end, %if.end17.found_crit_edge, %for.cond.preheader.found_crit_edge, %if.end.found_crit_edge
  %best.0 = phi ptr [ %cs.024.i, %do.end ], [ %cs.024.i, %do.end31 ], [ %cs.024.i, %if.end.found_crit_edge ], [ %cs.081, %if.end17.found_crit_edge ], [ %cs.024.i, %for.cond.preheader.found_crit_edge ], [ %cs.024.i, %for.inc.found_crit_edge ]
  %11 = load ptr, ptr @curr_clocksource, align 4
  %cmp42.not = icmp eq ptr %11, %best.0
  br i1 %cmp42.not, label %found.cleanup_crit_edge, label %land.lhs.true43

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true43:                                  ; preds = %found
  %call44 = tail call i32 @timekeeping_notify(ptr noundef %best.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end49, label %land.lhs.true43.cleanup_crit_edge

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end49:                                         ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  %name51 = getelementptr inbounds %struct.clocksource, ptr %best.0, i32 0, i32 8
  %12 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name51, align 8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %13) #16
  store ptr %best.0, ptr @curr_clocksource, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %land.lhs.true43.cleanup_crit_edge, %found.cleanup_crit_edge, %clocksource_find_best.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_oneshot_mode_active() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_notify(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_clocksource_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @curr_clocksource, align 4
  %name = getelementptr inbounds %struct.clocksource, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_clocksource_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %0 = add i32 %count, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %0)
  %1 = icmp ult i32 %0, -31
  br i1 %1, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp1.i = icmp eq i8 %3, 10
  %spec.select.i = select i1 %cmp1.i, i32 %sub.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp5.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp5.not.i, label %if.end.i.if.then_crit_edge, label %if.then7.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr @override_name, ptr %buf, i32 %spec.select.i)
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %if.end.i.if.then_crit_edge
  %arrayidx9.i = getelementptr i8, ptr @override_name, i32 %spec.select.i
  %5 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx9.i, align 1
  tail call fastcc void @__clocksource_select(i1 noundef zeroext false) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval.0.i4 = phi i32 [ %count, %if.then ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  ret i32 %retval.0.i4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unbind_clocksource_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %0 = add i32 %count, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %0)
  %1 = icmp ult i32 %0, -31
  %2 = call ptr @memset(ptr %name, i32 255, i32 32)
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp1.i = icmp eq i8 %4, 10
  %spec.select.i = select i1 %cmp1.i, i32 %sub.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp5.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp5.not.i, label %if.end.i.if.end_crit_edge, label %if.then7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call ptr @memcpy(ptr %name, ptr %buf, i32 %spec.select.i)
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %if.end.i.if.end_crit_edge
  %arrayidx9.i = getelementptr i8, ptr %name, i32 %spec.select.i
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx9.i, align 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @clocksource_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp1.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %cmp1.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %name2 = getelementptr i8, ptr %.pn, i32 -4
  %8 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name2, align 8
  %call4 = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull %name) #17
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %cs.0.le = getelementptr i8, ptr %.pn, i32 -52
  %call7 = tail call fastcc i32 @clocksource_unbind(ptr noundef %cs.0.le)
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool12.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool12.not, i32 %count, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %for.end.thread ], [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_clocksource_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @clocksource_mutex, i32 noundef 0) #12
  %.pn34 = load ptr, ptr @clocksource_list, align 4
  %cmp.not35 = icmp eq ptr %.pn34, @clocksource_list
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn38 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %entry.for.body_crit_edge ]
  %count.036 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @tick_oneshot_mode_active() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn38, i32 20
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %count.036
  %sub = sub i32 4096, %count.036
  %2 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %name = getelementptr i8, ptr %.pn38, i32 -4
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef %2, ptr noundef nonnull @.str.26, ptr noundef %4)
  %add = add i32 %call5, %count.036
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false.for.inc_crit_edge
  %count.1 = phi i32 [ %add, %if.then ], [ %count.036, %lor.lhs.false.for.inc_crit_edge ]
  %5 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, @clocksource_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocksource_mutex) #12
  %sub11 = sub i32 4096, %count.0.lcssa
  %6 = tail call i32 @llvm.smax.i32(i32 %sub11, i32 0)
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %count.0.lcssa
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr10, i32 noundef %6, ptr noundef nonnull @.str.27)
  %add19 = add i32 %call18, %count.0.lcssa
  ret i32 %add19
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !85, !87, !89, !90, !92, !94, !95, !97, !98, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !115, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__ksymtab_clocks_calc_mult_shift, !1, !"__ksymtab_clocks_calc_mult_shift", i1 false, i1 false}
!1 = !{!"../kernel/time/clocksource.c", i32 76, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/time/clocksource.c", i32 755, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @clocksource_start_suspend_timing._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @clocksource_start_suspend_timing._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_clocksource__172_1032_clocksource_done_booting5, !10, !"__initcall__kmod_clocksource__172_1032_clocksource_done_booting5", i1 false, i1 false}
!10 = !{!"../kernel/time/clocksource.c", i32 1032, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/time/clocksource.c", i32 1110, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../kernel/time/clocksource.c", i32 1128, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/time/clocksource.c", i32 1134, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__clocksource_update_freq_scale._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @__clocksource_update_freq_scale._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab___clocksource_update_freq_scale, !22, !"__ksymtab___clocksource_update_freq_scale", i1 false, i1 false}
!22 = !{!"../kernel/time/clocksource.c", i32 1137, i32 1}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../kernel/time/clocksource.c", i32 1156, i32 6}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/time/clocksource.c", i32 1160, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__clocksource_register_scale._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @__clocksource_register_scale._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab___clocksource_register_scale, !31, !"__ksymtab___clocksource_register_scale", i1 false, i1 false}
!31 = !{!"../kernel/time/clocksource.c", i32 1182, i32 1}
!32 = !{ptr @__ksymtab_clocksource_change_rating, !33, !"__ksymtab_clocksource_change_rating", i1 false, i1 false}
!33 = !{!"../kernel/time/clocksource.c", i32 1210, i32 1}
!34 = !{ptr @__ksymtab_clocksource_unregister, !35, !"__ksymtab_clocksource_unregister", i1 false, i1 false}
!35 = !{!"../kernel/time/clocksource.c", i32 1264, i32 1}
!36 = !{ptr @__initcall__kmod_clocksource__177_1433_init_clocksource_sysfs6, !37, !"__initcall__kmod_clocksource__177_1433_init_clocksource_sysfs6", i1 false, i1 false}
!37 = !{!"../kernel/time/clocksource.c", i32 1433, i32 1}
!38 = !{ptr @__setup_boot_override_clocksource, !39, !"__setup_boot_override_clocksource", i1 false, i1 false}
!39 = !{!"../kernel/time/clocksource.c", i32 1452, i32 1}
!40 = !{ptr @__setup_boot_override_clock, !41, !"__setup_boot_override_clock", i1 false, i1 false}
!41 = !{!"../kernel/time/clocksource.c", i32 1471, i32 1}
!42 = !{ptr @suspend_clocksource, !43, !"suspend_clocksource", i1 false, i1 false}
!43 = !{!"../kernel/time/clocksource.c", i32 91, i32 28}
!44 = !{ptr @suspend_start, !45, !"suspend_start", i1 false, i1 false}
!45 = !{!"../kernel/time/clocksource.c", i32 96, i32 12}
!46 = !{ptr @clocksource_list, !47, !"clocksource_list", i1 false, i1 false}
!47 = !{!"../kernel/time/clocksource.c", i32 92, i32 8}
!48 = !{ptr @curr_clocksource, !49, !"curr_clocksource", i1 false, i1 false}
!49 = !{!"../kernel/time/clocksource.c", i32 90, i32 28}
!50 = distinct !{null, !51, !"finished_booting", i1 false, i1 false}
!51 = !{!"../kernel/time/clocksource.c", i32 95, i32 12}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/time/clocksource.c", i32 93, i32 8}
!54 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @clocksource_mutex, !53, !"clocksource_mutex", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/time/clocksource.c", i32 970, i32 5}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__clocksource_select._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @__clocksource_select._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/time/clocksource.c", i32 978, i32 5}
!63 = !{ptr @__clocksource_select._entry.13, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @__clocksource_select._entry_ptr.15, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/time/clocksource.c", i32 989, i32 3}
!67 = !{ptr @__clocksource_select._entry.16, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @__clocksource_select._entry_ptr.18, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @override_name, !70, !"override_name", i1 false, i1 false}
!70 = !{!"../kernel/time/clocksource.c", i32 94, i32 13}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/time/clocksource.c", i32 695, i32 3}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__clocksource_suspend_select._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @__clocksource_suspend_select._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/time/clocksource.c", i32 1413, i32 10}
!78 = !{ptr @clocksource_subsys, !79, !"clocksource_subsys", i1 false, i1 false}
!79 = !{!"../kernel/time/clocksource.c", i32 1412, i32 24}
!80 = !{ptr @device_clocksource, !81, !"device_clocksource", i1 false, i1 false}
!81 = !{!"../kernel/time/clocksource.c", i32 1417, i32 22}
!82 = !{ptr @clocksource_groups, !83, !"clocksource_groups", i1 false, i1 false}
!83 = !{!"../kernel/time/clocksource.c", i32 1410, i32 1}
!84 = !{ptr @clocksource_group, !83, !"clocksource_group", i1 false, i1 false}
!85 = !{ptr @clocksource_attrs, !86, !"clocksource_attrs", i1 false, i1 false}
!86 = !{!"../kernel/time/clocksource.c", i32 1404, i32 26}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/time/clocksource.c", i32 1331, i32 8}
!89 = !{ptr @dev_attr_current_clocksource, !88, !"dev_attr_current_clocksource", i1 false, i1 false}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/time/clocksource.c", i32 1282, i32 35}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/time/clocksource.c", i32 1366, i32 8}
!94 = !{ptr @dev_attr_unbind_clocksource, !93, !"dev_attr_unbind_clocksource", i1 false, i1 false}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/time/clocksource.c", i32 1402, i32 8}
!97 = !{ptr @dev_attr_available_clocksource, !96, !"dev_attr_available_clocksource", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/time/clocksource.c", i32 1393, i32 7}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/time/clocksource.c", i32 1398, i32 51}
!102 = !{ptr @__setup_str_boot_override_clocksource, !39, !"__setup_str_boot_override_clocksource", i1 false, i1 false}
!103 = !{ptr @__setup_str_boot_override_clock, !41, !"__setup_str_boot_override_clock", i1 false, i1 false}
!104 = !{ptr @.str.28, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../kernel/time/clocksource.c", i32 1463, i32 19}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/time/clocksource.c", i32 1464, i32 3}
!108 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @boot_override_clock._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @boot_override_clock._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/time/clocksource.c", i32 1465, i32 36}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../kernel/time/clocksource.c", i32 1467, i32 2}
!115 = !{ptr @boot_override_clock._entry.32, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @boot_override_clock._entry_ptr.34, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{i64 2148342821, i64 2148343101, i64 2148343435, i64 2148343769}
!128 = !{i64 857277, i64 857304, i64 857326, i64 857354}
!129 = !{i64 857685, i64 857712, i64 857745, i64 857766, i64 857793, i64 857819}
