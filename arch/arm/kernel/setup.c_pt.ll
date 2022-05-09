; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/setup.c_pt.bc'
source_filename = "../arch/arm/kernel/setup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+processor_id\22, \22a\22\09"
module asm "\09.weak\09__crc_processor_id\09\09\09\09"
module asm "\09.long\09__crc_processor_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_processor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22processor_id\22\09\09\09\09\09"
module asm "__kstrtabns_processor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__machine_arch_type\22, \22a\22\09"
module asm "\09.weak\09__crc___machine_arch_type\09\09\09\09"
module asm "\09.long\09__crc___machine_arch_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___machine_arch_type:\09\09\09\09\09"
module asm "\09.asciz \09\22__machine_arch_type\22\09\09\09\09\09"
module asm "__kstrtabns___machine_arch_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cacheid\22, \22a\22\09"
module asm "\09.weak\09__crc_cacheid\09\09\09\09"
module asm "\09.long\09__crc_cacheid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cacheid:\09\09\09\09\09"
module asm "\09.asciz \09\22cacheid\22\09\09\09\09\09"
module asm "__kstrtabns_cacheid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+system_rev\22, \22a\22\09"
module asm "\09.weak\09__crc_system_rev\09\09\09\09"
module asm "\09.long\09__crc_system_rev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22system_rev\22\09\09\09\09\09"
module asm "__kstrtabns_system_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+system_serial\22, \22a\22\09"
module asm "\09.weak\09__crc_system_serial\09\09\09\09"
module asm "\09.long\09__crc_system_serial\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_serial:\09\09\09\09\09"
module asm "\09.asciz \09\22system_serial\22\09\09\09\09\09"
module asm "__kstrtabns_system_serial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+system_serial_low\22, \22a\22\09"
module asm "\09.weak\09__crc_system_serial_low\09\09\09\09"
module asm "\09.long\09__crc_system_serial_low\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_serial_low:\09\09\09\09\09"
module asm "\09.asciz \09\22system_serial_low\22\09\09\09\09\09"
module asm "__kstrtabns_system_serial_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+system_serial_high\22, \22a\22\09"
module asm "\09.weak\09__crc_system_serial_high\09\09\09\09"
module asm "\09.long\09__crc_system_serial_high\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_serial_high:\09\09\09\09\09"
module asm "\09.asciz \09\22system_serial_high\22\09\09\09\09\09"
module asm "__kstrtabns_system_serial_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+elf_hwcap\22, \22a\22\09"
module asm "\09.weak\09__crc_elf_hwcap\09\09\09\09"
module asm "\09.long\09__crc_elf_hwcap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_hwcap:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_hwcap\22\09\09\09\09\09"
module asm "__kstrtabns_elf_hwcap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+elf_hwcap2\22, \22a\22\09"
module asm "\09.weak\09__crc_elf_hwcap2\09\09\09\09"
module asm "\09.long\09__crc_elf_hwcap2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_hwcap2:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_hwcap2\22\09\09\09\09\09"
module asm "__kstrtabns_elf_hwcap2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+outer_cache\22, \22a\22\09"
module asm "\09.weak\09__crc_outer_cache\09\09\09\09"
module asm "\09.long\09__crc_outer_cache\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_outer_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22outer_cache\22\09\09\09\09\09"
module asm "__kstrtabns_outer_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+elf_platform\22, \22a\22\09"
module asm "\09.weak\09__crc_elf_platform\09\09\09\09"
module asm "\09.long\09__crc_elf_platform\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_platform\22\09\09\09\09\09"
module asm "__kstrtabns_elf_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stack = type { [3 x i32], [3 x i32], [3 x i32], [3 x i32], [80 x i8] }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.cpu_user_fns = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_arm = type { %struct.cpu, i32, i32 }
%struct.cpu = type { i32, i32, %struct.device }
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
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mpidr_hash = type { i32, [3 x i32], i32 }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc_info_list = type { i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__setup_str_fpe_setup = internal constant [5 x i8] c"fpe=\00", section ".init.rodata", align 1
@__setup_fpe_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fpe_setup, ptr @fpe_setup, i32 0 }, section ".init.setup", align 4
@processor_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_processor_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_processor_id = external dso_local constant [0 x i8], align 1
@__ksymtab_processor_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @processor_id to i32), ptr @__kstrtab_processor_id, ptr @__kstrtabns_processor_id }, section "___ksymtab+processor_id", align 4
@__machine_arch_type = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab___machine_arch_type = external dso_local constant [0 x i8], align 1
@__kstrtabns___machine_arch_type = external dso_local constant [0 x i8], align 1
@__ksymtab___machine_arch_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__machine_arch_type to i32), ptr @__kstrtab___machine_arch_type, ptr @__kstrtabns___machine_arch_type }, section "___ksymtab+__machine_arch_type", align 4
@cacheid = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_cacheid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cacheid = external dso_local constant [0 x i8], align 1
@__ksymtab_cacheid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cacheid to i32), ptr @__kstrtab_cacheid, ptr @__kstrtabns_cacheid }, section "___ksymtab+cacheid", align 4
@system_rev = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_system_rev = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_rev = external dso_local constant [0 x i8], align 1
@__ksymtab_system_rev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_rev to i32), ptr @__kstrtab_system_rev, ptr @__kstrtabns_system_rev }, section "___ksymtab+system_rev", align 4
@system_serial = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_system_serial = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_serial = external dso_local constant [0 x i8], align 1
@__ksymtab_system_serial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_serial to i32), ptr @__kstrtab_system_serial, ptr @__kstrtabns_system_serial }, section "___ksymtab+system_serial", align 4
@system_serial_low = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_system_serial_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_serial_low = external dso_local constant [0 x i8], align 1
@__ksymtab_system_serial_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_serial_low to i32), ptr @__kstrtab_system_serial_low, ptr @__kstrtabns_system_serial_low }, section "___ksymtab+system_serial_low", align 4
@system_serial_high = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_system_serial_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_serial_high = external dso_local constant [0 x i8], align 1
@__ksymtab_system_serial_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_serial_high to i32), ptr @__kstrtab_system_serial_high, ptr @__kstrtabns_system_serial_high }, section "___ksymtab+system_serial_high", align 4
@elf_hwcap = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_elf_hwcap = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_hwcap = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_hwcap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_hwcap to i32), ptr @__kstrtab_elf_hwcap, ptr @__kstrtabns_elf_hwcap }, section "___ksymtab+elf_hwcap", align 4
@elf_hwcap2 = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_elf_hwcap2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_hwcap2 = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_hwcap2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_hwcap2 to i32), ptr @__kstrtab_elf_hwcap2, ptr @__kstrtabns_elf_hwcap2 }, section "___ksymtab+elf_hwcap2", align 4
@processor = dso_local global %struct.processor zeroinitializer, section ".data..ro_after_init", align 4
@cpu_vtable = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @processor, ptr null, ptr null, ptr null], [16 x i8] zeroinitializer }, align 32
@outer_cache = dso_local global %struct.outer_cache_fns zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_outer_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_outer_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_outer_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @outer_cache to i32), ptr @__kstrtab_outer_cache, ptr @__kstrtabns_outer_cache }, section "___ksymtab+outer_cache", align 4
@__cpu_architecture = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@elf_platform = dso_local global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@__kstrtab_elf_platform = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_platform = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_platform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_platform to i32), ptr @__kstrtab_elf_platform, ptr @__kstrtabns_elf_platform }, section "___ksymtab+elf_platform", align 4
@early_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"early_print\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arch/arm/kernel/setup.c\00", [40 x i8] zeroinitializer }, align 32
@early_print._entry_ptr = internal global ptr @early_print._entry, section ".printk_index", align 4
@stacks = internal global [4 x %struct.stack] zeroinitializer, align 128
@cpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\012CPU%u: bad primary CPU number\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu_init\00", [23 x i8] zeroinitializer }, align 32
@cpu_init._entry_ptr = internal global ptr @cpu_init._entry, section ".printk_index", align 4
@__cpu_logical_map = dso_local local_unnamed_addr global [4 x i32] [i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@smp_setup_processor_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Booting Linux on physical CPU 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smp_setup_processor_id\00", [41 x i8] zeroinitializer }, align 32
@smp_setup_processor_id._entry_ptr = internal global ptr @smp_setup_processor_id._entry, section ".printk_index", align 4
@lookup_processor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CPU%u: configuration botched (ID %08x), CPU halted\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lookup_processor\00", [47 x i8] zeroinitializer }, align 32
@lookup_processor._entry_ptr = internal global ptr @lookup_processor._entry, section ".printk_index", align 4
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Available machine support:\0A\0AID (hex)\09NAME\0A\00", [53 x i8] zeroinitializer }, align 32
@__arch_info_begin = external dso_local constant [0 x %struct.machine_desc], align 4
@__arch_info_end = external dso_local constant [0 x %struct.machine_desc], align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%08x\09%s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\0APlease check your kernel config and/or bootloader.\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_add_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\012Ignoring memory at 0x%08llx outside 32-bit physical address space\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm_add_memory\00", [17 x i8] zeroinitializer }, align 32
@arm_add_memory._entry_ptr = internal global ptr @arm_add_memory._entry, section ".printk_index", align 4
@arm_add_memory._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\012Truncating memory at 0x%08llx to fit in 32-bit physical address space\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_add_memory._entry_ptr.16 = internal global ptr @arm_add_memory._entry.14, section ".printk_index", align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@arm_add_memory._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016Ignoring memory below PHYS_OFFSET: 0x%08llx-0x%08llx\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_add_memory._entry_ptr.19 = internal global ptr @arm_add_memory._entry.17, section ".printk_index", align 4
@arm_add_memory._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_add_memory._entry_ptr.21 = internal global ptr @arm_add_memory._entry.20, section ".printk_index", align 4
@__setup_str_early_mem = internal constant [4 x i8] c"mem\00", section ".init.rodata", align 1
@__setup_early_mem = internal global %struct.obs_kernel_param { ptr @__setup_str_early_mem, ptr @early_mem, i32 1 }, section ".init.setup", align 4
@screen_info = dso_local global { %struct.screen_info, [32 x i8] } { %struct.screen_info <{ i8 0, i8 0, i16 0, i16 0, i8 0, i8 80, i8 0, i8 0, i16 0, i16 0, i8 30, i8 1, i16 8, i16 0, i16 0, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, i16 0, i16 0, i32 0, i32 0, [2 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_setup__241_949_customize_machine3 = internal global ptr @customize_machine, section ".initcall3.init", align 4
@__initcall__kmod_setup__242_974_init_machine_late7 = internal global ptr @init_machine_late, section ".initcall7.init", align 4
@hyp_mode_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016CPU: All CPU(s) started in HYP mode.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hyp_mode_check\00", [17 x i8] zeroinitializer }, align 32
@hyp_mode_check._entry_ptr = internal global ptr @hyp_mode_check._entry, section ".printk_index", align 4
@hyp_mode_check._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016CPU: Virtualization extensions available.\0A\00", [51 x i8] zeroinitializer }, align 32
@hyp_mode_check._entry_ptr.26 = internal global ptr @hyp_mode_check._entry.24, section ".printk_index", align 4
@hyp_mode_check._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014CPU: WARNING: CPU(s) started in wrong/inconsistent modes (primary CPU mode 0x%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@hyp_mode_check._entry_ptr.29 = internal global ptr @hyp_mode_check._entry.27, section ".printk_index", align 4
@__boot_cpu_mode = external dso_local global i32, align 4
@hyp_mode_check._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014CPU: This may indicate a broken bootloader or firmware.\0A\00", [37 x i8] zeroinitializer }, align 32
@hyp_mode_check._entry_ptr.32 = internal global ptr @hyp_mode_check._entry.30, section ".printk_index", align 4
@hyp_mode_check._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016CPU: All CPU(s) started in SVC mode.\0A\00", [56 x i8] zeroinitializer }, align 32
@hyp_mode_check._entry_ptr.35 = internal global ptr @hyp_mode_check._entry.33, section ".printk_index", align 4
@__atags_pointer = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\0AError: invalid dtb and unrecognized/unsupported machine ID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  r1=0x%08x, r2=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  r2[]=%*ph\0A\00", [19 x i8] zeroinitializer }, align 32
@machine_desc = dso_local local_unnamed_addr global ptr null, section ".init.data", align 4
@machine_name = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@_text = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@cmd_line = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@__arm_pm_restart = internal unnamed_addr global ptr null, align 4
@arm_restart_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @arm_restart, ptr null, i32 128 }, [20 x i8] zeroinitializer }, align 32
@psci_smp_ops = external dso_local constant %struct.smp_operations, align 4
@handle_arch_irq = external dso_local local_unnamed_addr global ptr, section ".data..ro_after_init", align 4
@vga_con = external dso_local constant %struct.consw, align 4
@conswitchp = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_setup__243_1213_topology_init4 = internal global ptr @topology_init, section ".initcall4.init", align 4
@__initcall__kmod_setup__244_1225_proc_cpu_init5 = internal global ptr @proc_cpu_init, section ".initcall5.init", align 4
@cpuinfo_op = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @c_start, ptr @c_stop, ptr @c_next, ptr @c_show }, [16 x i8] zeroinitializer }, align 32
@fpe_type = dso_local global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@cpu_tlb = dso_local local_unnamed_addr global %struct.cpu_tlb_fns zeroinitializer, section ".data..ro_after_init", align 4
@cpu_user = dso_local local_unnamed_addr global %struct.cpu_user_fns zeroinitializer, section ".data..ro_after_init", align 4
@cpu_cache = dso_local local_unnamed_addr global %struct.cpu_cache_fns zeroinitializer, section ".data..ro_after_init", align 4
@__pcpu_scope_cpu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_cpu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cpu_data = weak dso_local global %struct.cpuinfo_arm zeroinitializer, section ".data..percpu", align 8
@mpidr_hash = dso_local global { %struct.mpidr_hash, [44 x i8] } zeroinitializer, align 32
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@early_mem.usermem = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial-number\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%08x%08x\00", [23 x i8] zeroinitializer }, align 32
@cpu_name = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@setup_processor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016CPU: %s [%08x] revision %d (ARMv%s), cr=%08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"setup_processor\00", [16 x i8] zeroinitializer }, align 32
@setup_processor._entry_ptr = internal global ptr @setup_processor._entry, section ".printk_index", align 4
@proc_arch = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%c\00", [27 x i8] zeroinitializer }, align 32
@init_proc_vtable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/include/asm/proc-fns.h\00", [32 x i8] zeroinitializer }, align 32
@init_proc_vtable.__already_done.46 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"undefined/unknown\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4T\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5T\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5TE\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5TEJ\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6TEJ\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7M\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?(12)\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?(13)\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?(14)\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?(15)\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?(16)\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?(17)\00", [26 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@patch_aeabi_idiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016CPU: div instructions available: patching division code\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"patch_aeabi_idiv\00", [47 x i8] zeroinitializer }, align 32
@patch_aeabi_idiv._entry_ptr = internal global ptr @patch_aeabi_idiv._entry, section ".printk_index", align 4
@cacheid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016CPU: %s data cache, %s instruction cache\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cacheid_init\00", [19 x i8] zeroinitializer }, align 32
@cacheid_init._entry_ptr = internal global ptr @cacheid_init._entry, section ".printk_index", align 4
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VIPT aliasing\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PIPT / VIPT nonaliasing\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VIVT ASID tagged\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PIPT\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VIPT nonaliasing\00", [47 x i8] zeroinitializer }, align 32
@mem_res = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.79, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.80, i32 16777728, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.81, i32 16777728, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@__init_begin = external dso_local global [0 x i8], align 1
@_sdata = external dso_local global [0 x i8], align 1
@memblock = external dso_local global %struct.memblock, align 4
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.request_standard_resources = private unnamed_addr constant [27 x i8] c"request_standard_resources\00", align 1
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"System RAM (boot alias)\00", [40 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"System RAM\00", [21 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@io_res = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 956, i32 958, ptr @.str.82, i32 -2147483392, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 888, i32 895, ptr @.str.82, i32 -2147483392, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 632, i32 639, ptr @.str.82, i32 -2147483392, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Video RAM\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Kernel code\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Kernel data\00", [20 x i8] zeroinitializer }, align 32
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@smp_build_mpidr_hash.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.83, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smp_build_mpidr_hash\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mask of set bits 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@smp_build_mpidr_hash.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.83, ptr @.str.84, ptr @.str.2, ptr @.str.86, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"MPIDR hash: aff0[%u] aff1[%u] aff2[%u] mask[0x%x] bits[%u]\0A\00", [36 x i8] zeroinitializer }, align 32
@smp_build_mpidr_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Large number of MPIDR hash buckets detected\0A\00", [49 x i8] zeroinitializer }, align 32
@smp_build_mpidr_hash._entry_ptr = internal global ptr @smp_build_mpidr_hash._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@reserve_crashkernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013crashkernel reservation failed - No suitable area found.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reserve_crashkernel\00", [44 x i8] zeroinitializer }, align 32
@reserve_crashkernel._entry_ptr = internal global ptr @reserve_crashkernel._entry, section ".printk_index", align 4
@reserve_crashkernel._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013crashkernel reservation failed - memory is in use.\0A\00", [42 x i8] zeroinitializer }, align 32
@reserve_crashkernel._entry_ptr.92 = internal global ptr @reserve_crashkernel._entry.90, section ".printk_index", align 4
@reserve_crashkernel._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016Reserving %ldMB of memory at %ldMB for crashkernel (System RAM: %ldMB)\0A\00", [54 x i8] zeroinitializer }, align 32
@reserve_crashkernel._entry_ptr.95 = internal global ptr @reserve_crashkernel._entry.93, section ".printk_index", align 4
@crashk_res = external dso_local global %struct.resource, align 4
@reserve_crashkernel.crashk_boot_res = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 0, i32 0, ptr @.str.96, i32 -2147483136, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Crash kernel (boot alias)\00", [38 x i8] zeroinitializer }, align 32
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"processor\09: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"model name\09: %s rev %d (%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BogoMIPS\09: %lu.%02lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Features\09: \00", [20 x i8] zeroinitializer }, align 32
@hwcap_str = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0ACPU implementer\09: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CPU architecture: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPU part\09: %07x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CPU variant\09: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CPU variant\09: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CPU part\09: 0x%03x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CPU revision\09: %d\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Hardware\09: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Revision\09: %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Serial\09\09: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"swp\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"thumb\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"26bit\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fastmult\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fpa\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vfp\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edsp\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"java\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iwmmxt\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crunch\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"thumbee\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"neon\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vfpv3\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfpv3d16\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tls\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vfpv4\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"idiva\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"idivt\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vfpd32\00", [25 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lpae\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"evtstrm\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pmull\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha2\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crc32\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 28672]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 28672]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 49152]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"processor_id\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 86, i32 14 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"system_rev\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 95, i32 14 }
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"system_serial\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 98, i32 13 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"system_serial_low\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 101, i32 14 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"system_serial_high\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 104, i32 14 }
@___asan_gen_.158 = private unnamed_addr constant [11 x i8] c"cpu_vtable\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 117, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant [13 x i8] c"elf_platform\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 154, i32 6 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 378, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 531, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 606, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 684, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 743, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 745, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 747, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 769, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 775, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 788, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 793, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"screen_info\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 926, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1069, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1070, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1072, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1074, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1076, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1112, i32 15 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1113, i32 15 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1116, i32 16 }
@___asan_gen_.281 = private unnamed_addr constant [13 x i8] c"machine_name\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 158, i32 20 }
@___asan_gen_.284 = private unnamed_addr constant [15 x i8] c"arm_restart_nb\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1089, i32 30 }
@___asan_gen_.287 = private unnamed_addr constant [11 x i8] c"cpuinfo_op\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1344, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant [9 x i8] c"fpe_type\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 68, i32 6 }
@___asan_gen_.293 = private unnamed_addr constant [11 x i8] c"mpidr_hash\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 609, i32 19 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 959, i32 30 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 961, i32 39 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 968, i32 41 }
@___asan_gen_.305 = private unnamed_addr constant [9 x i8] c"cpu_name\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 157, i32 20 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 712, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [10 x i8] c"proc_arch\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 220, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 716, i32 55 }
@___asan_gen_.324 = private unnamed_addr constant [35 x i8] c"../arch/arm/include/asm/proc-fns.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 120, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 221, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 222, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 223, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 224, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 225, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 226, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 227, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 228, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 229, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 230, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 231, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 232, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 233, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 234, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 235, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 236, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 237, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 430, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 348, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [8 x i8] c"mem_res\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 170, i32 24 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 878, i32 11 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 880, i32 16 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 891, i32 16 }
@___asan_gen_.425 = private unnamed_addr constant [7 x i8] c"io_res\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 195, i32 24 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 172, i32 11 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 178, i32 11 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 184, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 197, i32 11 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 627, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 659, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 670, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1019, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1029, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1034, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [16 x i8] c"crashk_boot_res\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1049, i32 26 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1050, i32 12 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1220, i32 19 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1274, i32 17 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1276, i32 17 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1280, i32 17 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1289, i32 15 }
@___asan_gen_.500 = private unnamed_addr constant [10 x i8] c"hwcap_str\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1228, i32 20 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1293, i32 19 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1299, i32 17 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1300, i32 17 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1305, i32 18 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1309, i32 19 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1313, i32 19 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1316, i32 18 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1319, i32 17 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1322, i32 16 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1323, i32 16 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1324, i32 16 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1229, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1230, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1231, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1232, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1233, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1234, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1235, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1236, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1237, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1238, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1239, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1240, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1241, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1242, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1243, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1244, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1245, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1246, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1247, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1248, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1249, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1250, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1255, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1256, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1257, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1258, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.615 = private constant [27 x i8] c"../arch/arm/kernel/setup.c\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1259, i32 2 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__initcall__kmod_setup__241_949_customize_machine3, ptr @__initcall__kmod_setup__242_974_init_machine_late7, ptr @__initcall__kmod_setup__243_1213_topology_init4, ptr @__initcall__kmod_setup__244_1225_proc_cpu_init5, ptr @__ksymtab___machine_arch_type, ptr @__ksymtab_cacheid, ptr @__ksymtab_elf_hwcap, ptr @__ksymtab_elf_hwcap2, ptr @__ksymtab_elf_platform, ptr @__ksymtab_outer_cache, ptr @__ksymtab_processor_id, ptr @__ksymtab_system_rev, ptr @__ksymtab_system_serial, ptr @__ksymtab_system_serial_high, ptr @__ksymtab_system_serial_low, ptr @__setup_early_mem, ptr @__setup_fpe_setup, ptr @arm_add_memory._entry, ptr @arm_add_memory._entry.14, ptr @arm_add_memory._entry.17, ptr @arm_add_memory._entry.20, ptr @arm_add_memory._entry_ptr, ptr @arm_add_memory._entry_ptr.16, ptr @arm_add_memory._entry_ptr.19, ptr @arm_add_memory._entry_ptr.21, ptr @cacheid_init._entry, ptr @cacheid_init._entry_ptr, ptr @cpu_init._entry, ptr @cpu_init._entry_ptr, ptr @early_print._entry, ptr @early_print._entry_ptr, ptr @hyp_mode_check._entry, ptr @hyp_mode_check._entry.24, ptr @hyp_mode_check._entry.27, ptr @hyp_mode_check._entry.30, ptr @hyp_mode_check._entry.33, ptr @hyp_mode_check._entry_ptr, ptr @hyp_mode_check._entry_ptr.26, ptr @hyp_mode_check._entry_ptr.29, ptr @hyp_mode_check._entry_ptr.32, ptr @hyp_mode_check._entry_ptr.35, ptr @lookup_processor._entry, ptr @lookup_processor._entry_ptr, ptr @patch_aeabi_idiv._entry, ptr @patch_aeabi_idiv._entry_ptr, ptr @reserve_crashkernel._entry, ptr @reserve_crashkernel._entry.90, ptr @reserve_crashkernel._entry.93, ptr @reserve_crashkernel._entry_ptr, ptr @reserve_crashkernel._entry_ptr.92, ptr @reserve_crashkernel._entry_ptr.95, ptr @setup_processor._entry, ptr @setup_processor._entry_ptr, ptr @smp_build_mpidr_hash._entry, ptr @smp_build_mpidr_hash._entry_ptr, ptr @smp_setup_processor_id._entry, ptr @smp_setup_processor_id._entry_ptr, ptr @processor_id, ptr @system_rev, ptr @system_serial, ptr @system_serial_low, ptr @system_serial_high, ptr @cpu_vtable, ptr @elf_platform, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @screen_info, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @machine_name, ptr @arm_restart_nb, ptr @cpuinfo_op, ptr @fpe_type, ptr @mpidr_hash, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @cpu_name, ptr @.str.42, ptr @.str.43, ptr @proc_arch, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @mem_res, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @io_res, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @reserve_crashkernel.crashk_boot_res, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @hwcap_str, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @processor_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_rev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_serial to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_serial_low to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_serial_high to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_vtable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elf_platform to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_setup_processor_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_processor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_add_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_add_memory._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_add_memory._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_add_memory._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @screen_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyp_mode_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyp_mode_check._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyp_mode_check._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyp_mode_check._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyp_mode_check._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machine_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_restart_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuinfo_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpe_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpidr_hash to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_processor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_arch to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_aeabi_idiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cacheid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_res to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_res to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_build_mpidr_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_crashkernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_crashkernel._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_crashkernel._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_crashkernel.crashk_boot_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwcap_str to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fpe_setup(ptr nocapture noundef readonly %line) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %line, align 1
  store i64 %1, ptr @fpe_type, align 8
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpu_architecture() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @__cpu_architecture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.body2, label %do.end5, !prof !394

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #18, !srcloc !395
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  ret i32 %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_print(ptr nocapture noundef readonly %str, ...) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #18
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #18
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !396
  call void @llvm.va_start(ptr nonnull %ap)
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef %str, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @printascii(ptr noundef nonnull %buf) #18
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %buf) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @printascii(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_init() local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !384) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ugt i32 %2, 3
  br i1 %cmp, label %do.end, label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %2) #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 532, 0\0A.popsection", ""() #18, !srcloc !397
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [4 x %struct.stack], ptr @stacks, i32 0, i32 %2
  %arrayidx14 = getelementptr [4 x ptr], ptr @cpu_vtable, i32 0, i32 %2
  %3 = load ptr, ptr %arrayidx14, align 4
  %_proc_init = getelementptr inbounds %struct.processor, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %_proc_init, align 4
  tail call void %4() #18
  tail call void asm sideeffect "msr\09cpsr_c, $1\0A\09add\09r14, $0, $2\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $3\0A\09add\09r14, $0, $4\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $5\0A\09add\09r14, $0, $6\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $7\0A\09add\09r14, $0, $8\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $9", "r,I,I,I,I,I,I,I,I,I,~{lr}"(ptr %arrayidx, i32 210, i32 0, i32 215, i32 12, i32 219, i32 24, i32 209, i32 36, i32 211) #18, !srcloc !398
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_setup_processor_id() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %0 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #22, !srcloc !399
  %and = and i32 %1, 16777215
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %and2 = and i32 %cond, 255
  store i32 %and2, ptr @__cpu_logical_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp18 = icmp ugt i32 %2, 1
  br i1 %cmp18, label %cond.end.for.body_crit_edge, label %cond.end.do.end10_crit_edge

