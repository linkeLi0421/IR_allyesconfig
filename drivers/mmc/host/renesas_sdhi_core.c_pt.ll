; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/renesas_sdhi_core.c_pt.bc'
source_filename = "../drivers/mmc/host/renesas_sdhi_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+renesas_sdhi_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_renesas_sdhi_probe\09\09\09\09"
module asm "\09.long\09__crc_renesas_sdhi_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_renesas_sdhi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22renesas_sdhi_probe\22\09\09\09\09\09"
module asm "__kstrtabns_renesas_sdhi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+renesas_sdhi_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_renesas_sdhi_remove\09\09\09\09"
module asm "\09.long\09__crc_renesas_sdhi_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_renesas_sdhi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22renesas_sdhi_remove\22\09\09\09\09\09"
module asm "__kstrtabns_renesas_sdhi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.renesas_sdhi = type { ptr, ptr, ptr, %struct.tmio_mmc_data, %struct.tmio_mmc_dma, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, [1 x i32], [1 x i32], i32, i32, ptr }
%struct.tmio_mmc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, ptr }
%struct.tmio_mmc_dma = type { i32, ptr, ptr, %struct.completion, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.renesas_sdhi_of_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i32 }
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.renesas_sdhi_quirks = type { i8, i8, i32, ptr }
%struct.renesas_sdhi_scc = type { i32, i32, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot get clock\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clkh\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cannot get clkh\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cd\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot get cd clock\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state_uhs\00", [22 x i8] zeroinitializer }, align 32
@renesas_sdhi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1082, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown clock rate for tuning\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas_sdhi_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/mmc/host/renesas_sdhi_core.c\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@renesas_sdhi_probe._entry_ptr = internal global ptr @renesas_sdhi_probe._entry, section ".printk_index", align 4
@renesas_sdhi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1122, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s base at %pa, max clock rate %u MHz\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@renesas_sdhi_probe._entry_ptr.15 = internal global ptr @renesas_sdhi_probe._entry.12, section ".printk_index", align 4
@__kstrtab_renesas_sdhi_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_renesas_sdhi_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_renesas_sdhi_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @renesas_sdhi_probe to i32), ptr @__kstrtab_renesas_sdhi_probe, ptr @__kstrtabns_renesas_sdhi_probe }, section "___ksymtab_gpl+renesas_sdhi_probe", align 4
@__kstrtab_renesas_sdhi_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_renesas_sdhi_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_renesas_sdhi_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @renesas_sdhi_remove to i32), ptr @__kstrtab_renesas_sdhi_remove, ptr @__kstrtabns_renesas_sdhi_remove }, section "___ksymtab_gpl+renesas_sdhi_remove", align 4
@__UNIQUE_ID_file321 = internal constant [58 x i8] c"renesas_sdhi_core.file=drivers/mmc/host/renesas_sdhi_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [33 x i8] c"renesas_sdhi_core.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@renesas_sdhi_wait_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 829, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout waiting for SD bus idle\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"renesas_sdhi_wait_idle\00", [41 x i8] zeroinitializer }, align 32
@renesas_sdhi_wait_idle._entry_ptr = internal global ptr @renesas_sdhi_wait_idle._entry, section ".printk_index", align 4
@renesas_sdhi_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 681, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Too many taps, please update 'taps' in tmio_mmc_host!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"renesas_sdhi_execute_tuning\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@renesas_sdhi_execute_tuning._entry_ptr = internal global ptr @renesas_sdhi_execute_tuning._entry, section ".printk_index", align 4
@renesas_sdhi_hs400_complete.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.9, ptr @.str.23, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas_sdhi_core\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"renesas_sdhi_hs400_complete\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't handle three bad tap in a row\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 18700, i64 52496]
@__sancov_gen_cov_switch_values.24 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 8, i64 10, i64 36, i64 38, i64 40, i64 52, i64 216, i64 228]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 16, i64 18700, i64 51981, i64 52240, i64 52496]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 16, i64 18700, i64 51981, i64 52240, i64 52496]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 16777216]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 922, i32 56 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 924, i32 49 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 926, i32 57 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 939, i32 51 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 941, i32 59 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 946, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 948, i32 7 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1082, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1121, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 829, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 680, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [40 x i8] c"../drivers/mmc/host/renesas_sdhi_core.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 413, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__ksymtab_renesas_sdhi_probe, ptr @__ksymtab_renesas_sdhi_remove, ptr @renesas_sdhi_execute_tuning._entry, ptr @renesas_sdhi_execute_tuning._entry_ptr, ptr @renesas_sdhi_probe._entry, ptr @renesas_sdhi_probe._entry.12, ptr @renesas_sdhi_probe._entry_ptr, ptr @renesas_sdhi_probe._entry_ptr.15, ptr @renesas_sdhi_wait_idle._entry, ptr @renesas_sdhi_wait_idle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_wait_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @renesas_sdhi_probe(ptr noundef %pdev, ptr noundef %dma_ops, ptr noundef readonly %of_data, ptr noundef %quirks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 212, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %quirks6 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %quirks6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %quirks, ptr %quirks6, align 4
  %mmc_data7 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3
  %dma_priv8 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call10 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %call20 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %clkh = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %clkh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %clkh, align 4
  %cmp.i425 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i425, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call20 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call30 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %clk_cd = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk_cd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call30, ptr %clk_cd, align 4
  %cmp.i426 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i426, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call30 to i32
  %call37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %call40 = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #6
  %pinctrl = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call40, ptr %pinctrl, align 4
  %cmp.i427 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i427, label %if.end38.if.end48_crit_edge, label %if.then43

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call ptr @pinctrl_lookup_state(ptr noundef %call40, ptr noundef nonnull @.str.5) #6
  %pins_default = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %pins_default to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call45, ptr %pins_default, align 4
  %11 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pinctrl, align 4
  %call47 = tail call ptr @pinctrl_lookup_state(ptr noundef %12, ptr noundef nonnull @.str.6) #6
  %pins_uhs = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %pins_uhs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call47, ptr %pins_uhs, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end38.if.end48_crit_edge
  %call49 = tail call ptr @tmio_mmc_host_alloc(ptr noundef %pdev, ptr noundef %mmc_data7) #6
  %cmp.i428 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i428, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %tobool54.not = icmp eq ptr %of_data, null
  br i1 %tobool54.not, label %if.end53.if.end74_crit_edge, label %if.then55

if.end53.if.end74_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then55:                                        ; preds = %if.end53
  %15 = ptrtoint ptr %of_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %of_data, align 4
  %flags = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or = or i32 %18, %16
  store i32 %or, ptr %flags, align 4
  %tmio_ocr_mask = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 1
  %19 = ptrtoint ptr %tmio_ocr_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmio_ocr_mask, align 4
  %ocr_mask = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %ocr_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ocr_mask, align 4
  %capabilities = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 2
  %22 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capabilities, align 4
  %capabilities56 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %capabilities56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capabilities56, align 4
  %or57 = or i32 %25, %23
  store i32 %or57, ptr %capabilities56, align 4
  %capabilities2 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 3
  %26 = ptrtoint ptr %capabilities2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %capabilities2, align 4
  %capabilities258 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %capabilities258 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %capabilities258, align 4
  %or59 = or i32 %29, %27
  store i32 %or59, ptr %capabilities258, align 4
  %dma_rx_offset = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 5
  %30 = ptrtoint ptr %dma_rx_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_rx_offset, align 4
  %dma_rx_offset60 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %dma_rx_offset60 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dma_rx_offset60, align 4
  %max_blk_count = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 10
  %33 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_blk_count, align 4
  %max_blk_count61 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 9
  %35 = ptrtoint ptr %max_blk_count61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_blk_count61, align 4
  %max_segs = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 11
  %36 = ptrtoint ptr %max_segs to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_segs, align 4
  %max_segs62 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 10
  %38 = ptrtoint ptr %max_segs62 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %max_segs62, align 4
  %dma_buswidth = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 4
  %39 = ptrtoint ptr %dma_buswidth to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_buswidth, align 4
  %41 = ptrtoint ptr %dma_priv8 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dma_priv8, align 4
  %bus_shift = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 6
  %42 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bus_shift, align 4
  %bus_shift64 = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 11
  %44 = ptrtoint ptr %bus_shift64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bus_shift64, align 4
  %45 = ptrtoint ptr %clkh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clkh, align 4
  %tobool66.not = icmp eq ptr %46, null
  br i1 %tobool66.not, label %land.lhs.true, label %if.then55.if.end74_crit_edge

if.then55.if.end74_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

land.lhs.true:                                    ; preds = %if.then55
  %sdhi_flags = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 12
  %47 = ptrtoint ptr %sdhi_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sdhi_flags, align 4
  %and = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %land.lhs.true.if.end74_crit_edge, label %if.then68

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %call70 = tail call ptr @clk_get_parent(ptr noundef %50) #6
  %call71 = tail call ptr @clk_get_parent(ptr noundef %call70) #6
  %51 = ptrtoint ptr %clkh to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call71, ptr %clkh, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %land.lhs.true.if.end74_crit_edge, %if.then55.if.end74_crit_edge, %if.end53.if.end74_crit_edge
  %write16_hook = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 36
  %52 = ptrtoint ptr %write16_hook to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @renesas_sdhi_write16_hook, ptr %write16_hook, align 4
  %clk_enable = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 32
  %53 = ptrtoint ptr %clk_enable to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @renesas_sdhi_clk_enable, ptr %clk_enable, align 4
  %clk_disable = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 34
  %54 = ptrtoint ptr %clk_disable to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @renesas_sdhi_clk_disable, ptr %clk_disable, align 4
  %set_clock = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 33
  %55 = ptrtoint ptr %set_clock to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @renesas_sdhi_set_clock, ptr %set_clock, align 4
  %multi_io_quirk = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 35
  %56 = ptrtoint ptr %multi_io_quirk to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @renesas_sdhi_multi_io_quirk, ptr %multi_io_quirk, align 4
  %dma_ops75 = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 44
  %57 = ptrtoint ptr %dma_ops75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dma_ops, ptr %dma_ops75, align 4
  %tobool76.not = icmp eq ptr %quirks, null
  br i1 %tobool76.not, label %if.end74.if.end81_crit_edge, label %land.lhs.true77

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

land.lhs.true77:                                  ; preds = %if.end74
  %58 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %quirks, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool78.not = icmp eq i8 %59, 0
  br i1 %tobool78.not, label %land.lhs.true77.if.end81_crit_edge, label %if.then79

land.lhs.true77.if.end81_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then79:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 4
  %60 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmc, align 4
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %caps2, align 4
  %and80 = and i32 %63, -1146881
  store i32 %and80, ptr %caps2, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %land.lhs.true77.if.end81_crit_edge, %if.end74.if.end81_crit_edge
  %mmc82 = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 4
  %64 = ptrtoint ptr %mmc82 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmc82, align 4
  %call83 = tail call zeroext i1 @mmc_can_gpio_ro(ptr noundef %65) #6
  br i1 %call83, label %if.then84, label %if.end81.if.end87_crit_edge

if.end81.if.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %capabilities285 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 4
  %66 = ptrtoint ptr %capabilities285 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %capabilities285, align 4
  %and86 = and i32 %67, -262145
  store i32 %and86, ptr %capabilities285, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end81.if.end87_crit_edge
  %flags88 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 5
  %68 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags88, align 4
  %and89 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end93_crit_edge, label %if.then91

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %card_busy = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 5, i32 11
  %70 = ptrtoint ptr %card_busy to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @renesas_sdhi_card_busy, ptr %card_busy, align 4
  %start_signal_voltage_switch = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 5, i32 10
  %71 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @renesas_sdhi_start_signal_voltage_switch, ptr %start_signal_voltage_switch, align 4
  %sdcard_irq_setbit_mask = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 25
  %72 = ptrtoint ptr %sdcard_irq_setbit_mask to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 134217728, ptr %sdcard_irq_setbit_mask, align 4
  %sdcard_irq_mask_all = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 26
  %73 = ptrtoint ptr %sdcard_irq_mask_all to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1954610403, ptr %sdcard_irq_mask_all, align 4
  %reset = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 37
  %74 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @renesas_sdhi_reset, ptr %reset, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end87.if.end93_crit_edge
  %bus_shift94 = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 11
  %75 = ptrtoint ptr %bus_shift94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bus_shift94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool95.not = icmp eq i32 %76, 0
  br i1 %tobool95.not, label %land.lhs.true96, label %if.end93.if.end100_crit_edge

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

land.lhs.true96:                                  ; preds = %if.end93
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %77 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %end.i, align 4
  %79 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call, align 4
  %sub.i = add i32 %78, 1
  %add.i = sub i32 %sub.i, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 256
  br i1 %cmp, label %if.then98, label %land.lhs.true96.if.end100_crit_edge

land.lhs.true96.if.end100_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then98:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %bus_shift94 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %bus_shift94, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %land.lhs.true96.if.end100_crit_edge, %if.end93.if.end100_crit_edge
  %tobool101.not = icmp eq ptr %1, null
  br i1 %tobool101.not, label %if.end100.if.end103_crit_edge, label %if.then102

