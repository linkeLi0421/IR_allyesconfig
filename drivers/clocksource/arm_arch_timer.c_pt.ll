; ModuleID = '/llk/IR_all_yes/drivers/clocksource/arm_arch_timer.c_pt.bc'
source_filename = "../drivers/clocksource/arm_arch_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+arch_timer_read_counter\22, \22a\22\09"
module asm "\09.weak\09__crc_arch_timer_read_counter\09\09\09\09"
module asm "\09.long\09__crc_arch_timer_read_counter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arch_timer_read_counter:\09\09\09\09\09"
module asm "\09.asciz \09\22arch_timer_read_counter\22\09\09\09\09\09"
module asm "__kstrtabns_arch_timer_read_counter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kvm_arch_ptp_get_crosststamp\22, \22a\22\09"
module asm "\09.weak\09__crc_kvm_arch_ptp_get_crosststamp\09\09\09\09"
module asm "\09.long\09__crc_kvm_arch_ptp_get_crosststamp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvm_arch_ptp_get_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22kvm_arch_ptp_get_crosststamp\22\09\09\09\09\09"
module asm "__kstrtabns_kvm_arch_ptp_get_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arch_timer_kvm_info = type { %struct.timecounter, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.arch_timer_mem = type { i32, i32, [8 x %struct.arch_timer_mem_frame] }
%struct.arch_timer_mem_frame = type { i8, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.arch_timer = type { ptr, [124 x i8], %struct.clock_event_device }

@__setup_str_early_evtstrm_cfg = internal constant [35 x i8] c"clocksource.arm_arch_timer.evtstrm\00", section ".init.rodata", align 1
@__setup_early_evtstrm_cfg = internal global %struct.obs_kernel_param { ptr @__setup_str_early_evtstrm_cfg, ptr @early_evtstrm_cfg, i32 1 }, section ".init.setup", align 4
@arch_timer_read_counter = dso_local global ptr @arch_counter_get_cntvct, section ".data..ro_after_init", align 4
@__kstrtab_arch_timer_read_counter = external dso_local constant [0 x i8], align 1
@__kstrtabns_arch_timer_read_counter = external dso_local constant [0 x i8], align 1
@__ksymtab_arch_timer_read_counter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arch_timer_read_counter to i32), ptr @__kstrtab_arch_timer_read_counter, ptr @__kstrtabns_arch_timer_read_counter }, section "___ksymtab_gpl+arch_timer_read_counter", align 4
@arch_timer_rate = internal global i32 0, section ".data..ro_after_init", align 4
@evtstrm_available = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@arch_timer_kvm_info = internal global { %struct.arch_timer_kvm_info, [48 x i8] } zeroinitializer, align 32
@__of_table_armv7_arch_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arch_timer_of_init }, section "__timer_of_table", align 4
@__of_table_armv8_arch_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv8-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arch_timer_of_init }, section "__timer_of_table", align 4
@__of_table_armv7_arch_timer_mem = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arch_timer_mem_of_init }, section "__timer_of_table", align 4
@arch_timer_uses_ppi = internal unnamed_addr global i32 2, section ".data..ro_after_init", align 4
@clocksource_counter = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @arch_counter_read, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.66, %struct.list_head zeroinitializer, i32 400, i32 1, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_kvm_arch_ptp_get_crosststamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvm_arch_ptp_get_crosststamp = external dso_local constant [0 x i8], align 1
@__ksymtab_kvm_arch_ptp_get_crosststamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvm_arch_ptp_get_crosststamp to i32), ptr @__kstrtab_kvm_arch_ptp_get_crosststamp, ptr @__kstrtabns_kvm_arch_ptp_get_crosststamp }, section "___ksymtab_gpl+kvm_arch_ptp_get_crosststamp", align 4
@__pcpu_unique_saved_cntkctl = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@saved_cntkctl = weak dso_local global i32 0, section ".data..percpu", align 4
@evtstrm_enable = internal global i8 1, section ".data..ro_after_init", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@arch_timers_present = internal unnamed_addr global i32 0, section ".init.data", align 4
@arch_timer_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014arch_timer: multiple nodes in dt, skipping\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arch_timer_of_init\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clocksource/arm_arch_timer.c\00", [59 x i8] zeroinitializer }, align 32
@arch_timer_of_init._entry_ptr = internal global ptr @arch_timer_of_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"interrupt-names\00", [16 x i8] zeroinitializer }, align 32
@arch_timer_ppi_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [44 x i8] zeroinitializer }, align 32
@arch_timer_ppi = internal unnamed_addr global [5 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"always-on\00", [22 x i8] zeroinitializer }, align 32
@arch_timer_c3stop = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"arm,cpu-registers-not-fw-configured\00", [60 x i8] zeroinitializer }, align 32
@arch_timer_of_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013arch_timer: No interrupt available, giving up\0A\00", [47 x i8] zeroinitializer }, align 32
@arch_timer_of_init._entry_ptr.9 = internal global ptr @arch_timer_of_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm,no-tick-in-suspend\00", [41 x i8] zeroinitializer }, align 32
@arch_counter_suspend_stop = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sec-phys\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"virt\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hyp-phys\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hyp-virt\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@arch_timer_of_configure_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014arch_timer: frequency not available\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch_timer_of_configure_rate\00", [35 x i8] zeroinitializer }, align 32
@arch_timer_of_configure_rate._entry_ptr = internal global ptr @arch_timer_of_configure_rate._entry, section ".printk_index", align 4
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@arch_timer_evt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arch_timer\00", [21 x i8] zeroinitializer }, align 32
@arch_timer_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013arch_timer: can't register interrupt %d (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arch_timer_register\00", [44 x i8] zeroinitializer }, align 32
@arch_timer_register._entry_ptr = internal global ptr @arch_timer_register._entry, section ".printk_index", align 4
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clockevents/arm/arch_timer:starting\00", [60 x i8] zeroinitializer }, align 32
@arch_timer_cpu_pm_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @arch_timer_cpu_pm_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arch_sys_timer\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arch_mem_timer\00", [17 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@arch_timer_mem_use_virtual = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@check_ppi_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014arch_timer: WARNING: Invalid trigger for IRQ%d, assuming level low\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_ppi_trigger\00", [46 x i8] zeroinitializer }, align 32
@check_ppi_trigger._entry_ptr = internal global ptr @check_ppi_trigger._entry, section ".printk_index", align 4
@check_ppi_trigger._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014arch_timer: WARNING: Please fix your firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@check_ppi_trigger._entry_ptr.31 = internal global ptr @check_ppi_trigger._entry.29, section ".printk_index", align 4
@arch_timer_stop.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm_arch_timer\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arch_timer_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disable IRQ%d cpu #%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arch_timer: disable IRQ%d cpu #%d\0A\00", [61 x i8] zeroinitializer }, align 32
@arch_timer_mem_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@arch_timer_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv7-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,armv8-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@arch_timer_banner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016arch_timer: %s%s%s timer(s) running at %lu.%02luMHz (%s%s%s).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arch_timer_banner\00", [46 x i8] zeroinitializer }, align 32
@arch_timer_banner._entry_ptr = internal global ptr @arch_timer_banner._entry, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cp15\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" and \00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@cyclecounter = internal global %struct.cyclecounter { ptr @arch_counter_read_cc, i64 0, i32 0, i32 0 }, section ".data..ro_after_init", align 8
@arch_timer_mem = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"frame-number\00", [19 x i8] zeroinitializer }, align 32
@arch_timer_mem_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013arch_timer: [Firmware Bug]: Missing frame-number.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arch_timer_mem_of_init\00", [41 x i8] zeroinitializer }, align 32
@arch_timer_mem_of_init._entry_ptr = internal global ptr @arch_timer_mem_of_init._entry, section ".printk_index", align 4
@arch_timer_mem_of_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013arch_timer: [Firmware Bug]: Wrong frame-number, only 0-%u are permitted.\0A\00", [52 x i8] zeroinitializer }, align 32
@arch_timer_mem_of_init._entry_ptr.48 = internal global ptr @arch_timer_mem_of_init._entry.46, section ".printk_index", align 4
@arch_timer_mem_of_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013arch_timer: [Firmware Bug]: Duplicated frame-number.\0A\00", [40 x i8] zeroinitializer }, align 32
@arch_timer_mem_of_init._entry_ptr.51 = internal global ptr @arch_timer_mem_of_init._entry.49, section ".printk_index", align 4
@arch_timer_mem_of_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.3, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013arch_timer: Unable to find a suitable frame in timer @ %pa\0A\00", [34 x i8] zeroinitializer }, align 32
@arch_timer_mem_of_init._entry_ptr.54 = internal global ptr @arch_timer_mem_of_init._entry.52, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arch_timer_mem_find_best_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013arch_timer: Can't map CNTCTLBase @ %pa\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch_timer_mem_find_best_frame\00", [33 x i8] zeroinitializer }, align 32
@arch_timer_mem_find_best_frame._entry_ptr = internal global ptr @arch_timer_mem_find_best_frame._entry, section ".printk_index", align 4
@arch_timer_mem_frame_get_cntfrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013arch_timer: Unable to map frame @ %pa\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch_timer_mem_frame_get_cntfrq\00", [32 x i8] zeroinitializer }, align 32
@arch_timer_mem_frame_get_cntfrq._entry_ptr = internal global ptr @arch_timer_mem_frame_get_cntfrq._entry, section ".printk_index", align 4
@arch_timer_mem_frame_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013arch_timer: Frame missing %s irq.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch_timer_mem_frame_register\00", [34 x i8] zeroinitializer }, align 32
@arch_timer_mem_frame_register._entry_ptr = internal global ptr @arch_timer_mem_frame_register._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@arch_timer_mem_frame_register._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 1508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013arch_timer: Can't map frame's registers\0A\00", [53 x i8] zeroinitializer }, align 32
@arch_timer_mem_frame_register._entry_ptr.63 = internal global ptr @arch_timer_mem_frame_register._entry.61, section ".printk_index", align 4
@arch_timer_mem_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013arch_timer: Failed to request mem timer irq\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arch_timer_mem_register\00", [40 x i8] zeroinitializer }, align 32
@arch_timer_mem_register._entry_ptr = internal global ptr @arch_timer_mem_register._entry, section ".printk_index", align 4
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arch_sys_counter\00", [47 x i8] zeroinitializer }, align 32
@switch.table.__arch_timer_setup = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @arch_timer_shutdown_phys, ptr @arch_timer_shutdown_phys, ptr @arch_timer_shutdown_virt, ptr @arch_timer_shutdown_phys], [16 x i8] zeroinitializer }, align 32
@switch.table.__arch_timer_setup.67 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @arch_timer_set_next_event_phys, ptr @arch_timer_set_next_event_phys, ptr @arch_timer_set_next_event_virt, ptr @arch_timer_set_next_event_phys], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"evtstrm_available\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 95, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"arch_timer_kvm_info\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1053, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"clocksource_counter\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 232, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 108, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1357, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1363, i32 40 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"arch_timer_ppi_names\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 75, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1379, i32 49 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1389, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1395, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1401, i32 9 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 76, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 77, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 78, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 79, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 80, i32 30 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1007, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1012, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"arch_timer_evt\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 83, i32 44 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1183, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1207, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1217, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"arch_timer_cpu_pm_notifier\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1143, i32 30 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 835, i32 15 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 860, i32 15 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 954, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 955, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1106, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1017, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1545, i32 40 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1546, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1551, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1559, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1581, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1444, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1423, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1497, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1508, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1258, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [40 x i8] c"../drivers/clocksource/arm_arch_timer.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 233, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant [32 x i8] c"switch.table.__arch_timer_setup\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [35 x i8] c"switch.table.__arch_timer_setup.67\00", align 1
@llvm.compiler.used = appending global [99 x ptr] [ptr @__ksymtab_arch_timer_read_counter, ptr @__ksymtab_kvm_arch_ptp_get_crosststamp, ptr @__of_table_armv7_arch_timer, ptr @__of_table_armv7_arch_timer_mem, ptr @__of_table_armv8_arch_timer, ptr @__setup_early_evtstrm_cfg, ptr @arch_timer_banner._entry, ptr @arch_timer_banner._entry_ptr, ptr @arch_timer_mem_find_best_frame._entry, ptr @arch_timer_mem_find_best_frame._entry_ptr, ptr @arch_timer_mem_frame_get_cntfrq._entry, ptr @arch_timer_mem_frame_get_cntfrq._entry_ptr, ptr @arch_timer_mem_frame_register._entry, ptr @arch_timer_mem_frame_register._entry.61, ptr @arch_timer_mem_frame_register._entry_ptr, ptr @arch_timer_mem_frame_register._entry_ptr.63, ptr @arch_timer_mem_of_init._entry, ptr @arch_timer_mem_of_init._entry.46, ptr @arch_timer_mem_of_init._entry.49, ptr @arch_timer_mem_of_init._entry.52, ptr @arch_timer_mem_of_init._entry_ptr, ptr @arch_timer_mem_of_init._entry_ptr.48, ptr @arch_timer_mem_of_init._entry_ptr.51, ptr @arch_timer_mem_of_init._entry_ptr.54, ptr @arch_timer_mem_register._entry, ptr @arch_timer_mem_register._entry_ptr, ptr @arch_timer_of_configure_rate._entry, ptr @arch_timer_of_configure_rate._entry_ptr, ptr @arch_timer_of_init._entry, ptr @arch_timer_of_init._entry.7, ptr @arch_timer_of_init._entry_ptr, ptr @arch_timer_of_init._entry_ptr.9, ptr @arch_timer_register._entry, ptr @arch_timer_register._entry_ptr, ptr @check_ppi_trigger._entry, ptr @check_ppi_trigger._entry.29, ptr @check_ppi_trigger._entry_ptr, ptr @check_ppi_trigger._entry_ptr.31, ptr @evtstrm_available, ptr @arch_timer_kvm_info, ptr @clocksource_counter, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @arch_timer_ppi_names, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @arch_timer_evt, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @arch_timer_cpu_pm_notifier, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @switch.table.__arch_timer_setup, ptr @switch.table.__arch_timer_setup.67], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evtstrm_available to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_kvm_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_counter to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_ppi_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_of_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_of_configure_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_evt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_cpu_pm_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ppi_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_ppi_trigger._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_banner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_of_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_of_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_of_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_find_best_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_frame_get_cntfrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_frame_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_frame_register._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_timer_mem_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__arch_timer_setup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__arch_timer_setup.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_evtstrm_cfg(ptr noundef %buf) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull @evtstrm_enable) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @arch_counter_get_cntvct() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  %0 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #11, !srcloc !192
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_timer_get_rate() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arch_timer_rate, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @arch_timer_evtstrm_available() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !193

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div1.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr @evtstrm_available, i32 %div1.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp ne i32 %8, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @arch_timer_get_kvm_info() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @arch_timer_kvm_info
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_of_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arch_timers_present, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %0, 1
  store i32 %or, ptr @arch_timers_present, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef null) #11
  %tobool.i.not = icmp eq ptr %call.i, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.063 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [5 x ptr], ptr @arch_timer_ppi_names, i32 0, i32 %i.063
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @of_irq_get_byname(ptr noundef %np, ptr noundef %2) #11
  br label %if.end6

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @of_irq_get(ptr noundef %np, i32 noundef %i.063) #11
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %irq.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %cmp7 = icmp sgt i32 %irq.0, 0
  br i1 %cmp7, label %if.then8, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %i.063
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq.0, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end6.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %4 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 2), align 4
  store i32 %4, ptr getelementptr inbounds (%struct.arch_timer_kvm_info, ptr @arch_timer_kvm_info, i32 0, i32 1), align 8
  %5 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c0, 0", "=r"() #11, !srcloc !194
  tail call fastcc void @arch_timer_of_configure_rate(i32 noundef %5, ptr noundef %np) #15
  %call.i57 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %tobool.i58.not = icmp eq ptr %call.i57, null
  %frombool13 = zext i1 %tobool.i58.not to i8
  store i8 %frombool13, ptr @arch_timer_c3stop, align 1
  %call.i59 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef null) #11
  %tobool.i60.not = icmp eq ptr %call.i59, null
  br i1 %tobool.i60.not, label %if.else19, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else19:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__boot_cpu_mode to i32))
  %6 = load i32, ptr @__boot_cpu_mode, align 4
  %7 = and i32 %6, -2147483617
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %7)
  %8 = icmp eq i32 %7, 26
  br i1 %8, label %if.else19.if.end3.i_crit_edge, label %land.lhs.true.i