cond.end.do.end10_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %cond.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.019, i32 %and2)
  %cmp3 = icmp eq i32 %i.019, %and2
  %spec.select = select i1 %cmp3, i32 0, i32 %i.019
  %arrayidx = getelementptr [4 x i32], ptr @__cpu_logical_map, i32 0, i32 %i.019
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.body.do.end10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

do.end10:                                         ; preds = %for.body.do.end10_crit_edge, %cond.end.do.end10_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %cond) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_processor(i32 noundef %midr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_processor_type(i32 noundef %midr) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !384) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %midr) #21
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %do.end
  br label %while.cond

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_processor_type(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_machine_table() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.9) #23
  br i1 icmp ult (ptr @__arch_info_begin, ptr @__arch_info_end), label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ @__arch_info_begin, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %p.04 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p.04, align 4
  %name = getelementptr inbounds %struct.machine_desc, ptr %p.04, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef %3) #23
  %incdec.ptr = getelementptr %struct.machine_desc, ptr %p.04, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__arch_info_end
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.11) #23
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %for.end
  br label %while.cond
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_add_memory(i64 noundef %start, i64 noundef %size) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %start, 4095
  %and = and i64 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %and)
  %cmp3 = icmp ugt i64 %and, 4294967295
  br i1 %cmp3, label %do.end, label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %start) #21
  br label %cleanup