if.end100.if.end103_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %82 = call ptr @memcpy(ptr %mmc_data7, ptr %1, i32 52)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end100.if.end103_crit_edge
  %filter = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @shdma_chan_filter, ptr %filter, align 4
  %enable = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @renesas_sdhi_enable_dma, ptr %enable, align 4
  %alignment_shift = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 7
  %85 = ptrtoint ptr %alignment_shift to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %alignment_shift, align 4
  %capabilities104 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 3
  %86 = ptrtoint ptr %capabilities104 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %capabilities104, align 4
  %or105 = or i32 %87, 2
  store i32 %or105, ptr %capabilities104, align 4
  %88 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags88, align 4
  %or115 = or i32 %89, 422
  store i32 %or115, ptr %flags88, align 4
  %call117 = tail call i32 @dev_pm_domain_start(ptr noundef %dev) #6
  %call118 = tail call i32 @renesas_sdhi_clk_enable(ptr noundef %call49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end103.efree_crit_edge

if.end103.efree_crit_edge:                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %efree

if.end121:                                        ; preds = %if.end103
  %call.i429 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %rstc = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 18
  %90 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i429, ptr %rstc, align 4
  %cmp.i430 = icmp ugt ptr %call.i429, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i430, label %if.then126, label %if.end129

if.then126:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %call.i429 to i32
  br label %cleanup

if.end129:                                        ; preds = %if.end121
  %92 = ptrtoint ptr %call49 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call49, align 4
  %94 = ptrtoint ptr %bus_shift94 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bus_shift94, align 4
  %shl.i = shl i32 226, %95
  %add.ptr.i = getelementptr i8, ptr %93, i32 %shl.i
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !60
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13555, i16 %97)
  %cmp131 = icmp ult i16 %97, -13555
  br i1 %cmp131, label %land.lhs.true133, label %if.end129.if.end139_crit_edge

if.end129.if.end139_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

land.lhs.true133:                                 ; preds = %if.end129
  %max_blk_count134 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 3, i32 9
  %98 = ptrtoint ptr %max_blk_count134 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_blk_count134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %99)
  %cmp135 = icmp ugt i32 %99, 65535
  br i1 %cmp135, label %if.then137, label %land.lhs.true133.if.end139_crit_edge

land.lhs.true133.if.end139_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then137:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %max_blk_count134 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 65535, ptr %max_blk_count134, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %land.lhs.true133.if.end139_crit_edge, %if.end129.if.end139_crit_edge
  %101 = zext i16 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values)
  switch i16 %97, label %if.end159 [
    i16 18700, label %if.end159.thread438
    i16 -13040, label %land.lhs.true150
  ]

if.end159.thread438:                              ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags88, align 4
  %and145 = and i32 %103, -2049
  store i32 %and145, ptr %flags88, align 4
  br label %if.end164

land.lhs.true150:                                 ; preds = %if.end139
  br i1 %tobool76.not, label %land.lhs.true150.if.then163_crit_edge, label %land.lhs.true152

land.lhs.true150.if.then163_crit_edge:            ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

land.lhs.true152:                                 ; preds = %land.lhs.true150
  %hs400_calib_table = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %quirks, i32 0, i32 3
  %104 = ptrtoint ptr %hs400_calib_table to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hs400_calib_table, align 4
  %tobool153.not = icmp eq ptr %105, null
  br i1 %tobool153.not, label %land.lhs.true152.if.then163_crit_edge, label %if.then154

land.lhs.true152.if.then163_crit_edge:            ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

if.then154:                                       ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #8
  %fixup_request = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 39
  %106 = ptrtoint ptr %fixup_request to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @renesas_sdhi_fixup_request, ptr %fixup_request, align 4
  %107 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300679168, i32 %108)
  %cmp155 = icmp ne i32 %108, -300679168
  %109 = ptrtoint ptr %hs400_calib_table to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hs400_calib_table, align 4
  %cond.idx = zext i1 %cmp155 to i32
  %cond = getelementptr [32 x i8], ptr %110, i32 %cond.idx
  %adjust_hs400_calib_table = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 12
  %111 = ptrtoint ptr %adjust_hs400_calib_table to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %cond, ptr %adjust_hs400_calib_table, align 4
  br label %if.then163

if.end159:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13297, i16 %97)
  %cmp161 = icmp ugt i16 %97, -13297
  br i1 %cmp161, label %if.end159.if.then163_crit_edge, label %if.end159.if.end164_crit_edge

if.end159.if.end164_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.end159.if.then163_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

if.then163:                                       ; preds = %if.end159.if.then163_crit_edge, %if.then154, %land.lhs.true152.if.then163_crit_edge, %land.lhs.true150.if.then163_crit_edge
  %get_timeout_cycles = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 40
  %112 = ptrtoint ptr %get_timeout_cycles to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @renesas_sdhi_gen3_get_cycles, ptr %get_timeout_cycles, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %if.end159.if.end164_crit_edge, %if.end159.thread438
  br i1 %tobool54.not, label %if.end164.if.end211_crit_edge, label %land.lhs.true166

if.end164.if.end211_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

land.lhs.true166:                                 ; preds = %if.end164
  %scc_offset = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 7
  %113 = ptrtoint ptr %scc_offset to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %scc_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool167.not = icmp eq i32 %114, 0
  br i1 %tobool167.not, label %land.lhs.true166.if.end211_crit_edge, label %land.lhs.true168

land.lhs.true166.if.end211_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

land.lhs.true168:                                 ; preds = %land.lhs.true166
  %115 = ptrtoint ptr %mmc82 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmc82, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %caps, align 32
  %and170 = and i32 %118, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %lor.lhs.false, label %land.lhs.true168.if.then176_crit_edge

land.lhs.true168.if.then176_crit_edge:            ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then176

lor.lhs.false:                                    ; preds = %land.lhs.true168
  %caps2173 = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 17
  %119 = ptrtoint ptr %caps2173 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %caps2173, align 4
  %and174 = and i32 %120, 32800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %lor.lhs.false.if.end211_crit_edge, label %lor.lhs.false.if.then176_crit_edge

lor.lhs.false.if.then176_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then176

lor.lhs.false.if.end211_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

if.then176:                                       ; preds = %lor.lhs.false.if.then176_crit_edge, %land.lhs.true168.if.then176_crit_edge
  %taps177 = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 8
  %121 = ptrtoint ptr %taps177 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %taps177, align 4
  br i1 %tobool76.not, label %if.then176.land.end_crit_edge, label %land.rhs

if.then176.land.end_crit_edge:                    ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  %hs400_4taps = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %quirks, i32 0, i32 1
  %123 = ptrtoint ptr %hs400_4taps to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %hs400_4taps, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool179 = icmp ne i8 %124, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then176.land.end_crit_edge
  %125 = phi i1 [ false, %if.then176.land.end_crit_edge ], [ %tobool179, %land.rhs ]
  %taps_num = getelementptr inbounds %struct.renesas_sdhi_of_data, ptr %of_data, i32 0, i32 9
  %126 = ptrtoint ptr %taps_num to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %taps_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp181441 = icmp sgt i32 %127, 0
  br i1 %cmp181441, label %for.body.lr.ph, label %land.end.do.end_crit_edge

land.end.do.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph:                                   ; preds = %land.end
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false185
  %inc = add nuw nsw i32 %i.0442, 1
  %exitcond.not = icmp eq i32 %inc, %127
  br i1 %exitcond.not, label %for.cond.do.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0442 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.renesas_sdhi_scc, ptr %122, i32 %i.0442
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp183 = icmp eq i32 %129, 0
  br i1 %cmp183, label %if.end204.critedge418, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %for.body
  %130 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp189 = icmp eq i32 %129, %131
  br i1 %cmp189, label %if.end204.critedge, label %for.cond

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %land.end.do.end_crit_edge
  %pdev202 = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 12
  %132 = ptrtoint ptr %pdev202 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev202, align 4
  %dev203 = getelementptr inbounds %struct.platform_device, ptr %133, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev203, ptr noundef nonnull @.str.7) #9
  br label %if.end204

if.end204.critedge:                               ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #8
  %tap.c = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %122, i32 0, i32 1
  %134 = ptrtoint ptr %tap.c to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tap.c, align 4
  %scc_tappos.c = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 10
  %136 = ptrtoint ptr %scc_tappos.c to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %scc_tappos.c, align 4
  %tap_hs400_4tap.c = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %122, i32 0, i32 2
  %cond198.in.c = select i1 %125, ptr %tap_hs400_4tap.c, ptr %tap.c
  %137 = ptrtoint ptr %cond198.in.c to i32
  call void @__asan_load4_noabort(i32 %137)
  %cond198.c = load i32, ptr %cond198.in.c, align 4
  %scc_tappos_hs400.c = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 11
  %138 = ptrtoint ptr %scc_tappos_hs400.c to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %cond198.c, ptr %scc_tappos_hs400.c, align 4
  br label %if.end204

if.end204.critedge418:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tap.c419 = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %122, i32 0, i32 1
  %139 = ptrtoint ptr %tap.c419 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tap.c419, align 4
  %scc_tappos.c420 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 10
  %141 = ptrtoint ptr %scc_tappos.c420 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %scc_tappos.c420, align 4
  %tap_hs400_4tap.c421 = getelementptr inbounds %struct.renesas_sdhi_scc, ptr %122, i32 0, i32 2
  %cond198.in.c422 = select i1 %125, ptr %tap_hs400_4tap.c421, ptr %tap.c419
  %142 = ptrtoint ptr %cond198.in.c422 to i32
  call void @__asan_load4_noabort(i32 %142)
  %cond198.c423 = load i32, ptr %cond198.in.c422, align 4
  %scc_tappos_hs400.c424 = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 11
  %143 = ptrtoint ptr %scc_tappos_hs400.c424 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %cond198.c423, ptr %scc_tappos_hs400.c424, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.end204.critedge418, %if.end204.critedge, %do.end
  %144 = ptrtoint ptr %call49 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call49, align 4
  %146 = ptrtoint ptr %scc_offset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %scc_offset, align 4
  %add.ptr206 = getelementptr i8, ptr %145, i32 %147
  %scc_ctl = getelementptr inbounds %struct.renesas_sdhi, ptr %call.i, i32 0, i32 9
  %148 = ptrtoint ptr %scc_ctl to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %add.ptr206, ptr %scc_ctl, align 4
  %check_retune = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 38
  %149 = ptrtoint ptr %check_retune to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @renesas_sdhi_check_scc_error, ptr %check_retune, align 4
  %execute_tuning = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 5, i32 12
  %150 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @renesas_sdhi_execute_tuning, ptr %execute_tuning, align 4
  %prepare_hs400_tuning = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 5, i32 13
  %151 = ptrtoint ptr %prepare_hs400_tuning to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @renesas_sdhi_prepare_hs400_tuning, ptr %prepare_hs400_tuning, align 4
  %hs400_downgrade = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 5, i32 16
  %152 = ptrtoint ptr %hs400_downgrade to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @renesas_sdhi_disable_scc, ptr %hs400_downgrade, align 4
  %hs400_complete = getelementptr inbounds %struct.tmio_mmc_host, ptr %call49, i32 0, i32 5, i32 17
  %153 = ptrtoint ptr %hs400_complete to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @renesas_sdhi_hs400_complete, ptr %hs400_complete, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.end204, %lor.lhs.false.if.end211_crit_edge, %land.lhs.true166.if.end211_crit_edge, %if.end164.if.end211_crit_edge
  %call212 = tail call i32 @tmio_mmc_host_probe(ptr noundef %call49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %cmp213 = icmp slt i32 %call212, 0
  br i1 %cmp213, label %if.end211.edisclk_crit_edge, label %if.end216

if.end211.edisclk_crit_edge:                      ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %edisclk

if.end216:                                        ; preds = %if.end211
  %call217 = tail call i32 @platform_irq_count(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.end216.eirq_crit_edge, label %if.end221

if.end216.eirq_crit_edge:                         ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %eirq

if.end221:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool222.not = icmp eq i32 %call217, 0
  br i1 %tobool222.not, label %if.end221.eirq_crit_edge, label %for.body228.lr.ph

if.end221.eirq_crit_edge:                         ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %eirq

for.body228.lr.ph:                                ; preds = %if.end221
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body228

for.cond225:                                      ; preds = %dev_name.exit
  %inc242 = add nuw nsw i32 %i.1444, 1
  %exitcond445.not = icmp eq i32 %inc242, %call217
  br i1 %exitcond445.not, label %do.end246, label %for.cond225.for.body228_crit_edge

for.cond225.for.body228_crit_edge:                ; preds = %for.cond225
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body228

for.body228:                                      ; preds = %for.cond225.for.body228_crit_edge, %for.body228.lr.ph
  %i.1444 = phi i32 [ 0, %for.body228.lr.ph ], [ %inc242, %for.cond225.for.body228_crit_edge ]
  %call229 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.1444) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %for.body228.eirq_crit_edge, label %if.end233

for.body228.eirq_crit_edge:                       ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #8
  br label %eirq

if.end233:                                        ; preds = %for.body228
  %154 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %155, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end233.dev_name.exit_crit_edge

if.end233.dev_name.exit_crit_edge:                ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end233.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %157, %if.end.i ], [ %155, %if.end233.dev_name.exit_crit_edge ]
  %call.i431 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call229, ptr noundef nonnull @tmio_mmc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %call49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i431)
  %tobool238.not = icmp eq i32 %call.i431, 0
  br i1 %tobool238.not, label %for.cond225, label %dev_name.exit.eirq_crit_edge

dev_name.exit.eirq_crit_edge:                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %eirq

do.end246:                                        ; preds = %for.cond225
  %158 = ptrtoint ptr %mmc82 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmc82, align 4
  %init_name.i432 = getelementptr inbounds %struct.mmc_host, ptr %159, i32 0, i32 1, i32 3
  %160 = ptrtoint ptr %init_name.i432 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %init_name.i432, align 8
  %tobool.not.i433 = icmp eq ptr %161, null
  br i1 %tobool.not.i433, label %if.end.i434, label %do.end246.dev_name.exit436_crit_edge

do.end246.dev_name.exit436_crit_edge:             ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit436

if.end.i434:                                      ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %159, i32 0, i32 1
  %162 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit436