if.else19.if.end3.i_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.else19
  %9 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end3.i_crit_edge, label %land.lhs.true.i.if.end21_crit_edge

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.else19.if.end3.i_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.end3.i, %land.lhs.true.i.if.end21_crit_edge, %for.end.if.end21_crit_edge
  %storemerge = phi i32 [ 0, %for.end.if.end21_crit_edge ], [ 0, %if.end3.i ], [ 2, %land.lhs.true.i.if.end21_crit_edge ]
  store i32 %storemerge, ptr @arch_timer_uses_ppi, align 4
  %arrayidx22 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %storemerge
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %call.i61 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %tobool.i62 = icmp ne ptr %call.i61, null
  %frombool32 = zext i1 %tobool.i62 to i8
  store i8 %frombool32, ptr @arch_counter_suspend_stop, align 1
  %call33 = tail call fastcc i32 @arch_timer_register() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %call37 = tail call fastcc zeroext i1 @arch_timer_needs_of_probing() #15
  br i1 %call37, label %if.end36.cleanup_crit_edge, label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call fastcc i32 @arch_timer_common_init() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end27, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call40, %if.end39 ], [ -22, %do.end27 ], [ %call33, %if.end30.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_mem_of_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #11
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %7
  %size = getelementptr inbounds %struct.arch_timer_mem, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %size, align 4
  %call6 = call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef null) #11
  %cmp.not102 = icmp eq ptr %call6, null
  br i1 %cmp.not102, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %frame_node.0103 = phi ptr [ %call41, %for.inc.for.body_crit_edge ], [ %call6, %if.end4.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  %9 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %n, align 4, !annotation !195
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %frame_node.0103, ptr noundef nonnull @.str.43, ptr noundef nonnull %n, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool9.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #14
  br label %cleanup.thread

if.end12:                                         ; preds = %for.body
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp13 = icmp ugt i32 %11, 7
  br i1 %cmp13, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 7) #14
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end12
  %arrayidx = getelementptr %struct.arch_timer_mem, ptr %call7.i.i, i32 0, i32 2, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #14
  br label %cleanup.thread

