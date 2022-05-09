; ModuleID = '/llk/IR_all_yes/kernel/sched/isolation.c_pt.bc'
source_filename = "../kernel/sched/isolation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+housekeeping_overridden\22, \22a\22\09"
module asm "\09.weak\09__crc_housekeeping_overridden\09\09\09\09"
module asm "\09.long\09__crc_housekeeping_overridden\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_overridden:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_overridden\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_overridden:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+housekeeping_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_housekeeping_enabled\09\09\09\09"
module asm "\09.long\09__crc_housekeeping_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+housekeeping_any_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_housekeeping_any_cpu\09\09\09\09"
module asm "\09.long\09__crc_housekeeping_any_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_any_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_any_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_any_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+housekeeping_cpumask\22, \22a\22\09"
module asm "\09.weak\09__crc_housekeeping_cpumask\09\09\09\09"
module asm "\09.long\09__crc_housekeeping_cpumask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_cpumask:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_cpumask\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_cpumask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+housekeeping_affine\22, \22a\22\09"
module asm "\09.weak\09__crc_housekeeping_affine\09\09\09\09"
module asm "\09.long\09__crc_housekeeping_affine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_affine:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_affine\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_affine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+housekeeping_test_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_housekeeping_test_cpu\09\09\09\09"
module asm "\09.long\09__crc_housekeeping_test_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_test_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_test_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_test_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@housekeeping_overridden = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_housekeeping_overridden = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_overridden = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_overridden = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_overridden to i32), ptr @__kstrtab_housekeeping_overridden, ptr @__kstrtabns_housekeeping_overridden }, section "___ksymtab_gpl+housekeeping_overridden", align 4
@housekeeping_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_housekeeping_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_enabled to i32), ptr @__kstrtab_housekeeping_enabled, ptr @__kstrtabns_housekeeping_enabled }, section "___ksymtab_gpl+housekeeping_enabled", align 4
@housekeeping_mask = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_housekeeping_any_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_any_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_any_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_any_cpu to i32), ptr @__kstrtab_housekeeping_any_cpu, ptr @__kstrtabns_housekeeping_any_cpu }, section "___ksymtab_gpl+housekeeping_any_cpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_housekeeping_cpumask = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_cpumask = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_cpumask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_cpumask to i32), ptr @__kstrtab_housekeeping_cpumask, ptr @__kstrtabns_housekeeping_cpumask }, section "___ksymtab_gpl+housekeeping_cpumask", align 4
@__kstrtab_housekeeping_affine = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_affine = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_affine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_affine to i32), ptr @__kstrtab_housekeeping_affine, ptr @__kstrtabns_housekeeping_affine }, section "___ksymtab_gpl+housekeeping_affine", align 4
@__kstrtab_housekeeping_test_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_test_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_test_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_test_cpu to i32), ptr @__kstrtab_housekeeping_test_cpu, ptr @__kstrtabns_housekeeping_test_cpu }, section "___ksymtab_gpl+housekeeping_test_cpu", align 4
@housekeeping_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/sched/isolation.c\00", [39 x i8] zeroinitializer }, align 32
@__setup_str_housekeeping_nohz_full_setup = internal constant [11 x i8] c"nohz_full=\00", section ".init.rodata", align 1
@__setup_housekeeping_nohz_full_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_housekeeping_nohz_full_setup, ptr @housekeeping_nohz_full_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_housekeeping_isolcpus_setup = internal constant [10 x i8] c"isolcpus=\00", section ".init.rodata", align 1
@__setup_housekeeping_isolcpus_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_housekeeping_isolcpus_setup, ptr @housekeeping_isolcpus_setup, i32 0 }, section ".init.setup", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@housekeeping_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014Housekeeping: nohz_full= or isolcpus= incorrect CPU range\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"housekeeping_setup\00", [45 x i8] zeroinitializer }, align 32
@housekeeping_setup._entry_ptr = internal global ptr @housekeeping_setup._entry, section ".printk_index", align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@housekeeping_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014Housekeeping: must include one present CPU, using boot CPU:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@housekeeping_setup._entry_ptr.6 = internal global ptr @housekeeping_setup._entry.4, section ".printk_index", align 4
@housekeeping_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Housekeeping: nohz_full= must match isolcpus=\0A\00", [47 x i8] zeroinitializer }, align 32
@housekeeping_setup._entry_ptr.9 = internal global ptr @housekeeping_setup._entry.7, section ".printk_index", align 4
@housekeeping_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014Housekeeping: nohz unsupported. Build with CONFIG_NO_HZ_FULL\0A\00", [32 x i8] zeroinitializer }, align 32
@housekeeping_setup._entry_ptr.12 = internal global ptr @housekeeping_setup._entry.10, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nohz,\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"domain,\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"managed_irq,\00", [19 x i8] zeroinitializer }, align 32
@housekeeping_isolcpus_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014isolcpus: Invalid flag %.*s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"housekeeping_isolcpus_setup\00", [36 x i8] zeroinitializer }, align 32
@housekeeping_isolcpus_setup._entry_ptr = internal global ptr @housekeeping_isolcpus_setup._entry, section ".printk_index", align 4
@housekeeping_isolcpus_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016isolcpus: Skipped unknown flag %.*s\0A\00", [57 x i8] zeroinitializer }, align 32
@housekeeping_isolcpus_setup._entry_ptr.20 = internal global ptr @housekeeping_isolcpus_setup._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"housekeeping_overridden\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 12, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"housekeeping_flags\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 15, i32 21 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"housekeeping_mask\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 14, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 77, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 87, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 100, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 111, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 123, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 156, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 162, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 168, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 184, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [28 x i8] c"../kernel/sched/isolation.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 188, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_housekeeping_affine, ptr @__ksymtab_housekeeping_any_cpu, ptr @__ksymtab_housekeeping_cpumask, ptr @__ksymtab_housekeeping_enabled, ptr @__ksymtab_housekeeping_overridden, ptr @__ksymtab_housekeeping_test_cpu, ptr @__setup_housekeeping_isolcpus_setup, ptr @__setup_housekeeping_nohz_full_setup, ptr @housekeeping_isolcpus_setup._entry, ptr @housekeeping_isolcpus_setup._entry.18, ptr @housekeeping_isolcpus_setup._entry_ptr, ptr @housekeeping_isolcpus_setup._entry_ptr.20, ptr @housekeeping_setup._entry, ptr @housekeeping_setup._entry.10, ptr @housekeeping_setup._entry.4, ptr @housekeeping_setup._entry.7, ptr @housekeeping_setup._entry_ptr, ptr @housekeeping_setup._entry_ptr.12, ptr @housekeeping_setup._entry_ptr.6, ptr @housekeeping_setup._entry_ptr.9, ptr @housekeeping_overridden, ptr @housekeeping_flags, ptr @housekeeping_mask, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_overridden to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_isolcpus_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @housekeeping_isolcpus_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @housekeeping_enabled(i32 noundef %flags) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @housekeeping_flags, align 4
  %and = and i32 %0, %flags
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @housekeeping_any_cpu(i32 noundef %flags) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @housekeeping_overridden, ptr blockaddress(@housekeeping_any_cpu, %if.then)) #8
          to label %if.end11 [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @housekeeping_flags, align 4
  %and = and i32 %0, %flags
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end11, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %1 = load ptr, ptr @housekeeping_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %1, ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #8
  br label %cleanup

if.end11:                                         ; preds = %if.then, %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !62) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu13 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.i.i
  %retval.0 = phi i32 [ %6, %if.end11 ], [ %call6.i.i, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @housekeeping_cpumask(i32 noundef %flags) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @housekeeping_overridden, ptr blockaddress(@housekeeping_cpumask, %if.then)) #8
          to label %return [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @housekeeping_flags, align 4
  %and = and i32 %0, %flags
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.then
  %1 = load ptr, ptr @housekeeping_mask, align 4
  br label %return

return:                                           ; preds = %if.then4, %if.then, %entry
  %retval.0 = phi ptr [ %1, %if.then4 ], [ @__cpu_possible_mask, %if.then ], [ @__cpu_possible_mask, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @housekeeping_affine(ptr noundef %t, i32 noundef %flags) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @housekeeping_overridden, ptr blockaddress(@housekeeping_affine, %if.then)) #8
          to label %if.end6 [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @housekeeping_flags, align 4
  %and = and i32 %0, %flags
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.then
  %1 = load ptr, ptr @housekeeping_mask, align 4
  %call5 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %t, ptr noundef %1) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @housekeeping_test_cpu(i32 noundef %cpu, i32 noundef %flags) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @housekeeping_overridden, ptr blockaddress(@housekeeping_test_cpu, %if.then)) #8
          to label %return [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @housekeeping_flags, align 4
  %and = and i32 %0, %flags
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.then
  %1 = load ptr, ptr @housekeeping_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %2, %cpu
  br i1 %cmp.not.i.i.i, label %cpumask_test_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then4
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_test_cpu.exit, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.then4
  %div3.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr %1, i32 %div3.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %5 = shl nuw i32 1, %and.i.i
  %6 = and i32 %4, %5
  %tobool6 = icmp ne i32 %6, 0
  br label %return

return:                                           ; preds = %cpumask_test_cpu.exit, %if.then, %entry
  %retval.0 = phi i1 [ %tobool6, %cpumask_test_cpu.exit ], [ true, %if.then ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @housekeeping_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @housekeeping_flags, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @static_key_enable(ptr noundef nonnull @housekeeping_overridden) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = load ptr, ptr @housekeeping_mask, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %2, i32 noundef %1) #8
  %cmp4.i.i = icmp eq i32 %call.i.i, %1
  br i1 %cmp4.i.i, label %land.rhs, label %return

land.rhs:                                         ; preds = %if.end
  %.b44 = load i1, ptr @housekeeping_init.__already_done, align 1
  br i1 %.b44, label %return, label %if.then12, !prof !73

if.then12:                                        ; preds = %land.rhs
  store i1 true, ptr @housekeeping_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.then12, %land.rhs, %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @housekeeping_nohz_full_setup(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @housekeeping_setup(ptr noundef %str, i32 noundef 343) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @housekeeping_isolcpus_setup(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str, align 1
  %conv8188 = zext i8 %1 to i32
  %arrayidx8289 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv8188
  %2 = ptrtoint ptr %arrayidx8289 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8289, align 1
  %4 = and i8 %3, 3
  %cmp.not8390 = icmp eq i8 %4, 0
  br i1 %cmp.not8390, label %while.end.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge, %entry
  %str.addr.0.ph92 = phi ptr [ %add.ptr12, %while.cond.outer.backedge ], [ %str, %entry ]
  %flags.0.ph91 = phi i32 [ %or13, %while.cond.outer.backedge ], [ 0, %entry ]
  br label %while.body

while.body:                                       ; preds = %do.end37, %while.body.lr.ph
  %str.addr.084 = phi ptr [ %str.addr.0.ph92, %while.body.lr.ph ], [ %incdec.ptr40, %do.end37 ]
  %call = tail call i32 @strncmp(ptr noundef %str.addr.084, ptr noundef nonnull dereferenceable(6) @.str.13, i32 noundef 5)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.outer.backedge, label %if.end

if.end:                                           ; preds = %while.body
  %call3 = tail call i32 @strncmp(ptr noundef %str.addr.084, ptr noundef nonnull dereferenceable(8) @.str.14, i32 noundef 7)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.cond.outer.backedge, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @strncmp(ptr noundef %str.addr.084, ptr noundef nonnull dereferenceable(13) @.str.15, i32 noundef 12)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %while.cond.outer.backedge, label %for.cond

while.cond.outer.backedge:                        ; preds = %if.end8, %if.end, %while.body
  %.sink126 = phi i32 [ 5, %while.body ], [ 7, %if.end ], [ 12, %if.end8 ]
  %.sink = phi i32 [ 16, %while.body ], [ 32, %if.end ], [ 128, %if.end8 ]
  %add.ptr12 = getelementptr i8, ptr %str.addr.084, i32 %.sink126
  %or13 = or i32 %flags.0.ph91, %.sink
  %5 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr12, align 1
  %conv81 = zext i8 %6 to i32
  %arrayidx82 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv81
  %7 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx82, align 1
  %9 = and i8 %8, 3
  %cmp.not83 = icmp eq i8 %9, 0
  br i1 %cmp.not83, label %while.end.thread108, label %while.body.lr.ph

for.cond:                                         ; preds = %for.body, %if.end8
  %illegal.1.off0 = phi i1 [ %spec.select75, %for.body ], [ false, %if.end8 ]
  %len.0 = phi i32 [ %inc, %for.body ], [ 0, %if.end8 ]
  %str.addr.1 = phi ptr [ %incdec.ptr, %for.body ], [ %str.addr.084, %if.end8 ]
  %10 = ptrtoint ptr %str.addr.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %str.addr.1, align 1
  switch i8 %11, label %for.body [
    i8 0, label %for.end
    i8 44, label %for.end
  ]

for.body:                                         ; preds = %for.cond
  %conv15 = zext i8 %11 to i32
  %arrayidx21 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv15
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %14 = and i8 %13, 3
  %cmp24.not = icmp eq i8 %14, 0
  %cmp27.not = icmp ne i8 %11, 95
  %or.cond = select i1 %cmp24.not, i1 %cmp27.not, i1 false
  %spec.select75 = select i1 %or.cond, i1 true, i1 %illegal.1.off0
  %incdec.ptr = getelementptr i8, ptr %str.addr.1, i32 1
  %inc = add i32 %len.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond
  br i1 %illegal.1.off0, label %do.end, label %do.end37

do.end:                                           ; preds = %for.end
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %len.0, ptr noundef %str.addr.084) #11
  br label %cleanup

do.end37:                                         ; preds = %for.end
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %len.0, ptr noundef %str.addr.084) #11
  %incdec.ptr40 = getelementptr i8, ptr %str.addr.1, i32 1
  %15 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr40, align 1
  %conv = zext i8 %16 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = and i8 %18, 3
  %cmp.not = icmp eq i8 %19, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %do.end37
  %tobool41.not = icmp eq i32 %flags.0.ph91, 0
  br i1 %tobool41.not, label %while.end.thread, label %while.end.thread108

while.end.thread:                                 ; preds = %while.end, %entry
  %str.addr.0.lcssa107 = phi ptr [ %incdec.ptr40, %while.end ], [ %str, %entry ]
  br label %while.end.thread108

while.end.thread108:                              ; preds = %while.end.thread, %while.end, %while.cond.outer.backedge
  %str.addr.0.lcssa106 = phi ptr [ %str.addr.0.lcssa107, %while.end.thread ], [ %incdec.ptr40, %while.end ], [ %add.ptr12, %while.cond.outer.backedge ]
  %20 = phi i32 [ 32, %while.end.thread ], [ %flags.0.ph91, %while.end ], [ %or13, %while.cond.outer.backedge ]
  %call45 = tail call fastcc i32 @housekeeping_setup(ptr noundef %str.addr.0.lcssa106, i32 noundef %20) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end.thread108, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call45, %while.end.thread108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @housekeeping_setup(ptr noundef %str, i32 noundef %flags) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %non_housekeeping_mask = alloca ptr, align 4
  %tmp = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %non_housekeeping_mask) #8
  %0 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %non_housekeeping_mask, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !74
  call void @alloc_bootmem_cpumask_var(ptr noundef nonnull %non_housekeeping_mask) #8
  %2 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %non_housekeeping_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = call i32 @bitmap_parselist(ptr noundef %str, ptr noundef %3, i32 noundef %4) #8
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @alloc_bootmem_cpumask_var(ptr noundef nonnull %tmp) #8
  %5 = load i32, ptr @housekeeping_flags, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then3, label %if.end.i.i82