dev_name.exit436:                                 ; preds = %if.end.i434, %do.end246.dev_name.exit436_crit_edge
  %retval.0.i435 = phi ptr [ %163, %if.end.i434 ], [ %161, %do.end246.dev_name.exit436_crit_edge ]
  %f_max252 = getelementptr inbounds %struct.mmc_host, ptr %159, i32 0, i32 6
  %164 = ptrtoint ptr %f_max252 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %f_max252, align 8
  %div = udiv i32 %165, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i435, ptr noundef nonnull %call, i32 noundef %div) #9
  br label %cleanup

eirq:                                             ; preds = %dev_name.exit.eirq_crit_edge, %for.body228.eirq_crit_edge, %if.end221.eirq_crit_edge, %if.end216.eirq_crit_edge
  %ret.1 = phi i32 [ %call217, %if.end216.eirq_crit_edge ], [ -6, %if.end221.eirq_crit_edge ], [ %call229, %for.body228.eirq_crit_edge ], [ %call.i431, %dev_name.exit.eirq_crit_edge ]
  tail call void @tmio_mmc_host_remove(ptr noundef %call49) #6
  br label %edisclk

edisclk:                                          ; preds = %eirq, %if.end211.edisclk_crit_edge
  %ret.2 = phi i32 [ %call212, %if.end211.edisclk_crit_edge ], [ %ret.1, %eirq ]
  tail call void @renesas_sdhi_clk_disable(ptr noundef %call49)
  br label %efree

efree:                                            ; preds = %edisclk, %if.end103.efree_crit_edge
  %ret.3 = phi i32 [ %call118, %if.end103.efree_crit_edge ], [ %ret.2, %edisclk ]
  tail call void @tmio_mmc_host_free(ptr noundef %call49) #6
  br label %cleanup

cleanup:                                          ; preds = %efree, %dev_name.exit436, %if.then126, %if.then51, %if.then33, %if.then23, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then13 ], [ %call27, %if.then23 ], [ %call37, %if.then33 ], [ %14, %if.then51 ], [ %ret.3, %efree ], [ %91, %if.then126 ], [ 0, %dev_name.exit436 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tmio_mmc_host_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_write16_hook(ptr nocapture noundef readonly %host, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %addr, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge6
    i32 10, label %entry.sw.bb_crit_edge7
    i32 38, label %entry.sw.bb_crit_edge8
    i32 40, label %entry.sw.bb_crit_edge9
    i32 52, label %entry.sw.bb_crit_edge10
    i32 216, label %entry.sw.bb_crit_edge11
    i32 228, label %entry.sw.bb_crit_edge12
    i32 36, label %entry.sw.bb1.thread_crit_edge
  ]

entry.sw.bb1.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.thread

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %1 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdata, align 4
  %flags = getelementptr inbounds %struct.tmio_mmc_data, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.bb1.thread_crit_edge, label %sw.bb.sw.bb1_crit_edge

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

sw.bb.sw.bb1.thread_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.thread

sw.bb1.thread:                                    ; preds = %sw.bb.sw.bb1.thread_crit_edge, %entry.sw.bb1.thread_crit_edge
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb1.thread, %sw.bb.sw.bb1_crit_edge
  %bit.05 = phi i32 [ 536870912, %sw.bb1.thread ], [ 1073741824, %sw.bb.sw.bb1_crit_edge ]
  %5 = phi i32 [ 0, %sw.bb1.thread ], [ 1073741824, %sw.bb.sw.bb1_crit_edge ]
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %sw.bb1
  %dec7.i = phi i32 [ 999, %sw.bb1 ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %8 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 28, %9
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %shl.i.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %13 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_shift.i.i, align 4
  %shl3.i.i = shl i32 30, %14
  %add.ptr4.i.i = getelementptr i8, ptr %12, i32 %shl3.i.i
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %16 = zext i16 %15 to i32
  %17 = shl i32 %16, 24
  %and.i = and i32 %17, %bit.05
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp1.i = icmp eq i32 %and.i, %5
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %dec.i = add nsw i32 %dec7.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.critedge.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

do.end.critedge.i:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 12
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.16) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.critedge.i, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %do.end.critedge.i ], [ 0, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_clk_enable(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -12
  %clk_cd = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %clk_cd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_cd, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %10 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3, ptr %f_max, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call7 = tail call i32 @clk_round_rate(ptr noundef %12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %call7)
  %cmp9 = icmp sgt i32 %call7, 1023
  %div = sdiv i32 %call7, 512
  %cond = select i1 %cmp9, i32 %div, i32 1
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %f_min, align 4
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %16 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 226, %17
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %shl.i.i
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !60
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %19, label %if.end5.cleanup_crit_edge [
    i16 18700, label %if.end5.sw.epilog.i_crit_edge
    i16 -13555, label %sw.bb2.i
    i16 -13296, label %if.end5.sw.bb6.i_crit_edge
    i16 -13040, label %if.end5.sw.bb6.i_crit_edge23
  ]

if.end5.sw.bb6.i_crit_edge23:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.end5.sw.bb6.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.end5.sw.epilog.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end5.sw.bb6.i_crit_edge, %if.end5.sw.bb6.i_crit_edge23
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb2.i, %if.end5.sw.epilog.i_crit_edge
  %val.0.i = phi i16 [ 256, %sw.bb2.i ], [ 256, %sw.bb6.i ], [ 0, %if.end5.sw.epilog.i_crit_edge ]
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %21 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.i.if.end.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog.i
  %call.i.i = tail call i32 %22(ptr noundef %host, i32 noundef 228) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.cleanup_crit_edge

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.epilog.i.if.end.i.i_crit_edge
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %25 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i22.i = shl i32 228, %26
  %add.ptr.i23.i = getelementptr i8, ptr %24, i32 %shl.i22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23.i, i16 %val.0.i) #6, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_clk_disable(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %clk_cd = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %clk_cd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_cd, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_set_clock(ptr noundef %host, i32 noundef %new_clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %bus_shift.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %2 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 36, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %5 = and i16 %4, -2
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %6 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 %7(ptr noundef %host, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %10 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_shift.i, align 4
  %shl.i63 = shl i32 36, %11
  %add.ptr.i64 = getelementptr i8, ptr %9, i32 %shl.i63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i64, i16 %5) #6, !srcloc !63
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_clock)
  %cmp = icmp eq i32 %new_clock, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 4
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 58
  %14 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %actual_clock, align 8
  br label %out

if.end:                                           ; preds = %sd_ctrl_write16.exit
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %15 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %16, i32 -12
  %17 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i65, align 4
  %flags.i = getelementptr inbounds %struct.tmio_mmc_data, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i66 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i66, label %if.end.renesas_sdhi_clk_update.exit_crit_edge, label %lor.lhs.false.i

if.end.renesas_sdhi_clk_update.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_clk_update.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %mmc.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc.i, align 4
  %doing_retune.i.i = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 29
  %23 = ptrtoint ptr %doing_retune.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i.i = load i16, ptr %doing_retune.i.i, align 8
  %24 = and i16 %bf.load.i.i, 10240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %.not.i = icmp eq i16 %24, 0
  br i1 %.not.i, label %if.end.i67, label %lor.lhs.false.i.renesas_sdhi_clk_update.exit_crit_edge

lor.lhs.false.i.renesas_sdhi_clk_update.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_clk_update.exit

if.end.i67:                                       ; preds = %lor.lhs.false.i
  %clkh.i = getelementptr i8, ptr %16, i32 -8
  %25 = ptrtoint ptr %clkh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clkh.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %if.end.i67.if.end25.i_crit_edge, label %if.then5.i

if.end.i67.if.end25.i_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then5.i:                                       ; preds = %if.end.i67
  %quirks.i = getelementptr i8, ptr %16, i32 144
  %27 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %quirks.i, align 4
  %tobool6.not.i = icmp eq ptr %28, null
  br i1 %tobool6.not.i, label %if.then5.i.land.end.i_crit_edge, label %land.rhs.i

if.then5.i.land.end.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %hs400_4taps.i = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %hs400_4taps.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hs400_4taps.i, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool8.i = icmp ne i8 %30, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.then5.i.land.end.i_crit_edge
  %31 = phi i1 [ false, %if.then5.i.land.end.i_crit_edge ], [ %tobool8.i, %land.rhs.i ]
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 28, i32 7
  %32 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %timing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %33)
  %cmp.i = icmp eq i8 %33, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %33)
  %cmp15.i = icmp eq i8 %33, 10
  %spec.select.i = or i1 %cmp.i, %cmp15.i
  %spec.select124.i = select i1 %31, i1 %spec.select.i, i1 false
  %cond.i = select i1 %spec.select124.i, i32 1, i32 2
  br label %if.end25.i

if.end25.i:                                       ; preds = %land.end.i, %if.end.i67.if.end25.i_crit_edge
  %ref_clk.0.i = phi ptr [ %26, %land.end.i ], [ %18, %if.end.i67.if.end25.i_crit_edge ]
  %clkh_shift.0.i = phi i32 [ %cond.i, %land.end.i ], [ 0, %if.end.i67.if.end25.i_crit_edge ]
  %shl.i68 = shl i32 %new_clock, %clkh_shift.0.i
  %div.i = udiv i32 -1, %shl.i68
  %34 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 false) #6, !range !64
  %cond37.i = sub nsw i32 31, %34
  %35 = tail call i32 @llvm.smin.i32(i32 %cond37.i, i32 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp45128.i = icmp sgt i32 %35, -1
  br i1 %cmp45128.i, label %if.end25.i.for.body.i_crit_edge, label %if.end25.i.for.end.i_crit_edge

if.end25.i.for.end.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.i.for.body.i_crit_edge
  %i.0131.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %35, %if.end25.i.for.body.i_crit_edge ]
  %diff_min.0130.i = phi i32 [ %diff_min.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %if.end25.i.for.body.i_crit_edge ]
  %best_freq.0129.i = phi i32 [ %best_freq.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end25.i.for.body.i_crit_edge ]
  %shl47.i = shl i32 %shl.i68, %i.0131.i
  %call48.i = tail call i32 @clk_round_rate(ptr noundef %ref_clk.0.i, i32 noundef %shl47.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call48.i, i32 %shl47.i)
  %cmp50.i = icmp ugt i32 %call48.i, %shl47.i
  br i1 %cmp50.i, label %if.then52.i, label %for.body.i.if.end61.i_crit_edge

for.body.i.if.end61.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.then52.i:                                      ; preds = %for.body.i
  %div54121.i = lshr i32 %shl47.i, 2
  %mul.i = mul nuw i32 %div54121.i, 3
  %call55.i = tail call i32 @clk_round_rate(ptr noundef %ref_clk.0.i, i32 noundef %mul.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call55.i, i32 %shl47.i)
  %cmp57.i = icmp ugt i32 %call55.i, %shl47.i
  br i1 %cmp57.i, label %if.then52.i.for.inc.i_crit_edge, label %if.then52.i.if.end61.i_crit_edge

if.then52.i.if.end61.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.then52.i.for.inc.i_crit_edge:                  ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end61.i:                                       ; preds = %if.then52.i.if.end61.i_crit_edge, %for.body.i.if.end61.i_crit_edge
  %freq.0.i = phi i32 [ %call55.i, %if.then52.i.if.end61.i_crit_edge ], [ %call48.i, %for.body.i.if.end61.i_crit_edge ]
  %shr.i = lshr i32 %freq.0.i, %i.0131.i
  %sub62.i = sub i32 %shl.i68, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub62.i, i32 %diff_min.0130.i)
  %cmp63.not.i = icmp ugt i32 %sub62.i, %diff_min.0130.i
  %spec.select122.i = select i1 %cmp63.not.i, i32 %best_freq.0129.i, i32 %freq.0.i
  %36 = tail call i32 @llvm.umin.i32(i32 %sub62.i, i32 %diff_min.0130.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end61.i, %if.then52.i.for.inc.i_crit_edge
  %best_freq.1.i = phi i32 [ %best_freq.0129.i, %if.then52.i.for.inc.i_crit_edge ], [ %spec.select122.i, %if.end61.i ]
  %diff_min.1.i = phi i32 [ %diff_min.0130.i, %if.then52.i.for.inc.i_crit_edge ], [ %36, %if.end61.i ]
  %dec.i = add nsw i32 %i.0131.i, -1
  %cmp45.i = icmp sgt i32 %i.0131.i, 0
  br i1 %cmp45.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end25.i.for.end.i_crit_edge
  %best_freq.0.lcssa.i = phi i32 [ 0, %if.end25.i.for.end.i_crit_edge ], [ %best_freq.1.i, %for.inc.i.for.end.i_crit_edge ]
  %call67.i = tail call i32 @clk_set_rate(ptr noundef %ref_clk.0.i, i32 noundef %best_freq.0.lcssa.i) #6
  %37 = ptrtoint ptr %clkh.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clkh.i, align 4
  %tobool69.not.i = icmp eq ptr %38, null
  br i1 %tobool69.not.i, label %for.end.i.if.end74.i_crit_edge, label %if.then70.i

for.end.i.if.end74.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i

if.then70.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i65, align 4
  %shr72.i = lshr i32 %best_freq.0.lcssa.i, %clkh_shift.0.i
  %call73.i = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %shr72.i) #6
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then70.i, %for.end.i.if.end74.i_crit_edge
  %41 = ptrtoint ptr %add.ptr.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i65, align 4
  br label %renesas_sdhi_clk_update.exit