if.end29:                                         ; preds = %if.end20
  %call30 = call i32 @of_address_to_resource(ptr noundef nonnull %frame_node.0103, i32 noundef 0, ptr noundef nonnull %res) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.inc, label %if.end29.cleanup.thread_crit_edge

if.end29.cleanup.thread_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end29.cleanup.thread_crit_edge, %do.end26, %do.end17, %do.end
  call void @of_node_put(ptr noundef nonnull %frame_node.0103) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  br label %out

for.inc:                                          ; preds = %if.end29
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %res, align 4
  %cntbase = getelementptr %struct.arch_timer_mem, ptr %call7.i.i, i32 0, i32 2, i32 %11, i32 1
  %16 = ptrtoint ptr %cntbase to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cntbase, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %0, align 4
  %sub.i93 = sub i32 1, %15
  %add.i94 = add i32 %sub.i93, %18
  %size36 = getelementptr %struct.arch_timer_mem, ptr %call7.i.i, i32 0, i32 2, i32 %11, i32 2
  %19 = ptrtoint ptr %size36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i94, ptr %size36, align 4
  %call37 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %frame_node.0103, i32 noundef 1) #11
  %virt_irq = getelementptr %struct.arch_timer_mem, ptr %call7.i.i, i32 0, i32 2, i32 %11, i32 4
  %20 = ptrtoint ptr %virt_irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call37, ptr %virt_irq, align 4
  %call38 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %frame_node.0103, i32 noundef 0) #11
  %phys_irq = getelementptr %struct.arch_timer_mem, ptr %call7.i.i, i32 0, i32 2, i32 %11, i32 3
  %21 = ptrtoint ptr %phys_irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call38, ptr %phys_irq, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  %call41 = call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef nonnull %frame_node.0103) #11
  %cmp.not = icmp eq ptr %call41, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %call42 = call fastcc ptr @arch_timer_mem_find_best_frame(ptr noundef nonnull %call7.i.i) #15
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end47, label %if.end51

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %call7.i.i) #14
  br label %out

if.end51:                                         ; preds = %for.end
  %call52 = call fastcc i32 @arch_timer_mem_frame_get_cntfrq(ptr noundef nonnull %call42) #15
  call fastcc void @arch_timer_of_configure_rate(i32 noundef %call52, ptr noundef %np) #15
  %call53 = call fastcc i32 @arch_timer_mem_frame_register(ptr noundef nonnull %call42) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true, label %if.end51.out_crit_edge

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %if.end51
  %call55 = call fastcc zeroext i1 @arch_timer_needs_of_probing() #15
  br i1 %call55, label %land.lhs.true.out_crit_edge, label %if.then56

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = call fastcc i32 @arch_timer_common_init() #15
  br label %out

out:                                              ; preds = %if.then56, %land.lhs.true.out_crit_edge, %if.end51.out_crit_edge, %do.end47, %cleanup.thread, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.out_crit_edge ], [ %call53, %if.end51.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ %call57, %if.then56 ], [ -22, %do.end47 ], [ -22, %cleanup.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup59

cleanup59:                                        ; preds = %out, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kvm_arch_ptp_get_crosststamp(ptr noundef writeonly %cycle, ptr nocapture noundef writeonly %ts, ptr noundef writeonly %cs) #1 align 64 {
entry:
  %tmp48 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arch_timer_uses_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp ne i32 %0, 2
  %. = zext i1 %cmp to i32
  %call = tail call i32 @arm_smccc_1_1_get_conduit() #11
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %sw.epilog.thread [
    i32 2, label %do.body
    i32 1, label %do.body7
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2046820351, i32 %.) #11, !srcloc !197
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},~{memory}"(i32 -2046820351, i32 %.) #11, !srcloc !198
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "{r0},{r1},~{memory}"(i32 -2046820351, i32 %.) #11, !srcloc !199
  br label %cleanup

sw.epilog:                                        ; preds = %do.body7, %do.body
  %.pn = phi { i32, i32, i32, i32 } [ %3, %do.body7 ], [ %2, %do.body ]
  %hvc_res.sroa.0.0 = extractvalue { i32, i32, i32, i32 } %.pn, 0
  %hvc_res.sroa.11.0 = extractvalue { i32, i32, i32, i32 } %.pn, 2
  %hvc_res.sroa.15.0 = extractvalue { i32, i32, i32, i32 } %.pn, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hvc_res.sroa.0.0)
  %cmp42 = icmp slt i32 %hvc_res.sroa.0.0, 0
  br i1 %cmp42, label %sw.epilog.cleanup_crit_edge, label %if.end44

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44:                                         ; preds = %sw.epilog
  %hvc_res.sroa.7.0 = extractvalue { i32, i32, i32, i32 } %.pn, 1
  %conv = zext i32 %hvc_res.sroa.0.0 to i64
  %shl = shl nuw nsw i64 %conv, 32
  %conv47 = zext i32 %hvc_res.sroa.7.0 to i64
  %or = or i64 %shl, %conv47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp48) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp48, i64 noundef %or) #11
  %4 = call ptr @memcpy(ptr %ts, ptr %tmp48, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp48) #11
  %tobool49.not = icmp eq ptr %cycle, null
  br i1 %tobool49.not, label %if.end44.if.end57_crit_edge, label %if.then50

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %conv52 = zext i32 %hvc_res.sroa.11.0 to i64
  %shl53 = shl nuw i64 %conv52, 32
  %conv55 = zext i32 %hvc_res.sroa.15.0 to i64
  %or56 = or i64 %shl53, %conv55
  %5 = ptrtoint ptr %cycle to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or56, ptr %cycle, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %if.end44.if.end57_crit_edge
  %tobool58.not = icmp eq ptr %cs, null
  br i1 %tobool58.not, label %if.end57.cleanup_crit_edge, label %if.then59

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @clocksource_counter, ptr %cs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end57.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread
  %retval.0 = phi i32 [ -95, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.end57.cleanup_crit_edge ], [ -95, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arch_timer_of_configure_rate(i32 noundef %rate, ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arch_timer_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.16, ptr noundef nonnull @arch_timer_rate, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool1.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool1.not, label %if.end3thread-pre-split, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %rate, ptr @arch_timer_rate, align 4
  br label %if.end3

if.end3thread-pre-split:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %.pr = load i32, ptr @arch_timer_rate, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3thread-pre-split, %if.then2
  %1 = phi i32 [ %.pr, %if.end3thread-pre-split ], [ %rate, %if.then2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %1)
  %cmp.i = icmp ult i32 %1, 1000000
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end8_crit_edge, !prof !200

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.end.i, %if.end.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_register() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 128) #17
  store ptr %call, ptr @arch_timer_evt, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @arch_timer_uses_ppi, align 4
  %arrayidx = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %0, label %do.body [
    i32 2, label %sw.epilog
    i32 0, label %if.end.sw.bb2_crit_edge
    i32 1, label %if.end.sw.bb2_crit_edge65
  ]

if.end.sw.bb2_crit_edge65:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge65
  %call.i47 = tail call i32 @__request_percpu_irq(i32 noundef %2, ptr noundef nonnull @arch_timer_handler_phys, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool4.not = icmp eq i32 %call.i47, 0
  br i1 %tobool4.not, label %land.lhs.true, label %sw.bb2.do.end21_crit_edge

sw.bb2.do.end21_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

land.lhs.true:                                    ; preds = %sw.bb2
  %4 = load i32, ptr @arch_timer_uses_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %arch_timer_has_nonsecure_ppi.exit, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

arch_timer_has_nonsecure_ppi.exit:                ; preds = %land.lhs.true
  %5 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %arch_timer_has_nonsecure_ppi.exit.if.end23_crit_edge, label %if.then6

arch_timer_has_nonsecure_ppi.exit.if.end23_crit_edge: ; preds = %arch_timer_has_nonsecure_ppi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then6:                                         ; preds = %arch_timer_has_nonsecure_ppi.exit
  %6 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  %7 = load ptr, ptr @arch_timer_evt, align 4
  %call.i48 = tail call i32 @__request_percpu_irq(i32 noundef %6, ptr noundef nonnull @arch_timer_handler_phys, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool8.not = icmp eq i32 %call.i48, 0
  br i1 %tobool8.not, label %if.then6.if.end23_crit_edge, label %if.then9

if.then6.if.end23_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %8 = load i32, ptr @arch_timer_ppi, align 4
  %9 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %8, ptr noundef %9) #11
  br label %do.end21

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/arm_arch_timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1203, 0\0A.popsection", ""() #11, !srcloc !201
  unreachable

sw.epilog:                                        ; preds = %if.end
  %call.i = tail call i32 @__request_percpu_irq(i32 noundef %2, ptr noundef nonnull @arch_timer_handler_virt, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %sw.epilog.if.end23_crit_edge, label %sw.epilog.do.end21_crit_edge

sw.epilog.do.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

sw.epilog.if.end23_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end21:                                         ; preds = %sw.epilog.do.end21_crit_edge, %if.then9, %sw.bb2.do.end21_crit_edge
  %ppi.064 = phi i32 [ %2, %sw.epilog.do.end21_crit_edge ], [ %6, %if.then9 ], [ %2, %sw.bb2.do.end21_crit_edge ]
  %err.063 = phi i32 [ %call.i, %sw.epilog.do.end21_crit_edge ], [ %call.i48, %if.then9 ], [ %call.i47, %sw.bb2.do.end21_crit_edge ]
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %ppi.064, i32 noundef %err.063) #14
  br label %out_free

if.end23:                                         ; preds = %sw.epilog.if.end23_crit_edge, %if.then6.if.end23_crit_edge, %arch_timer_has_nonsecure_ppi.exit.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge
  %call.i49 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @arch_timer_cpu_pm_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool25.not = icmp eq i32 %call.i49, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_unreg_notify_crit_edge

if.end23.out_unreg_notify_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unreg_notify

if.end27:                                         ; preds = %if.end23
  %call.i50 = tail call i32 @__cpuhp_setup_state(i32 noundef 122, ptr noundef nonnull @.str.22, i1 noundef zeroext true, ptr noundef nonnull @arch_timer_starting_cpu, ptr noundef nonnull @arch_timer_dying_cpu, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool29.not = icmp eq i32 %call.i50, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %out_unreg_cpupm

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_unreg_cpupm:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @arch_timer_cpu_pm_deinit() #15
  br label %out_unreg_notify

out_unreg_notify:                                 ; preds = %out_unreg_cpupm, %if.end23.out_unreg_notify_crit_edge
  %err.1 = phi i32 [ %call.i49, %if.end23.out_unreg_notify_crit_edge ], [ %call.i50, %out_unreg_cpupm ]
  %10 = load i32, ptr @arch_timer_uses_ppi, align 4
  %arrayidx32 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx32, align 4
  %13 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %12, ptr noundef %13) #11
  %14 = load i32, ptr @arch_timer_uses_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i51 = icmp eq i32 %14, 0
  br i1 %cmp.i51, label %arch_timer_has_nonsecure_ppi.exit54, label %out_unreg_notify.out_free_crit_edge

out_unreg_notify.out_free_crit_edge:              ; preds = %out_unreg_notify
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

arch_timer_has_nonsecure_ppi.exit54:              ; preds = %out_unreg_notify
  %15 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i52.not = icmp eq i32 %15, 0
  br i1 %tobool.i52.not, label %arch_timer_has_nonsecure_ppi.exit54.out_free_crit_edge, label %if.then34

arch_timer_has_nonsecure_ppi.exit54.out_free_crit_edge: ; preds = %arch_timer_has_nonsecure_ppi.exit54
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.then34:                                        ; preds = %arch_timer_has_nonsecure_ppi.exit54
  call void @__sanitizer_cov_trace_pc() #13
  %16 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  %17 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %16, ptr noundef %17) #11
  br label %out_free

out_free:                                         ; preds = %if.then34, %arch_timer_has_nonsecure_ppi.exit54.out_free_crit_edge, %out_unreg_notify.out_free_crit_edge, %do.end21
  %err.2 = phi i32 [ %err.063, %do.end21 ], [ %err.1, %if.then34 ], [ %err.1, %arch_timer_has_nonsecure_ppi.exit54.out_free_crit_edge ], [ %err.1, %out_unreg_notify.out_free_crit_edge ]
  %18 = load ptr, ptr @arch_timer_evt, align 4
  tail call void @free_percpu(ptr noundef %18) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ %err.2, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @arch_timer_needs_of_probing() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arch_timers_present, align 4
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %arch_timer_of_match.arch_timer_mem_of_match = select i1 %tobool.not, ptr @arch_timer_of_match, ptr @arch_timer_mem_of_match
  %call.i15 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull %arch_timer_of_match.arch_timer_mem_of_match, ptr noundef null) #11
  %tobool5.not = icmp eq ptr %call.i15, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call.i15) #11
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end.if.end8_crit_edge
  %needs_probing.0.off0 = phi i1 [ false, %if.end.if.end8_crit_edge ], [ %call6, %land.lhs.true ]
  tail call void @of_node_put(ptr noundef %call.i15) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %needs_probing.0.off0, %if.end8 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_common_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arch_timers_present, align 4
  tail call fastcc void @arch_timer_banner(i32 noundef %0) #15
  %1 = load i32, ptr @arch_timers_present, align 4
  tail call fastcc void @arch_counter_register(i32 noundef %1) #15
  %call = tail call i32 @arch_timer_arch_init() #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_virt(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c3, 1", "=r"() #11, !srcloc !202
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.timer_handler.exit_crit_edge, label %if.then.i