if.then3:                                         ; preds = %if.end
  call void @alloc_bootmem_cpumask_var(ptr noundef nonnull @housekeeping_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %non_housekeeping_mask, align 4
  %9 = load ptr, ptr @housekeeping_mask, align 4
  %call.i.i = call i32 @__bitmap_andnot(ptr noundef %9, ptr noundef nonnull @__cpu_possible_mask, ptr noundef %8, i32 noundef %6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %non_housekeeping_mask, align 4
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmp, align 4
  %call.i.i54 = call i32 @__bitmap_andnot(ptr noundef %14, ptr noundef nonnull @__cpu_present_mask, ptr noundef %12, i32 noundef %10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmp, align 4
  %call.i.i62 = call i32 @_find_first_bit_be(ptr noundef %17, i32 noundef %15) #8
  %cmp4.i.i = icmp eq i32 %call.i.i62, %15
  br i1 %cmp4.i.i, label %do.end10, label %if.end34

do.end10:                                         ; preds = %if.then3
  %18 = call i32 @llvm.read_register.i32(metadata !62) #8
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %21) #11
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %24 = load ptr, ptr @housekeeping_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %25, %23
  br i1 %cmp.not.i.i.i, label %__cpumask_set_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %do.end10
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %__cpumask_set_cpu.exit, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %__cpumask_set_cpu.exit

__cpumask_set_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %do.end10
  %rem.i.i = and i32 %23, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %23, 5
  %add.ptr.i.i = getelementptr i32, ptr %24, i32 %div2.i.i
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %27, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %30 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %non_housekeeping_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i64 = icmp ugt i32 %32, %29
  br i1 %cmp.not.i.i.i64, label %__cpumask_clear_cpu.exit, label %land.rhs.i.i.i66

land.rhs.i.i.i66:                                 ; preds = %__cpumask_set_cpu.exit
  %.b37.i.i.i65 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i65, label %__cpumask_clear_cpu.exit, label %if.then.i.i.i67, !prof !73

if.then.i.i.i67:                                  ; preds = %land.rhs.i.i.i66
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %__cpumask_clear_cpu.exit

__cpumask_clear_cpu.exit:                         ; preds = %if.then.i.i.i67, %land.rhs.i.i.i66, %__cpumask_set_cpu.exit
  %rem.i.i68 = and i32 %29, 31
  %shl.i.i69 = shl nuw i32 1, %rem.i.i68
  %div2.i.i70 = lshr i32 %29, 5
  %add.ptr.i.i71 = getelementptr i32, ptr %31, i32 %div2.i.i70
  %neg.i.i72 = xor i32 %shl.i.i69, -1
  %33 = ptrtoint ptr %add.ptr.i.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i71, align 4
  %and.i.i73 = and i32 %34, %neg.i.i72
  store i32 %and.i.i73, ptr %add.ptr.i.i71, align 4
  br label %if.end34

if.end.i.i82:                                     ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %36 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %non_housekeeping_mask, align 4
  %38 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tmp, align 4
  %call.i.i81 = call i32 @__bitmap_andnot(ptr noundef %39, ptr noundef nonnull @__cpu_present_mask, ptr noundef %37, i32 noundef %35) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tmp, align 4
  %call.i.i90 = call i32 @_find_first_bit_be(ptr noundef %42, i32 noundef %40) #8
  %cmp4.i.i91 = icmp eq i32 %call.i.i90, %40
  br i1 %cmp4.i.i91, label %if.then21, label %if.end.i.i115

if.then21:                                        ; preds = %if.end.i.i82
  %43 = call i32 @llvm.read_register.i32(metadata !62) #8
  %and.i95 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i95 to ptr
  %cpu23 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu23, align 4
  %47 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %non_housekeeping_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i96 = icmp ugt i32 %49, %46
  br i1 %cmp.not.i.i.i96, label %__cpumask_clear_cpu.exit106, label %land.rhs.i.i.i98

land.rhs.i.i.i98:                                 ; preds = %if.then21
  %.b37.i.i.i97 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i97, label %__cpumask_clear_cpu.exit106, label %if.then.i.i.i99, !prof !73

if.then.i.i.i99:                                  ; preds = %land.rhs.i.i.i98
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %__cpumask_clear_cpu.exit106

__cpumask_clear_cpu.exit106:                      ; preds = %if.then.i.i.i99, %land.rhs.i.i.i98, %if.then21
  %rem.i.i100 = and i32 %46, 31
  %shl.i.i101 = shl nuw i32 1, %rem.i.i100
  %div2.i.i102 = lshr i32 %46, 5
  %add.ptr.i.i103 = getelementptr i32, ptr %48, i32 %div2.i.i102
  %neg.i.i104 = xor i32 %shl.i.i101, -1
  %50 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i103, align 4
  %and.i.i105 = and i32 %51, %neg.i.i104
  store i32 %and.i.i105, ptr %add.ptr.i.i103, align 4
  br label %if.end.i.i115

if.end.i.i115:                                    ; preds = %__cpumask_clear_cpu.exit106, %if.end.i.i82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %53 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %non_housekeeping_mask, align 4
  %55 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tmp, align 4
  %call.i.i114 = call i32 @__bitmap_andnot(ptr noundef %56, ptr noundef nonnull @__cpu_possible_mask, ptr noundef %54, i32 noundef %52) #8
  %57 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tmp, align 4
  %59 = load ptr, ptr @housekeeping_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %60 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = call i32 @__bitmap_equal(ptr noundef %58, ptr noundef %59, i32 noundef %60) #8
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.i.not, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end.i.i115
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %61 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmp, align 4
  call void @free_bootmem_cpumask_var(ptr noundef %62) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end.i.i115, %__cpumask_clear_cpu.exit, %if.then3
  %63 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tmp, align 4
  call void @free_bootmem_cpumask_var(ptr noundef %64) #8
  %and = and i32 %flags, 16
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end34
  %65 = load i32, ptr @housekeeping_flags, align 4
  %and36 = and i32 %65, 16
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end41, label %if.end44

do.end41:                                         ; preds = %land.lhs.true
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true, %if.end34
  %66 = load i32, ptr @housekeeping_flags, align 4
  %or = or i32 %66, %flags
  store i32 %or, ptr @housekeeping_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end41, %do.end30, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end44 ], [ 0, %do.end41 ], [ 0, %do.end30 ]
  %67 = ptrtoint ptr %non_housekeeping_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %.sink = load ptr, ptr %non_housekeeping_mask, align 4
  call void @free_bootmem_cpumask_var(ptr noundef %.sink) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %non_housekeeping_mask) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alloc_bootmem_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_bootmem_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @housekeeping_overridden, !1, !"housekeeping_overridden", i1 false, i1 false}