renesas_sdhi_clk_update.exit:                     ; preds = %if.end74.i, %lor.lhs.false.i.renesas_sdhi_clk_update.exit_crit_edge, %if.end.renesas_sdhi_clk_update.exit_crit_edge
  %.sink.i = phi ptr [ %42, %if.end74.i ], [ %18, %lor.lhs.false.i.renesas_sdhi_clk_update.exit_crit_edge ], [ %18, %if.end.renesas_sdhi_clk_update.exit_crit_edge ]
  %call76.i = tail call i32 @clk_get_rate(ptr noundef %.sink.i) #6
  %mmc4 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %43 = ptrtoint ptr %mmc4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc4, align 4
  %actual_clock5 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 58
  %45 = ptrtoint ptr %actual_clock5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call76.i, ptr %actual_clock5, align 8
  %46 = load ptr, ptr %mmc4, align 4
  %actual_clock7 = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 58
  %47 = ptrtoint ptr %actual_clock7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual_clock7, align 8
  %div61 = lshr i32 %48, 9
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %renesas_sdhi_clk_update.exit
  %clk.0 = phi i32 [ -2147483520, %renesas_sdhi_clk_update.exit ], [ %shr, %for.cond.for.cond_crit_edge ]
  %clock.0 = phi i32 [ %div61, %renesas_sdhi_clk_update.exit ], [ %shl, %for.cond.for.cond_crit_edge ]
  %shl = shl i32 %clock.0, 1
  %cmp8.not = icmp ugt i32 %shl, %new_clock
  %shr = lshr i32 %clk.0, 1
  br i1 %cmp8.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdata.i, align 4
  %flags = getelementptr inbounds %struct.tmio_mmc_data, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and11 = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  %53 = and i32 %clk.0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool14.not = icmp eq i32 %53, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %for.end.if.end23_crit_edge, label %if.then15

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %timing = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 28, i32 7
  %54 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %55)
  %cmp18 = icmp eq i8 %55, 10
  %spec.select = select i1 %cmp18, i32 0, i32 255
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %for.end.if.end23_crit_edge
  %clk.1 = phi i32 [ %clk.0, %for.end.if.end23_crit_edge ], [ %spec.select, %if.then15 ]
  %56 = trunc i32 %clk.1 to i16
  %57 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i70 = icmp eq ptr %58, null
  br i1 %tobool.not.i70, label %if.end23.if.end.i77_crit_edge, label %land.lhs.true.i73

if.end23.if.end.i77_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i77

land.lhs.true.i73:                                ; preds = %if.end23
  %call.i71 = tail call i32 %58(ptr noundef %host, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool2.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool2.not.i72, label %land.lhs.true.i73.if.end.i77_crit_edge, label %land.lhs.true.i73.sd_ctrl_write16.exit78_crit_edge

land.lhs.true.i73.sd_ctrl_write16.exit78_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit78

land.lhs.true.i73.if.end.i77_crit_edge:           ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i77

if.end.i77:                                       ; preds = %land.lhs.true.i73.if.end.i77_crit_edge, %if.end23.if.end.i77_crit_edge
  %59 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host, align 4
  %61 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bus_shift.i, align 4
  %shl.i75 = shl i32 36, %62
  %add.ptr.i76 = getelementptr i8, ptr %60, i32 %shl.i75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %conv25 = shl i16 %56, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i76, i16 %conv25) #6, !srcloc !63
  br label %sd_ctrl_write16.exit78

sd_ctrl_write16.exit78:                           ; preds = %if.end.i77, %land.lhs.true.i73.sd_ctrl_write16.exit78_crit_edge
  %63 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdata.i, align 4
  %flags27 = getelementptr inbounds %struct.tmio_mmc_data, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags27, align 4
  %and28 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %sd_ctrl_write16.exit78.if.end31_crit_edge

sd_ctrl_write16.exit78.if.end31_crit_edge:        ; preds = %sd_ctrl_write16.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %sd_ctrl_write16.exit78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %sd_ctrl_write16.exit78.if.end31_crit_edge
  %67 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %host, align 4
  %69 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bus_shift.i, align 4
  %shl.i80 = shl i32 36, %70
  %add.ptr.i81 = getelementptr i8, ptr %68, i32 %shl.i80
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i81) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %72 = or i16 %71, 1
  %73 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i83 = icmp eq ptr %74, null
  br i1 %tobool.not.i83, label %if.end31.if.end.i90_crit_edge, label %land.lhs.true.i86

if.end31.if.end.i90_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i90

land.lhs.true.i86:                                ; preds = %if.end31
  %call.i84 = tail call i32 %74(ptr noundef %host, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool2.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool2.not.i85, label %land.lhs.true.i86.if.end.i90_crit_edge, label %land.lhs.true.i86.out_crit_edge

land.lhs.true.i86.out_crit_edge:                  ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true.i86.if.end.i90_crit_edge:           ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i90

if.end.i90:                                       ; preds = %land.lhs.true.i86.if.end.i90_crit_edge, %if.end31.if.end.i90_crit_edge
  %75 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %host, align 4
  %77 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bus_shift.i, align 4
  %shl.i88 = shl i32 36, %78
  %add.ptr.i89 = getelementptr i8, ptr %76, i32 %shl.i88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i89, i16 %72) #6, !srcloc !63
  br label %out

out:                                              ; preds = %if.end.i90, %land.lhs.true.i86.out_crit_edge, %if.then
  %pdata36 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %79 = ptrtoint ptr %pdata36 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdata36, align 4
  %flags37 = getelementptr inbounds %struct.tmio_mmc_data, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags37, align 4
  %and38 = and i32 %82, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %out.if.end41_crit_edge

out.if.end41_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %out.if.end41_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @renesas_sdhi_multi_io_quirk(ptr nocapture noundef readnone %card, i32 noundef %direction, i32 noundef %blk_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %direction)
  %cmp = icmp eq i32 %direction, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %blk_size)
  %cmp1 = icmp eq i32 %blk_size, 2
  %or.cond = and i1 %cmp, %cmp1
  %retval.0 = select i1 %or.cond, i32 1, i32 %blk_size
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_ro(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_card_busy(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %bus_shift.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 28, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %7 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_shift.i, align 4
  %shl3.i = shl i32 30, %8
  %add.ptr4.i = getelementptr i8, ptr %6, i32 %shl3.i
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %10 = xor i16 %9, -1
  %11 = lshr i16 %10, 15
  %12 = zext i16 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_start_signal_voltage_switch(ptr nocapture noundef readonly %mmc, ptr noundef %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %2 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_voltage, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 156, %sw.bb1 ], [ 152, %entry.sw.epilog_crit_edge ]
  %pins_uhs = getelementptr i8, ptr %1, i32 %.sink
  %5 = ptrtoint ptr %pins_uhs to i32
  call void @__asan_load4_noabort(i32 %5)
  %pin_state.0 = load ptr, ptr %pins_uhs, align 4
  %pinctrl = getelementptr i8, ptr %1, i32 148
  %6 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinctrl, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %cmp.i28 = icmp ugt ptr %pin_state.0, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i28
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %cond = select i1 %cmp, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %mmc9 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %mmc9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc9, align 4
  %call10 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %9, ptr noundef %ios) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pinctrl, align 4
  %call16 = tail call i32 @pinctrl_select_state(ptr noundef %11, ptr noundef %pin_state.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then ], [ %call16, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %rstc = getelementptr i8, ptr %1, i32 196
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @reset_control_reset(ptr noundef nonnull %3) #6
  %call2 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call2, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 577) #6
  %4 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc, align 4
  %call1276 = tail call i32 @reset_control_status(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1276)
  %cmp1377 = icmp eq i32 %call1276, 0
  br i1 %cmp1377, label %if.then.for.end_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then25

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rstc, align 4
  %call22 = tail call i32 @reset_control_status(ptr noundef %7) #6
  br label %for.end

if.then25:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #6
  %8 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstc, align 4
  %call12 = tail call i32 @reset_control_status(ptr noundef %9) #6
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then25.for.end_crit_edge, label %if.then25.land.lhs.true_crit_edge

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.then25.for.end_crit_edge, %if.then20, %if.then.for.end_crit_edge
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %10 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %land.lhs.true.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end
  %call.i = tail call i32 %11(ptr noundef %host, i32 noundef 224) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %bus_shift.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %14 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 224, %15
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 256) #6, !srcloc !63
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  %needs_adjust_hs400 = getelementptr i8, ptr %1, i32 176
  %16 = ptrtoint ptr %needs_adjust_hs400 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %needs_adjust_hs400, align 4
  %clk_cache = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 24
  %17 = ptrtoint ptr %clk_cache to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_cache, align 4
  tail call void @renesas_sdhi_set_clock(ptr noundef %host, i32 noundef %18)
  br label %if.end32

if.else:                                          ; preds = %entry
  %scc_ctl = getelementptr i8, ptr %1, i32 160
  %19 = ptrtoint ptr %scc_ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scc_ctl, align 4
  %tobool29.not = icmp eq ptr %20, null
  br i1 %tobool29.not, label %if.else.if.end32_crit_edge, label %if.then30

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc.i, align 4
  tail call void @renesas_sdhi_disable_scc(ptr noundef %22) #6
  tail call fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %host, ptr noundef %add.ptr) #6
  %needs_adjust_hs400.i = getelementptr i8, ptr %1, i32 176
  %23 = ptrtoint ptr %needs_adjust_hs400.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %needs_adjust_hs400.i, align 4
  %24 = ptrtoint ptr %scc_ctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scc_ctl, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %26 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 8, %27
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %shl.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %29 = and i32 %28, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %scc_ctl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scc_ctl, align 4
  %32 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i9.i = shl i32 8, %33
  %add.ptr.i10.i = getelementptr i8, ptr %31, i32 %shl.i9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %29) #6, !srcloc !68
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else.if.end32_crit_edge, %sd_ctrl_write16.exit
  %34 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host, align 4
  %bus_shift.i60 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %36 = ptrtoint ptr %bus_shift.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bus_shift.i60, align 4
  %shl.i61 = shl i32 226, %37
  %add.ptr.i62 = getelementptr i8, ptr %35, i32 %shl.i61
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i62) #6, !srcloc !60
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13297, i16 %39)
  %cmp34 = icmp ugt i16 %39, -13297
  br i1 %cmp34, label %if.then36, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then36:                                        ; preds = %if.end32
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host, align 4
  %42 = ptrtoint ptr %bus_shift.i60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bus_shift.i60, align 4
  %shl.i64 = shl i32 40, %43
  %add.ptr.i65 = getelementptr i8, ptr %41, i32 %shl.i64
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i65) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %45 = or i16 %44, 2
  %write16_hook.i66 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %46 = ptrtoint ptr %write16_hook.i66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16_hook.i66, align 4
  %tobool.not.i67 = icmp eq ptr %47, null
  br i1 %tobool.not.i67, label %if.then36.if.end.i74_crit_edge, label %land.lhs.true.i70

if.then36.if.end.i74_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i74

land.lhs.true.i70:                                ; preds = %if.then36
  %call.i68 = tail call i32 %47(ptr noundef %host, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool2.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool2.not.i69, label %land.lhs.true.i70.if.end.i74_crit_edge, label %land.lhs.true.i70.if.end40_crit_edge

land.lhs.true.i70.if.end40_crit_edge:             ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true.i70.if.end.i74_crit_edge:           ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i74

if.end.i74:                                       ; preds = %land.lhs.true.i70.if.end.i74_crit_edge, %if.then36.if.end.i74_crit_edge
  %48 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host, align 4
  %50 = ptrtoint ptr %bus_shift.i60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bus_shift.i60, align 4
  %shl.i72 = shl i32 40, %51
  %add.ptr.i73 = getelementptr i8, ptr %49, i32 %shl.i72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i73, i16 %45) #6, !srcloc !63
  br label %if.end40

if.end40:                                         ; preds = %if.end.i74, %land.lhs.true.i70.if.end40_crit_edge, %if.end32.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shdma_chan_filter(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_enable_dma(ptr noundef %host, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_shift = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %0 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_shift, align 4
  %conv = select i1 %enable, i16 512, i16 0
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %2 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 216) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %6 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift, align 4
  %shl.i = shl i32 216, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %conv) #6, !srcloc !63
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %cond = select i1 %cmp, i32 64, i32 32
  %cond4 = select i1 %enable, i32 %cond, i32 16
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %10 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_shift, align 4
  %shl.i.i = shl i32 226, %11
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !60
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %13, label %sd_ctrl_write16.exit.renesas_sdhi_sdbuf_width.exit_crit_edge [
    i16 18700, label %sw.bb.i
    i16 -13555, label %sw.bb2.i
    i16 -13296, label %sd_ctrl_write16.exit.sw.bb6.i_crit_edge
    i16 -13040, label %sd_ctrl_write16.exit.sw.bb6.i_crit_edge8
  ]

sd_ctrl_write16.exit.sw.bb6.i_crit_edge8:         ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

sd_ctrl_write16.exit.sw.bb6.i_crit_edge:          ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

sd_ctrl_write16.exit.renesas_sdhi_sdbuf_width.exit_crit_edge: ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sdbuf_width.exit

sw.bb.i:                                          ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond4)
  %cmp.i = icmp eq i32 %cond4, 32
  %cond.i = zext i1 %cmp.i to i16
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond4)
  %cmp3.i = icmp ne i32 %cond4, 32
  %cond5.i = zext i1 %cmp3.i to i16
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %sd_ctrl_write16.exit.sw.bb6.i_crit_edge, %sd_ctrl_write16.exit.sw.bb6.i_crit_edge8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond4)
  %switch.selectcmp.i = icmp eq i32 %cond4, 32
  %switch.select.i = select i1 %switch.selectcmp.i, i16 257, i16 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %cond4)
  %switch.selectcmp19.i = icmp eq i32 %cond4, 64
  %switch.select20.i = select i1 %switch.selectcmp19.i, i16 0, i16 %switch.select.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %val.0.i = phi i16 [ %cond5.i, %sw.bb2.i ], [ %cond.i, %sw.bb.i ], [ %switch.select20.i, %sw.bb6.i ]
  %15 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.i.if.end.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog.i
  %call.i.i = tail call i32 %16(ptr noundef %host, i32 noundef 228) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.renesas_sdhi_sdbuf_width.exit_crit_edge