entry.timer_handler.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %timer_handler.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %0, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c3, 1", "r"(i32 %or.i) #11, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 128
  tail call void %2(ptr noundef %dev_id) #11
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %if.then.i, %entry.timer_handler.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry.timer_handler.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_phys(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c2, 1", "=r"() #11, !srcloc !205
  %and.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.timer_handler.exit_crit_edge, label %if.then.i

entry.timer_handler.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %timer_handler.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %0, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c2, 1", "r"(i32 %or.i) #11, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 128
  tail call void %2(ptr noundef %dev_id) #11
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %if.then.i, %entry.timer_handler.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry.timer_handler.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_starting_cpu(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_timer_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  tail call fastcc void @__arch_timer_setup(i32 noundef 1, ptr noundef %8)
  %9 = load i32, ptr @arch_timer_uses_ppi, align 4
  %arrayidx3 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %call.i.i = tail call ptr @irq_get_irq_data(i32 noundef %11) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.do.end.i_crit_edge, label %irq_get_trigger_type.exit.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

irq_get_trigger_type.exit.i:                      ; preds = %entry
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i.i.i = and i32 %15, 15
  %16 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and.i.i.i, label %irq_get_trigger_type.exit.i.do.end.i_crit_edge [
    i32 4, label %irq_get_trigger_type.exit.i.check_ppi_trigger.exit_crit_edge
    i32 8, label %if.end.fold.split.i
  ]

irq_get_trigger_type.exit.i.check_ppi_trigger.exit_crit_edge: ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_ppi_trigger.exit

irq_get_trigger_type.exit.i.do.end.i_crit_edge:   ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %irq_get_trigger_type.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %11) #14
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #14
  br label %check_ppi_trigger.exit

if.end.fold.split.i:                              ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_ppi_trigger.exit

check_ppi_trigger.exit:                           ; preds = %if.end.fold.split.i, %do.end.i, %irq_get_trigger_type.exit.i.check_ppi_trigger.exit_crit_edge
  %flags.0.i = phi i32 [ 8, %do.end.i ], [ %and.i.i.i, %irq_get_trigger_type.exit.i.check_ppi_trigger.exit_crit_edge ], [ 8, %if.end.fold.split.i ]
  %17 = load i32, ptr @arch_timer_uses_ppi, align 4
  %arrayidx5 = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5, align 4
  tail call void @enable_percpu_irq(i32 noundef %19, i32 noundef %flags.0.i) #11
  %20 = load i32, ptr @arch_timer_uses_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %arch_timer_has_nonsecure_ppi.exit, label %check_ppi_trigger.exit.if.end_crit_edge

check_ppi_trigger.exit.if.end_crit_edge:          ; preds = %check_ppi_trigger.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

arch_timer_has_nonsecure_ppi.exit:                ; preds = %check_ppi_trigger.exit
  %21 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %arch_timer_has_nonsecure_ppi.exit.if.end_crit_edge, label %if.then

arch_timer_has_nonsecure_ppi.exit.if.end_crit_edge: ; preds = %arch_timer_has_nonsecure_ppi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %arch_timer_has_nonsecure_ppi.exit
  %22 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  %call.i.i11 = tail call ptr @irq_get_irq_data(i32 noundef %22) #11
  %tobool.not.i.i12 = icmp eq ptr %call.i.i11, null
  br i1 %tobool.not.i.i12, label %if.then.do.end.i18_crit_edge, label %irq_get_trigger_type.exit.i15

if.then.do.end.i18_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i18

irq_get_trigger_type.exit.i15:                    ; preds = %if.then
  %common.i.i.i13 = getelementptr inbounds %struct.irq_data, ptr %call.i.i11, i32 0, i32 3
  %23 = ptrtoint ptr %common.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common.i.i.i13, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and.i.i.i14 = and i32 %26, 15
  %27 = zext i32 %and.i.i.i14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and.i.i.i14, label %irq_get_trigger_type.exit.i15.do.end.i18_crit_edge [
    i32 4, label %irq_get_trigger_type.exit.i15.check_ppi_trigger.exit21_crit_edge
    i32 8, label %if.end.fold.split.i19
  ]

irq_get_trigger_type.exit.i15.check_ppi_trigger.exit21_crit_edge: ; preds = %irq_get_trigger_type.exit.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_ppi_trigger.exit21

irq_get_trigger_type.exit.i15.do.end.i18_crit_edge: ; preds = %irq_get_trigger_type.exit.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i18

do.end.i18:                                       ; preds = %irq_get_trigger_type.exit.i15.do.end.i18_crit_edge, %if.then.do.end.i18_crit_edge
  %call2.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %22) #14
  %call7.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #14
  br label %check_ppi_trigger.exit21

if.end.fold.split.i19:                            ; preds = %irq_get_trigger_type.exit.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_ppi_trigger.exit21