if.end5:                                          ; preds = %entry
  %add1 = add i64 %size, %start
  %0 = call i64 @llvm.usub.sat.i64(i64 %add1, i64 %and)
  %add6 = add i64 %0, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add6)
  %cmp7 = icmp ugt i64 %add6, 4294967295
  br i1 %cmp7, label %do.end11, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i64 noundef %start) #21
  %sub14 = sub nuw nsw i64 4294967295, %and
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.end5.if.end15_crit_edge
  %size.addr.1 = phi i64 [ %sub14, %do.end11 ], [ %0, %if.end5.if.end15_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %1, 12
  %conv = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv)
  %cmp16 = icmp ult i64 %and, %conv
  %extract.t78 = trunc i64 %and to i32
  br i1 %cmp16, label %if.then18, label %if.end15.if.end45_crit_edge

if.end15.if.end45_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

if.then18:                                        ; preds = %if.end15
  %add19 = add i64 %size.addr.1, %and
  call void @__sanitizer_cov_trace_cmp8(i64 %add19, i64 %conv)
  %cmp22.not = icmp ugt i64 %add19, %conv
  br i1 %cmp22.not, label %do.end34, label %do.end27

do.end27:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %and, i64 noundef %add19) #21
  br label %cleanup

do.end34:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %and, i64 noundef %conv) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl39 = shl i32 %2, 12
  %conv40 = zext i32 %shl39 to i64
  %sub42 = sub i64 %add19, %conv40
  br label %if.end45

if.end45:                                         ; preds = %do.end34, %if.end15.if.end45_crit_edge
  %aligned_start.0.off0 = phi i32 [ %shl39, %do.end34 ], [ %extract.t78, %if.end15.if.end45_crit_edge ]
  %size.addr.2 = phi i64 [ %sub42, %do.end34 ], [ %size.addr.1, %if.end15.if.end45_crit_edge ]
  %and46 = and i64 %size.addr.2, 4294963200
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and46)
  %cmp47 = icmp eq i64 %and46, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  %conv52 = trunc i64 %and46 to i32
  %call53 = tail call i32 @memblock_add(i32 noundef %aligned_start.0.off0, i32 noundef %conv52) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end45.cleanup_crit_edge, %do.end27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end27 ], [ 0, %if.end50 ], [ -22, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_add(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_mem(ptr noundef %p) #2 section ".init.text" align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #18
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !396
  %.b = load i1, ptr @early_mem.usermem, align 4
  br i1 %.b, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @early_mem.usermem, align 4
  %call = tail call i32 @memblock_start_of_DRAM() #18
  %call1 = tail call i32 @memblock_end_of_DRAM() #18
  %call2 = tail call i32 @memblock_start_of_DRAM() #18
  %sub = sub i32 %call1, %call2
  %call3 = tail call i32 @memblock_remove(i32 noundef %call, i32 noundef %sub) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %1, 12
  %conv = zext i32 %shl to i64
  %call4 = call i64 @memparse(ptr noundef %p, ptr noundef nonnull %endp) #18
  %2 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp6 = icmp eq i8 %5, 64
  br i1 %cmp6, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %3, i32 1
  %call9 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef null) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %start.0 = phi i64 [ %call9, %if.then8 ], [ %conv, %if.end.if.end10_crit_edge ]
  %call11 = call i32 @arm_add_memory(i64 noundef %start.0, i64 noundef %call4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #18
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @customize_machine() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @machine_desc, align 4
  %init_machine = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 23
  %1 = ptrtoint ptr %init_machine to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_machine, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %2() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_machine_late() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @machine_desc, align 4
  %init_late = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 24
  %1 = ptrtoint ptr %init_late to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_late, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %2() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.39, ptr noundef null) #18
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @of_property_read_string(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @system_serial) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.end8.thread

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end8.thread:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  store ptr null, ptr @system_serial, align 4
  br label %if.then10

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %.pr = load ptr, ptr @system_serial, align 4
  %tobool9.not = icmp eq ptr %.pr, null
  br i1 %tobool9.not, label %if.end8.if.then10_crit_edge, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end8.thread
  %3 = load i32, ptr @system_serial_high, align 4
  %4 = load i32, ptr @system_serial_low, align 4
  %call11 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.41, i32 noundef %3, i32 noundef %4) #18
  store ptr %call11, ptr @system_serial, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @hyp_mode_check() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i, label %entry.sync_boot_mode.exit_crit_edge, label %if.then.i.i

entry.sync_boot_mode.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sync_boot_mode.exit

if.then.i.i:                                      ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef nonnull @__boot_cpu_mode, i32 noundef 4) #18
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @__boot_cpu_mode to i32)) #18
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @__boot_cpu_mode, i32 1) to i32)) #18
  %2 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.sync_boot_mode.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.sync_boot_mode.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sync_boot_mode.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %2(i32 noundef %call.i.i, i32 noundef %call1.i.i) #18
  br label %sync_boot_mode.exit

sync_boot_mode.exit:                              ; preds = %if.then.i.i.i, %if.then.i.i.sync_boot_mode.exit_crit_edge, %entry.sync_boot_mode.exit_crit_edge
  %3 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %3(ptr noundef nonnull @__boot_cpu_mode, i32 noundef 4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__boot_cpu_mode to i32))
  %4 = load i32, ptr @__boot_cpu_mode, align 4
  %5 = and i32 %4, -2147483617
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %6 = icmp eq i32 %5, 26
  br i1 %6, label %do.end, label %if.else

do.end:                                           ; preds = %sync_boot_mode.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #21
  br label %if.end21

if.else:                                          ; preds = %sync_boot_mode.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i = icmp slt i32 %4, 0
  br i1 %tobool.i, label %do.end9, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %and = and i32 %4, 31
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %and) #21
  br label %if.end21

if.end21:                                         ; preds = %do.end9, %if.else.if.end21_crit_edge, %do.end
  %.str.31.sink = phi ptr [ @.str.31, %do.end9 ], [ @.str.25, %do.end ], [ @.str.34, %if.else.if.end21_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink) #21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @setup_arch(ptr nocapture noundef writeonly %cmdline_p) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @__atags_pointer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %rem = and i32 %0, 1048575
  %or = or i32 %rem, -8388608
  %1 = inttoptr i32 %or to ptr
  %atags_vaddr.0 = select i1 %tobool.not, ptr null, ptr %1
  tail call fastcc void @setup_processor() #23
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then2

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then2:                                         ; preds = %entry
  %call = tail call ptr @setup_machine_fdt(ptr noundef nonnull %atags_vaddr.0) #18
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then2.if.end12_crit_edge, label %if.end12.thread

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.end12.thread:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  %2 = load i32, ptr @__atags_pointer, align 4
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %atags_vaddr.0, i32 0, i32 1
  %3 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %6 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %8 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %10 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %call6 = tail call i32 @memblock_reserve(i32 noundef %2, i32 noundef %or10.i) #18
  br label %if.end18

if.end12:                                         ; preds = %if.then2.if.end12_crit_edge, %entry.if.end12_crit_edge
  %11 = load i32, ptr @__machine_arch_type, align 4
  %call11 = tail call ptr @setup_machine_tags(ptr noundef %atags_vaddr.0, i32 noundef %11) #18
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.then14, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then14:                                        ; preds = %if.end12
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.36) #23
  %12 = load i32, ptr @__machine_arch_type, align 4
  %13 = load i32, ptr @__atags_pointer, align 4
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.37, i32 noundef %12, i32 noundef %13) #23
  %14 = load i32, ptr @__atags_pointer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.then14.if.end17_crit_edge, label %if.then16

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.38, i32 noundef 16, ptr noundef %atags_vaddr.0) #23
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14.if.end17_crit_edge
  call void @__asan_handle_no_return()
  tail call void @dump_machine_table() #23
  unreachable

if.end18:                                         ; preds = %if.end12.if.end18_crit_edge, %if.end12.thread
  %mdesc.187 = phi ptr [ %call, %if.end12.thread ], [ %call11, %if.end12.if.end18_crit_edge ]
  store ptr %mdesc.187, ptr @machine_desc, align 4
  %name = getelementptr inbounds %struct.machine_desc, ptr %mdesc.187, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  store ptr %16, ptr @machine_name, align 4
  tail call void (ptr, ...) @dump_stack_set_arch_desc(ptr noundef nonnull @.str, ptr noundef %16) #18
  %reboot_mode = getelementptr inbounds %struct.machine_desc, ptr %mdesc.187, i32 0, i32 9
  %17 = ptrtoint ptr %reboot_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reboot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not = icmp eq i32 %18, 2
  br i1 %cmp.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @reboot_mode to i32))
  store i32 %18, ptr @reboot_mode, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  tail call void @setup_initial_init_mm(ptr noundef nonnull @_text, ptr noundef nonnull @_etext, ptr noundef nonnull @_edata, ptr noundef nonnull @_end) #18
  %call23 = tail call i32 @strlcpy(ptr noundef nonnull @cmd_line, ptr noundef nonnull @boot_command_line, i32 noundef 1024) #18
  %19 = ptrtoint ptr %cmdline_p to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cmd_line, ptr %cmdline_p, align 4
  tail call void @early_fixmap_init() #21
  tail call void @early_ioremap_init() #18
  tail call void @parse_early_param() #21
  tail call void @early_mm_init(ptr noundef nonnull %mdesc.187) #18
  tail call void @setup_dma_zone(ptr noundef nonnull %mdesc.187) #18
  tail call void @adjust_lowmem_bounds() #18
  tail call void @arm_memblock_init(ptr noundef nonnull %mdesc.187) #18
  tail call void @adjust_lowmem_bounds() #18
  tail call void @early_ioremap_reset() #18
  tail call void @paging_init(ptr noundef nonnull %mdesc.187) #18
  tail call void @kasan_init() #18
  tail call fastcc void @request_standard_resources(ptr noundef nonnull %mdesc.187) #23
  %restart = getelementptr inbounds %struct.machine_desc, ptr %mdesc.187, i32 0, i32 26
  %20 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %restart, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  store ptr %21, ptr @__arm_pm_restart, align 4
  %call27 = tail call i32 @register_restart_handler(ptr noundef nonnull @arm_restart_nb) #18
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  tail call void @unflatten_device_tree() #18
  tail call void @arm_dt_init_cpu_maps() #21
  %call29 = tail call i32 @psci_dt_init() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %22 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %if.end28.if.then46_crit_edge, label %if.then31

if.end28.if.then46_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

if.then31:                                        ; preds = %if.end28
  %smp_init = getelementptr inbounds %struct.machine_desc, ptr %mdesc.187, i32 0, i32 14
  %23 = ptrtoint ptr %smp_init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smp_init, align 4
  %tobool32.not = icmp eq ptr %24, null
  br i1 %tobool32.not, label %if.then31.if.then35_crit_edge, label %lor.lhs.false

if.then31.if.then35_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.then31
  %call34 = tail call zeroext i1 %24() #18
  br i1 %call34, label %lor.lhs.false.if.end44_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then35

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.then31.if.then35_crit_edge
  %call36 = tail call zeroext i1 @psci_smp_available() #18
  br i1 %call36, label %if.then35.if.end44.sink.split_crit_edge, label %if.else

if.then35.if.end44.sink.split_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44.sink.split

if.else:                                          ; preds = %if.then35
  %smp = getelementptr inbounds %struct.machine_desc, ptr %mdesc.187, i32 0, i32 13
  %25 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smp, align 4
  %tobool38.not = icmp eq ptr %26, null
  br i1 %tobool38.not, label %if.else.if.end44_crit_edge, label %if.else.if.end44.sink.split_crit_edge

if.else.if.end44.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44.sink.split

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.end44.sink.split:                              ; preds = %if.else.if.end44.sink.split_crit_edge, %if.then35.if.end44.sink.split_crit_edge
  %.sink = phi ptr [ @psci_smp_ops, %if.then35.if.end44.sink.split_crit_edge ], [ %26, %if.else.if.end44.sink.split_crit_edge ]
  tail call void @smp_set_ops(ptr noundef nonnull %.sink) #18
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else.if.end44_crit_edge, %lor.lhs.false.if.end44_crit_edge
  tail call void @smp_init_cpus() #18
  tail call fastcc void @smp_build_mpidr_hash() #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %.pr = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.i82.not = icmp eq i32 %.pr, 0
  br i1 %tobool.i82.not, label %if.end44.if.then46_crit_edge, label %if.end44.if.end47_crit_edge

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.end28.if.then46_crit_edge
  tail call void @hyp_mode_check() #23
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge
  tail call fastcc void @reserve_crashkernel() #23
  %handle_irq = getelementptr inbounds %struct.machine_desc, ptr %mdesc.187, i32 0, i32 25
  %27 = ptrtoint ptr %handle_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle_irq, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @handle_arch_irq to i32))
  store ptr %28, ptr @handle_arch_irq, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @conswitchp to i32))
  store ptr @vga_con, ptr @conswitchp, align 4
  %init_early = getelementptr inbounds %struct.machine_desc, ptr %mdesc.187, i32 0, i32 20
  %29 = ptrtoint ptr %init_early to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_early, align 4
  %tobool48.not = icmp eq ptr %30, null
  br i1 %tobool48.not, label %if.end47.if.end51_crit_edge, label %if.then49

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %30() #18
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_processor() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #22, !srcloc !400
  %call1 = tail call ptr @lookup_processor(i32 noundef %0)
  %cpu_name = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 8
  %1 = ptrtoint ptr %cpu_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu_name, align 4
  store ptr %2, ptr @cpu_name, align 4
  %and.i = and i32 %0, 585728
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.else7.i [
    i32 0, label %entry.__get_cpu_architecture.exit_crit_edge
    i32 28672, label %if.then4.i
  ]

entry.__get_cpu_architecture.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__get_cpu_architecture.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %and6.i = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 3
  br label %__get_cpu_architecture.exit

if.else7.i:                                       ; preds = %entry
  %and9.i = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp10.i = icmp eq i32 %and9.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #20
  %shr.i = lshr i32 %0, 16
  %and13.i = and i32 %shr.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %add.i = add nuw nsw i32 %and13.i, 1
  %spec.select.i = select i1 %tobool14.not.i, i32 0, i32 %add.i
  br label %__get_cpu_architecture.exit