land.lhs.true.i.i.renesas_sdhi_sdbuf_width.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_sdbuf_width.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.epilog.i.if.end.i.i_crit_edge
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %19 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bus_shift, align 4
  %shl.i22.i = shl i32 228, %20
  %add.ptr.i23.i = getelementptr i8, ptr %18, i32 %shl.i22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %21 = tail call i16 @llvm.bswap.i16(i16 %val.0.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23.i, i16 %21) #6, !srcloc !63
  br label %renesas_sdhi_sdbuf_width.exit

renesas_sdhi_sdbuf_width.exit:                    ; preds = %if.end.i.i, %land.lhs.true.i.i.renesas_sdhi_sdbuf_width.exit_crit_edge, %sd_ctrl_write16.exit.renesas_sdhi_sdbuf_width.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_fixup_request(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %needs_adjust_hs400 = getelementptr i8, ptr %1, i32 176
  %2 = ptrtoint ptr %needs_adjust_hs400 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %needs_adjust_hs400, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp = icmp eq i32 %7, 13
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %scc_ctl.i.i.i = getelementptr i8, ptr %1, i32 160
  %8 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %bus_shift.i.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %10 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i.i.i = shl i32 24, %11
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %14 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i9.i.i = shl i32 26, %15
  %add.ptr.i10.i.i = getelementptr i8, ptr %13, i32 %shl.i9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 165) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %18 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i13.i.i = shl i32 22, %19
  %add.ptr.i14.i.i = getelementptr i8, ptr %17, i32 %shl.i13.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 16777216) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %22 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i17.i.i = shl i32 22, %23
  %add.ptr.i18.i.i = getelementptr i8, ptr %21, i32 %shl.i17.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %26 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i.i13.i = shl i32 24, %27
  %add.ptr.i.i14.i = getelementptr i8, ptr %25, i32 %shl.i.i13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 637599744) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %30 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i3.i.i = shl i32 22, %31
  %add.ptr.i4.i.i = getelementptr i8, ptr %29, i32 %shl.i3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 16777216) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %34 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i7.i.i = shl i32 22, %35
  %add.ptr.i8.i.i = getelementptr i8, ptr %33, i32 %shl.i7.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #6, !srcloc !68
  %36 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %38 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i11.i.i = shl i32 28, %39
  %add.ptr.i12.i.i = getelementptr i8, ptr %37, i32 %shl.i11.i.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #6, !srcloc !65
  %41 = lshr i32 %40, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %and.i = and i32 %41, 31
  %adjust_hs400_calib_table.i = getelementptr i8, ptr %1, i32 172
  %42 = ptrtoint ptr %adjust_hs400_calib_table.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adjust_hs400_calib_table.i, align 4
  %arrayidx.i = getelementptr i8, ptr %43, i32 %and.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %46 = or i8 %45, -128
  %or.i = zext i8 %46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %49 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i.i17.i = shl i32 24, %50
  %add.ptr.i.i18.i = getelementptr i8, ptr %48, i32 %shl.i.i17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i, i32 570425344) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %51 = shl nuw i32 %or.i, 24
  %52 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %54 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i9.i19.i = shl i32 26, %55
  %add.ptr.i10.i20.i = getelementptr i8, ptr %53, i32 %shl.i9.i19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i20.i, i32 %51) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %58 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i13.i21.i = shl i32 22, %59
  %add.ptr.i14.i22.i = getelementptr i8, ptr %57, i32 %shl.i13.i21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i22.i, i32 16777216) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %62 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i17.i23.i = shl i32 22, %63
  %add.ptr.i18.i24.i = getelementptr i8, ptr %61, i32 %shl.i17.i23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i24.i, i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %66 = ptrtoint ptr %bus_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bus_shift.i.i.i, align 4
  %shl.i.i = shl i32 20, %67
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #6, !srcloc !68
  %68 = ptrtoint ptr %needs_adjust_hs400 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %needs_adjust_hs400, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_gen3_get_cycles(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %bus_shift.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %2 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 40, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !60
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %and = lshr i16 %5, 4
  %6 = and i16 %and, 15
  %7 = and i16 %5, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %cond = select i1 %tobool.not, i32 13, i32 14
  %conv4 = zext i16 %6 to i32
  %add = add nuw nsw i32 %cond, %conv4
  %shl = shl nuw nsw i32 1, %add
  ret i32 %shl
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @renesas_sdhi_check_scc_error(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %quirks = getelementptr i8, ptr %1, i32 144
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quirks, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hs400_4taps = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hs400_4taps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hs400_4taps, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2 = icmp ne i8 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  %mmc = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc, align 4
  %timing = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 28, i32 7
  %9 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %timing, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %10, label %land.end.cleanup_crit_edge [
    i8 6, label %land.end.if.end_crit_edge
    i8 9, label %land.end.if.end_crit_edge99
    i8 10, label %land.lhs.true17
  ]

land.end.if.end_crit_edge99:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true17:                                  ; preds = %land.end
  br i1 %6, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.if.end_crit_edge

land.lhs.true17.if.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true17.if.end_crit_edge, %land.end.if.end_crit_edge, %land.end.if.end_crit_edge99
  %doing_retune.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 29
  %12 = ptrtoint ptr %doing_retune.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %doing_retune.i, align 8
  %13 = and i16 %bf.load.i, 10240
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %.not = icmp eq i16 %13, 0
  br i1 %.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %17)
  %cmp22 = icmp eq i32 %17, -110
  br i1 %cmp22, label %if.end21.land.lhs.true30_crit_edge, label %lor.lhs.false

if.end21.land.lhs.true30_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true30

lor.lhs.false:                                    ; preds = %if.end21
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %lor.lhs.false.if.end46_crit_edge, label %land.lhs.true25

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %error27 = getelementptr inbounds %struct.mmc_data, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %error27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %21)
  %cmp28 = icmp eq i32 %21, -110
  br i1 %cmp28, label %land.lhs.true25.land.lhs.true30_crit_edge, label %land.lhs.true25.if.end46_crit_edge

land.lhs.true25.if.end46_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true25.land.lhs.true30_crit_edge:        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true25.land.lhs.true30_crit_edge, %if.end21.land.lhs.true30_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 16
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps, align 32
  %and = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %land.lhs.true30.if.then41_crit_edge

land.lhs.true30.if.then41_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

lor.lhs.false33:                                  ; preds = %land.lhs.true30
  %get_cd = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 5, i32 6
  %24 = ptrtoint ptr %get_cd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_cd, align 4
  %tobool34.not = icmp eq ptr %25, null
  br i1 %tobool34.not, label %lor.lhs.false33.if.end46_crit_edge, label %land.lhs.true35

lor.lhs.false33.if.end46_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true35:                                  ; preds = %lor.lhs.false33
  %call39 = tail call i32 %25(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true35.if.end46_crit_edge, label %land.lhs.true35.if.then41_crit_edge

land.lhs.true35.if.then41_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then41:                                        ; preds = %land.lhs.true35.if.then41_crit_edge, %land.lhs.true30.if.then41_crit_edge
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %land.lhs.true35.if.end46_crit_edge, %lor.lhs.false33.if.end46_crit_edge, %land.lhs.true25.if.end46_crit_edge, %lor.lhs.false.if.end46_crit_edge
  %ret.0.off0 = phi i32 [ 1, %if.then41 ], [ 0, %land.lhs.true35.if.end46_crit_edge ], [ 0, %lor.lhs.false33.if.end46_crit_edge ], [ 0, %land.lhs.true25.if.end46_crit_edge ], [ 0, %lor.lhs.false.if.end46_crit_edge ]
  %scc_ctl.i = getelementptr i8, ptr %1, i32 160
  %26 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scc_ctl.i, align 4
  %bus_shift.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %28 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 8, %29
  %add.ptr.i = getelementptr i8, ptr %27, i32 %shl.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool49.not = icmp eq i32 %31, 0
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata, align 4
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end46
  %scc_ctl.i.i = getelementptr i8, ptr %33, i32 160
  %34 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scc_ctl.i.i, align 4
  %36 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bus_shift.i, align 4
  %shl.i.i = shl i32 10, %37
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %shl.i.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %39 = and i32 %38, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %if.then50.renesas_sdhi_auto_correction.exit_crit_edge, label %if.then.i

if.then50.renesas_sdhi_auto_correction.exit_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_auto_correction.exit

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %scc_ctl.i.i, align 4
  %42 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bus_shift.i, align 4
  %shl.i6.i = shl i32 10, %43
  %add.ptr.i7.i = getelementptr i8, ptr %41, i32 %shl.i6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #6, !srcloc !68
  br label %renesas_sdhi_auto_correction.exit

renesas_sdhi_auto_correction.exit:                ; preds = %if.then.i, %if.then50.renesas_sdhi_auto_correction.exit_crit_edge
  %44 = xor i1 %tobool.not.i, true
  br label %if.end66

if.else:                                          ; preds = %if.end46
  %tap_set.i = getelementptr i8, ptr %33, i32 192
  %45 = ptrtoint ptr %tap_set.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tap_set.i, align 4
  %scc_ctl.i.i93 = getelementptr i8, ptr %33, i32 160
  %47 = ptrtoint ptr %scc_ctl.i.i93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %scc_ctl.i.i93, align 4
  %49 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bus_shift.i, align 4
  %shl.i.i95 = shl i32 10, %50
  %add.ptr.i.i96 = getelementptr i8, ptr %48, i32 %shl.i.i95
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i96) #6, !srcloc !65
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i97 = icmp eq i32 %51, 0
  br i1 %tobool.not.i97, label %if.else.if.end66_crit_edge, label %if.end.i

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end.i:                                         ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %scc_ctl.i.i93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scc_ctl.i.i93, align 4
  %55 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bus_shift.i, align 4
  %shl.i101.i = shl i32 10, %56
  %add.ptr.i102.i = getelementptr i8, ptr %54, i32 %shl.i101.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 0) #6, !srcloc !68
  %57 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host, align 4
  %59 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bus_shift.i, align 4
  %shl.i104.i = shl i32 226, %60
  %add.ptr.i105.i = getelementptr i8, ptr %58, i32 %shl.i104.i
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i105.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp2(i16 4301, i16 %61)
  %cmp.i = icmp eq i16 %61, 4301
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.else36.i_crit_edge

if.end.i.if.else36.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else36.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %62 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmc, align 4
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %63, i32 0, i32 28, i32 7
  %64 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %timing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %65)
  %cmp5.i = icmp eq i8 %65, 10
  br i1 %cmp5.i, label %if.then7.i, label %land.lhs.true.i.if.else36.i_crit_edge

land.lhs.true.i.if.else36.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else36.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %quirks.i = getelementptr i8, ptr %33, i32 144
  %66 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %quirks.i, align 4
  %tobool8.not.i = icmp eq ptr %67, null
  br i1 %tobool8.not.i, label %if.then7.i.cond.end.i_crit_edge, label %cond.true.i

if.then7.i.cond.end.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %hs400_bad_taps.i = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %hs400_bad_taps.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hs400_bad_taps.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then7.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %69, %cond.true.i ], [ 0, %if.then7.i.cond.end.i_crit_edge ]
  %70 = ptrtoint ptr %scc_ctl.i.i93 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %scc_ctl.i.i93, align 4
  %72 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bus_shift.i, align 4
  %shl.i108.i = shl i32 12, %73
  %add.ptr.i109.i = getelementptr i8, ptr %71, i32 %shl.i108.i
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %75 = and i32 %74, 65537
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %76, label %if.else22.i [
    i32 0, label %cond.end.i.if.end66_crit_edge
    i32 16777216, label %cond.end.i.if.end25.i_crit_edge
    i32 256, label %if.then19.i
  ]

cond.end.i.if.end25.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

cond.end.i.if.end66_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then19.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.else22.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end25.i:                                       ; preds = %if.then19.i, %cond.end.i.if.end25.i_crit_edge
  %.sink117.i = phi i32 [ -1, %if.then19.i ], [ 1, %cond.end.i.if.end25.i_crit_edge ]
  %.sink.i = phi i32 [ 1, %if.then19.i ], [ -1, %cond.end.i.if.end25.i_crit_edge ]
  %inc.i = add i32 %.sink117.i, %46
  %tap_num.i = getelementptr i8, ptr %33, i32 188
  %78 = ptrtoint ptr %tap_num.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tap_num.i, align 4
  %rem.i = urem i32 %inc.i, %79
  %shl.i98 = shl nuw i32 1, %rem.i
  %and26.i = and i32 %shl.i98, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end54.i_crit_edge, label %if.then28.i

if.end25.i.if.end54.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %.sink.i, %46
  %rem30.i = urem i32 %dec.i, %79
  %smpcmp31.i = getelementptr i8, ptr %33, i32 184
  %div3.i.i = lshr i32 %rem30.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %smpcmp31.i, i32 %div3.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %rem30.i, 31
  %82 = shl nuw i32 1, %and.i.i
  %83 = and i32 %82, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool33.i = icmp ne i32 %83, 0
  br label %if.end66

if.else36.i:                                      ; preds = %land.lhs.true.i.if.else36.i_crit_edge, %if.end.i.if.else36.i_crit_edge
  %and37.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.else40.i, label %if.else36.i.if.end66_crit_edge

if.else36.i.if.end66_crit_edge:                   ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else40.i:                                      ; preds = %if.else36.i
  %and41.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else45.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc44.i = add i32 %46, 1
  br label %if.end54.i