check_ppi_trigger.exit21:                         ; preds = %if.end.fold.split.i19, %do.end.i18, %irq_get_trigger_type.exit.i15.check_ppi_trigger.exit21_crit_edge
  %flags.0.i20 = phi i32 [ 8, %do.end.i18 ], [ %and.i.i.i14, %irq_get_trigger_type.exit.i15.check_ppi_trigger.exit21_crit_edge ], [ 8, %if.end.fold.split.i19 ]
  %28 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  tail call void @enable_percpu_irq(i32 noundef %28, i32 noundef %flags.0.i20) #11
  br label %if.end

if.end:                                           ; preds = %check_ppi_trigger.exit21, %arch_timer_has_nonsecure_ppi.exit.if.end_crit_edge, %check_ppi_trigger.exit.if.end_crit_edge
  %29 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c1, 0", "=r"() #11, !srcloc !208
  %and.i22 = and i32 %29, -776
  %or.i = or i32 %and.i22, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c1, 0", "r"(i32 %or.i) #11, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  %30 = load i8, ptr @evtstrm_enable, align 1, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %31 = load i32, ptr @arch_timer_rate, align 4
  %div1.i = udiv i32 %31, 20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %31)
  %32 = icmp ult i32 %31, 20000
  %33 = tail call i32 @llvm.ctlz.i32(i32 %div1.i, i1 true) #11, !range !211
  %sub.i.i = sub nuw nsw i32 32, %33
  %cond.i.i = select i1 %32, i32 0, i32 %sub.i.i
  %sub.i = add nsw i32 %cond.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i.i)
  %cmp.i23 = icmp ugt i32 %cond.i.i, 1
  br i1 %cmp.i23, label %land.lhs.true.i, label %if.then8.if.end.i_crit_edge

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %sub2.i = add nsw i32 %cond.i.i, -2
  %shl.i = shl nuw nsw i32 1, %sub2.i
  %and.i24 = and i32 %shl.i, %div1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i = icmp eq i32 %and.i24, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %sub.i, i32 %cond.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then8.if.end.i_crit_edge
  %lsb.0.i = phi i32 [ %sub.i, %if.then8.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %34 = tail call i32 @llvm.smin.i32(i32 %lsb.0.i, i32 15) #11
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0) #11
  %36 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c1, 0", "=r"() #11, !srcloc !208
  %and.i.i = and i32 %36, -245
  %shl.i.i = shl nuw nsw i32 %35, 4
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %or1.i.i = or i32 %or.i.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c1, 0", "r"(i32 %or1.i.i) #11, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %37 = load i32, ptr @elf_hwcap, align 4
  %or.i.i.i = or i32 %37, 2097152
  store i32 %or.i.i.i, ptr @elf_hwcap, align 4
  %38 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i.i.i25 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i25 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %41)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %42, %41
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.arch_timer_configure_evtstream.exit_crit_edge, label %land.rhs.i.i.i.i.i

if.end.i.arch_timer_configure_evtstream.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_timer_configure_evtstream.exit

land.rhs.i.i.i.i.i:                               ; preds = %if.end.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.arch_timer_configure_evtstream.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !193

land.rhs.i.i.i.i.i.arch_timer_configure_evtstream.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_timer_configure_evtstream.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %arch_timer_configure_evtstream.exit

arch_timer_configure_evtstream.exit:              ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.arch_timer_configure_evtstream.exit_crit_edge, %if.end.i.arch_timer_configure_evtstream.exit_crit_edge
  tail call void @_set_bit(i32 noundef %41, ptr noundef nonnull @evtstrm_available) #11
  br label %if.end9

if.end9:                                          ; preds = %arch_timer_configure_evtstream.exit, %if.end.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_dying_cpu(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_timer_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp.not.i.i.i = icmp ugt i32 %9, %5
  br i1 %cmp.not.i.i.i, label %entry.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_clear_cpu.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !193

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %entry.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %5, ptr noundef nonnull @evtstrm_available) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arch_timer_stop.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arch_timer_dying_cpu, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !212

if.then.i:                                        ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %irq.i = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arch_timer_stop.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %15) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %cpumask_clear_cpu.exit
  %16 = load i32, ptr @arch_timer_uses_ppi, align 4
  %arrayidx.i = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  tail call void @disable_percpu_irq(i32 noundef %18) #11
  %19 = load i32, ptr @arch_timer_uses_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i, label %arch_timer_has_nonsecure_ppi.exit.i, label %do.end.i.arch_timer_stop.exit_crit_edge

do.end.i.arch_timer_stop.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_timer_stop.exit

arch_timer_has_nonsecure_ppi.exit.i:              ; preds = %do.end.i
  %20 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @arch_timer_ppi, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %arch_timer_has_nonsecure_ppi.exit.i.arch_timer_stop.exit_crit_edge, label %if.then5.i

arch_timer_has_nonsecure_ppi.exit.i.arch_timer_stop.exit_crit_edge: ; preds = %arch_timer_has_nonsecure_ppi.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_timer_stop.exit

if.then5.i:                                       ; preds = %arch_timer_has_nonsecure_ppi.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @disable_percpu_irq(i32 noundef %20) #11
  br label %arch_timer_stop.exit

arch_timer_stop.exit:                             ; preds = %if.then5.i, %arch_timer_has_nonsecure_ppi.exit.i.arch_timer_stop.exit_crit_edge, %do.end.i.arch_timer_stop.exit_crit_edge
  %set_state_shutdown.i = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 14
  %21 = ptrtoint ptr %set_state_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_state_shutdown.i, align 8
  %call7.i = tail call i32 %22(ptr noundef %8) #11
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arch_timer_cpu_pm_deinit() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_pm_unregister_notifier(ptr noundef nonnull @arch_timer_cpu_pm_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !193

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1154, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_cpu_pm_notify(ptr nocapture noundef readnone %self, i32 noundef %action, ptr nocapture noundef readnone %hcpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %action, label %entry.if.end37_crit_edge [
    i32 0, label %if.then
    i32 1, label %entry.if.then14_crit_edge
    i32 2, label %entry.if.then14_crit_edge46
  ]

entry.if.then14_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then:                                          ; preds = %entry
  %1 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c1, 0", "=r"() #11, !srcloc !208
  %2 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @saved_cntkctl to i32)
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %8, align 4
  %10 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp.not.i.i.i = icmp ugt i32 %11, %10
  br i1 %cmp.not.i.i.i, label %if.then.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then.cpumask_clear_cpu.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !193

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %if.then.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %10, ptr noundef nonnull @evtstrm_available) #11
  br label %if.end37

if.then14:                                        ; preds = %entry.if.then14_crit_edge, %entry.if.then14_crit_edge46
  %12 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i40 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i40 to ptr
  %cpu28 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu28, align 4
  %arrayidx29 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %17, ptrtoint (ptr @saved_cntkctl to i32)
  %18 = inttoptr i32 %add30 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c1, 0", "r"(i32 %20) #11, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %21 = load i32, ptr @elf_hwcap, align 4
  %and.i41 = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.i.not = icmp eq i32 %and.i41, 0
  br i1 %tobool.i.not, label %if.then14.if.end37_crit_edge, label %if.then33

if.then14.if.end37_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then33:                                        ; preds = %if.then14
  %22 = ptrtoint ptr %cpu28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %23)
  %cmp.not.i.i.i42 = icmp ugt i32 %24, %23
  br i1 %cmp.not.i.i.i42, label %if.then33.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i44

if.then33.cpumask_set_cpu.exit_crit_edge:         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i44:                                 ; preds = %if.then33
  %.b37.i.i.i43 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i43, label %land.rhs.i.i.i44.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i45, !prof !193

land.rhs.i.i.i44.cpumask_set_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

if.then.i.i.i45:                                  ; preds = %land.rhs.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i45, %land.rhs.i.i.i44.cpumask_set_cpu.exit_crit_edge, %if.then33.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %23, ptr noundef nonnull @evtstrm_available) #11
  br label %if.end37

if.end37:                                         ; preds = %cpumask_set_cpu.exit, %if.then14.if.end37_crit_edge, %cpumask_clear_cpu.exit, %entry.if.end37_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__arch_timer_setup(i32 noundef %type, ptr noundef %clk) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 9
  %0 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %features, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, ptr @arch_timer_c3stop, align 1, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %name = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 21
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.25, ptr %name, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 22
  %4 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 450, ptr %rating, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !181) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %rem.i = and i32 %8, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %8, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 25
  %9 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %10 = load i32, ptr @arch_timer_uses_ppi, align 4
  %arrayidx = getelementptr [5 x i32], ptr @arch_timer_ppi, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 23
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %14 = icmp ult i32 %10, 4
  br i1 %14, label %switch.lookup, label %do.body7

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/arm_arch_timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 853, 0\0A.popsection", ""() #11, !srcloc !213
  unreachable

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.__arch_timer_setup, i32 0, i32 %10
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep57 = getelementptr inbounds [4 x ptr], ptr @switch.table.__arch_timer_setup.67, i32 0, i32 %10
  %16 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load58 = load ptr, ptr %switch.gep57, align 4
  %set_state_shutdown5 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 14
  %17 = ptrtoint ptr %set_state_shutdown5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %switch.load, ptr %set_state_shutdown5, align 8
  %set_state_oneshot_stopped6 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 13
  %18 = ptrtoint ptr %set_state_oneshot_stopped6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %switch.load, ptr %set_state_oneshot_stopped6, align 4
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 1
  %19 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %switch.load58, ptr %set_next_event, align 4
  %20 = load i32, ptr @arch_timer_rate, align 4
  %conv.i.i = zext i32 %20 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1261440000
  %sub.i.i = add nsw i64 %mul.i.i, -1
  %shr.i.i.i.i = lshr i64 %sub.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  %conv1.i.i.i.i = trunc i64 %sub.i.i to i32
  %21 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i, i1 true) #11, !range !214
  %sub.i6.i.i.i.i = sub nuw nsw i32 32, %21
  %22 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i, i1 true) #11, !range !211
  %add.i.i.i.i = sub nuw nsw i32 64, %22
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %sub.i6.i.i.i.i, i32 %add.i.i.i.i
  %23 = call i32 @llvm.smax.i32(i32 %retval.0.i.i.i.i, i32 56)
  %24 = add nsw i32 %23, -1
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 63) #11
  %sub1.i = xor i32 %25, 63
  %sh_prom.i = zext i32 %sub1.i to i64
  %shr.i = lshr i64 -1, %sh_prom.i
  %extract.t = trunc i64 %shr.i to i32
  br label %if.end29