if.else16.i:                                      ; preds = %if.else7.i
  %and18.i = and i32 %0, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %and18.i)
  %cmp19.i = icmp eq i32 %and18.i, 983040
  br i1 %cmp19.i, label %if.then20.i, label %if.else16.i.__get_cpu_architecture.exit_crit_edge

if.else16.i.__get_cpu_architecture.exit_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__get_cpu_architecture.exit

if.then20.i:                                      ; preds = %if.else16.i
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 4", "=r,~{memory}"() #18, !srcloc !401
  %and21.i = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21.i)
  %cmp22.i = icmp ugt i32 %and21.i, 2
  br i1 %cmp22.i, label %if.then20.i.__get_cpu_architecture.exit_crit_edge, label %lor.lhs.false.i

if.then20.i.__get_cpu_architecture.exit_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__get_cpu_architecture.exit

lor.lhs.false.i:                                  ; preds = %if.then20.i
  %and23.i = and i32 %4, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %and23.i)
  %cmp24.i = icmp ugt i32 %and23.i, 47
  br i1 %cmp24.i, label %lor.lhs.false.i.__get_cpu_architecture.exit_crit_edge, label %if.else26.i

lor.lhs.false.i.__get_cpu_architecture.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__get_cpu_architecture.exit

if.else26.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and21.i)
  %cmp28.i = icmp eq i32 %and21.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and23.i)
  %cmp31.i = icmp eq i32 %and23.i, 32
  %or.cond.i = or i1 %cmp28.i, %cmp31.i
  %spec.select46.i = select i1 %or.cond.i, i32 8, i32 0
  br label %__get_cpu_architecture.exit

__get_cpu_architecture.exit:                      ; preds = %if.else26.i, %lor.lhs.false.i.__get_cpu_architecture.exit_crit_edge, %if.then20.i.__get_cpu_architecture.exit_crit_edge, %if.else16.i.__get_cpu_architecture.exit_crit_edge, %if.then11.i, %if.then4.i, %entry.__get_cpu_architecture.exit_crit_edge
  %cpu_arch.1.i = phi i32 [ %cond.i, %if.then4.i ], [ %and.i, %entry.__get_cpu_architecture.exit_crit_edge ], [ %spec.select.i, %if.then11.i ], [ 9, %lor.lhs.false.i.__get_cpu_architecture.exit_crit_edge ], [ 9, %if.then20.i.__get_cpu_architecture.exit_crit_edge ], [ 0, %if.else16.i.__get_cpu_architecture.exit_crit_edge ], [ %spec.select46.i, %if.else26.i ]
  store i32 %cpu_arch.1.i, ptr @__cpu_architecture, align 4
  %proc = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 9
  %5 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !384) #18
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu1.i, align 4
  %arrayidx.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %6, i32 52)
  %dcache_clean_area.i = getelementptr inbounds %struct.processor, ptr %12, i32 0, i32 7
  %14 = ptrtoint ptr %dcache_clean_area.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dcache_clean_area.i, align 4
  %16 = load ptr, ptr @cpu_vtable, align 4
  %dcache_clean_area3.i = getelementptr inbounds %struct.processor, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %dcache_clean_area3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dcache_clean_area3.i, align 4
  %cmp.not.i = icmp eq ptr %15, %18
  br i1 %cmp.not.i, label %__get_cpu_architecture.exit.if.end30.i_crit_edge, label %land.rhs.i

__get_cpu_architecture.exit.if.end30.i_crit_edge: ; preds = %__get_cpu_architecture.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

land.rhs.i:                                       ; preds = %__get_cpu_architecture.exit
  %.b102.i = load i1, ptr @init_proc_vtable.__already_done, align 1
  br i1 %.b102.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i, !prof !402

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @init_proc_vtable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 121, i32 noundef 9, ptr noundef null) #18
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end30.i_crit_edge, %__get_cpu_architecture.exit.if.end30.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %set_pte_ext.i = getelementptr inbounds %struct.processor, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %set_pte_ext.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_pte_ext.i, align 4
  %23 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext40.i = getelementptr inbounds %struct.processor, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %set_pte_ext40.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_pte_ext40.i, align 4
  %cmp41.not.i = icmp eq ptr %22, %25
  br i1 %cmp41.not.i, label %if.end30.i.init_proc_vtable.exit_crit_edge, label %land.rhs48.i

if.end30.i.init_proc_vtable.exit_crit_edge:       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_proc_vtable.exit

land.rhs48.i:                                     ; preds = %if.end30.i
  %.b100101.i = load i1, ptr @init_proc_vtable.__already_done.46, align 1
  br i1 %.b100101.i, label %land.rhs48.i.init_proc_vtable.exit_crit_edge, label %if.then59.i, !prof !402

land.rhs48.i.init_proc_vtable.exit_crit_edge:     ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_proc_vtable.exit

if.then59.i:                                      ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @init_proc_vtable.__already_done.46, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 123, i32 noundef 9, ptr noundef null) #18
  br label %init_proc_vtable.exit

init_proc_vtable.exit:                            ; preds = %if.then59.i, %land.rhs48.i.init_proc_vtable.exit_crit_edge, %if.end30.i.init_proc_vtable.exit_crit_edge
  %tlb = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 10
  %26 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tlb, align 4
  %28 = call ptr @memcpy(ptr @cpu_tlb, ptr %27, i32 12)
  %user = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 11
  %29 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %30, align 4
  store i64 %32, ptr @cpu_user, align 4
  %cache = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 12
  %33 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cache, align 4
  %35 = call ptr @memcpy(ptr @cpu_cache, ptr %34, i32 44)
  %36 = load i32, ptr @__cpu_architecture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i = icmp eq i32 %36, 0
  br i1 %cmp.i, label %do.body2.i, label %cpu_architecture.exit, !prof !394

do.body2.i:                                       ; preds = %init_proc_vtable.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #18, !srcloc !395
  unreachable

cpu_architecture.exit:                            ; preds = %init_proc_vtable.exit
  call void @__sanitizer_cov_trace_pc() #20
  %and = and i32 %0, 15
  %37 = ptrtoint ptr %cpu_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpu_name, align 4
  %arrayidx = getelementptr [17 x ptr], ptr @proc_arch, i32 0, i32 %36
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %41 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #22, !srcloc !403
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %38, i32 noundef %0, i32 noundef %and, ptr noundef %40, i32 noundef %41) #21
  %arch_name = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 5
  %42 = ptrtoint ptr %arch_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arch_name, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 4), i32 noundef 65, ptr noundef nonnull @.str.44, ptr noundef %43, i32 noundef 98)
  %elf_name = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 6
  %44 = ptrtoint ptr %elf_name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %elf_name, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @elf_platform, i32 noundef 8, ptr noundef nonnull @.str.44, ptr noundef %45, i32 noundef 98)
  %elf_hwcap = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 7
  %46 = ptrtoint ptr %elf_hwcap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %elf_hwcap, align 4
  store i32 %47, ptr @elf_hwcap, align 4
  tail call fastcc void @cpuid_init_hwcaps() #23
  tail call fastcc void @patch_aeabi_idiv() #23
  %__cpu_mm_mmu_flags = getelementptr inbounds %struct.proc_info_list, ptr %call1, i32 0, i32 2
  %48 = ptrtoint ptr %__cpu_mm_mmu_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %__cpu_mm_mmu_flags, align 4
  tail call void @init_default_cache_policy(i32 noundef %49) #18
  tail call void @erratum_a15_798181_init() #18
  tail call fastcc void @elf_hwcap_fixup() #23
  tail call fastcc void @cacheid_init() #23
  tail call void @cpu_init()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @setup_machine_fdt(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @setup_machine_tags(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_stack_set_arch_desc(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_initial_init_mm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @early_fixmap_init() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_ioremap_init() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @parse_early_param() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_mm_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_dma_zone(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_lowmem_bounds() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_memblock_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_ioremap_reset() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @paging_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_init() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @request_standard_resources(ptr nocapture noundef readonly %mdesc) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #18
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !396
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !396
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #18
  %call.i86 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @_text to i32)) #18
  store i32 %call.i86, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1), align 4
  %call.i87 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr ([0 x i8], ptr @__init_begin, i32 0, i32 -1) to i32)) #18
  store i32 %call.i87, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1, i32 1), align 4
  %call.i88 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @_sdata to i32)) #18
  store i32 %call.i88, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2), align 4
  %call.i89 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr ([0 x i8], ptr @_end, i32 0, i32 -1) to i32)) #18
  store i32 %call.i89, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2, i32 1), align 4
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null) #18
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.not91 = icmp eq i64 %4, -1
  br i1 %cmp.not91, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  %sub = add i32 %6, -1
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %9 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %10 = trunc i64 %9 to i32
  %addr.addr.0.i = add i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.i.not = icmp eq i64 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %addr.addr.0.i)
  %cmp6.not = icmp eq i32 %addr.addr.0.i, -1
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %for.body.if.end13_crit_edge, label %if.then

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then:                                          ; preds = %for.body
  %call.i = call ptr @memblock_alloc_try_nid(i32 noundef 32, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.request_standard_resources, i32 noundef 32) #24
  unreachable

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.77, ptr %name, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %addr.addr.0.i, ptr %call.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %13 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %14 = trunc i64 %13 to i32
  %addr.addr.0.i90 = add i32 %sub, %14
  %end11 = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %end11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %addr.addr.0.i90, ptr %end11, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2147483136, ptr %flags, align 4
  %call12 = call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call.i) #18
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body.if.end13_crit_edge
  %call.i85 = call ptr @memblock_alloc_try_nid(i32 noundef 32, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #18
  %tobool15.not = icmp eq ptr %call.i85, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.request_standard_resources, i32 noundef 32) #24
  unreachable

if.end17:                                         ; preds = %if.end13
  %name18 = getelementptr inbounds %struct.resource, ptr %call.i85, i32 0, i32 2
  %17 = ptrtoint ptr %name18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.78, ptr %name18, align 4
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start, align 4
  %20 = ptrtoint ptr %call.i85 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call.i85, align 4
  %end20 = getelementptr inbounds %struct.resource, ptr %call.i85, i32 0, i32 1
  %21 = ptrtoint ptr %end20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %end20, align 4
  %flags21 = getelementptr inbounds %struct.resource, ptr %call.i85, i32 0, i32 3
  %22 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -2130705920, ptr %flags21, align 4
  %call22 = call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call.i85) #18
  %23 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1), align 4
  %24 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp24.not = icmp ult i32 %23, %25
  br i1 %cmp24.not, label %if.end17.if.end30_crit_edge, label %land.lhs.true25

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

land.lhs.true25:                                  ; preds = %if.end17
  %26 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1, i32 1), align 4
  %27 = ptrtoint ptr %end20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp27.not = icmp ugt i32 %26, %28
  br i1 %cmp27.not, label %land.lhs.true25.if.end30_crit_edge, label %if.then28

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  %call29 = call i32 @request_resource(ptr noundef nonnull %call.i85, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1)) #18
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true25.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %29 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2), align 4
  %30 = ptrtoint ptr %call.i85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp32.not = icmp ult i32 %29, %31
  br i1 %cmp32.not, label %if.end30.if.end38_crit_edge, label %land.lhs.true33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

land.lhs.true33:                                  ; preds = %if.end30
  %32 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2, i32 1), align 4
  %33 = ptrtoint ptr %end20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp35.not = icmp ugt i32 %32, %34
  br i1 %cmp35.not, label %land.lhs.true33.if.end38_crit_edge, label %if.then36

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #20
  %call37 = call i32 @request_resource(ptr noundef nonnull %call.i85, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2)) #18
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true33.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %start, ptr noundef nonnull %end, ptr noundef null) #18
  %35 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i, align 8
  %cmp.not = icmp eq i64 %36, -1
  br i1 %cmp.not, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %entry.for.end_crit_edge
  %video_start = getelementptr inbounds %struct.machine_desc, ptr %mdesc, i32 0, i32 6
  %37 = ptrtoint ptr %video_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %video_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool39.not = icmp eq i32 %38, 0
  br i1 %tobool39.not, label %for.end.if.end43_crit_edge, label %if.then40

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  store i32 %38, ptr @mem_res, align 4
  %video_end = getelementptr inbounds %struct.machine_desc, ptr %mdesc, i32 0, i32 7
  %39 = ptrtoint ptr %video_end to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %video_end, align 4
  store i32 %40, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 0, i32 1), align 4
  %call42 = call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @mem_res) #18
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %for.end.if.end43_crit_edge
  %reserve_lp0 = getelementptr inbounds %struct.machine_desc, ptr %mdesc, i32 0, i32 8
  %41 = ptrtoint ptr %reserve_lp0 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %reserve_lp0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool44.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool44.not, label %if.end43.if.end47_crit_edge, label %if.then45

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  %call46 = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @io_res) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  %42 = ptrtoint ptr %reserve_lp0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load48 = load i8, ptr %reserve_lp0, align 4
  %43 = and i8 %bf.load48, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool50.not = icmp eq i8 %43, 0
  br i1 %tobool50.not, label %if.end47.if.end53_crit_edge, label %if.then51

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  %call52 = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @io_res, i32 0, i32 1)) #18
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end47.if.end53_crit_edge
  %44 = ptrtoint ptr %reserve_lp0 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load54 = load i8, ptr %reserve_lp0, align 4
  %45 = and i8 %bf.load54, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool57.not = icmp eq i8 %45, 0
  br i1 %tobool57.not, label %if.end53.if.end60_crit_edge, label %if.then58

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  %call59 = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @io_res, i32 0, i32 2)) #18
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end53.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @unflatten_device_tree() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @arm_dt_init_cpu_maps() local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @psci_dt_init() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psci_smp_available() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_init_cpus() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_build_mpidr_hash() unnamed_addr #2 section ".init.text" align 64 {
entry:
  %fs = alloca [3 x i32], align 4
  %bits = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fs) #18
  %0 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fs, align 4, !annotation !396
  %1 = getelementptr inbounds [3 x i32], ptr %fs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !396
  %3 = getelementptr inbounds [3 x i32], ptr %fs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !396
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bits) #18
  %5 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %bits, align 4, !annotation !396
  %6 = getelementptr inbounds [3 x i32], ptr %bits, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !396
  %8 = getelementptr inbounds [3 x i32], ptr %bits, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call76 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call76, i32 %10)
  %cmp77 = icmp ult i32 %call76, %10
  br i1 %cmp77, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %11 = load i32, ptr @__cpu_logical_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call79 = phi i32 [ %call76, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %mask.078 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__cpu_logical_map, i32 0, i32 %call79
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %11, %13
  %or = or i32 %xor, %mask.078
  %call = tail call i32 @cpumask_next(i32 noundef %call79, ptr noundef nonnull @__cpu_possible_mask) #25
  %cmp = icmp ult i32 %call, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %or, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_build_mpidr_hash.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_build_mpidr_hash, %if.then)) #18
          to label %for.body6 [label %if.then], !srcloc !404

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_build_mpidr_hash.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.85, i32 noundef %mask.0.lcssa) #18
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %if.then, %do.body
  %i.180 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %do.body ], [ 0, %if.then ]
  %mul = shl nuw nsw i32 %i.180, 3
  %shr = lshr i32 %mask.0.lcssa, %mul
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %and, i1 true) #18, !range !405
  %sub.i = sub nuw nsw i32 32, %14
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %15 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true), !range !405
  %spec.select = select i1 %tobool.not.i, i32 0, i32 %15
  %arrayidx9 = getelementptr [3 x i32], ptr %fs, i32 0, i32 %i.180
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %arrayidx9, align 4
  %sub11 = sub nsw i32 %cond.i, %spec.select
  %arrayidx12 = getelementptr [3 x i32], ptr %bits, i32 0, i32 %i.180
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub11, ptr %arrayidx12, align 4
  %inc = add nuw nsw i32 %i.180, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end13, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body6