if.else45.i:                                      ; preds = %if.else40.i
  %and46.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else45.i.if.end66_crit_edge, label %if.then48.i

if.else45.i.if.end66_crit_edge:                   ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then48.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec49.i = add i32 %46, -1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then48.i, %if.then43.i, %if.end25.i.if.end54.i_crit_edge
  %new_tap.2.i = phi i32 [ %inc44.i, %if.then43.i ], [ %dec49.i, %if.then48.i ], [ %inc.i, %if.end25.i.if.end54.i_crit_edge ]
  %tap_num55.i = getelementptr i8, ptr %33, i32 188
  %84 = ptrtoint ptr %tap_num55.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tap_num55.i, align 4
  %rem56.i = urem i32 %new_tap.2.i, %85
  %86 = ptrtoint ptr %tap_set.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %rem56.i, ptr %tap_set.i, align 4
  %87 = zext i1 %6 to i32
  %div98.i = lshr i32 %rem56.i, %87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %88 = tail call i32 @llvm.bswap.i32(i32 %div98.i) #6
  %89 = ptrtoint ptr %scc_ctl.i.i93 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %scc_ctl.i.i93, align 4
  %91 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bus_shift.i, align 4
  %shl.i112.i = shl i32 2, %92
  %add.ptr.i113.i = getelementptr i8, ptr %90, i32 %shl.i112.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %88) #6, !srcloc !68
  br label %if.end66

if.end66:                                         ; preds = %if.end54.i, %if.else45.i.if.end66_crit_edge, %if.else36.i.if.end66_crit_edge, %if.then28.i, %if.else22.i, %cond.end.i.if.end66_crit_edge, %if.else.if.end66_crit_edge, %renesas_sdhi_auto_correction.exit
  %conv52.pn.in = phi i1 [ %44, %renesas_sdhi_auto_correction.exit ], [ false, %if.end54.i ], [ false, %if.else.if.end66_crit_edge ], [ true, %if.else36.i.if.end66_crit_edge ], [ false, %if.else45.i.if.end66_crit_edge ], [ false, %cond.end.i.if.end66_crit_edge ], [ true, %if.else22.i ], [ %tobool33.i, %if.then28.i ]
  %conv52.pn = zext i1 %conv52.pn.in to i32
  %ret.1.off0.in = or i32 %ret.0.off0, %conv52.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.off0.in)
  %ret.1.off0 = icmp ne i32 %ret.1.off0.in, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.1.off0, %if.end66 ], [ false, %land.end.cleanup_crit_edge ], [ false, %land.lhs.true17.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #0 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %sdcard_irq_setbit_mask.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 0, i32 1
  %2 = ptrtoint ptr %sdcard_irq_setbit_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdcard_irq_setbit_mask.i.i, align 4
  %conv.i.i = trunc i32 %3 to i16
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %bus_shift.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i = shl i32 28, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %8) #6, !srcloc !63
  %shr.i.i = lshr i32 %3, 16
  %conv2.i.i = trunc i32 %shr.i.i to i16
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  %11 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_shift.i.i, align 4
  %shl5.i.i = shl i32 30, %12
  %add.ptr6.i.i = getelementptr i8, ptr %10, i32 %shl5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i, i16 %13) #6, !srcloc !63
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i, align 4
  %16 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i31.i = shl i32 36, %17
  %add.ptr.i32.i = getelementptr i8, ptr %15, i32 %shl.i31.i
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i32.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %19 = and i16 %18, -2
  %write16_hook.i.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %private.i, i32 0, i32 36
  %20 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 %21(ptr noundef %private.i, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.sd_ctrl_write16.exit.i_crit_edge

land.lhs.true.i.i.sd_ctrl_write16.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 4
  %24 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i34.i = shl i32 36, %25
  %add.ptr.i35.i = getelementptr i8, ptr %23, i32 %shl.i34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i35.i, i16 %19) #6, !srcloc !63
  br label %sd_ctrl_write16.exit.i

sd_ctrl_write16.exit.i:                           ; preds = %if.end.i.i, %land.lhs.true.i.i.sd_ctrl_write16.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %scc_ctl.i.i = getelementptr i8, ptr %1, i32 160
  %26 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scc_ctl.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 16779264) #6, !srcloc !68
  %28 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scc_ctl.i.i, align 4
  %30 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i39.i = shl i32 6, %31
  %add.ptr.i40.i = getelementptr i8, ptr %29, i32 %shl.i39.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %33 = or i32 %32, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scc_ctl.i.i, align 4
  %36 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i43.i = shl i32 6, %37
  %add.ptr.i44.i = getelementptr i8, ptr %35, i32 %shl.i43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %33) #6, !srcloc !68
  %38 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %scc_ctl.i.i, align 4
  %40 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i47.i = shl i32 8, %41
  %add.ptr.i48.i = getelementptr i8, ptr %39, i32 %shl.i47.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %43 = and i32 %42, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %scc_ctl.i.i, align 4
  %46 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i51.i = shl i32 8, %47
  %add.ptr.i52.i = getelementptr i8, ptr %45, i32 %shl.i51.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %43) #6, !srcloc !68
  %scc_tappos.i = getelementptr i8, ptr %1, i32 164
  %48 = ptrtoint ptr %scc_tappos.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %scc_tappos.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  %51 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scc_ctl.i.i, align 4
  %53 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i55.i = shl i32 4, %54
  %add.ptr.i56.i = getelementptr i8, ptr %52, i32 %shl.i55.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %50) #6, !srcloc !68
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private.i, align 4
  %57 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i58.i = shl i32 36, %58
  %add.ptr.i59.i = getelementptr i8, ptr %56, i32 %shl.i58.i
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i59.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %60 = or i16 %59, 1
  %61 = ptrtoint ptr %write16_hook.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16_hook.i.i, align 4
  %tobool.not.i61.i = icmp eq ptr %62, null
  br i1 %tobool.not.i61.i, label %sd_ctrl_write16.exit.i.if.end.i68.i_crit_edge, label %land.lhs.true.i64.i

sd_ctrl_write16.exit.i.if.end.i68.i_crit_edge:    ; preds = %sd_ctrl_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i68.i

land.lhs.true.i64.i:                              ; preds = %sd_ctrl_write16.exit.i
  %call.i62.i = tail call i32 %62(ptr noundef %private.i, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool2.not.i63.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool2.not.i63.i, label %land.lhs.true.i64.i.if.end.i68.i_crit_edge, label %land.lhs.true.i64.i.renesas_sdhi_init_tuning.exit_crit_edge

land.lhs.true.i64.i.renesas_sdhi_init_tuning.exit_crit_edge: ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %renesas_sdhi_init_tuning.exit

land.lhs.true.i64.i.if.end.i68.i_crit_edge:       ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i68.i

if.end.i68.i:                                     ; preds = %land.lhs.true.i64.i.if.end.i68.i_crit_edge, %sd_ctrl_write16.exit.i.if.end.i68.i_crit_edge
  %63 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %private.i, align 4
  %65 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i66.i = shl i32 36, %66
  %add.ptr.i67.i = getelementptr i8, ptr %64, i32 %shl.i66.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i67.i, i16 %60) #6, !srcloc !63
  br label %renesas_sdhi_init_tuning.exit

renesas_sdhi_init_tuning.exit:                    ; preds = %if.end.i68.i, %land.lhs.true.i64.i.renesas_sdhi_init_tuning.exit_crit_edge
  %67 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %scc_ctl.i.i, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %70 = lshr i32 %69, 8
  %and10.i = and i32 %70, 255
  %tap_num = getelementptr i8, ptr %1, i32 188
  %71 = ptrtoint ptr %tap_num to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and10.i, ptr %tap_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not = icmp eq i32 %and10.i, 0
  br i1 %tobool.not, label %renesas_sdhi_init_tuning.exit.cleanup_crit_edge, label %if.end

renesas_sdhi_init_tuning.exit.cleanup_crit_edge:  ; preds = %renesas_sdhi_init_tuning.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %renesas_sdhi_init_tuning.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and10.i)
  %cmp = icmp ugt i32 %and10.i, 15
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mul = shl nuw nsw i32 %and10.i, 1
  %taps = getelementptr i8, ptr %1, i32 180
  %sub.i = add nuw nsw i32 %mul, 31
  %74 = lshr i32 %sub.i, 3
  %mul.i = and i32 %74, 124
  %75 = call ptr @memset(ptr %taps, i32 0, i32 %mul.i)
  %smpcmp = getelementptr i8, ptr %1, i32 184
  %76 = ptrtoint ptr %tap_num to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tap_num, align 4
  %mul10 = shl i32 %77, 1
  %sub.i65 = add i32 %mul10, 31
  %78 = lshr i32 %sub.i65, 3
  %mul.i66 = and i32 %78, 536870908
  %79 = call ptr @memset(ptr %smpcmp, i32 0, i32 %mul.i66)
  %80 = load i32, ptr %tap_num, align 4
  %mul1288.mask = and i32 %80, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1288.mask)
  %cmp1389.not = icmp eq i32 %mul1288.mask, 0
  br i1 %cmp1389.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %if.end30.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #6
  %81 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %cmd_error, align 4
  %82 = ptrtoint ptr %tap_num to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tap_num, align 4
  %rem = urem i32 %i.090, %83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  %84 = call i32 @llvm.bswap.i32(i32 %rem) #6
  %85 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %scc_ctl.i.i, align 4
  %87 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i = shl i32 2, %88
  %add.ptr.i = getelementptr i8, ptr %86, i32 %shl.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %84) #6, !srcloc !68
  %call15 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %i.090, ptr noundef %taps) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.body.if.end20_crit_edge
  %89 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %scc_ctl.i.i, align 4
  %91 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i69 = shl i32 12, %92
  %add.ptr.i70 = getelementptr i8, ptr %90, i32 %shl.i69
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp22 = icmp eq i32 %93, 0
  br i1 %cmp22, label %if.then23, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %i.090, ptr noundef %smpcmp) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %94 = ptrtoint ptr %cmd_error to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cmd_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool27.not = icmp eq i32 %95, 0
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = call i32 @mmc_send_abort_tuning(ptr noundef %mmc, i32 noundef %opcode) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #6
  %inc = add nuw i32 %i.090, 1
  %96 = ptrtoint ptr %tap_num to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tap_num, align 4
  %mul12 = shl i32 %97, 1
  %cmp13 = icmp ult i32 %inc, %mul12
  br i1 %cmp13, label %if.end30.for.body_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end30.for.end_crit_edge, %if.end5.for.end_crit_edge
  %98 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdata, align 4
  %tap_num.i = getelementptr i8, ptr %99, i32 188
  %100 = ptrtoint ptr %tap_num.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tap_num.i, align 4
  %mul.i72 = shl i32 %101, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  %scc_ctl.i.i73 = getelementptr i8, ptr %99, i32 160
  %102 = ptrtoint ptr %scc_ctl.i.i73 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %scc_ctl.i.i73, align 4
  %104 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i75 = shl i32 10, %105
  %add.ptr.i.i76 = getelementptr i8, ptr %103, i32 %shl.i.i75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76, i32 0) #6, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i72)
  %cmp122.not.i = icmp eq i32 %mul.i72, 0
  br i1 %cmp122.not.i, label %for.end.for.end.i_crit_edge, label %for.body.lr.ph.i

for.end.for.end.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.end
  %taps.i = getelementptr i8, ptr %99, i32 180
  %smpcmp.i = getelementptr i8, ptr %99, i32 184
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0123.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end14.i.for.body.i_crit_edge ]
  %106 = ptrtoint ptr %tap_num.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tap_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0123.i, i32 %107)
  %cmp3.i = icmp ult i32 %i.0123.i, %107
  %108 = sub i32 0, %107
  %109 = select i1 %cmp3.i, i32 %107, i32 %108
  %div3.i.i = lshr i32 %i.0123.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %taps.i, i32 %div3.i.i
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.0123.i, 31
  %112 = shl nuw i32 1, %and.i.i
  %113 = and i32 %111, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %109, %i.0123.i
  call void @_clear_bit(i32 noundef %add.i, ptr noundef %taps.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %arrayidx.i104.i = getelementptr i32, ptr %smpcmp.i, i32 %div3.i.i
  %114 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %arrayidx.i104.i, align 4
  %116 = and i32 %115, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool9.not.i = icmp eq i32 %116, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add11.i = add i32 %109, %i.0123.i
  call void @_clear_bit(i32 noundef %add11.i, ptr noundef %smpcmp.i) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end.i.if.end14.i_crit_edge
  %inc.i = add nuw i32 %i.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul.i72
  br i1 %exitcond.not.i, label %if.end14.i.for.end.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end14.i.for.end.i_crit_edge, %for.end.for.end.i_crit_edge
  %taps15.i = getelementptr i8, ptr %99, i32 180
  %call.i.i78 = call i32 @_find_first_zero_bit_be(ptr noundef %taps15.i, i32 noundef %mul.i72) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i78, i32 %mul.i72)
  %cmp4.i.i = icmp eq i32 %call.i.i78, %mul.i72
  %smpcmp19.i = getelementptr i8, ptr %99, i32 184
  %min_tap_row.0.i = select i1 %cmp4.i.i, i32 1, i32 3
  %bitmap.0.i = select i1 %cmp4.i.i, ptr %smpcmp19.i, ptr %taps15.i
  %call24.i = call i32 @_find_next_bit_be(ptr noundef %bitmap.0.i, i32 noundef %mul.i72, i32 noundef 0) #6
  %add25.i = add i32 %call24.i, 1
  %call26.i = call i32 @_find_next_zero_bit_be(ptr noundef %bitmap.0.i, i32 noundef %mul.i72, i32 noundef %add25.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call24.i, i32 %mul.i72)
  %cmp28124.i = icmp ult i32 %call24.i, %mul.i72
  br i1 %cmp28124.i, label %for.end.i.for.body29.i_crit_edge, label %for.end.i.if.then33_crit_edge