if.else:                                          ; preds = %entry
  %26 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 34, ptr %features, align 4
  %name16 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 21
  %27 = ptrtoint ptr %name16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.26, ptr %name16, align 4
  %rating17 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 22
  %28 = ptrtoint ptr %rating17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 400, ptr %rating17, align 8
  %cpumask18 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 25
  %29 = ptrtoint ptr %cpumask18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @__cpu_possible_mask, ptr %cpumask18, align 4
  %.b55 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %set_state_shutdown21 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 14
  br i1 %.b55, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %set_state_shutdown21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @arch_timer_shutdown_virt_mem, ptr %set_state_shutdown21, align 8
  %set_state_oneshot_stopped22 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 13
  %31 = ptrtoint ptr %set_state_oneshot_stopped22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @arch_timer_shutdown_virt_mem, ptr %set_state_oneshot_stopped22, align 4
  %set_next_event23 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 1
  %32 = ptrtoint ptr %set_next_event23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @arch_timer_set_next_event_virt_mem, ptr %set_next_event23, align 4
  br label %if.end29

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %set_state_shutdown21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @arch_timer_shutdown_phys_mem, ptr %set_state_shutdown21, align 8
  %set_state_oneshot_stopped26 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 13
  %34 = ptrtoint ptr %set_state_oneshot_stopped26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @arch_timer_shutdown_phys_mem, ptr %set_state_oneshot_stopped26, align 4
  %set_next_event27 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 1
  %35 = ptrtoint ptr %set_next_event27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @arch_timer_set_next_event_phys_mem, ptr %set_next_event27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else24, %if.then20, %switch.lookup
  %max_delta.0.off0 = phi i32 [ %extract.t, %switch.lookup ], [ -1, %if.else24 ], [ -1, %if.then20 ]
  %set_state_shutdown30 = getelementptr inbounds %struct.clock_event_device, ptr %clk, i32 0, i32 14
  %36 = ptrtoint ptr %set_state_shutdown30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_state_shutdown30, align 8
  %call31 = tail call i32 %37(ptr noundef %clk) #11
  %38 = load i32, ptr @arch_timer_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %clk, i32 noundef %38, i32 noundef 15, i32 noundef %max_delta.0.off0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_virt(ptr nocapture noundef readnone %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c3, 1", "=r"() #11, !srcloc !202
  %and.i = and i32 %0, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c3, 1", "r"(i32 %and.i) #11, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_virt(i32 noundef %evt, ptr nocapture noundef readnone %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c3, 1", "=r"() #11, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  %1 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #11, !srcloc !192
  %or.i = and i32 %0, -4
  %and.i = or i32 %or.i, 1
  %conv.i = zext i32 %evt to i64
  %add.i = add i64 %1, %conv.i
  tail call void asm sideeffect "mcrr p15, 3, ${0:Q}, ${0:R}, c14", "r"(i64 %add.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c3, 1", "r"(i32 %and.i) #11, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_phys(ptr nocapture noundef readnone %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c2, 1", "=r"() #11, !srcloc !205
  %and14.i = and i32 %0, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c2, 1", "r"(i32 %and14.i) #11, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_phys(i32 noundef %evt, ptr nocapture noundef readnone %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 0, $0, c14, c2, 1", "=r"() #11, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  %1 = tail call i64 asm sideeffect "mrrc p15, 0, ${0:Q}, ${0:R}, c14", "=r"() #11, !srcloc !217
  %or29.i = and i32 %0, -4
  %and30.i = or i32 %or29.i, 1
  %conv31.i = zext i32 %evt to i64
  %add32.i = add i64 %1, %conv31.i
  tail call void asm sideeffect "mcrr p15, 2, ${0:Q}, ${0:R}, c14", "r"(i64 %add32.i) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c2, 1", "r"(i32 %and30.i) #11, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_virt_mem(ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr8.i.i = getelementptr i8, ptr %clk, i32 -128
  %0 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr8.i.i, align 128
  %add.ptr12.i.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #11, !srcloc !219
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr8.i.i, align 128
  %add.ptr15.i.i = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %3) #11, !srcloc !220
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_virt_mem(i32 noundef %evt, ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr12.i.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #11, !srcloc !219
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i25.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i25.i) #11, !srcloc !219
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !219
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10.i.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #11, !srcloc !219
  %cmp.not.i.i = icmp eq i32 %5, %11
  br i1 %cmp.not.i.i, label %set_next_event_mem.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

set_next_event_mem.exit:                          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = zext i32 %5 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #11
  %17 = and i32 %2, -50331649
  %18 = or i32 %17, 16777216
  %conv.i = zext i32 %evt to i64
  %add.i = add i64 %16, %conv.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr18.i.i = getelementptr i8, ptr %20, i32 48
  %conv.i38.i.i = trunc i64 %add.i to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv.i38.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %21) #11, !srcloc !220
  %shr.i39.i.i = lshr i64 %add.i, 32
  %conv1.i40.i.i = trunc i64 %shr.i39.i.i to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv1.i40.i.i) #11
  %add.ptr.i41.i.i = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i.i, i32 %22) #11, !srcloc !220
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr15.i.i = getelementptr i8, ptr %24, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %18) #11, !srcloc !220
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_shutdown_phys_mem(ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %clk, i32 -128
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #11, !srcloc !219
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 128
  %add.ptr1.i2.i = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i2.i, i32 %3) #11, !srcloc !220
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_set_next_event_phys_mem(i32 noundef %evt, ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clk, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #11, !srcloc !219
  br label %do.body.i31.i

do.body.i31.i:                                    ; preds = %do.body.i31.i.do.body.i31.i_crit_edge, %entry
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i27.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i27.i) #11, !srcloc !219
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr4.i28.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i28.i) #11, !srcloc !219
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10.i29.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i29.i) #11, !srcloc !219
  %cmp.not.i30.i = icmp eq i32 %5, %11
  br i1 %cmp.not.i30.i, label %set_next_event_mem.exit, label %do.body.i31.i.do.body.i31.i_crit_edge

do.body.i31.i.do.body.i31.i_crit_edge:            ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i31.i