for.end13:                                        ; preds = %for.body6
  %18 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs, align 4
  store i32 %19, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %add = add i32 %21, 8
  %22 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bits, align 4
  %sub17 = sub i32 %add, %23
  store i32 %sub17, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1, i32 1), align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %25, 16
  %29 = add i32 %23, %27
  %sub23 = sub i32 %28, %29
  store i32 %sub23, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1, i32 2), align 4
  store i32 %mask.0.lcssa, ptr @mpidr_hash, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %8, align 4
  %add28 = add i32 %29, %31
  store i32 %add28, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 2), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smp_build_mpidr_hash.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smp_build_mpidr_hash, %if.then41)) #18
          to label %do.end44 [label %if.then41], !srcloc !404

if.then41:                                        ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #20
  %32 = load i32, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1), align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1, i32 1), align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1, i32 2), align 4
  %35 = load i32, ptr @mpidr_hash, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 2), align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smp_build_mpidr_hash.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.86, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36) #18
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %for.end13
  %37 = load i32, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %38) #18
  %mul47 = shl i32 %call4.i.i, 2
  %mul47.highbits = lshr i32 %mul47, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul47.highbits)
  %cmp48 = icmp eq i32 %mul47.highbits, 0
  br i1 %cmp48, label %do.end52, label %do.end44.if.end55_crit_edge

do.end44.if.end55_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

do.end52:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #20
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #21
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %do.end44.if.end55_crit_edge
  %39 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %39(ptr noundef nonnull @mpidr_hash, i32 noundef 20) #18
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @mpidr_hash to i32)) #18
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 1, i32 0) to i32)) #18
  %40 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end55.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i72

if.end55.__sync_cache_range_w.exit_crit_edge:     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %__sync_cache_range_w.exit

if.then.i.i72:                                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %40(i32 noundef %call.i, i32 noundef %call1.i) #18
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i72, %if.end55.__sync_cache_range_w.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bits) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fs) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reserve_crashkernel() unnamed_addr #2 section ".init.text" align 64 {
entry:
  %crash_size = alloca i64, align 8
  %crash_base = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crash_size) #18
  %0 = ptrtoint ptr %crash_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %crash_size, align 8, !annotation !396
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crash_base) #18
  %1 = ptrtoint ptr %crash_base to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %crash_base, align 8, !annotation !396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %2 = load i32, ptr @max_low_pfn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @min_low_pfn to i32))
  %3 = load i32, ptr @min_low_pfn, align 4
  %sub.i = sub i32 %2, %3
  %shl.i = shl i32 %sub.i, 12
  %conv.i = zext i32 %shl.i to i64
  %call1 = call i32 @parse_crashkernel(ptr noundef nonnull @boot_command_line, i64 noundef %conv.i, ptr noundef nonnull %crash_size, ptr noundef nonnull %crash_base) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup63

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %crash_base to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %crash_base, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %6 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i = icmp eq i64 %6, 0
  %7 = trunc i64 %6 to i32
  %conv1.i = xor i32 %7, -1
  %addr.0.i = select i1 %tobool.not.i, i32 -1, i32 %conv1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %8 = load ptr, ptr @high_memory, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -1
  %9 = ptrtoint ptr %add.ptr to i32
  %call4 = call i32 @__virt_to_phys(i32 noundef %9) #18
  %add = add i32 %call4, 1
  %10 = call i32 @llvm.umin.i32(i32 %addr.0.i, i32 %add)
  %11 = ptrtoint ptr %crash_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %crash_size, align 8
  %conv10 = trunc i64 %12 to i32
  %call12 = call i32 @memblock_phys_alloc_range(i32 noundef %conv10, i32 noundef 134217728, i32 noundef 134217728, i32 noundef %10) #18
  %conv13 = zext i32 %call12 to i64
  %13 = ptrtoint ptr %crash_base to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv13, ptr %crash_base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %do.end, label %if.then2.do.end41_crit_edge

if.then2.do.end41_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end41

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #21
  br label %cleanup63

if.else:                                          ; preds = %if.end
  %14 = ptrtoint ptr %crash_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %crash_size, align 8
  %add20 = add i64 %15, %5
  %conv21 = trunc i64 %15 to i32
  %conv22 = trunc i64 %5 to i32
  %conv23 = trunc i64 %add20 to i32
  %call24 = call i32 @memblock_phys_alloc_range(i32 noundef %conv21, i32 noundef 1048576, i32 noundef %conv22, i32 noundef %conv23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %do.end30, label %if.else.do.end41_crit_edge

if.else.do.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end41

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #21
  br label %cleanup63

do.end41:                                         ; preds = %if.else.do.end41_crit_edge, %if.then2.do.end41_crit_edge
  %16 = ptrtoint ptr %crash_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %crash_size, align 8
  %shr = lshr i64 %17, 20
  %conv43 = trunc i64 %shr to i32
  %18 = ptrtoint ptr %crash_base to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %crash_base, align 8
  %shr44 = lshr i64 %19, 20
  %conv45 = trunc i64 %shr44 to i32
  %shr46 = lshr i32 %shl.i, 20
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %shr46) #21
  %20 = ptrtoint ptr %crash_base to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %crash_base, align 8
  %conv49 = trunc i64 %21 to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @crashk_res to i32))
  store i32 %conv49, ptr @crashk_res, align 4
  %22 = ptrtoint ptr %crash_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %crash_size, align 8
  %add50 = add i64 %23, %21
  %24 = trunc i64 %add50 to i32
  %conv51 = add i32 %24, -1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1) to i32))
  store i32 %conv51, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %call52 = call i32 @insert_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @crashk_res) #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %25 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp.i.not = icmp eq i64 %25, 0
  br i1 %cmp.i.not, label %do.end41.cleanup63_crit_edge, label %if.then54

do.end41.cleanup63_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup63

if.then54:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %crash_base to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %crash_base, align 8
  %conv55 = trunc i64 %27 to i32
  %28 = trunc i64 %25 to i32
  %addr.addr.0.i = add i32 %conv55, %28
  store i32 %addr.addr.0.i, ptr @reserve_crashkernel.crashk_boot_res, align 4
  %29 = ptrtoint ptr %crash_size to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %crash_size, align 8
  %31 = trunc i64 %30 to i32
  %32 = add i32 %addr.addr.0.i, -1
  %conv60 = add i32 %32, %31
  store i32 %conv60, ptr getelementptr inbounds (%struct.resource, ptr @reserve_crashkernel.crashk_boot_res, i32 0, i32 1), align 4
  %call61 = call i32 @insert_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @reserve_crashkernel.crashk_boot_res) #18
  br label %cleanup63

cleanup63:                                        ; preds = %if.then54, %do.end41.cleanup63_crit_edge, %do.end30, %do.end, %entry.cleanup63_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crash_base) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crash_size) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @topology_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call11 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %0)
  %cmp12 = icmp ult i32 %call11, %0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call13 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call11, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call13
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @cpu_data to i32)
  %3 = inttoptr i32 %add to ptr
  %call2 = tail call i32 @platform_can_hotplug_cpu(i32 noundef %call13) #18
  %hotpluggable = getelementptr inbounds %struct.cpu, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hotpluggable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %hotpluggable, align 4
  %call5 = tail call i32 @register_cpu(ptr noundef %3, i32 noundef %call13) #18
  %call = tail call i32 @cpumask_next(i32 noundef %call13, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_cpu_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.97, ptr noundef null) #18
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @c_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %1)
  %cmp = icmp slt i64 %1, 1
  %cond = select i1 %cmp, ptr inttoptr (i32 1 to ptr), ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @c_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @c_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_show(ptr noundef %m, ptr nocapture noundef readnone %v) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call102 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call102, i32 %0)
  %cmp103 = icmp ult i32 %call102, %0
  br i1 %cmp103, label %entry.for.body_crit_edge, label %entry.for.end63_crit_edge

entry.for.end63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end63

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %entry.for.body_crit_edge
  %call104 = phi i32 [ %call, %if.end61.for.body_crit_edge ], [ %call102, %entry.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, i32 noundef %call104) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %1 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %cond.false, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call104
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpu_data to i32)
  %4 = inttoptr i32 %add to ptr
  %cpuid3 = getelementptr inbounds %struct.cpuinfo_arm, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cpuid3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpuid3, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #22, !srcloc !400
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body
  %cond = phi i32 [ %6, %do.body ], [ %7, %cond.false ]
  %8 = load ptr, ptr @cpu_name, align 4
  %and = and i32 %cond, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.99, ptr noundef %8, i32 noundef %and, ptr noundef nonnull @elf_platform) #18
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call104
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %10, ptrtoint (ptr @cpu_data to i32)
  %11 = inttoptr i32 %add13 to ptr
  %loops_per_jiffy = getelementptr inbounds %struct.cpuinfo_arm, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %loops_per_jiffy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %loops_per_jiffy, align 4
  %div = udiv i32 %13, 5000
  %div24 = udiv i32 %13, 50
  %rem = urem i32 %div24, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, i32 noundef %div, i32 noundef %rem) #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.101) #18
  br label %for.body27

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %cond.end
  %14 = phi ptr [ @.str.113, %cond.end ], [ %17, %for.inc.for.body27_crit_edge ]
  %j.0100 = phi i32 [ 0, %cond.end ], [ %inc, %for.inc.for.body27_crit_edge ]
  %15 = load i32, ptr @elf_hwcap, align 4
  %shl = shl nuw i32 1, %j.0100
  %and28 = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %for.body27.for.inc_crit_edge, label %if.then

for.body27.for.inc_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef %14) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body27.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0100, 1
  %arrayidx26 = getelementptr [23 x ptr], ptr @hwcap_str, i32 0, i32 %inc
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx26, align 4
  %exitcond = icmp eq i32 %inc, 22
  br i1 %exitcond, label %for.body34.preheader, label %for.inc.for.body27_crit_edge

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body27

for.body34.preheader:                             ; preds = %for.inc
  %18 = load i32, ptr @elf_hwcap2, align 4
  %and36 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %for.body34.preheader.for.inc41_crit_edge, label %if.then38

for.body34.preheader.for.inc41_crit_edge:         ; preds = %for.body34.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc41

if.then38:                                        ; preds = %for.body34.preheader
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.135) #18
  br label %for.inc41

for.inc41:                                        ; preds = %if.then38, %for.body34.preheader.for.inc41_crit_edge
  %19 = load i32, ptr @elf_hwcap2, align 4
  %and36.1 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.1)
  %tobool37.not.1 = icmp eq i32 %and36.1, 0
  br i1 %tobool37.not.1, label %for.inc41.for.inc41.1_crit_edge, label %if.then38.1

for.inc41.for.inc41.1_crit_edge:                  ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc41.1

if.then38.1:                                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.136) #18
  br label %for.inc41.1

for.inc41.1:                                      ; preds = %if.then38.1, %for.inc41.for.inc41.1_crit_edge
  %20 = load i32, ptr @elf_hwcap2, align 4
  %and36.2 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.2)
  %tobool37.not.2 = icmp eq i32 %and36.2, 0
  br i1 %tobool37.not.2, label %for.inc41.1.for.inc41.2_crit_edge, label %if.then38.2

for.inc41.1.for.inc41.2_crit_edge:                ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc41.2

if.then38.2:                                      ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.137) #18
  br label %for.inc41.2

for.inc41.2:                                      ; preds = %if.then38.2, %for.inc41.1.for.inc41.2_crit_edge
  %21 = load i32, ptr @elf_hwcap2, align 4
  %and36.3 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.3)
  %tobool37.not.3 = icmp eq i32 %and36.3, 0
  br i1 %tobool37.not.3, label %for.inc41.2.for.inc41.3_crit_edge, label %if.then38.3

for.inc41.2.for.inc41.3_crit_edge:                ; preds = %for.inc41.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc41.3

if.then38.3:                                      ; preds = %for.inc41.2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.138) #18
  br label %for.inc41.3

for.inc41.3:                                      ; preds = %if.then38.3, %for.inc41.2.for.inc41.3_crit_edge
  %22 = load i32, ptr @elf_hwcap2, align 4
  %and36.4 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.4)
  %tobool37.not.4 = icmp eq i32 %and36.4, 0
  br i1 %tobool37.not.4, label %for.inc41.3.for.inc41.4_crit_edge, label %if.then38.4

for.inc41.3.for.inc41.4_crit_edge:                ; preds = %for.inc41.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc41.4

if.then38.4:                                      ; preds = %for.inc41.3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.139) #18
  br label %for.inc41.4

for.inc41.4:                                      ; preds = %if.then38.4, %for.inc41.3.for.inc41.4_crit_edge
  %shr = lshr i32 %cond, 24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.103, i32 noundef %shr) #18
  %23 = load i32, ptr @__cpu_architecture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %do.body2.i, label %cpu_architecture.exit, !prof !394