for.end.i.if.then33_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

for.end.i.for.body29.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.end.i.for.body29.i_crit_edge
  %re.0129.i = phi i32 [ %call38.i, %for.body29.i.for.body29.i_crit_edge ], [ %call26.i, %for.end.i.for.body29.i_crit_edge ]
  %rs.0128.i = phi i32 [ %call36.i, %for.body29.i.for.body29.i_crit_edge ], [ %call24.i, %for.end.i.for.body29.i_crit_edge ]
  %tap_cnt.0127.i = phi i32 [ %117, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %tap_end.0126.i = phi i32 [ %tap_end.1.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %tap_start.0125.i = phi i32 [ %tap_start.1.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %sub.i80 = sub i32 %re.0129.i, %rs.0128.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i80, i32 %tap_cnt.0127.i)
  %cmp30.i = icmp ugt i32 %sub.i80, %tap_cnt.0127.i
  %tap_start.1.i = select i1 %cmp30.i, i32 %rs.0128.i, i32 %tap_start.0125.i
  %tap_end.1.i = select i1 %cmp30.i, i32 %re.0129.i, i32 %tap_end.0126.i
  %117 = call i32 @llvm.umax.i32(i32 %sub.i80, i32 %tap_cnt.0127.i) #6
  %add35.i = add i32 %re.0129.i, 1
  %call36.i = call i32 @_find_next_bit_be(ptr noundef %bitmap.0.i, i32 noundef %mul.i72, i32 noundef %add35.i) #6
  %add37.i = add i32 %call36.i, 1
  %call38.i = call i32 @_find_next_zero_bit_be(ptr noundef %bitmap.0.i, i32 noundef %mul.i72, i32 noundef %add37.i) #6
  %cmp28.i = icmp ult i32 %call36.i, %mul.i72
  br i1 %cmp28.i, label %for.body29.i.for.body29.i_crit_edge, label %for.end39.i

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.i

for.end39.i:                                      ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %min_tap_row.0.i)
  %cmp40.not.i = icmp ult i32 %117, %min_tap_row.0.i
  br i1 %cmp40.not.i, label %for.end39.i.if.then33_crit_edge, label %renesas_sdhi_select_tuning.exit

for.end39.i.if.then33_crit_edge:                  ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

renesas_sdhi_select_tuning.exit:                  ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %add42.i = add i32 %tap_start.1.i, %tap_end.1.i
  %div102.i = lshr i32 %add42.i, 1
  %118 = ptrtoint ptr %tap_num.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tap_num.i, align 4
  %rem.i = urem i32 %div102.i, %119
  %tap_set.i = getelementptr i8, ptr %99, i32 192
  %120 = ptrtoint ptr %tap_set.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %rem.i, ptr %tap_set.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  %121 = call i32 @llvm.bswap.i32(i32 %rem.i) #6
  %122 = ptrtoint ptr %scc_ctl.i.i73 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %scc_ctl.i.i73, align 4
  %124 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i112.i = shl i32 2, %125
  %add.ptr.i113.i = getelementptr i8, ptr %123, i32 %shl.i112.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %121) #6, !srcloc !68
  %126 = ptrtoint ptr %scc_ctl.i.i73 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %scc_ctl.i.i73, align 4
  %128 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i116.i = shl i32 8, %129
  %add.ptr.i117.i = getelementptr i8, ptr %127, i32 %shl.i116.i
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.i) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %131 = or i32 %130, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  %132 = ptrtoint ptr %scc_ctl.i.i73 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %scc_ctl.i.i73, align 4
  %134 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i120.i = shl i32 8, %135
  %add.ptr.i121.i = getelementptr i8, ptr %133, i32 %shl.i120.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %131) #6, !srcloc !68
  br label %cleanup

if.then33:                                        ; preds = %for.end39.i.if.then33_crit_edge, %for.end.i.if.then33_crit_edge
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmc.i, align 4
  call void @renesas_sdhi_disable_scc(ptr noundef %137) #6
  call fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %private.i, ptr noundef %add.ptr) #6
  %needs_adjust_hs400.i = getelementptr i8, ptr %1, i32 176
  %138 = ptrtoint ptr %needs_adjust_hs400.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %needs_adjust_hs400.i, align 4
  %139 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %scc_ctl.i.i, align 4
  %141 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i.i83 = shl i32 8, %142
  %add.ptr.i.i84 = getelementptr i8, ptr %140, i32 %shl.i.i83
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84) #6, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %144 = and i32 %143, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %scc_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %scc_ctl.i.i, align 4
  %147 = ptrtoint ptr %bus_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bus_shift.i.i, align 4
  %shl.i9.i = shl i32 8, %148
  %add.ptr.i10.i = getelementptr i8, ptr %146, i32 %shl.i9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %144) #6, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %renesas_sdhi_select_tuning.exit, %do.end, %renesas_sdhi_init_tuning.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %renesas_sdhi_init_tuning.exit.cleanup_crit_edge ], [ -5, %if.then33 ], [ 0, %renesas_sdhi_select_tuning.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_prepare_hs400_tuning(ptr noundef %mmc, ptr nocapture noundef readnone %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  tail call fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %private.i, ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_disable_scc(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %bus_shift.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 36, %5
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %7 = and i16 %6, -2
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %private.i, i32 0, i32 36
  %8 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 %9(ptr noundef %private.i, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %12 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift.i, align 4
  %shl.i22 = shl i32 36, %13
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 %shl.i22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 %7) #6, !srcloc !63
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  %scc_ctl.i = getelementptr i8, ptr %1, i32 160
  %14 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scc_ctl.i, align 4
  %16 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_shift.i, align 4
  %shl.i25 = shl i32 6, %17
  %add.ptr.i26 = getelementptr i8, ptr %15, i32 %shl.i25
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scc_ctl.i, align 4
  %22 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_shift.i, align 4
  %shl.i29 = shl i32 6, %23
  %add.ptr.i30 = getelementptr i8, ptr %21, i32 %shl.i29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %19) #6, !srcloc !68
  %24 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scc_ctl.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %27 = and i32 %26, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scc_ctl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !68
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  %32 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bus_shift.i, align 4
  %shl.i36 = shl i32 36, %33
  %add.ptr.i37 = getelementptr i8, ptr %31, i32 %shl.i36
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i37) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %35 = or i16 %34, 1
  %36 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i39 = icmp eq ptr %37, null
  br i1 %tobool.not.i39, label %sd_ctrl_write16.exit.if.end.i46_crit_edge, label %land.lhs.true.i42

sd_ctrl_write16.exit.if.end.i46_crit_edge:        ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i46

land.lhs.true.i42:                                ; preds = %sd_ctrl_write16.exit
  %call.i40 = tail call i32 %37(ptr noundef %private.i, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool2.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool2.not.i41, label %land.lhs.true.i42.if.end.i46_crit_edge, label %land.lhs.true.i42.sd_ctrl_write16.exit47_crit_edge

land.lhs.true.i42.sd_ctrl_write16.exit47_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit47

land.lhs.true.i42.if.end.i46_crit_edge:           ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i46

if.end.i46:                                       ; preds = %land.lhs.true.i42.if.end.i46_crit_edge, %sd_ctrl_write16.exit.if.end.i46_crit_edge
  %38 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private.i, align 4
  %40 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bus_shift.i, align 4
  %shl.i44 = shl i32 36, %41
  %add.ptr.i45 = getelementptr i8, ptr %39, i32 %shl.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i45, i16 %35) #6, !srcloc !63
  br label %sd_ctrl_write16.exit47

sd_ctrl_write16.exit47:                           ; preds = %if.end.i46, %land.lhs.true.i42.sd_ctrl_write16.exit47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_hs400_complete(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %quirks = getelementptr i8, ptr %1, i32 144
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quirks, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hs400_bad_taps = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hs400_bad_taps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs400_bad_taps, align 4
  %hs400_4taps = getelementptr inbounds %struct.renesas_sdhi_quirks, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %hs400_4taps to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hs400_4taps, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %phi.sel = select i1 %tobool5.not, i32 1, i32 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %cond170 = phi i32 [ %5, %land.rhs ], [ 0, %entry.land.end_crit_edge ]
  %8 = phi i32 [ %phi.sel, %land.rhs ], [ 1, %entry.land.end_crit_edge ]
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  %bus_shift.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 36, %12
  %add.ptr.i = getelementptr i8, ptr %10, i32 %shl.i
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %14 = and i16 %13, -2
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %private.i, i32 0, i32 36
  %15 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %land.end.if.end.i_crit_edge, label %land.lhs.true.i

land.end.if.end.i_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.end
  %call.i = tail call i32 %16(ptr noundef %private.i, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.end.if.end.i_crit_edge
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 4
  %19 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bus_shift.i, align 4
  %shl.i105 = shl i32 36, %20
  %add.ptr.i106 = getelementptr i8, ptr %18, i32 %shl.i105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106, i16 %14) #6, !srcloc !63
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  %21 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private.i, align 4
  %23 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_shift.i, align 4
  %shl.i108 = shl i32 230, %24
  %add.ptr.i109 = getelementptr i8, ptr %22, i32 %shl.i108
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i109) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %26 = or i16 %25, 256
  %27 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i111 = icmp eq ptr %28, null
  br i1 %tobool.not.i111, label %sd_ctrl_write16.exit.if.end.i118_crit_edge, label %land.lhs.true.i114

sd_ctrl_write16.exit.if.end.i118_crit_edge:       ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i118

land.lhs.true.i114:                               ; preds = %sd_ctrl_write16.exit
  %call.i112 = tail call i32 %28(ptr noundef %private.i, i32 noundef 230) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool2.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool2.not.i113, label %land.lhs.true.i114.if.end.i118_crit_edge, label %land.lhs.true.i114.sd_ctrl_write16.exit119_crit_edge

land.lhs.true.i114.sd_ctrl_write16.exit119_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit119

land.lhs.true.i114.if.end.i118_crit_edge:         ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i118

if.end.i118:                                      ; preds = %land.lhs.true.i114.if.end.i118_crit_edge, %sd_ctrl_write16.exit.if.end.i118_crit_edge
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %31 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bus_shift.i, align 4
  %shl.i116 = shl i32 230, %32
  %add.ptr.i117 = getelementptr i8, ptr %30, i32 %shl.i116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i117, i16 %26) #6, !srcloc !63
  br label %sd_ctrl_write16.exit119

sd_ctrl_write16.exit119:                          ; preds = %if.end.i118, %land.lhs.true.i114.sd_ctrl_write16.exit119_crit_edge
  %scc_tappos_hs400 = getelementptr i8, ptr %1, i32 168
  %33 = ptrtoint ptr %scc_tappos_hs400 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scc_tappos_hs400, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %scc_ctl.i = getelementptr i8, ptr %1, i32 160
  %36 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scc_ctl.i, align 4
  %38 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_shift.i, align 4
  %shl.i121 = shl i32 4, %39
  %add.ptr.i122 = getelementptr i8, ptr %37, i32 %shl.i121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %35) #6, !srcloc !68
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i, align 4
  %42 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bus_shift.i, align 4
  %shl.i124 = shl i32 226, %43
  %add.ptr.i125 = getelementptr i8, ptr %41, i32 %shl.i124
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i125) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp2(i16 4301, i16 %44)
  %cmp = icmp eq i16 %44, 4301
  br i1 %cmp, label %if.then, label %sd_ctrl_write16.exit119.if.end_crit_edge

sd_ctrl_write16.exit119.if.end_crit_edge:         ; preds = %sd_ctrl_write16.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sd_ctrl_write16.exit119
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scc_ctl.i, align 4
  %47 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bus_shift.i, align 4
  %shl.i128 = shl i32 8, %48
  %add.ptr.i129 = getelementptr i8, ptr %46, i32 %shl.i128
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %50 = and i32 %49, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scc_ctl.i, align 4
  %53 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bus_shift.i, align 4
  %shl.i132 = shl i32 8, %54
  %add.ptr.i133 = getelementptr i8, ptr %52, i32 %shl.i132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %50) #6, !srcloc !68
  br label %if.end

if.end:                                           ; preds = %if.then, %sd_ctrl_write16.exit119.if.end_crit_edge
  %55 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scc_ctl.i, align 4
  %57 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bus_shift.i, align 4
  %shl.i136 = shl i32 14, %58
  %add.ptr.i137 = getelementptr i8, ptr %56, i32 %shl.i136
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %60 = or i32 %59, 268435584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scc_ctl.i, align 4
  %63 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bus_shift.i, align 4
  %shl.i140 = shl i32 14, %64
  %add.ptr.i141 = getelementptr i8, ptr %62, i32 %shl.i140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %60) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scc_ctl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 16778240) #6, !srcloc !68
  %tap_set = getelementptr i8, ptr %1, i32 192
  %67 = ptrtoint ptr %tap_set to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tap_set, align 4
  %shl = shl nuw i32 1, %68
  %and18 = and i32 %shl, %cond170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end.if.end45_crit_edge, label %if.then20

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then20:                                        ; preds = %if.end
  %add = add i32 %68, 1
  %tap_num = getelementptr i8, ptr %1, i32 188
  %69 = ptrtoint ptr %tap_num to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tap_num, align 4
  %rem = urem i32 %add, %70
  %shl22 = shl nuw i32 1, %rem
  %and23 = and i32 %shl22, %cond170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then20.if.end43_crit_edge, label %if.end29