set_next_event_mem.exit:                          ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = zext i32 %5 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #11
  %17 = and i32 %2, -50331649
  %18 = or i32 %17, 16777216
  %conv.i = zext i32 %evt to i64
  %add.i = add i64 %16, %conv.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr4.i.i = getelementptr i8, ptr %20, i32 32
  %conv.i37.i.i = trunc i64 %add.i to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv.i37.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %21) #11, !srcloc !220
  %shr.i.i.i = lshr i64 %add.i, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv1.i.i.i) #11
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %22) #11, !srcloc !220
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i16.i = getelementptr i8, ptr %24, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16.i, i32 %18) #11, !srcloc !220
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arch_timer_banner(i32 noundef %type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %0 = load i32, ptr @arch_timer_rate, align 4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @arch_timer_uses_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp8 = icmp eq i32 %1, 2
  %cond9 = select i1 %cmp8, ptr @.str.13, ptr @.str.12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond10 = phi ptr [ %cond9, %cond.true ], [ @.str.39, %entry.cond.end_crit_edge ]
  br i1 %tobool3.not, label %cond.end.cond.end19_crit_edge, label %cond.true15

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end19

cond.true15:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %.b26 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %cond17 = select i1 %.b26, ptr @.str.13, ptr @.str.12
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true15, %cond.end.cond.end19_crit_edge
  %cond4 = phi ptr [ @.str.39, %cond.end.cond.end19_crit_edge ], [ @.str.41, %cond.true15 ]
  %cond20 = phi ptr [ @.str.39, %cond.end.cond.end19_crit_edge ], [ %cond17, %cond.true15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp eq i32 %type, 3
  %cond12 = select i1 %cmp, ptr @.str.42, ptr @.str.39
  %div5 = udiv i32 %0, 10000
  %rem = urem i32 %div5, 100
  %div = udiv i32 %0, 1000000
  %cond1 = select i1 %cmp, ptr @.str.40, ptr @.str.39
  %cond = select i1 %tobool.not, ptr @.str.39, ptr @.str.38
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %cond, ptr noundef nonnull %cond1, ptr noundef nonnull %cond4, i32 noundef %div, i32 noundef %rem, ptr noundef nonnull %cond10, ptr noundef nonnull %cond12, ptr noundef nonnull %cond20) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arch_counter_register(i32 noundef %type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @arch_timer_uses_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %arch_counter_get_cntvct.arch_counter_get_cntpct = select i1 %cmp, ptr @arch_counter_get_cntvct, ptr @arch_counter_get_cntpct
  store ptr %arch_counter_get_cntvct.arch_counter_get_cntpct, ptr @arch_timer_read_counter, align 4
  store i32 1, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 12), align 4
  br label %arch_counter_get_width.exit

if.else2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @arch_counter_get_cntvct_mem, ptr @arch_timer_read_counter, align 4
  br label %arch_counter_get_width.exit

arch_counter_get_width.exit:                      ; preds = %if.else2, %if.then
  %1 = load i32, ptr @arch_timer_rate, align 4
  %conv.i = zext i32 %1 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1261440000
  %sub.i = add nsw i64 %mul.i, -1
  %shr.i.i.i = lshr i64 %sub.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %conv1.i.i.i = trunc i64 %sub.i to i32
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #11, !range !214
  %sub.i6.i.i.i = sub nuw nsw i32 32, %2
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #11, !range !211
  %add.i.i.i = sub nuw nsw i32 64, %3
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %sub.i6.i.i.i, i32 %add.i.i.i
  %4 = call i32 @llvm.smax.i32(i32 %retval.0.i.i.i, i32 56)
  %5 = add nsw i32 %4, -1
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 63) #11
  %sub4 = xor i32 %6, 63
  %sh_prom = zext i32 %sub4 to i64
  %shr = lshr i64 -1, %sh_prom
  store i64 %shr, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 1), align 8
  store i64 %shr, ptr getelementptr inbounds (%struct.cyclecounter, ptr @cyclecounter, i32 0, i32 1), align 8
  %7 = load i8, ptr @arch_counter_suspend_stop, align 1, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.then13, label %arch_counter_get_width.exit.if.end14_crit_edge

arch_counter_get_width.exit.if.end14_crit_edge:   ; preds = %arch_counter_get_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %arch_counter_get_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 13), align 8
  %or = or i32 %8, 128
  store i32 %or, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 13), align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %arch_counter_get_width.exit.if.end14_crit_edge
  %9 = add nuw nsw i32 %6, 1
  %10 = load ptr, ptr @arch_timer_read_counter, align 4
  %call15 = tail call i64 %10() #11
  %11 = load i32, ptr @arch_timer_rate, align 4
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clocksource_counter, i32 noundef 1, i32 noundef %11) #11
  %12 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 2), align 8
  store i32 %12, ptr getelementptr inbounds (%struct.cyclecounter, ptr @cyclecounter, i32 0, i32 2), align 8
  %13 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_counter, i32 0, i32 3), align 4
  store i32 %13, ptr getelementptr inbounds (%struct.cyclecounter, ptr @cyclecounter, i32 0, i32 3), align 4
  tail call void @timecounter_init(ptr noundef nonnull @arch_timer_kvm_info, ptr noundef nonnull @cyclecounter, i64 noundef %call15) #11
  %14 = load ptr, ptr @arch_timer_read_counter, align 4
  %15 = load i32, ptr @arch_timer_rate, align 4
  tail call void @sched_clock_register(ptr noundef %14, i32 noundef %9, i32 noundef %15) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_timer_arch_init() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @arch_counter_get_cntpct() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  %0 = tail call i64 asm sideeffect "mrrc p15, 0, ${0:Q}, ${0:R}, c14", "=r"() #11, !srcloc !217
  ret i64 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @arch_counter_get_cntvct_mem() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_timer_mem, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 128
  %add.ptr1.i = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #11, !srcloc !219
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %0, align 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !219
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 128
  %add.ptr10.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #11, !srcloc !219
  %cmp.not.i = icmp eq i32 %3, %9
  br i1 %cmp.not.i, label %arch_counter_get_cnt_mem.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

arch_counter_get_cnt_mem.exit:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = zext i32 %3 to i64
  %11 = zext i32 %6 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #11
  ret i64 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @arch_counter_read_cc(ptr nocapture noundef readnone %cc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_timer_read_counter, align 4
  %call = tail call i64 %0() #11
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @arch_timer_mem_find_best_frame(ptr noundef %timer_mem) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timer_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_mem, align 4
  %size = getelementptr inbounds %struct.arch_timer_mem, ptr %timer_mem, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call = tail call ptr @ioremap(i32 noundef %1, i32 noundef %3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %timer_mem) #14
  br label %cleanup28

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !219
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %best_frame.062 = phi ptr [ null, %if.end ], [ %best_frame.158, %for.inc.for.body_crit_edge ]
  %i.060 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.arch_timer_mem, ptr %timer_mem, i32 0, i32 2, i32 %i.060
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %mul = shl i32 %i.060, 2
  %add = add nuw nsw i32 %mul, 64
  %add.ptr10 = getelementptr i8, ptr %call, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 1056964608) #11, !srcloc !220
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #11, !srcloc !219
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shl = shl i32 2, %mul
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp ne i32 %and, 0
  %neg = and i32 %9, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %neg)
  %tobool20.not = icmp eq i32 %neg, 18
  %or.cond = select i1 %tobool18.not, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @arch_timer_mem_use_virtual, align 1
  br label %for.end