do.body2.i:                                       ; preds = %for.inc41.4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #18, !srcloc !395
  unreachable

cpu_architecture.exit:                            ; preds = %for.inc41.4
  %arrayidx45 = getelementptr [17 x ptr], ptr @proc_arch, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx45, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.104, ptr noundef %25) #18
  %and46 = and i32 %cond, 585728
  %26 = zext i32 %and46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %and46, label %if.else55 [
    i32 0, label %if.then48
    i32 28672, label %cpu_architecture.exit.if.end58_crit_edge
  ]

cpu_architecture.exit.if.end58_crit_edge:         ; preds = %cpu_architecture.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then48:                                        ; preds = %cpu_architecture.exit
  call void @__sanitizer_cov_trace_pc() #20
  %shr49 = lshr i32 %cond, 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.105, i32 noundef %shr49) #18
  br label %if.end61

if.else55:                                        ; preds = %cpu_architecture.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %cpu_architecture.exit.if.end58_crit_edge
  %.sink106 = phi i32 [ 20, %if.else55 ], [ 16, %cpu_architecture.exit.if.end58_crit_edge ]
  %.sink = phi i32 [ 15, %if.else55 ], [ 127, %cpu_architecture.exit.if.end58_crit_edge ]
  %.str.107.sink = phi ptr [ @.str.107, %if.else55 ], [ @.str.106, %cpu_architecture.exit.if.end58_crit_edge ]
  %shr56 = lshr i32 %cond, %.sink106
  %and57 = and i32 %shr56, %.sink
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.107.sink, i32 noundef %and57) #18
  %shr59 = lshr i32 %cond, 4
  %and60 = and i32 %shr59, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.108, i32 noundef %and60) #18
  br label %if.end61

if.end61:                                         ; preds = %if.end58, %if.then48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.109, i32 noundef %and) #18
  %call = tail call i32 @cpumask_next(i32 noundef %call104, ptr noundef nonnull @__cpu_online_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %27
  br i1 %cmp, label %if.end61.for.body_crit_edge, label %if.end61.for.end63_crit_edge

if.end61.for.end63_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end63

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end63:                                        ; preds = %if.end61.for.end63_crit_edge, %entry.for.end63_crit_edge
  %28 = load ptr, ptr @machine_name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.110, ptr noundef %28) #18
  %29 = load i32, ptr @system_rev, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.111, i32 noundef %29) #18
  %30 = load ptr, ptr @system_serial, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.112, ptr noundef %30) #18
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_remove(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuid_init_hwcaps() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @__cpu_architecture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %do.body2.i, label %cpu_architecture.exit, !prof !394

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #18, !srcloc !395
  unreachable

cpu_architecture.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %cpu_architecture.exit.cleanup_crit_edge, label %if.end

cpu_architecture.exit.cleanup_crit_edge:          ; preds = %cpu_architecture.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %cpu_architecture.exit
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 0", "=r,~{memory}"() #18, !srcloc !406
  %shr.i = lshr i32 %1, 24
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i53 = icmp ugt i32 %and.i, 7
  %masksel.i = select i1 %cmp.i53, i32 -16, i32 0
  %spec.select.i = or i32 %masksel.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp2 = icmp sgt i32 %spec.select.i, 1
  br i1 %cmp2, label %if.end4.thread, label %if.end4

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %2 = load i32, ptr @elf_hwcap, align 4
  %or = or i32 %2, 131072
  store i32 %or, ptr @elf_hwcap, align 4
  br label %if.then6

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp5 = icmp eq i32 %spec.select.i, 1
  br i1 %cmp5, label %if.end4.if.then6_crit_edge, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then6

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.end4.thread
  %3 = load i32, ptr @elf_hwcap, align 4
  %or7 = or i32 %3, 262144
  store i32 %or7, ptr @elf_hwcap, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 4", "=r,~{memory}"() #18, !srcloc !407
  %and.i54 = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i54)
  %cmp.i55 = icmp ugt i32 %and.i54, 7
  %masksel.i56 = select i1 %cmp.i55, i32 -16, i32 0
  %spec.select.i57 = or i32 %masksel.i56, %and.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.i57)
  %cmp12 = icmp sgt i32 %spec.select.i57, 4
  br i1 %cmp12, label %if.then13, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %5 = load i32, ptr @elf_hwcap, align 4
  %or14 = or i32 %5, 1048576
  store i32 %or14, ptr @elf_hwcap, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end8.if.end15_crit_edge
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 5", "=r,~{memory}"() #18, !srcloc !408
  %shr.i58 = lshr i32 %6, 4
  %and.i59 = and i32 %shr.i58, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i59)
  %cmp.i60 = icmp ugt i32 %and.i59, 7
  %masksel.i61 = select i1 %cmp.i60, i32 -16, i32 0
  %spec.select.i62 = or i32 %masksel.i61, %and.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i62)
  %cmp19 = icmp sgt i32 %spec.select.i62, 1
  br i1 %cmp19, label %if.end22.thread, label %if.end22

if.end22.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %7 = load i32, ptr @elf_hwcap2, align 4
  %or21 = or i32 %7, 2
  store i32 %or21, ptr @elf_hwcap2, align 4
  br label %if.then24

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i62)
  %cmp23 = icmp eq i32 %spec.select.i62, 1
  br i1 %cmp23, label %if.end22.if.then24_crit_edge, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.end22.thread
  %8 = load i32, ptr @elf_hwcap2, align 4
  %or25 = or i32 %8, 1
  store i32 %or25, ptr @elf_hwcap2, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %shr.i63 = lshr i32 %6, 8
  %and.i64 = and i32 %shr.i63, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i64)
  %cmp.i65 = icmp ugt i32 %and.i64, 7
  %masksel.i66 = select i1 %cmp.i65, i32 -16, i32 0
  %spec.select.i67 = or i32 %masksel.i66, %and.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i67)
  %cmp28 = icmp sgt i32 %spec.select.i67, 0
  br i1 %cmp28, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %9 = load i32, ptr @elf_hwcap2, align 4
  %or30 = or i32 %9, 4
  store i32 %or30, ptr @elf_hwcap2, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %shr.i68 = lshr i32 %6, 12
  %and.i69 = and i32 %shr.i68, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i69)
  %cmp.i70 = icmp ugt i32 %and.i69, 7
  %masksel.i71 = select i1 %cmp.i70, i32 -16, i32 0
  %spec.select.i72 = or i32 %masksel.i71, %and.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i72)
  %cmp33 = icmp sgt i32 %spec.select.i72, 0
  br i1 %cmp33, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %10 = load i32, ptr @elf_hwcap2, align 4
  %or35 = or i32 %10, 8
  store i32 %or35, ptr @elf_hwcap2, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %shr.i73 = lshr i32 %6, 16
  %and.i74 = and i32 %shr.i73, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i74)
  %cmp.i75 = icmp ugt i32 %and.i74, 7
  %masksel.i76 = select i1 %cmp.i75, i32 -16, i32 0
  %spec.select.i77 = or i32 %masksel.i76, %and.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i77)
  %cmp38 = icmp sgt i32 %spec.select.i77, 0
  br i1 %cmp38, label %if.then39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  %11 = load i32, ptr @elf_hwcap2, align 4
  %or40 = or i32 %11, 16
  store i32 %or40, ptr @elf_hwcap2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end36.cleanup_crit_edge, %cpu_architecture.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @patch_aeabi_idiv() unnamed_addr #2 section ".init.text" align 64 {
entry:
  %fn_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fn_addr) #18
  %0 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #21
  %1 = ptrtoint ptr %fn_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 and (i32 ptrtoint (ptr @__aeabi_uidiv to i32), i32 -2), ptr %fn_addr, align 4
  call void asm "", "=*imr,0"(ptr nonnull elementtype(i32) %fn_addr, i32 and (i32 ptrtoint (ptr @__aeabi_uidiv to i32), i32 -2)) #18, !srcloc !409
  %2 = ptrtoint ptr %fn_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fn_addr, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 284242151, ptr %4, align 4
  %6 = load i32, ptr %fn_addr, align 4
  %7 = inttoptr i32 %6 to ptr
  %arrayidx3 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 520040417, ptr %arrayidx3, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %10 = load i32, ptr %fn_addr, align 4
  %add = add i32 %10, 8
  call void %9(i32 noundef %10, i32 noundef %add) #18
  %11 = ptrtoint ptr %fn_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 and (i32 ptrtoint (ptr @__aeabi_idiv to i32), i32 -2), ptr %fn_addr, align 4
  call void asm "", "=*imr,0"(ptr nonnull elementtype(i32) %fn_addr, i32 and (i32 ptrtoint (ptr @__aeabi_idiv to i32), i32 -2)) #18, !srcloc !410
  %12 = ptrtoint ptr %fn_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fn_addr, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 284233959, ptr %14, align 4
  %16 = load i32, ptr %fn_addr, align 4
  %17 = inttoptr i32 %16 to ptr
  %arrayidx7 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 520040417, ptr %arrayidx7, align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %20 = load i32, ptr %fn_addr, align 4
  %add8 = add i32 %20, 8
  call void %19(i32 noundef %20, i32 noundef %add8) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fn_addr) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_default_cache_policy(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @erratum_a15_798181_init() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elf_hwcap_fixup() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #22, !srcloc !400
  %1 = and i32 %0, -13565968
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090564960, i32 %1)
  %2 = icmp eq i32 %1, 1090564960
  br i1 %2, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and4 = and i32 %0, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 983040
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 3", "=r,~{memory}"() #18, !srcloc !411
  %shr.i = lshr i32 %3, 12
  %and.i23 = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i23)
  %cmp.i = icmp ugt i32 %and.i23, 7
  %masksel.i = select i1 %cmp.i, i32 -16, i32 0
  %spec.select.i = or i32 %masksel.i, %and.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp9 = icmp sgt i32 %spec.select.i, 1
  br i1 %cmp9, label %if.end7.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end7
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 3", "=r,~{memory}"() #18, !srcloc !412
  %shr.i24 = lshr i32 %4, 12
  %and.i25 = and i32 %shr.i24, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i25)
  %cmp.i26 = icmp ugt i32 %and.i25, 7
  %masksel.i27 = select i1 %cmp.i26, i32 -16, i32 0
  %spec.select.i28 = or i32 %masksel.i27, %and.i25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i28)
  %cmp13 = icmp eq i32 %spec.select.i28, 1
  br i1 %cmp13, label %land.lhs.true14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true14:                                  ; preds = %lor.lhs.false
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 4", "=r,~{memory}"() #18, !srcloc !413
  %shr.i29 = lshr i32 %5, 20
  %and.i30 = and i32 %shr.i29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i30)
  %cmp.i31 = icmp ugt i32 %and.i30, 7
  %masksel.i32 = select i1 %cmp.i31, i32 -16, i32 0
  %spec.select.i33 = or i32 %masksel.i32, %and.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.i33)
  %cmp18 = icmp sgt i32 %spec.select.i33, 2
  br i1 %cmp18, label %land.lhs.true14.cleanup.sink.split_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true14.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true14.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink34 = phi i32 [ -32769, %entry.cleanup.sink.split_crit_edge ], [ -2, %land.lhs.true14.cleanup.sink.split_crit_edge ], [ -2, %if.end7.cleanup.sink.split_crit_edge ]
  %6 = load i32, ptr @elf_hwcap, align 4
  %and20 = and i32 %6, %.sink34
  store i32 %and20, ptr @elf_hwcap, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cacheid_init() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @__cpu_architecture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %do.body2.i, label %cpu_architecture.exit, !prof !394

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #18, !srcloc !395
  unreachable

cpu_architecture.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %0)
  %cmp = icmp ugt i32 %0, 7
  br i1 %cmp, label %if.then, label %cpu_architecture.exit.cond.false.sink.split_crit_edge

cpu_architecture.exit.cond.false.sink.split_crit_edge: ; preds = %cpu_architecture.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.sink.split

if.then:                                          ; preds = %cpu_architecture.exit
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 1", "=r,~{cc}"() #22, !srcloc !414
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %cmp2 = icmp eq i32 %0, 10
  %and = and i32 %1, 983055
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp2, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then.if.end16.sink.split_crit_edge, label %if.else

if.then.if.end16.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.sink.split

if.else:                                          ; preds = %if.then
  %and4 = and i32 %1, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and4)
  %cmp5 = icmp eq i32 %and4, -2147483648
  br i1 %cmp5, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.else
  store i32 2, ptr @cacheid, align 4
  %2 = trunc i32 %1 to i16
  %trunc = and i16 %2, -16384
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.141)
  switch i16 %trunc, label %if.then6.if.end16_crit_edge [
    i16 16384, label %if.then6.if.end16.sink.split_crit_edge
    i16 -16384, label %sw.bb8
  ]

if.then6.if.end16.sink.split_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.sink.split

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

sw.bb8:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.sink.split

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %and11 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %. = select i1 %tobool12.not, i32 2, i32 4
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.else10, %sw.bb8, %if.then6.if.end16.sink.split_crit_edge, %if.then.if.end16.sink.split_crit_edge
  %.sink = phi i32 [ 34, %sw.bb8 ], [ 0, %if.then.if.end16.sink.split_crit_edge ], [ 10, %if.then6.if.end16.sink.split_crit_edge ], [ %., %if.else10 ]
  %arch.0.ph = phi i32 [ 9, %sw.bb8 ], [ 10, %if.then.if.end16.sink.split_crit_edge ], [ 9, %if.then6.if.end16.sink.split_crit_edge ], [ 8, %if.else10 ]
  store i32 %.sink, ptr @cacheid, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.then6.if.end16_crit_edge
  %arch.0 = phi i32 [ 9, %if.then6.if.end16_crit_edge ], [ %arch.0.ph, %if.end16.sink.split ]
  %4 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.cond.false_crit_edge

if.end16.cond.false_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false