if.then20.if.end43_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end29:                                         ; preds = %if.then20
  %sub = add i32 %68, -1
  %rem28 = urem i32 %sub, %70
  %.pre = shl nuw i32 1, %rem28
  %.pre172 = and i32 %.pre, %cond170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre172)
  %tobool32.not = icmp eq i32 %.pre172, 0
  br i1 %tobool32.not, label %if.end29.if.end43_crit_edge, label %if.then33

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @renesas_sdhi_hs400_complete.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@renesas_sdhi_hs400_complete, %if.then41)) #6
          to label %if.end43 [label %if.then41], !srcloc !69

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @renesas_sdhi_hs400_complete.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.23) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then33, %if.end29.if.end43_crit_edge, %if.then20.if.end43_crit_edge
  %new_tap.1 = phi i32 [ %68, %if.then41 ], [ %rem28, %if.end29.if.end43_crit_edge ], [ %68, %if.then33 ], [ %rem, %if.then20.if.end43_crit_edge ]
  %73 = ptrtoint ptr %tap_set to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %new_tap.1, ptr %tap_set, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end.if.end45_crit_edge
  %74 = ptrtoint ptr %tap_set to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tap_set, align 4
  %div = udiv i32 %75, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %76 = tail call i32 @llvm.bswap.i32(i32 %div) #6
  %77 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %scc_ctl.i, align 4
  %79 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bus_shift.i, align 4
  %shl.i146 = shl i32 2, %80
  %add.ptr.i147 = getelementptr i8, ptr %78, i32 %shl.i146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %76) #6, !srcloc !68
  %81 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %scc_ctl.i, align 4
  %83 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bus_shift.i, align 4
  %shl.i150 = shl i32 6, %84
  %add.ptr.i151 = getelementptr i8, ptr %82, i32 %shl.i150
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %86 = or i32 %85, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %scc_ctl.i, align 4
  %89 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bus_shift.i, align 4
  %shl.i154 = shl i32 6, %90
  %add.ptr.i155 = getelementptr i8, ptr %88, i32 %shl.i154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %86) #6, !srcloc !68
  %91 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %private.i, align 4
  %93 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bus_shift.i, align 4
  %shl.i157 = shl i32 36, %94
  %add.ptr.i158 = getelementptr i8, ptr %92, i32 %shl.i157
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i158) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %96 = or i16 %95, 1
  %97 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i160 = icmp eq ptr %98, null
  br i1 %tobool.not.i160, label %if.end45.if.end.i167_crit_edge, label %land.lhs.true.i163

if.end45.if.end.i167_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i167

land.lhs.true.i163:                               ; preds = %if.end45
  %call.i161 = tail call i32 %98(ptr noundef %private.i, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool2.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool2.not.i162, label %land.lhs.true.i163.if.end.i167_crit_edge, label %land.lhs.true.i163.sd_ctrl_write16.exit168_crit_edge

land.lhs.true.i163.sd_ctrl_write16.exit168_crit_edge: ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit168

land.lhs.true.i163.if.end.i167_crit_edge:         ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i167

if.end.i167:                                      ; preds = %land.lhs.true.i163.if.end.i167_crit_edge, %if.end45.if.end.i167_crit_edge
  %99 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %private.i, align 4
  %101 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bus_shift.i, align 4
  %shl.i165 = shl i32 36, %102
  %add.ptr.i166 = getelementptr i8, ptr %100, i32 %shl.i165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i166, i16 %96) #6, !srcloc !63
  br label %sd_ctrl_write16.exit168

sd_ctrl_write16.exit168:                          ; preds = %if.end.i167, %land.lhs.true.i163.sd_ctrl_write16.exit168_crit_edge
  %adjust_hs400_calib_table = getelementptr i8, ptr %1, i32 172
  %103 = ptrtoint ptr %adjust_hs400_calib_table to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %adjust_hs400_calib_table, align 4
  %tobool56.not = icmp eq ptr %104, null
  br i1 %tobool56.not, label %sd_ctrl_write16.exit168.if.end58_crit_edge, label %if.then57

sd_ctrl_write16.exit168.if.end58_crit_edge:       ; preds = %sd_ctrl_write16.exit168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then57:                                        ; preds = %sd_ctrl_write16.exit168
  call void @__sanitizer_cov_trace_pc() #8
  %needs_adjust_hs400 = getelementptr i8, ptr %1, i32 176
  %105 = ptrtoint ptr %needs_adjust_hs400 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %needs_adjust_hs400, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %sd_ctrl_write16.exit168.if.end58_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_irq(i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_host_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @renesas_sdhi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @tmio_mmc_host_remove(ptr noundef %1) #6
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %clk_cd.i = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %clk_cd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_cd.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  tail call void @tmio_mmc_host_free(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @renesas_sdhi_reset_hs400_mode(ptr noundef %host, ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %bus_shift.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 11
  %2 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift.i, align 4
  %shl.i = shl i32 36, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %5 = and i16 %4, -2
  %write16_hook.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 36
  %6 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 %7(ptr noundef %host, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge

land.lhs.true.i.sd_ctrl_write16.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %10 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_shift.i, align 4
  %shl.i25 = shl i32 36, %11
  %add.ptr.i26 = getelementptr i8, ptr %9, i32 %shl.i25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26, i16 %5) #6, !srcloc !63
  br label %sd_ctrl_write16.exit

sd_ctrl_write16.exit:                             ; preds = %if.end.i, %land.lhs.true.i.sd_ctrl_write16.exit_crit_edge
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %14 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_shift.i, align 4
  %shl.i28 = shl i32 230, %15
  %add.ptr.i29 = getelementptr i8, ptr %13, i32 %shl.i28
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i29) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %17 = and i16 %16, -257
  %18 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i31 = icmp eq ptr %19, null
  br i1 %tobool.not.i31, label %sd_ctrl_write16.exit.if.end.i38_crit_edge, label %land.lhs.true.i34

sd_ctrl_write16.exit.if.end.i38_crit_edge:        ; preds = %sd_ctrl_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i38

land.lhs.true.i34:                                ; preds = %sd_ctrl_write16.exit
  %call.i32 = tail call i32 %19(ptr noundef %host, i32 noundef 230) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool2.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool2.not.i33, label %land.lhs.true.i34.if.end.i38_crit_edge, label %land.lhs.true.i34.sd_ctrl_write16.exit39_crit_edge

land.lhs.true.i34.sd_ctrl_write16.exit39_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit39

land.lhs.true.i34.if.end.i38_crit_edge:           ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i38

if.end.i38:                                       ; preds = %land.lhs.true.i34.if.end.i38_crit_edge, %sd_ctrl_write16.exit.if.end.i38_crit_edge
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %22 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_shift.i, align 4
  %shl.i36 = shl i32 230, %23
  %add.ptr.i37 = getelementptr i8, ptr %21, i32 %shl.i36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37, i16 %17) #6, !srcloc !63
  br label %sd_ctrl_write16.exit39

sd_ctrl_write16.exit39:                           ; preds = %if.end.i38, %land.lhs.true.i34.sd_ctrl_write16.exit39_crit_edge
  %scc_tappos = getelementptr inbounds %struct.renesas_sdhi, ptr %priv, i32 0, i32 10
  %24 = ptrtoint ptr %scc_tappos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scc_tappos, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  %scc_ctl.i = getelementptr inbounds %struct.renesas_sdhi, ptr %priv, i32 0, i32 9
  %27 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scc_ctl.i, align 4
  %29 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bus_shift.i, align 4
  %shl.i41 = shl i32 4, %30
  %add.ptr.i42 = getelementptr i8, ptr %28, i32 %shl.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %26) #6, !srcloc !68
  %31 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scc_ctl.i, align 4
  %33 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus_shift.i, align 4
  %shl.i45 = shl i32 14, %34
  %add.ptr.i46 = getelementptr i8, ptr %32, i32 %shl.i45
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %36 = and i32 %35, -268435585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %scc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scc_ctl.i, align 4
  %39 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bus_shift.i, align 4
  %shl.i49 = shl i32 14, %40
  %add.ptr.i50 = getelementptr i8, ptr %38, i32 %shl.i49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %36) #6, !srcloc !68
  %adjust_hs400_calib_table = getelementptr inbounds %struct.renesas_sdhi, ptr %priv, i32 0, i32 12
  %41 = ptrtoint ptr %adjust_hs400_calib_table to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adjust_hs400_calib_table, align 4
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %sd_ctrl_write16.exit39.if.end_crit_edge, label %if.then

sd_ctrl_write16.exit39.if.end_crit_edge:          ; preds = %sd_ctrl_write16.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sd_ctrl_write16.exit39
  call void @__sanitizer_cov_trace_pc() #8
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %43 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %scc_ctl.i.i.i = getelementptr i8, ptr %44, i32 160
  %45 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %47 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bus_shift.i, align 4
  %shl.i.i.i = shl i32 24, %48
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %51 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bus_shift.i, align 4
  %shl.i9.i.i = shl i32 26, %52
  %add.ptr.i10.i.i = getelementptr i8, ptr %50, i32 %shl.i9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 165) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %55 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bus_shift.i, align 4
  %shl.i13.i.i = shl i32 22, %56
  %add.ptr.i14.i.i = getelementptr i8, ptr %54, i32 %shl.i13.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 16777216) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %59 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bus_shift.i, align 4
  %shl.i17.i.i = shl i32 22, %60
  %add.ptr.i18.i.i = getelementptr i8, ptr %58, i32 %shl.i17.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %63 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bus_shift.i, align 4
  %shl.i.i8.i = shl i32 24, %64
  %add.ptr.i.i9.i = getelementptr i8, ptr %62, i32 %shl.i.i8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 570425344) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %67 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bus_shift.i, align 4
  %shl.i9.i10.i = shl i32 26, %68
  %add.ptr.i10.i11.i = getelementptr i8, ptr %66, i32 %shl.i9.i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i11.i, i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %71 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bus_shift.i, align 4
  %shl.i13.i12.i = shl i32 22, %72
  %add.ptr.i14.i13.i = getelementptr i8, ptr %70, i32 %shl.i13.i12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i13.i, i32 16777216) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %75 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bus_shift.i, align 4
  %shl.i17.i14.i = shl i32 22, %76
  %add.ptr.i18.i15.i = getelementptr i8, ptr %74, i32 %shl.i17.i14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i15.i, i32 0) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %scc_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %scc_ctl.i.i.i, align 4
  %79 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bus_shift.i, align 4
  %shl.i.i = shl i32 20, %80
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !68
  br label %if.end

if.end:                                           ; preds = %if.then, %sd_ctrl_write16.exit39.if.end_crit_edge
  %81 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %host, align 4
  %83 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bus_shift.i, align 4
  %shl.i52 = shl i32 36, %84
  %add.ptr.i53 = getelementptr i8, ptr %82, i32 %shl.i52
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i53) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %86 = or i16 %85, 1
  %87 = ptrtoint ptr %write16_hook.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write16_hook.i, align 4
  %tobool.not.i55 = icmp eq ptr %88, null
  br i1 %tobool.not.i55, label %if.end.if.end.i62_crit_edge, label %land.lhs.true.i58

if.end.if.end.i62_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i62

land.lhs.true.i58:                                ; preds = %if.end
  %call.i56 = tail call i32 %88(ptr noundef %host, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool2.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool2.not.i57, label %land.lhs.true.i58.if.end.i62_crit_edge, label %land.lhs.true.i58.sd_ctrl_write16.exit63_crit_edge

land.lhs.true.i58.sd_ctrl_write16.exit63_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_ctrl_write16.exit63

land.lhs.true.i58.if.end.i62_crit_edge:           ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i62

if.end.i62:                                       ; preds = %land.lhs.true.i58.if.end.i62_crit_edge, %if.end.if.end.i62_crit_edge
  %89 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %host, align 4
  %91 = ptrtoint ptr %bus_shift.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bus_shift.i, align 4
  %shl.i60 = shl i32 36, %92
  %add.ptr.i61 = getelementptr i8, ptr %90, i32 %shl.i60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i61, i16 %86) #6, !srcloc !63
  br label %sd_ctrl_write16.exit63

sd_ctrl_write16.exit63:                           ; preds = %if.end.i62, %land.lhs.true.i58.sd_ctrl_write16.exit63_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_abort_tuning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 922, i32 56}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 924, i32 49}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 926, i32 57}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 939, i32 51}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 941, i32 59}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 946, i32 7}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 948, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 1082, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @renesas_sdhi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @renesas_sdhi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 1121, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @renesas_sdhi_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @renesas_sdhi_probe._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_renesas_sdhi_probe, !28, !"__ksymtab_renesas_sdhi_probe", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 1135, i32 1}
!29 = !{ptr @__ksymtab_renesas_sdhi_remove, !30, !"__ksymtab_renesas_sdhi_remove", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 1147, i32 1}
!31 = !{ptr @__UNIQUE_ID_file321, !32, !"__UNIQUE_ID_file321", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 1149, i32 1}
!33 = !{ptr @__UNIQUE_ID_license322, !32, !"__UNIQUE_ID_license322", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 829, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @renesas_sdhi_wait_idle._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @renesas_sdhi_wait_idle._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 680, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @renesas_sdhi_execute_tuning._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @renesas_sdhi_execute_tuning._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/renesas_sdhi_core.c", i32 413, i32 4}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @renesas_sdhi_hs400_complete.__UNIQUE_ID_ddebug320, !46, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{i64 3109296}
!61 = !{i64 2150649871}
!62 = !{i64 2150651288}
!63 = !{i64 3109096}
!64 = !{i32 0, i32 33}
!65 = !{i64 3110134}
!66 = !{i64 2156402481}
!67 = !{i64 2156402888}
!68 = !{i64 3109716}
!69 = !{i64 2148754364, i64 2148754369, i64 2148754382, i64 2148754426, i64 2148754460, i64 2148754481}