cleanup:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %neg23 = and i32 %9, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %neg23)
  %tobool25.not = icmp eq i32 %neg23, 33
  %arrayidx.best_frame.0 = select i1 %tobool25.not, ptr %arrayidx, ptr %best_frame.062
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body.for.inc_crit_edge
  %best_frame.158 = phi ptr [ %arrayidx.best_frame.0, %cleanup ], [ %best_frame.062, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread
  %best_frame.2 = phi ptr [ %arrayidx, %cleanup.thread ], [ %best_frame.158, %for.inc.for.end_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup28

cleanup28:                                        ; preds = %for.end, %do.end
  %retval.0 = phi ptr [ %best_frame.2, %for.end ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_mem_frame_get_cntfrq(ptr noundef %frame) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cntbase = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %frame, i32 0, i32 1
  %0 = ptrtoint ptr %cntbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cntbase, align 4
  %size = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %frame, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call = tail call ptr @ioremap(i32 noundef %1, i32 noundef %3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %cntbase) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !219
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void @iounmap(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %5, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_mem_frame_register(ptr nocapture noundef readonly %frame) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b3536 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %virt_irq = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %frame, i32 0, i32 4
  %phys_irq = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %frame, i32 0, i32 3
  %irq.0.in = select i1 %.b3536, ptr %virt_irq, ptr %phys_irq
  %0 = ptrtoint ptr %irq.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %irq.0 = load i32, ptr %irq.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %tobool1.not = icmp eq i32 %irq.0, 0
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %.b3536, ptr @.str.13, ptr @.str.12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %cond) #14
  br label %cleanup

if.end4:                                          ; preds = %entry
  %cntbase = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %frame, i32 0, i32 1
  %1 = ptrtoint ptr %cntbase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cntbase, align 4
  %size = getelementptr inbounds %struct.arch_timer_mem_frame, ptr %frame, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %call5 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %4, ptr noundef nonnull @.str.26, i32 noundef 0) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %cntbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cntbase, align 4
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %call11 = tail call ptr @ioremap(i32 noundef %6, i32 noundef %8) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = tail call fastcc i32 @arch_timer_mem_register(ptr noundef nonnull %call11, i32 noundef %irq.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iounmap(ptr noundef nonnull %call11) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load i32, ptr @arch_timers_present, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr @arch_timers_present, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %do.end16, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call20, %if.then22 ], [ 0, %if.end23 ], [ -6, %do.end16 ], [ -22, %do.end ], [ -16, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arch_timer_mem_register(ptr noundef %base, i32 noundef %irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #16
  store ptr %call7.i.i, ptr @arch_timer_mem, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %call7.i.i, align 128
  %irq2 = getelementptr inbounds %struct.arch_timer, ptr %call7.i.i, i32 0, i32 2, i32 23
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %irq2, align 4
  %evt3 = getelementptr inbounds %struct.arch_timer, ptr %call7.i.i, i32 0, i32 2
  tail call fastcc void @__arch_timer_setup(i32 noundef 2, ptr noundef %evt3)
  %.b16 = load i1, ptr @arch_timer_mem_use_virtual, align 1
  %arch_timer_handler_virt_mem.arch_timer_handler_phys_mem = select i1 %.b16, ptr @arch_timer_handler_virt_mem, ptr @arch_timer_handler_phys_mem
  %3 = load ptr, ptr @arch_timer_mem, align 4
  %evt7 = getelementptr inbounds %struct.arch_timer, ptr %3, i32 0, i32 2
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull %arch_timer_handler_virt_mem.arch_timer_handler_phys_mem, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.26, ptr noundef %evt7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #14
  %4 = load ptr, ptr @arch_timer_mem, align 4
  tail call void @kfree(ptr noundef %4) #11
  store ptr null, ptr @arch_timer_mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_virt_mem(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr8.i.i = getelementptr i8, ptr %dev_id, i32 -128
  %0 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr8.i.i, align 128
  %add.ptr12.i.i = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #11, !srcloc !219
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.timer_handler.exit_crit_edge, label %if.then.i

entry.timer_handler.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %timer_handler.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %3, 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %5 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr8.i.i, align 128
  %add.ptr15.i.i = getelementptr i8, ptr %6, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %4) #11, !srcloc !220
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 128
  tail call void %8(ptr noundef %dev_id) #11
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %if.then.i, %entry.timer_handler.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry.timer_handler.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_timer_handler_phys_mem(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev_id, i32 -128
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #11, !srcloc !219
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.timer_handler.exit_crit_edge, label %if.then.i

entry.timer_handler.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %timer_handler.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %3, 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 128
  %add.ptr1.i8.i = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 %4) #11, !srcloc !220
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 128
  tail call void %8(ptr noundef %dev_id) #11
  br label %timer_handler.exit

timer_handler.exit:                               ; preds = %if.then.i, %entry.timer_handler.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %entry.timer_handler.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @arch_counter_read(ptr nocapture noundef readnone %cs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_timer_read_counter, align 4
  %call = tail call i64 %0() #11
  ret i64 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !112, !114, !116, !118, !119, !120, !121, !122, !123, !124, !125, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !179}
!llvm.named.register.sp = !{!181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__setup_early_evtstrm_cfg, !1, !"__setup_early_evtstrm_cfg", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 102, i32 1}
!2 = !{ptr @arch_timer_read_counter, !3, !"arch_timer_read_counter", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 219, i32 7}
!4 = !{ptr @__ksymtab_arch_timer_read_counter, !5, !"__ksymtab_arch_timer_read_counter", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 220, i32 1}
!6 = !{ptr @__of_table_armv7_arch_timer, !7, !"__of_table_armv7_arch_timer", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1412, i32 1}
!8 = !{ptr @__of_table_armv8_arch_timer, !9, !"__of_table_armv8_arch_timer", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1413, i32 1}
!10 = !{ptr @__of_table_armv7_arch_timer_mem, !11, !"__of_table_armv7_arch_timer_mem", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1597, i32 1}
!12 = !{ptr @__ksymtab_kvm_arch_ptp_get_crosststamp, !13, !"__ksymtab_kvm_arch_ptp_get_crosststamp", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1769, i32 1}
!14 = !{ptr @arch_timer_rate, !15, !"arch_timer_rate", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 72, i32 12}
!16 = !{ptr @arch_timer_kvm_info, !17, !"arch_timer_kvm_info", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1053, i32 35}
!18 = !{ptr @__pcpu_unique_saved_cntkctl, !19, !"__pcpu_unique_saved_cntkctl", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1126, i32 8}
!20 = !{ptr @saved_cntkctl, !19, !"saved_cntkctl", i1 false, i1 false}
!21 = !{ptr @__setup_str_early_evtstrm_cfg, !1, !"__setup_str_early_evtstrm_cfg", i1 false, i1 false}
!22 = !{ptr @evtstrm_enable, !23, !"evtstrm_enable", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 96, i32 13}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @evtstrm_available, !28, !"evtstrm_available", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 95, i32 18}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1357, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @arch_timer_of_init._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @arch_timer_of_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1363, i32 40}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1379, i32 49}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1389, i32 32}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1395, i32 3}
!43 = !{ptr @arch_timer_of_init._entry.7, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @arch_timer_of_init._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1401, i32 9}
!47 = !{ptr @arch_timers_present, !48, !"arch_timers_present", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 61, i32 17}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 76, i32 33}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 77, i32 36}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 78, i32 27}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 79, i32 26}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 80, i32 30}
!59 = !{ptr @arch_timer_ppi_names, !60, !"arch_timer_ppi_names", i1 false, i1 false}
!60 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 75, i32 20}
!61 = !{ptr @arch_timer_ppi, !62, !"arch_timer_ppi", i1 false, i1 false}
!62 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 73, i32 12}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1007, i32 31}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1012, i32 3}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @arch_timer_of_configure_rate._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @arch_timer_of_configure_rate._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @arch_timer_c3stop, !71, !"arch_timer_c3stop", i1 false, i1 false}
!71 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 86, i32 13}
!72 = !{ptr @arch_counter_suspend_stop, !73, !"arch_counter_suspend_stop", i1 false, i1 false}
!73 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 88, i32 13}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1183, i32 7}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1207, i32 3}
!78 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @arch_timer_register._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @arch_timer_register._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1217, i32 5}
!83 = !{ptr @arch_timer_evt, !84, !"arch_timer_evt", i1 false, i1 false}
!84 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 83, i32 44}
!85 = !{ptr @arch_timer_cpu_pm_notifier, !86, !"arch_timer_cpu_pm_notifier", i1 false, i1 false}
!86 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1143, i32 30}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1131, i32 3}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1135, i32 26}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 835, i32 15}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 860, i32 15}
!95 = distinct !{null, !96, !"arch_timer_mem_use_virtual", i1 false, i1 false}
!96 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 87, i32 13}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 954, i32 3}
!99 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @check_ppi_trigger._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @check_ppi_trigger._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 955, i32 3}
!104 = !{ptr @check_ppi_trigger._entry.29, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @check_ppi_trigger._entry_ptr.31, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1106, i32 2}
!108 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @arch_timer_stop.__UNIQUE_ID_ddebug250, !107, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!111 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @arch_timer_mem_of_match, !113, !"arch_timer_mem_of_match", i1 false, i1 false}
!113 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1272, i32 34}
!114 = !{ptr @arch_timer_of_match, !115, !"arch_timer_of_match", i1 false, i1 false}
!115 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1266, i32 34}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1017, i32 2}
!118 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @arch_timer_banner._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @arch_timer_banner._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"vdso_default", i1 false, i1 false}
!127 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 90, i32 29}
!128 = !{ptr @arch_timer_mem, !129, !"arch_timer_mem", i1 false, i1 false}
!129 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 68, i32 27}
!130 = !{ptr @cyclecounter, !131, !"cyclecounter", i1 false, i1 false}
!131 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 240, i32 28}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1545, i32 40}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1546, i32 4}
!136 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @arch_timer_mem_of_init._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @arch_timer_mem_of_init._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1551, i32 4}
!141 = !{ptr @arch_timer_mem_of_init._entry.46, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @arch_timer_mem_of_init._entry_ptr.48, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1559, i32 4}
!145 = !{ptr @arch_timer_mem_of_init._entry.49, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @arch_timer_mem_of_init._entry_ptr.51, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1581, i32 3}
!149 = !{ptr @arch_timer_mem_of_init._entry.52, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @arch_timer_mem_of_init._entry_ptr.54, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1444, i32 3}
!153 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @arch_timer_mem_find_best_frame._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @arch_timer_mem_find_best_frame._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1423, i32 3}
!158 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @arch_timer_mem_frame_get_cntfrq._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @arch_timer_mem_frame_get_cntfrq._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1497, i32 3}
!163 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @arch_timer_mem_frame_register._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @arch_timer_mem_frame_register._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1508, i32 3}
!168 = !{ptr @arch_timer_mem_frame_register._entry.61, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @arch_timer_mem_frame_register._entry_ptr.63, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 1258, i32 3}
!172 = !{ptr @.str.65, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @arch_timer_mem_register._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @arch_timer_mem_register._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @arch_timer_uses_ppi, !176, !"arch_timer_uses_ppi", i1 false, i1 false}
!176 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 85, i32 31}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 233, i32 10}
!179 = !{ptr @clocksource_counter, !180, !"clocksource_counter", i1 false, i1 false}
!180 = !{!"../drivers/clocksource/arm_arch_timer.c", i32 232, i32 27}
!181 = !{!"sp"}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i64 2153738383}
!192 = !{i64 6232737}
!193 = !{!"branch_weights", i32 2000, i32 1}
!194 = !{i64 6232344}
!195 = !{!"auto-init"}
!196 = !{i8 0, i8 2}
!197 = !{i64 2155021511, i64 2155021841}
!198 = !{i64 2155025487, i64 2155025737}
!199 = !{i64 2155027126}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{i64 2154985089, i64 2154985591, i64 2154985126, i64 2154985182, i64 2154985216, i64 2154985240, i64 2154985281, i64 2154985302, i64 2154985330, i64 2154985364}
!202 = !{i64 6232142}
!203 = !{i64 6231509}
!204 = !{i64 2153732979}
!205 = !{i64 6231948}
!206 = !{i64 6231200}
!207 = !{i64 2153732024}
!208 = !{i64 6232975}
!209 = !{i64 6233114}
!210 = !{i64 2153738974}
!211 = !{i32 0, i32 33}
!212 = !{i64 2148736300, i64 2148736305, i64 2148736318, i64 2148736362, i64 2148736396, i64 2148736417}
!213 = !{i64 2154937507, i64 2154938008, i64 2154937544, i64 2154937600, i64 2154937634, i64 2154937658, i64 2154937699, i64 2154937720, i64 2154937748, i64 2154937782}
!214 = !{i32 0, i32 23}
!215 = !{i64 6231623}
!216 = !{i64 2153737961}
!217 = !{i64 6232490}
!218 = !{i64 6231314}
!219 = !{i64 4980235}
!220 = !{i64 4979817}