!1 = !{!"../kernel/sched/isolation.c", i32 12, i32 1}
!2 = !{ptr @__ksymtab_housekeeping_overridden, !3, !"__ksymtab_housekeeping_overridden", i1 false, i1 false}
!3 = !{!"../kernel/sched/isolation.c", i32 13, i32 1}
!4 = !{ptr @__ksymtab_housekeeping_enabled, !5, !"__ksymtab_housekeeping_enabled", i1 false, i1 false}
!5 = !{!"../kernel/sched/isolation.c", i32 21, i32 1}
!6 = !{ptr @__ksymtab_housekeeping_any_cpu, !7, !"__ksymtab_housekeeping_any_cpu", i1 false, i1 false}
!7 = !{!"../kernel/sched/isolation.c", i32 38, i32 1}
!8 = !{ptr @__ksymtab_housekeeping_cpumask, !9, !"__ksymtab_housekeeping_cpumask", i1 false, i1 false}
!9 = !{!"../kernel/sched/isolation.c", i32 47, i32 1}
!10 = !{ptr @__ksymtab_housekeeping_affine, !11, !"__ksymtab_housekeeping_affine", i1 false, i1 false}
!11 = !{!"../kernel/sched/isolation.c", i32 55, i32 1}
!12 = !{ptr @__ksymtab_housekeeping_test_cpu, !13, !"__ksymtab_housekeeping_test_cpu", i1 false, i1 false}
!13 = !{!"../kernel/sched/isolation.c", i32 64, i32 1}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/sched/isolation.c", i32 77, i32 2}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__setup_housekeeping_nohz_full_setup, !18, !"__setup_housekeeping_nohz_full_setup", i1 false, i1 false}
!18 = !{!"../kernel/sched/isolation.c", i32 146, i32 1}
!19 = !{ptr @__setup_housekeeping_isolcpus_setup, !20, !"__setup_housekeeping_isolcpus_setup", i1 false, i1 false}
!20 = !{!"../kernel/sched/isolation.c", i32 198, i32 1}
!21 = !{ptr @housekeeping_mask, !22, !"housekeeping_mask", i1 false, i1 false}
!22 = !{!"../kernel/sched/isolation.c", i32 14, i32 22}
!23 = !{ptr @housekeeping_flags, !24, !"housekeeping_flags", i1 false, i1 false}
!24 = !{!"../kernel/sched/isolation.c", i32 15, i32 21}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__setup_str_housekeeping_nohz_full_setup, !18, !"__setup_str_housekeeping_nohz_full_setup", i1 false, i1 false}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/sched/isolation.c", i32 87, i32 3}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @housekeeping_setup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @housekeeping_setup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/sched/isolation.c", i32 100, i32 4}
!36 = !{ptr @housekeeping_setup._entry.4, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @housekeeping_setup._entry_ptr.6, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/sched/isolation.c", i32 111, i32 4}
!40 = !{ptr @housekeeping_setup._entry.7, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @housekeeping_setup._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/sched/isolation.c", i32 123, i32 4}
!44 = !{ptr @housekeeping_setup._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @housekeeping_setup._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__setup_str_housekeeping_isolcpus_setup, !20, !"__setup_str_housekeeping_isolcpus_setup", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/sched/isolation.c", i32 156, i32 21}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/sched/isolation.c", i32 162, i32 21}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/sched/isolation.c", i32 168, i32 21}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/sched/isolation.c", i32 184, i32 4}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @housekeeping_isolcpus_setup._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @housekeeping_isolcpus_setup._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/sched/isolation.c", i32 188, i32 3}
!60 = !{ptr @housekeeping_isolcpus_setup._entry.18, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @housekeeping_isolcpus_setup._entry_ptr.20, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148318797, i64 2148318802, i64 2148318815, i64 2148318859, i64 2148318893, i64 2148318914}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{!"auto-init"}