if.end.i:                                         ; preds = %if.end16
  %5 = zext i32 %arch.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %arch.0, label %if.end.i.cond.false_crit_edge [
    i32 9, label %sw.bb.i
    i32 8, label %sw.bb4.i
  ]

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 2, $0, c0, c0, 0", "r"(i32 1) #18, !srcloc !415
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #18, !srcloc !416
  %6 = tail call i32 asm sideeffect "mrc p15, 1, $0, c0, c0, 0", "=r"() #18, !srcloc !417
  %and.i = and i32 %6, 7
  %shl.i = shl nuw nsw i32 16, %and.i
  %shr.i = lshr i32 %6, 13
  %and2.i = and i32 %shr.i, 32767
  %add3.i = add nuw nsw i32 %and2.i, 1
  %mul.i = mul nuw nsw i32 %add3.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul.i)
  %cmp.i68 = icmp ugt i32 %mul.i, 4096
  %conv.i = zext i1 %cmp.i68 to i32
  br label %cpu_has_aliasing_icache.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %and6.i = and i32 %1, 2048
  br label %cpu_has_aliasing_icache.exit

cpu_has_aliasing_icache.exit:                     ; preds = %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ %and6.i, %sw.bb4.i ], [ %conv.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool18.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool18.not, label %cpu_has_aliasing_icache.exit.cond.false_crit_edge, label %if.then19

cpu_has_aliasing_icache.exit.cond.false_crit_edge: ; preds = %cpu_has_aliasing_icache.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false

if.then19:                                        ; preds = %cpu_has_aliasing_icache.exit
  call void @__sanitizer_cov_trace_pc() #20
  %7 = load i32, ptr @cacheid, align 4
  %or20 = or i32 %7, 16
  br label %cond.false.sink.split

cond.false.sink.split:                            ; preds = %if.then19, %cpu_architecture.exit.cond.false.sink.split_crit_edge
  %.sink77 = phi i32 [ %or20, %if.then19 ], [ 1, %cpu_architecture.exit.cond.false.sink.split_crit_edge ]
  store i32 %.sink77, ptr @cacheid, align 4
  br label %cond.false

cond.false:                                       ; preds = %cond.false.sink.split, %cpu_has_aliasing_icache.exit.cond.false_crit_edge, %if.end.i.cond.false_crit_edge, %if.end16.cond.false_crit_edge
  %8 = load i32, ptr @cacheid, align 4
  %and2.i71 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i71)
  %tobool40.not = icmp eq i32 %and2.i71, 0
  br i1 %tobool40.not, label %cond.false42, label %cond.false.cond.end60_crit_edge

cond.false.cond.end60_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end60

cond.false42:                                     ; preds = %cond.false
  %and2.i72 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i72)
  %tobool44.not = icmp eq i32 %and2.i72, 0
  br i1 %tobool44.not, label %cond.false46, label %cond.false42.cond.end60_crit_edge

cond.false42.cond.end60_crit_edge:                ; preds = %cond.false42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end60

cond.false46:                                     ; preds = %cond.false42
  %and2.i73 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i73)
  %tobool48.not = icmp eq i32 %and2.i73, 0
  br i1 %tobool48.not, label %cond.false50, label %cond.false46.cond.end60_crit_edge

cond.false46.cond.end60_crit_edge:                ; preds = %cond.false46
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end60

cond.false50:                                     ; preds = %cond.false46
  call void @__sanitizer_cov_trace_pc() #20
  %and2.i74 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i74)
  %tobool52.not = icmp eq i32 %and2.i74, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.72, ptr @.str.75
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false50, %cond.false46.cond.end60_crit_edge, %cond.false42.cond.end60_crit_edge, %cond.false.cond.end60_crit_edge
  %cond61 = phi ptr [ @.str.73, %cond.false.cond.end60_crit_edge ], [ @.str.70, %cond.false42.cond.end60_crit_edge ], [ %cond53, %cond.false50 ], [ @.str.74, %cond.false46.cond.end60_crit_edge ]
  %and2.i69 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i69)
  %tobool27.not = icmp eq i32 %and2.i69, 0
  %and2.i70 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i70)
  %tobool31.not = icmp eq i32 %and2.i70, 0
  %cond = select i1 %tobool31.not, ptr @.str.72, ptr @.str.71
  %cond34 = select i1 %tobool27.not, ptr %cond, ptr @.str.70
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %cond34, ptr noundef nonnull %cond61) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_uidiv() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_idiv() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_restart(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__arm_pm_restart, align 4
  tail call void %0(i32 noundef %action, ptr noundef %data) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @parse_crashkernel(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_alloc_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_resource(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_can_hotplug_cpu(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !162, !164, !165, !166, !168, !170, !172, !174, !176, !177, !178, !179, !181, !183, !185, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !231, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !268, !269, !270, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382}
!llvm.named.register.sp = !{!384}
!llvm.module.flags = !{!385, !386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @__setup_fpe_setup, !1, !"__setup_fpe_setup", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/setup.c", i32 76, i32 1}
!2 = !{ptr @__ksymtab_processor_id, !3, !"__ksymtab_processor_id", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/setup.c", i32 87, i32 1}
!4 = !{ptr @__ksymtab___machine_arch_type, !5, !"__ksymtab___machine_arch_type", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/setup.c", i32 89, i32 1}
!6 = !{ptr @__ksymtab_cacheid, !7, !"__ksymtab_cacheid", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/setup.c", i32 91, i32 1}
!8 = !{ptr @__ksymtab_system_rev, !9, !"__ksymtab_system_rev", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/setup.c", i32 96, i32 1}
!10 = !{ptr @__ksymtab_system_serial, !11, !"__ksymtab_system_serial", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/setup.c", i32 99, i32 1}
!12 = !{ptr @__ksymtab_system_serial_low, !13, !"__ksymtab_system_serial_low", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/setup.c", i32 102, i32 1}
!14 = !{ptr @__ksymtab_system_serial_high, !15, !"__ksymtab_system_serial_high", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/setup.c", i32 105, i32 1}
!16 = !{ptr @__ksymtab_elf_hwcap, !17, !"__ksymtab_elf_hwcap", i1 false, i1 false}
!17 = !{!"../arch/arm/kernel/setup.c", i32 108, i32 1}
!18 = !{ptr @__ksymtab_elf_hwcap2, !19, !"__ksymtab_elf_hwcap2", i1 false, i1 false}
!19 = !{!"../arch/arm/kernel/setup.c", i32 111, i32 1}
!20 = !{ptr @cpu_vtable, !21, !"cpu_vtable", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/setup.c", i32 117, i32 19}
!22 = !{ptr @__ksymtab_outer_cache, !23, !"__ksymtab_outer_cache", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/setup.c", i32 133, i32 1}
!24 = !{ptr @__cpu_architecture, !25, !"__cpu_architecture", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/setup.c", i32 141, i32 5}
!26 = !{ptr @__ksymtab_elf_platform, !27, !"__ksymtab_elf_platform", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/setup.c", i32 155, i32 1}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/setup.c", i32 378, i32 2}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @early_print._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @early_print._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/kernel/setup.c", i32 531, i32 3}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cpu_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @cpu_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__cpu_logical_map, !40, !"__cpu_logical_map", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/setup.c", i32 587, i32 5}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/kernel/setup.c", i32 606, i32 2}
!43 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @smp_setup_processor_id._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @smp_setup_processor_id._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/kernel/setup.c", i32 684, i32 3}
!48 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lookup_processor._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @lookup_processor._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/kernel/setup.c", i32 743, i32 14}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/kernel/setup.c", i32 745, i32 15}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/kernel/setup.c", i32 747, i32 14}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/kernel/setup.c", i32 769, i32 3}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @arm_add_memory._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @arm_add_memory._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/kernel/setup.c", i32 775, i32 3}
!64 = !{ptr @arm_add_memory._entry.14, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @arm_add_memory._entry_ptr.16, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/kernel/setup.c", i32 788, i32 4}
!68 = !{ptr @arm_add_memory._entry.17, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @arm_add_memory._entry_ptr.19, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @arm_add_memory._entry.20, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../arch/arm/kernel/setup.c", i32 793, i32 3}
!72 = !{ptr @arm_add_memory._entry_ptr.21, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @__setup_early_mem, !74, !"__setup_early_mem", i1 false, i1 false}
!74 = !{!"../arch/arm/kernel/setup.c", i32 846, i32 1}
!75 = !{ptr @screen_info, !76, !"screen_info", i1 false, i1 false}
!76 = !{!"../arch/arm/kernel/setup.c", i32 926, i32 20}
!77 = !{ptr @__initcall__kmod_setup__241_949_customize_machine3, !78, !"__initcall__kmod_setup__241_949_customize_machine3", i1 false, i1 false}
!78 = !{!"../arch/arm/kernel/setup.c", i32 949, i32 1}
!79 = !{ptr @__initcall__kmod_setup__242_974_init_machine_late7, !80, !"__initcall__kmod_setup__242_974_init_machine_late7", i1 false, i1 false}
!80 = !{!"../arch/arm/kernel/setup.c", i32 974, i32 1}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/kernel/setup.c", i32 1069, i32 3}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @hyp_mode_check._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @hyp_mode_check._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/kernel/setup.c", i32 1070, i32 3}
!88 = !{ptr @hyp_mode_check._entry.24, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @hyp_mode_check._entry_ptr.26, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/kernel/setup.c", i32 1072, i32 3}
!92 = !{ptr @hyp_mode_check._entry.27, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @hyp_mode_check._entry_ptr.29, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/kernel/setup.c", i32 1074, i32 3}
!96 = !{ptr @hyp_mode_check._entry.30, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @hyp_mode_check._entry_ptr.32, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../arch/arm/kernel/setup.c", i32 1076, i32 3}
!100 = !{ptr @hyp_mode_check._entry.33, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @hyp_mode_check._entry_ptr.35, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/kernel/setup.c", i32 1112, i32 15}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/kernel/setup.c", i32 1113, i32 15}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/kernel/setup.c", i32 1116, i32 16}
!108 = !{ptr @__initcall__kmod_setup__243_1213_topology_init4, !109, !"__initcall__kmod_setup__243_1213_topology_init4", i1 false, i1 false}
!109 = !{!"../arch/arm/kernel/setup.c", i32 1213, i32 1}
!110 = !{ptr @__initcall__kmod_setup__244_1225_proc_cpu_init5, !111, !"__initcall__kmod_setup__244_1225_proc_cpu_init5", i1 false, i1 false}
!111 = !{!"../arch/arm/kernel/setup.c", i32 1225, i32 1}
!112 = !{ptr @cpuinfo_op, !113, !"cpuinfo_op", i1 false, i1 false}
!113 = !{!"../arch/arm/kernel/setup.c", i32 1344, i32 29}
!114 = !{ptr @fpe_type, !115, !"fpe_type", i1 false, i1 false}
!115 = !{!"../arch/arm/kernel/setup.c", i32 68, i32 6}
!116 = !{ptr @processor_id, !117, !"processor_id", i1 false, i1 false}
!117 = !{!"../arch/arm/kernel/setup.c", i32 86, i32 14}
!118 = !{ptr @__machine_arch_type, !119, !"__machine_arch_type", i1 false, i1 false}
!119 = !{!"../arch/arm/kernel/setup.c", i32 88, i32 14}
!120 = !{ptr @cacheid, !121, !"cacheid", i1 false, i1 false}
!121 = !{!"../arch/arm/kernel/setup.c", i32 90, i32 14}
!122 = !{ptr @__atags_pointer, !123, !"__atags_pointer", i1 false, i1 false}
!123 = !{!"../arch/arm/kernel/setup.c", i32 93, i32 14}
!124 = !{ptr @system_rev, !125, !"system_rev", i1 false, i1 false}
!125 = !{!"../arch/arm/kernel/setup.c", i32 95, i32 14}
!126 = !{ptr @system_serial, !127, !"system_serial", i1 false, i1 false}
!127 = !{!"../arch/arm/kernel/setup.c", i32 98, i32 13}
!128 = !{ptr @system_serial_low, !129, !"system_serial_low", i1 false, i1 false}
!129 = !{!"../arch/arm/kernel/setup.c", i32 101, i32 14}
!130 = !{ptr @system_serial_high, !131, !"system_serial_high", i1 false, i1 false}
!131 = !{!"../arch/arm/kernel/setup.c", i32 104, i32 14}
!132 = !{ptr @elf_hwcap, !133, !"elf_hwcap", i1 false, i1 false}
!133 = !{!"../arch/arm/kernel/setup.c", i32 107, i32 14}
!134 = !{ptr @elf_hwcap2, !135, !"elf_hwcap2", i1 false, i1 false}
!135 = !{!"../arch/arm/kernel/setup.c", i32 110, i32 14}
!136 = !{ptr @processor, !137, !"processor", i1 false, i1 false}
!137 = !{!"../arch/arm/kernel/setup.c", i32 115, i32 18}
!138 = !{ptr @cpu_tlb, !139, !"cpu_tlb", i1 false, i1 false}
!139 = !{!"../arch/arm/kernel/setup.c", i32 123, i32 20}
!140 = !{ptr @cpu_user, !141, !"cpu_user", i1 false, i1 false}
!141 = !{!"../arch/arm/kernel/setup.c", i32 126, i32 21}
!142 = !{ptr @cpu_cache, !143, !"cpu_cache", i1 false, i1 false}
!143 = !{!"../arch/arm/kernel/setup.c", i32 129, i32 22}
!144 = !{ptr @outer_cache, !145, !"outer_cache", i1 false, i1 false}
!145 = !{!"../arch/arm/kernel/setup.c", i32 132, i32 24}
!146 = !{ptr @stacks, !147, !"stacks", i1 false, i1 false}
!147 = !{!"../arch/arm/kernel/setup.c", i32 151, i32 21}
!148 = !{ptr @elf_platform, !149, !"elf_platform", i1 false, i1 false}
!149 = !{!"../arch/arm/kernel/setup.c", i32 154, i32 6}
!150 = !{ptr @machine_name, !151, !"machine_name", i1 false, i1 false}
!151 = !{!"../arch/arm/kernel/setup.c", i32 158, i32 20}
!152 = !{ptr @cmd_line, !153, !"cmd_line", i1 false, i1 false}
!153 = !{!"../arch/arm/kernel/setup.c", i32 159, i32 24}
!154 = !{ptr @machine_desc, !155, !"machine_desc", i1 false, i1 false}
!155 = !{!"../arch/arm/kernel/setup.c", i32 160, i32 28}
!156 = !{ptr @__pcpu_scope_cpu_data, !157, !"__pcpu_scope_cpu_data", i1 false, i1 false}
!157 = !{!"../arch/arm/kernel/setup.c", i32 165, i32 1}
!158 = !{ptr @__pcpu_unique_cpu_data, !157, !"__pcpu_unique_cpu_data", i1 false, i1 false}
!159 = !{ptr @cpu_data, !157, !"cpu_data", i1 false, i1 false}
!160 = !{ptr @mpidr_hash, !161, !"mpidr_hash", i1 false, i1 false}
!161 = !{!"../arch/arm/kernel/setup.c", i32 609, i32 19}
!162 = !{ptr @__arm_pm_restart, !163, !"__arm_pm_restart", i1 false, i1 false}
!163 = !{!"../arch/arm/kernel/setup.c", i32 1080, i32 15}
!164 = !{ptr @__setup_str_fpe_setup, !1, !"__setup_str_fpe_setup", i1 false, i1 false}
!165 = !{ptr @__setup_str_early_mem, !74, !"__setup_str_early_mem", i1 false, i1 false}
!166 = distinct !{null, !167, !"usermem", i1 false, i1 false}
!167 = !{!"../arch/arm/kernel/setup.c", i32 821, i32 13}
!168 = !{ptr @.str.39, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../arch/arm/kernel/setup.c", i32 959, i32 30}
!170 = !{ptr @.str.40, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../arch/arm/kernel/setup.c", i32 961, i32 39}
!172 = !{ptr @.str.41, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../arch/arm/kernel/setup.c", i32 968, i32 41}
!174 = !{ptr @.str.42, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../arch/arm/kernel/setup.c", i32 712, i32 2}
!176 = !{ptr @.str.43, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @setup_processor._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @setup_processor._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.44, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../arch/arm/kernel/setup.c", i32 716, i32 55}
!181 = !{ptr @cpu_name, !182, !"cpu_name", i1 false, i1 false}
!182 = !{!"../arch/arm/kernel/setup.c", i32 157, i32 20}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../arch/arm/include/asm/proc-fns.h", i32 120, i32 2}
!185 = !{ptr @.str.45, !184, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../arch/arm/include/asm/proc-fns.h", i32 122, i32 2}
!188 = !{ptr @.str.47, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../arch/arm/kernel/setup.c", i32 221, i32 2}
!190 = !{ptr @.str.48, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../arch/arm/kernel/setup.c", i32 222, i32 2}
!192 = !{ptr @.str.49, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../arch/arm/kernel/setup.c", i32 223, i32 2}
!194 = !{ptr @.str.50, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../arch/arm/kernel/setup.c", i32 224, i32 2}
!196 = !{ptr @.str.51, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../arch/arm/kernel/setup.c", i32 225, i32 2}
!198 = !{ptr @.str.52, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../arch/arm/kernel/setup.c", i32 226, i32 2}
!200 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../arch/arm/kernel/setup.c", i32 227, i32 2}
!202 = !{ptr @.str.54, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../arch/arm/kernel/setup.c", i32 228, i32 2}
!204 = !{ptr @.str.55, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../arch/arm/kernel/setup.c", i32 229, i32 2}
!206 = !{ptr @.str.56, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../arch/arm/kernel/setup.c", i32 230, i32 2}
!208 = !{ptr @.str.57, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../arch/arm/kernel/setup.c", i32 231, i32 2}
!210 = !{ptr @.str.58, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../arch/arm/kernel/setup.c", i32 232, i32 2}
!212 = !{ptr @.str.59, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../arch/arm/kernel/setup.c", i32 233, i32 2}
!214 = !{ptr @.str.60, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../arch/arm/kernel/setup.c", i32 234, i32 2}
!216 = !{ptr @.str.61, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../arch/arm/kernel/setup.c", i32 235, i32 2}
!218 = !{ptr @.str.62, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../arch/arm/kernel/setup.c", i32 236, i32 2}
!220 = !{ptr @.str.63, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../arch/arm/kernel/setup.c", i32 237, i32 2}
!222 = !{ptr @proc_arch, !223, !"proc_arch", i1 false, i1 false}
!223 = !{!"../arch/arm/kernel/setup.c", i32 220, i32 20}
!224 = distinct !{null, !225, !"endian_test", i1 false, i1 false}
!225 = !{!"../arch/arm/kernel/setup.c", i32 162, i32 46}
!226 = !{ptr @.str.65, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../arch/arm/kernel/setup.c", i32 430, i32 2}
!228 = !{ptr @.str.66, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @patch_aeabi_idiv._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @patch_aeabi_idiv._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.67, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../arch/arm/kernel/setup.c", i32 348, i32 2}
!233 = !{ptr @.str.68, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @cacheid_init._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @cacheid_init._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = distinct !{null, !232, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.70, !232, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.71, !232, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.72, !232, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.73, !232, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.74, !232, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.75, !232, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.76, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../arch/arm/kernel/setup.c", i32 878, i32 11}
!245 = !{ptr @__func__.request_standard_resources, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../arch/arm/kernel/setup.c", i32 879, i32 11}
!247 = !{ptr @.str.77, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../arch/arm/kernel/setup.c", i32 880, i32 16}
!249 = !{ptr @.str.78, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../arch/arm/kernel/setup.c", i32 891, i32 16}
!251 = !{ptr @.str.79, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../arch/arm/kernel/setup.c", i32 172, i32 11}
!253 = !{ptr @.str.80, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../arch/arm/kernel/setup.c", i32 178, i32 11}
!255 = !{ptr @.str.81, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../arch/arm/kernel/setup.c", i32 184, i32 11}
!257 = !{ptr @mem_res, !258, !"mem_res", i1 false, i1 false}
!258 = !{!"../arch/arm/kernel/setup.c", i32 170, i32 24}
!259 = !{ptr @.str.82, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../arch/arm/kernel/setup.c", i32 197, i32 11}
!261 = !{ptr @io_res, !262, !"io_res", i1 false, i1 false}
!262 = !{!"../arch/arm/kernel/setup.c", i32 195, i32 24}
!263 = !{ptr @arm_restart_nb, !264, !"arm_restart_nb", i1 false, i1 false}
!264 = !{!"../arch/arm/kernel/setup.c", i32 1089, i32 30}
!265 = !{ptr @.str.83, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../arch/arm/kernel/setup.c", i32 627, i32 2}
!267 = !{ptr @.str.84, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.85, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @smp_build_mpidr_hash.__UNIQUE_ID_ddebug239, !266, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!270 = !{ptr @.str.86, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../arch/arm/kernel/setup.c", i32 659, i32 2}
!272 = !{ptr @smp_build_mpidr_hash.__UNIQUE_ID_ddebug240, !271, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!273 = !{ptr @.str.87, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../arch/arm/kernel/setup.c", i32 670, i32 3}
!275 = !{ptr @smp_build_mpidr_hash._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @smp_build_mpidr_hash._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.88, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../arch/arm/kernel/setup.c", i32 1019, i32 4}
!279 = !{ptr @.str.89, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @reserve_crashkernel._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @reserve_crashkernel._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.91, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../arch/arm/kernel/setup.c", i32 1029, i32 4}
!284 = !{ptr @reserve_crashkernel._entry.90, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @reserve_crashkernel._entry_ptr.92, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.94, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../arch/arm/kernel/setup.c", i32 1034, i32 2}
!288 = !{ptr @reserve_crashkernel._entry.93, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @reserve_crashkernel._entry_ptr.95, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.96, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../arch/arm/kernel/setup.c", i32 1050, i32 12}
!292 = !{ptr @reserve_crashkernel.crashk_boot_res, !293, !"crashk_boot_res", i1 false, i1 false}
!293 = !{!"../arch/arm/kernel/setup.c", i32 1049, i32 26}
!294 = !{ptr @.str.97, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../arch/arm/kernel/setup.c", i32 1220, i32 19}
!296 = !{ptr @.str.98, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../arch/arm/kernel/setup.c", i32 1274, i32 17}
!298 = !{ptr @.str.99, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../arch/arm/kernel/setup.c", i32 1276, i32 17}
!300 = !{ptr @.str.100, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../arch/arm/kernel/setup.c", i32 1280, i32 17}
!302 = !{ptr @.str.101, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../arch/arm/kernel/setup.c", i32 1289, i32 15}
!304 = !{ptr @.str.102, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../arch/arm/kernel/setup.c", i32 1293, i32 19}
!306 = !{ptr @.str.103, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../arch/arm/kernel/setup.c", i32 1299, i32 17}
!308 = !{ptr @.str.104, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../arch/arm/kernel/setup.c", i32 1300, i32 17}
!310 = !{ptr @.str.105, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../arch/arm/kernel/setup.c", i32 1305, i32 18}
!312 = !{ptr @.str.106, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../arch/arm/kernel/setup.c", i32 1309, i32 19}
!314 = !{ptr @.str.107, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../arch/arm/kernel/setup.c", i32 1313, i32 19}
!316 = !{ptr @.str.108, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../arch/arm/kernel/setup.c", i32 1316, i32 18}
!318 = !{ptr @.str.109, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../arch/arm/kernel/setup.c", i32 1319, i32 17}
!320 = !{ptr @.str.110, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../arch/arm/kernel/setup.c", i32 1322, i32 16}
!322 = !{ptr @.str.111, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../arch/arm/kernel/setup.c", i32 1323, i32 16}
!324 = !{ptr @.str.112, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../arch/arm/kernel/setup.c", i32 1324, i32 16}
!326 = !{ptr @.str.113, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../arch/arm/kernel/setup.c", i32 1229, i32 2}
!328 = !{ptr @.str.114, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../arch/arm/kernel/setup.c", i32 1230, i32 2}
!330 = !{ptr @.str.115, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../arch/arm/kernel/setup.c", i32 1231, i32 2}
!332 = !{ptr @.str.116, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../arch/arm/kernel/setup.c", i32 1232, i32 2}
!334 = !{ptr @.str.117, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../arch/arm/kernel/setup.c", i32 1233, i32 2}
!336 = !{ptr @.str.118, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../arch/arm/kernel/setup.c", i32 1234, i32 2}
!338 = !{ptr @.str.119, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../arch/arm/kernel/setup.c", i32 1235, i32 2}
!340 = !{ptr @.str.120, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../arch/arm/kernel/setup.c", i32 1236, i32 2}
!342 = !{ptr @.str.121, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../arch/arm/kernel/setup.c", i32 1237, i32 2}
!344 = !{ptr @.str.122, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../arch/arm/kernel/setup.c", i32 1238, i32 2}
!346 = !{ptr @.str.123, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../arch/arm/kernel/setup.c", i32 1239, i32 2}
!348 = !{ptr @.str.124, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../arch/arm/kernel/setup.c", i32 1240, i32 2}
!350 = !{ptr @.str.125, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../arch/arm/kernel/setup.c", i32 1241, i32 2}
!352 = !{ptr @.str.126, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../arch/arm/kernel/setup.c", i32 1242, i32 2}
!354 = !{ptr @.str.127, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../arch/arm/kernel/setup.c", i32 1243, i32 2}
!356 = !{ptr @.str.128, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../arch/arm/kernel/setup.c", i32 1244, i32 2}
!358 = !{ptr @.str.129, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../arch/arm/kernel/setup.c", i32 1245, i32 2}
!360 = !{ptr @.str.130, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../arch/arm/kernel/setup.c", i32 1246, i32 2}
!362 = !{ptr @.str.131, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../arch/arm/kernel/setup.c", i32 1247, i32 2}
!364 = !{ptr @.str.132, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../arch/arm/kernel/setup.c", i32 1248, i32 2}
!366 = !{ptr @.str.133, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../arch/arm/kernel/setup.c", i32 1249, i32 2}
!368 = !{ptr @.str.134, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../arch/arm/kernel/setup.c", i32 1250, i32 2}
!370 = !{ptr @hwcap_str, !371, !"hwcap_str", i1 false, i1 false}
!371 = !{!"../arch/arm/kernel/setup.c", i32 1228, i32 20}
!372 = !{ptr @.str.135, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../arch/arm/kernel/setup.c", i32 1255, i32 2}
!374 = !{ptr @.str.136, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../arch/arm/kernel/setup.c", i32 1256, i32 2}
!376 = !{ptr @.str.137, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../arch/arm/kernel/setup.c", i32 1257, i32 2}
!378 = !{ptr @.str.138, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../arch/arm/kernel/setup.c", i32 1258, i32 2}
!380 = !{ptr @.str.139, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../arch/arm/kernel/setup.c", i32 1259, i32 2}
!382 = distinct !{null, !383, !"hwcap2_str", i1 false, i1 false}
!383 = !{!"../arch/arm/kernel/setup.c", i32 1254, i32 20}
!384 = !{!"sp"}
!385 = !{i32 1, !"wchar_size", i32 2}
!386 = !{i32 1, !"min_enum_size", i32 4}
!387 = !{i32 8, !"branch-target-enforcement", i32 0}
!388 = !{i32 8, !"sign-return-address", i32 0}
!389 = !{i32 8, !"sign-return-address-all", i32 0}
!390 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!391 = !{i32 7, !"uwtable", i32 1}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{!"branch_weights", i32 1, i32 2000}
!395 = !{i64 2155067095, i64 2155067583, i64 2155067132, i64 2155067188, i64 2155067222, i64 2155067246, i64 2155067287, i64 2155067308, i64 2155067336, i64 2155067370}
!396 = !{!"auto-init"}
!397 = !{i64 2155085048, i64 2155085536, i64 2155085085, i64 2155085141, i64 2155085175, i64 2155085199, i64 2155085240, i64 2155085261, i64 2155085289, i64 2155085323}
!398 = !{i64 12900, i64 12917, i64 12940, i64 12959, i64 12981, i64 13004, i64 13023, i64 13045, i64 13068, i64 13087, i64 13109, i64 13132, i64 13151}
!399 = !{i64 2154750565}
!400 = !{i64 2154747951}
!401 = !{i64 2155066617}
!402 = !{!"branch_weights", i32 2000, i32 1}
!403 = !{i64 7251863}
!404 = !{i64 2149149290, i64 2149149295, i64 2149149308, i64 2149149352, i64 2149149386, i64 2149149407}
!405 = !{i32 0, i32 33}
!406 = !{i64 2155081535}
!407 = !{i64 2155081806}
!408 = !{i64 2155081993}
!409 = !{i64 9976}
!410 = !{i64 10179}
!411 = !{i64 2155082511}
!412 = !{i64 2155082763}
!413 = !{i64 2155083015}
!414 = !{i64 2154748355}
!415 = !{i64 7294006}
!416 = !{i64 2155068475}
!417 = !{i64 7294145}
