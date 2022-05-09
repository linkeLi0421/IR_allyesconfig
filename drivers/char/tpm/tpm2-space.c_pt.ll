; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm2-space.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm2-space.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_header = type <{ i16, i32, %union.anon.71 }>
%union.anon.71 = type { i32 }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm2_context = type <{ i64, i32, i32, i16 }>

@tpm2_commit_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 574, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: error %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm2_commit_space\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/char/tpm/tpm2-space.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm2_commit_space._entry_ptr = internal global ptr @tpm2_commit_space._entry, section ".printk_index", align 4
@tpm_find_and_validate_cc.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tpm\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tpm_find_and_validate_cc\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0x%04X is an invalid command\0A\00", [34 x i8] zeroinitializer }, align 32
@tpm_find_and_validate_cc.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: insufficient command length %zu\00", [60 x i8] zeroinitializer }, align 32
@tpm2_load_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"context table is inconsistent\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tpm2_load_space\00", [16 x i8] zeroinitializer }, align 32
@tpm2_load_space._entry_ptr = internal global ptr @tpm2_load_space._entry, section ".printk_index", align 4
@tpm2_load_space._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 215, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"session restored to wrong handle\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tpm2_load_space._entry_ptr.14 = internal global ptr @tpm2_load_space._entry.11, section ".printk_index", align 4
@tpm2_load_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 90, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed with a system error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm2_load_context\00", [46 x i8] zeroinitializer }, align 32
@tpm2_load_context._entry_ptr = internal global ptr @tpm2_load_context._entry, section ".printk_index", align 4
@tpm2_load_context._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 110, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed with a TPM error 0x%04X\0A\00", [60 x i8] zeroinitializer }, align 32
@tpm2_load_context._entry_ptr.19 = internal global ptr @tpm2_load_context._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@tpm2_map_response_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unknown handle 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tpm2_map_response_header\00", [39 x i8] zeroinitializer }, align 32
@tpm2_map_response_header._entry_ptr = internal global ptr @tpm2_map_response_header._entry, section ".printk_index", align 4
@tpm2_map_response_header._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 423, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: out of slots for 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@tpm2_map_response_header._entry_ptr.26 = internal global ptr @tpm2_map_response_header._entry.24, section ".printk_index", align 4
@tpm2_save_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.27, ptr @.str.2, i32 138, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm2_save_context\00", [46 x i8] zeroinitializer }, align 32
@tpm2_save_context._entry_ptr = internal global ptr @tpm2_save_context._entry, section ".printk_index", align 4
@tpm2_save_context._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.27, ptr @.str.2, i32 146, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@tpm2_save_context._entry_ptr.29 = internal global ptr @tpm2_save_context._entry.28, section ".printk_index", align 4
@tpm2_save_context._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.2, i32 153, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: out of backing storage\0A\00", [36 x i8] zeroinitializer }, align 32
@tpm2_save_context._entry_ptr.32 = internal global ptr @tpm2_save_context._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 33554432, i64 50331648, i64 2147483648]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 574, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 282, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 295, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 189, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 215, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 89, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 109, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 376, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 414, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 422, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 137, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 145, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [33 x i8] c"../drivers/char/tpm/tpm2-space.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 153, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @tpm2_commit_space._entry, ptr @tpm2_commit_space._entry_ptr, ptr @tpm2_load_context._entry, ptr @tpm2_load_context._entry.17, ptr @tpm2_load_context._entry_ptr, ptr @tpm2_load_context._entry_ptr.19, ptr @tpm2_load_space._entry, ptr @tpm2_load_space._entry.11, ptr @tpm2_load_space._entry_ptr, ptr @tpm2_load_space._entry_ptr.14, ptr @tpm2_map_response_header._entry, ptr @tpm2_map_response_header._entry.24, ptr @tpm2_map_response_header._entry_ptr, ptr @tpm2_map_response_header._entry_ptr.26, ptr @tpm2_save_context._entry, ptr @tpm2_save_context._entry.28, ptr @tpm2_save_context._entry.30, ptr @tpm2_save_context._entry_ptr, ptr @tpm2_save_context._entry_ptr.29, ptr @tpm2_save_context._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_commit_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_load_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_load_space._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_load_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_load_context._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_map_response_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_map_response_header._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_save_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_save_context._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_save_context._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_init_space(ptr nocapture noundef %space, i32 noundef %buf_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buf_size, i32 noundef 3520) #8
  %context_buf55 = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 1
  %0 = ptrtoint ptr %context_buf55 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %context_buf55, align 4
  %tobool.not56 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not56, label %entry.return_crit_edge, label %if.end8.i.i43

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end8.i.i43:                                    ; preds = %entry
  %call9.i.i42 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buf_size, i32 noundef 3520) #8
  %session_buf = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 3
  %1 = ptrtoint ptr %session_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i42, ptr %session_buf, align 4
  %cmp = icmp eq ptr %call9.i.i42, null
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end8.i.i43
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %context_buf55 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context_buf55, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %context_buf55 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %context_buf55, align 4
  br label %return

if.end7:                                          ; preds = %if.end8.i.i43
  call void @__sanitizer_cov_trace_pc() #7
  %buf_size8 = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 4
  %5 = ptrtoint ptr %buf_size8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %buf_size, ptr %buf_size8, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %if.end7 ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm2_del_space(ptr noundef %chip, ptr nocapture noundef readonly %space) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tpm_mutex = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %tpm_mutex, i32 noundef 0) #5
  %call = tail call i32 @tpm_chip_start(ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.tpm_space, ptr %space, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.for.inc.i_crit_edge, label %if.then.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %1) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.tpm_space, ptr %space, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1.i = icmp eq i32 %3, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %3) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.tpm_space, ptr %space, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.2.i = icmp eq i32 %5, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.tpm2_flush_sessions.exit_crit_edge, label %if.then.2.i

for.inc.1.i.tpm2_flush_sessions.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_flush_sessions.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %5) #5
  br label %tpm2_flush_sessions.exit

tpm2_flush_sessions.exit:                         ; preds = %if.then.2.i, %for.inc.1.i.tpm2_flush_sessions.exit_crit_edge
  tail call void @tpm_chip_stop(ptr noundef %chip) #5
  br label %if.end

if.end:                                           ; preds = %tpm2_flush_sessions.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %tpm_mutex) #5
  %context_buf = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 1
  %6 = ptrtoint ptr %context_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context_buf, align 4
  tail call void @kfree(ptr noundef %7) #5
  %session_buf = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 3
  %8 = ptrtoint ptr %session_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %session_buf, align 4
  tail call void @kfree(ptr noundef %9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm2_flush_space(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %work_space = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27
  %0 = ptrtoint ptr %work_space to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %work_space, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then [
    i32 0, label %entry.for.inc_crit_edge
    i32 -1, label %entry.for.inc_crit_edge16
  ]

entry.for.inc_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %1) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge, %entry.for.inc_crit_edge16
  %arrayidx.1 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %4, label %if.then.1 [
    i32 0, label %for.inc.for.inc.1_crit_edge
    i32 -1, label %for.inc.for.inc.1_crit_edge17
  ]

for.inc.for.inc.1_crit_edge17:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %4) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge17
  %arrayidx.2 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %7, label %if.then.2 [
    i32 0, label %for.inc.1.for.inc.2_crit_edge
    i32 -1, label %for.inc.1.for.inc.2_crit_edge18
  ]

for.inc.1.for.inc.2_crit_edge18:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %7) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge18
  %arrayidx.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.inc.2.for.inc.i_crit_edge, label %if.then.i

for.inc.2.for.inc.i_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %10) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.inc.2.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %12) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.2.i = icmp eq i32 %14, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.tpm2_flush_sessions.exit_crit_edge, label %if.then.2.i

for.inc.1.i.tpm2_flush_sessions.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_flush_sessions.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %14) #5
  br label %tpm2_flush_sessions.exit

tpm2_flush_sessions.exit:                         ; preds = %if.then.2.i, %for.inc.1.i.tpm2_flush_sessions.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm2_flush_context(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_prepare_space(ptr noundef %chip, ptr noundef readonly %space, ptr nocapture noundef %cmd, i32 noundef %cmdsiz) local_unnamed_addr #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  %handle.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %space, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cmdsiz)
  %cmp.i = icmp ult i32 %cmdsiz, 10
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %nr_commands.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 29
  %0 = ptrtoint ptr %nr_commands.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_commands.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = getelementptr inbounds %struct.tpm_header, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  %call.i = tail call i32 @tpm2_find_cc(ptr noundef %chip, i32 noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_find_and_validate_cc.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm2_prepare_space, %if.then7.i)) #5
          to label %tpm_find_and_validate_cc.exit [label %if.then7.i], !srcloc !67

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_find_and_validate_cc.__UNIQUE_ID_ddebug242, ptr noundef %chip, ptr noundef nonnull @.str.7, i32 noundef %4) #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %cc_attrs_tbl.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 30
  %5 = ptrtoint ptr %cc_attrs_tbl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cc_attrs_tbl.i, align 4
  %arrayidx.i = getelementptr i32, ptr %6, i32 %call.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = lshr i32 %8, 21
  %mul10.i = and i32 %9, 112
  %add.i = or i32 %mul10.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cmdsiz)
  %cmp11.i = icmp ugt i32 %add.i, %cmdsiz
  br i1 %cmp11.i, label %do.body14.i, label %if.end9.i.tpm_find_and_validate_cc.exit_crit_edge

if.end9.i.tpm_find_and_validate_cc.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm_find_and_validate_cc.exit

do.body14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_find_and_validate_cc.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm2_prepare_space, %if.then26.i)) #5
          to label %tpm_find_and_validate_cc.exit [label %if.then26.i], !srcloc !67

if.then26.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_find_and_validate_cc.__UNIQUE_ID_ddebug243, ptr noundef %chip, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %cmdsiz) #5
  br label %cleanup

tpm_find_and_validate_cc.exit:                    ; preds = %do.body14.i, %if.end9.i.tpm_find_and_validate_cc.exit_crit_edge, %do.body.i
  %retval.0.i = phi i32 [ %4, %if.end9.i.tpm_find_and_validate_cc.exit_crit_edge ], [ -95, %do.body.i ], [ -22, %do.body14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %tpm_find_and_validate_cc.exit.cleanup_crit_edge, label %if.end2

tpm_find_and_validate_cc.exit.cleanup_crit_edge:  ; preds = %tpm_find_and_validate_cc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %tpm_find_and_validate_cc.exit
  %work_space = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27
  %10 = call ptr @memcpy(ptr %work_space, ptr %space, i32 12)
  %session_tbl = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2
  %session_tbl5 = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %session_tbl, ptr %session_tbl5, i32 12)
  %context_buf = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 1
  %12 = ptrtoint ptr %context_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context_buf, align 4
  %context_buf7 = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 1
  %14 = ptrtoint ptr %context_buf7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context_buf7, align 4
  %buf_size = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 4
  %16 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_size, align 4
  %18 = call ptr @memcpy(ptr %13, ptr %15, i32 %17)
  %session_buf = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 3
  %19 = ptrtoint ptr %session_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %session_buf, align 4
  %session_buf9 = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 3
  %21 = ptrtoint ptr %session_buf9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %session_buf9, align 4
  %23 = load i32, ptr %buf_size, align 4
  %24 = call ptr @memcpy(ptr %20, ptr %22, i32 %23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #5
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %offset.i, align 4
  %26 = ptrtoint ptr %work_space to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %work_space, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %27, label %if.end2.do.end.i_crit_edge [
    i32 0, label %if.end2.for.inc.i_crit_edge
    i32 -1, label %if.end5.i
  ]

if.end2.for.inc.i_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end2.do.end.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.1.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge, %if.end2.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.9) #9
  br label %if.then13

if.end5.i:                                        ; preds = %if.end2
  %29 = ptrtoint ptr %context_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %context_buf, align 4
  %call.i43 = call fastcc i32 @tpm2_load_context(ptr noundef %chip, ptr noundef %30, ptr noundef nonnull %offset.i, ptr noundef %work_space) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool8.not.i = icmp eq i32 %call.i43, 0
  br i1 %tobool8.not.i, label %if.end5.i.for.inc.i_crit_edge, label %if.end5.i.if.then13_crit_edge

if.end5.i.if.then13_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %if.end2.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %32, label %for.inc.i.do.end.i_crit_edge [
    i32 0, label %for.inc.i.for.inc.1.i_crit_edge
    i32 -1, label %if.end5.1.i
  ]

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end5.1.i:                                      ; preds = %for.inc.i
  %34 = ptrtoint ptr %context_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context_buf, align 4
  %call.1.i = call fastcc i32 @tpm2_load_context(ptr noundef %chip, ptr noundef %35, ptr noundef nonnull %offset.i, ptr noundef %arrayidx.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool8.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool8.not.1.i, label %if.end5.1.i.for.inc.1.i_crit_edge, label %if.end5.1.i.if.then13_crit_edge

if.end5.1.i.if.then13_crit_edge:                  ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end5.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end5.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.2.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %37, label %for.inc.1.i.do.end.i_crit_edge [
    i32 0, label %for.inc.1.i.for.inc.2.i_crit_edge
    i32 -1, label %if.end5.2.i
  ]

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

for.inc.1.i.do.end.i_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end5.2.i:                                      ; preds = %for.inc.1.i
  %39 = ptrtoint ptr %context_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context_buf, align 4
  %call.2.i = call fastcc i32 @tpm2_load_context(ptr noundef %chip, ptr noundef %40, ptr noundef nonnull %offset.i, ptr noundef %arrayidx.2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool8.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool8.not.2.i, label %if.end5.2.i.for.inc.2.i_crit_edge, label %if.end5.2.i.if.then13_crit_edge

if.end5.2.i.if.then13_crit_edge:                  ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end5.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end5.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %41 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.i) #5
  %42 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %handle.i, align 4, !annotation !68
  %43 = ptrtoint ptr %session_tbl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %session_tbl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool15.not.i = icmp eq i32 %44, 0
  br i1 %tobool15.not.i, label %for.inc.2.i.for.inc36.i_crit_edge, label %if.end17.i

for.inc.2.i.for.inc36.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36.i

if.end17.i:                                       ; preds = %for.inc.2.i
  %45 = ptrtoint ptr %session_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %session_buf, align 4
  %call18.i = call fastcc i32 @tpm2_load_context(ptr noundef %chip, ptr noundef %46, ptr noundef nonnull %offset.i, ptr noundef nonnull %handle.i) #5
  %47 = zext i32 %call18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call18.i, label %if.end17.i.cleanup.thread.i_crit_edge [
    i32 -2, label %if.then20.i
    i32 0, label %if.end17.i.if.end26.i_crit_edge
  ]

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.end17.i.cleanup.thread.i_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %session_tbl to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %session_tbl, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end26.i_crit_edge
  %49 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle.i, align 4
  %51 = ptrtoint ptr %session_tbl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %session_tbl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp29.not.i = icmp eq i32 %50, %52
  br i1 %cmp29.not.i, label %if.end26.i.for.inc36.i_crit_edge, label %if.end26.i.do.end33.i_crit_edge

if.end26.i.do.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

if.end26.i.for.inc36.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36.i

do.end33.i:                                       ; preds = %if.end26.2.i.do.end33.i_crit_edge, %if.end26.1.i.do.end33.i_crit_edge, %if.end26.i.do.end33.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.12) #9
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end17.2.i.cleanup.thread.i_crit_edge, %if.end17.1.i.cleanup.thread.i_crit_edge, %do.end33.i, %if.end17.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ -14, %do.end33.i ], [ %call18.i, %if.end17.i.cleanup.thread.i_crit_edge ], [ %call18.1.i, %if.end17.1.i.cleanup.thread.i_crit_edge ], [ %call18.2.i, %if.end17.2.i.cleanup.thread.i_crit_edge ]
  tail call void @tpm2_flush_space(ptr noundef %chip) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.i) #5
  br label %if.then13

for.inc36.i:                                      ; preds = %if.end26.i.for.inc36.i_crit_edge, %for.inc.2.i.for.inc36.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.i) #5
  %53 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %handle.i, align 4, !annotation !68
  %arrayidx14.1.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx14.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool15.not.1.i = icmp eq i32 %55, 0
  br i1 %tobool15.not.1.i, label %for.inc36.i.for.inc36.1.i_crit_edge, label %if.end17.1.i

for.inc36.i.for.inc36.1.i_crit_edge:              ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36.1.i

if.end17.1.i:                                     ; preds = %for.inc36.i
  %56 = ptrtoint ptr %session_buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %session_buf, align 4
  %call18.1.i = call fastcc i32 @tpm2_load_context(ptr noundef %chip, ptr noundef %57, ptr noundef nonnull %offset.i, ptr noundef nonnull %handle.i) #5
  %58 = zext i32 %call18.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call18.1.i, label %if.end17.1.i.cleanup.thread.i_crit_edge [
    i32 -2, label %if.then20.1.i
    i32 0, label %if.end17.1.i.if.end26.1.i_crit_edge
  ]

if.end17.1.i.if.end26.1.i_crit_edge:              ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.1.i

if.end17.1.i.cleanup.thread.i_crit_edge:          ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

if.then20.1.i:                                    ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx14.1.i, align 4
  br label %if.end26.1.i

if.end26.1.i:                                     ; preds = %if.then20.1.i, %if.end17.1.i.if.end26.1.i_crit_edge
  %60 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle.i, align 4
  %62 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx14.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp29.not.1.i = icmp eq i32 %61, %63
  br i1 %cmp29.not.1.i, label %if.end26.1.i.for.inc36.1.i_crit_edge, label %if.end26.1.i.do.end33.i_crit_edge

if.end26.1.i.do.end33.i_crit_edge:                ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

if.end26.1.i.for.inc36.1.i_crit_edge:             ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36.1.i

for.inc36.1.i:                                    ; preds = %if.end26.1.i.for.inc36.1.i_crit_edge, %for.inc36.i.for.inc36.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.i) #5
  %64 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %handle.i, align 4, !annotation !68
  %arrayidx14.2.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 2
  %65 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx14.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool15.not.2.i = icmp eq i32 %66, 0
  br i1 %tobool15.not.2.i, label %for.inc36.1.i.if.end14_crit_edge, label %if.end17.2.i

for.inc36.1.i.if.end14_crit_edge:                 ; preds = %for.inc36.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end17.2.i:                                     ; preds = %for.inc36.1.i
  %67 = ptrtoint ptr %session_buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %session_buf, align 4
  %call18.2.i = call fastcc i32 @tpm2_load_context(ptr noundef %chip, ptr noundef %68, ptr noundef nonnull %offset.i, ptr noundef nonnull %handle.i) #5
  %69 = zext i32 %call18.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call18.2.i, label %if.end17.2.i.cleanup.thread.i_crit_edge [
    i32 -2, label %if.then20.2.i
    i32 0, label %if.end17.2.i.if.end26.2.i_crit_edge
  ]

if.end17.2.i.if.end26.2.i_crit_edge:              ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.2.i

if.end17.2.i.cleanup.thread.i_crit_edge:          ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

if.then20.2.i:                                    ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx14.2.i, align 4
  br label %if.end26.2.i

if.end26.2.i:                                     ; preds = %if.then20.2.i, %if.end17.2.i.if.end26.2.i_crit_edge
  %71 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %handle.i, align 4
  %73 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx14.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp29.not.2.i = icmp eq i32 %72, %74
  br i1 %cmp29.not.2.i, label %if.end26.2.i.if.end14_crit_edge, label %if.end26.2.i.do.end33.i_crit_edge

if.end26.2.i.do.end33.i_crit_edge:                ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

if.end26.2.i.if.end14_crit_edge:                  ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %cleanup.thread.i, %if.end5.2.i.if.then13_crit_edge, %if.end5.1.i.if.then13_crit_edge, %if.end5.i.if.then13_crit_edge, %do.end.i
  %retval.2.i.ph = phi i32 [ %call.2.i, %if.end5.2.i.if.then13_crit_edge ], [ %call.1.i, %if.end5.1.i.if.then13_crit_edge ], [ %call.i43, %if.end5.i.if.then13_crit_edge ], [ %retval.1.ph.i, %cleanup.thread.i ], [ -14, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #5
  tail call void @tpm2_flush_space(ptr noundef %chip)
  br label %cleanup

if.end14:                                         ; preds = %if.end26.2.i.if.end14_crit_edge, %for.inc36.1.i.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #5
  %call.i45 = tail call i32 @tpm2_find_cc(ptr noundef %chip, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %if.end14.if.then17_crit_edge, label %if.end.i49

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end.i49:                                       ; preds = %if.end14
  %cc_attrs_tbl.i47 = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 30
  %75 = ptrtoint ptr %cc_attrs_tbl.i47 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cc_attrs_tbl.i47, align 4
  %arrayidx.i48 = getelementptr i32, ptr %76, i32 %call.i45
  %77 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i48, align 4
  %shr.i = lshr i32 %78, 25
  %and.i = and i32 %shr.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp222.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp222.not.i, label %if.end.i49.if.end18_crit_edge, label %for.body.preheader.i

if.end.i49.if.end18_crit_edge:                    ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.preheader.i:                             ; preds = %if.end.i49
  %arrayidx1.i = getelementptr i8, ptr %cmd, i32 10
  %79 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx1.i, align 4
  %and3.i = and i32 %80, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, -2147483648
  br i1 %cmp4.i, label %if.then5.i, label %for.body.preheader.i.for.inc.i50_crit_edge

for.body.preheader.i.for.inc.i50_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50

if.then5.i:                                       ; preds = %for.body.preheader.i
  %and.i.i = and i32 %80, 16777215
  %sub.i.i = xor i32 %and.i.i, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 2
  br i1 %cmp.i.i, label %if.then5.i.if.then17_crit_edge, label %lor.lhs.false.i.i

if.then5.i.if.then17_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i:                                ; preds = %if.then5.i
  %arrayidx.i.i = getelementptr [3 x i32], ptr %work_space, i32 0, i32 %sub.i.i
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.if.then17_crit_edge, label %tpm2_map_to_phandle.exit.i

lor.lhs.false.i.i.if.then17_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

tpm2_map_to_phandle.exit.i:                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx1.i, align 4
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %tpm2_map_to_phandle.exit.i, %for.body.preheader.i.for.inc.i50_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %cmd, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.not.i = icmp eq i32 %and.i, 1
  br i1 %exitcond.not.i, label %for.inc.i50.if.end18_crit_edge, label %for.body.i.1

for.inc.i50.if.end18_crit_edge:                   ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.i.1:                                     ; preds = %for.inc.i50
  %84 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %incdec.ptr.i, align 4
  %and3.i.1 = and i32 %85, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and3.i.1)
  %cmp4.i.1 = icmp eq i32 %and3.i.1, -2147483648
  br i1 %cmp4.i.1, label %if.then5.i.1, label %for.body.i.1.for.inc.i50.1_crit_edge

for.body.i.1.for.inc.i50.1_crit_edge:             ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50.1

if.then5.i.1:                                     ; preds = %for.body.i.1
  %and.i.i.1 = and i32 %85, 16777215
  %sub.i.i.1 = xor i32 %and.i.i.1, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.1)
  %cmp.i.i.1 = icmp ugt i32 %sub.i.i.1, 2
  br i1 %cmp.i.i.1, label %if.then5.i.1.if.then17_crit_edge, label %lor.lhs.false.i.i.1

if.then5.i.1.if.then17_crit_edge:                 ; preds = %if.then5.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i.1:                              ; preds = %if.then5.i.1
  %arrayidx.i.i.1 = getelementptr [3 x i32], ptr %work_space, i32 0, i32 %sub.i.i.1
  %86 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i.1 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i.1, label %lor.lhs.false.i.i.1.if.then17_crit_edge, label %tpm2_map_to_phandle.exit.i.1

lor.lhs.false.i.i.1.if.then17_crit_edge:          ; preds = %lor.lhs.false.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

tpm2_map_to_phandle.exit.i.1:                     ; preds = %lor.lhs.false.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %incdec.ptr.i, align 4
  br label %for.inc.i50.1

for.inc.i50.1:                                    ; preds = %tpm2_map_to_phandle.exit.i.1, %for.body.i.1.for.inc.i50.1_crit_edge
  %incdec.ptr.i.1 = getelementptr i8, ptr %cmd, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.not.i.1 = icmp eq i32 %and.i, 2
  br i1 %exitcond.not.i.1, label %for.inc.i50.1.if.end18_crit_edge, label %for.body.i.2

for.inc.i50.1.if.end18_crit_edge:                 ; preds = %for.inc.i50.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.i.2:                                     ; preds = %for.inc.i50.1
  %89 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %incdec.ptr.i.1, align 4
  %and3.i.2 = and i32 %90, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and3.i.2)
  %cmp4.i.2 = icmp eq i32 %and3.i.2, -2147483648
  br i1 %cmp4.i.2, label %if.then5.i.2, label %for.body.i.2.for.inc.i50.2_crit_edge

for.body.i.2.for.inc.i50.2_crit_edge:             ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50.2

if.then5.i.2:                                     ; preds = %for.body.i.2
  %and.i.i.2 = and i32 %90, 16777215
  %sub.i.i.2 = xor i32 %and.i.i.2, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.2)
  %cmp.i.i.2 = icmp ugt i32 %sub.i.i.2, 2
  br i1 %cmp.i.i.2, label %if.then5.i.2.if.then17_crit_edge, label %lor.lhs.false.i.i.2

if.then5.i.2.if.then17_crit_edge:                 ; preds = %if.then5.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i.2:                              ; preds = %if.then5.i.2
  %arrayidx.i.i.2 = getelementptr [3 x i32], ptr %work_space, i32 0, i32 %sub.i.i.2
  %91 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i.2 = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i.2, label %lor.lhs.false.i.i.2.if.then17_crit_edge, label %tpm2_map_to_phandle.exit.i.2

lor.lhs.false.i.i.2.if.then17_crit_edge:          ; preds = %lor.lhs.false.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

tpm2_map_to_phandle.exit.i.2:                     ; preds = %lor.lhs.false.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %incdec.ptr.i.1, align 4
  br label %for.inc.i50.2

for.inc.i50.2:                                    ; preds = %tpm2_map_to_phandle.exit.i.2, %for.body.i.2.for.inc.i50.2_crit_edge
  %incdec.ptr.i.2 = getelementptr i8, ptr %cmd, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %exitcond.not.i.2 = icmp eq i32 %and.i, 3
  br i1 %exitcond.not.i.2, label %for.inc.i50.2.if.end18_crit_edge, label %for.body.i.3

for.inc.i50.2.if.end18_crit_edge:                 ; preds = %for.inc.i50.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.i.3:                                     ; preds = %for.inc.i50.2
  %94 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr.i.2, align 4
  %and3.i.3 = and i32 %95, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and3.i.3)
  %cmp4.i.3 = icmp eq i32 %and3.i.3, -2147483648
  br i1 %cmp4.i.3, label %if.then5.i.3, label %for.body.i.3.for.inc.i50.3_crit_edge

for.body.i.3.for.inc.i50.3_crit_edge:             ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50.3

if.then5.i.3:                                     ; preds = %for.body.i.3
  %and.i.i.3 = and i32 %95, 16777215
  %sub.i.i.3 = xor i32 %and.i.i.3, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.3)
  %cmp.i.i.3 = icmp ugt i32 %sub.i.i.3, 2
  br i1 %cmp.i.i.3, label %if.then5.i.3.if.then17_crit_edge, label %lor.lhs.false.i.i.3

if.then5.i.3.if.then17_crit_edge:                 ; preds = %if.then5.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i.3:                              ; preds = %if.then5.i.3
  %arrayidx.i.i.3 = getelementptr [3 x i32], ptr %work_space, i32 0, i32 %sub.i.i.3
  %96 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i.i.3 = icmp eq i32 %97, 0
  br i1 %tobool.not.i.i.3, label %lor.lhs.false.i.i.3.if.then17_crit_edge, label %tpm2_map_to_phandle.exit.i.3

lor.lhs.false.i.i.3.if.then17_crit_edge:          ; preds = %lor.lhs.false.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

tpm2_map_to_phandle.exit.i.3:                     ; preds = %lor.lhs.false.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %incdec.ptr.i.2, align 4
  br label %for.inc.i50.3

for.inc.i50.3:                                    ; preds = %tpm2_map_to_phandle.exit.i.3, %for.body.i.3.for.inc.i50.3_crit_edge
  %incdec.ptr.i.3 = getelementptr i8, ptr %cmd, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %exitcond.not.i.3 = icmp eq i32 %and.i, 4
  br i1 %exitcond.not.i.3, label %for.inc.i50.3.if.end18_crit_edge, label %for.body.i.4

for.inc.i50.3.if.end18_crit_edge:                 ; preds = %for.inc.i50.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.i.4:                                     ; preds = %for.inc.i50.3
  %99 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %incdec.ptr.i.3, align 4
  %and3.i.4 = and i32 %100, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and3.i.4)
  %cmp4.i.4 = icmp eq i32 %and3.i.4, -2147483648
  br i1 %cmp4.i.4, label %if.then5.i.4, label %for.body.i.4.for.inc.i50.4_crit_edge

for.body.i.4.for.inc.i50.4_crit_edge:             ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50.4

if.then5.i.4:                                     ; preds = %for.body.i.4
  %and.i.i.4 = and i32 %100, 16777215
  %sub.i.i.4 = xor i32 %and.i.i.4, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.4)
  %cmp.i.i.4 = icmp ugt i32 %sub.i.i.4, 2
  br i1 %cmp.i.i.4, label %if.then5.i.4.if.then17_crit_edge, label %lor.lhs.false.i.i.4

if.then5.i.4.if.then17_crit_edge:                 ; preds = %if.then5.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i.4:                              ; preds = %if.then5.i.4
  %arrayidx.i.i.4 = getelementptr [3 x i32], ptr %work_space, i32 0, i32 %sub.i.i.4
  %101 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i.i.4 = icmp eq i32 %102, 0
  br i1 %tobool.not.i.i.4, label %lor.lhs.false.i.i.4.if.then17_crit_edge, label %tpm2_map_to_phandle.exit.i.4

lor.lhs.false.i.i.4.if.then17_crit_edge:          ; preds = %lor.lhs.false.i.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

tpm2_map_to_phandle.exit.i.4:                     ; preds = %lor.lhs.false.i.i.4
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %incdec.ptr.i.3, align 4
  br label %for.inc.i50.4

for.inc.i50.4:                                    ; preds = %tpm2_map_to_phandle.exit.i.4, %for.body.i.4.for.inc.i50.4_crit_edge
  %incdec.ptr.i.4 = getelementptr i8, ptr %cmd, i32 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %exitcond.not.i.4 = icmp eq i32 %and.i, 5
  br i1 %exitcond.not.i.4, label %for.inc.i50.4.if.end18_crit_edge, label %for.body.i.5

for.inc.i50.4.if.end18_crit_edge:                 ; preds = %for.inc.i50.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.i.5:                                     ; preds = %for.inc.i50.4
  %104 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %incdec.ptr.i.4, align 4
  %and3.i.5 = and i32 %105, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and3.i.5)
  %cmp4.i.5 = icmp eq i32 %and3.i.5, -2147483648
  br i1 %cmp4.i.5, label %if.then5.i.5, label %for.body.i.5.for.inc.i50.5_crit_edge

for.body.i.5.for.inc.i50.5_crit_edge:             ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i50.5

if.then5.i.5:                                     ; preds = %for.body.i.5
  %and.i.i.5 = and i32 %105, 16777215
  %sub.i.i.5 = xor i32 %and.i.i.5, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.5)
  %cmp.i.i.5 = icmp ugt i32 %sub.i.i.5, 2
  br i1 %cmp.i.i.5, label %if.then5.i.5.if.then17_crit_edge, label %lor.lhs.false.i.i.5

if.then5.i.5.if.then17_crit_edge:                 ; preds = %if.then5.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i.5:                              ; preds = %if.then5.i.5
  %arrayidx.i.i.5 = getelementptr [3 x i32], ptr %work_space, i32 0, i32 %sub.i.i.5
  %106 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i.i.5 = icmp eq i32 %107, 0
  br i1 %tobool.not.i.i.5, label %lor.lhs.false.i.i.5.if.then17_crit_edge, label %tpm2_map_to_phandle.exit.i.5

lor.lhs.false.i.i.5.if.then17_crit_edge:          ; preds = %lor.lhs.false.i.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

tpm2_map_to_phandle.exit.i.5:                     ; preds = %lor.lhs.false.i.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %incdec.ptr.i.4, align 4
  br label %for.inc.i50.5

for.inc.i50.5:                                    ; preds = %tpm2_map_to_phandle.exit.i.5, %for.body.i.5.for.inc.i50.5_crit_edge
  %incdec.ptr.i.5 = getelementptr i8, ptr %cmd, i32 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %exitcond.not.i.5 = icmp eq i32 %and.i, 6
  br i1 %exitcond.not.i.5, label %for.inc.i50.5.if.end18_crit_edge, label %for.body.i.6

for.inc.i50.5.if.end18_crit_edge:                 ; preds = %for.inc.i50.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.body.i.6:                                     ; preds = %for.inc.i50.5
  %109 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %incdec.ptr.i.5, align 4
  %and3.i.6 = and i32 %110, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and3.i.6)
  %cmp4.i.6 = icmp eq i32 %and3.i.6, -2147483648
  br i1 %cmp4.i.6, label %if.then5.i.6, label %for.body.i.6.if.end18_crit_edge

for.body.i.6.if.end18_crit_edge:                  ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then5.i.6:                                     ; preds = %for.body.i.6
  %and.i.i.6 = and i32 %110, 16777215
  %sub.i.i.6 = xor i32 %and.i.i.6, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i.6)
  %cmp.i.i.6 = icmp ugt i32 %sub.i.i.6, 2
  br i1 %cmp.i.i.6, label %if.then5.i.6.if.then17_crit_edge, label %lor.lhs.false.i.i.6

if.then5.i.6.if.then17_crit_edge:                 ; preds = %if.then5.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i.6:                              ; preds = %if.then5.i.6
  %arrayidx.i.i.6 = getelementptr [3 x i32], ptr %work_space, i32 0, i32 %sub.i.i.6
  %111 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i.i.6 = icmp eq i32 %112, 0
  br i1 %tobool.not.i.i.6, label %lor.lhs.false.i.i.6.if.then17_crit_edge, label %tpm2_map_to_phandle.exit.i.6

lor.lhs.false.i.i.6.if.then17_crit_edge:          ; preds = %lor.lhs.false.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

tpm2_map_to_phandle.exit.i.6:                     ; preds = %lor.lhs.false.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %incdec.ptr.i.5, align 4
  br label %if.end18

if.then17:                                        ; preds = %lor.lhs.false.i.i.6.if.then17_crit_edge, %if.then5.i.6.if.then17_crit_edge, %lor.lhs.false.i.i.5.if.then17_crit_edge, %if.then5.i.5.if.then17_crit_edge, %lor.lhs.false.i.i.4.if.then17_crit_edge, %if.then5.i.4.if.then17_crit_edge, %lor.lhs.false.i.i.3.if.then17_crit_edge, %if.then5.i.3.if.then17_crit_edge, %lor.lhs.false.i.i.2.if.then17_crit_edge, %if.then5.i.2.if.then17_crit_edge, %lor.lhs.false.i.i.1.if.then17_crit_edge, %if.then5.i.1.if.then17_crit_edge, %lor.lhs.false.i.i.if.then17_crit_edge, %if.then5.i.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  tail call void @tpm2_flush_space(ptr noundef %chip)
  br label %cleanup

if.end18:                                         ; preds = %tpm2_map_to_phandle.exit.i.6, %for.body.i.6.if.end18_crit_edge, %for.inc.i50.5.if.end18_crit_edge, %for.inc.i50.4.if.end18_crit_edge, %for.inc.i50.3.if.end18_crit_edge, %for.inc.i50.2.if.end18_crit_edge, %for.inc.i50.1.if.end18_crit_edge, %for.inc.i50.if.end18_crit_edge, %if.end.i49.if.end18_crit_edge
  %last_cc = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 28
  %114 = ptrtoint ptr %last_cc to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %retval.0.i, ptr %last_cc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then13, %tpm_find_and_validate_cc.exit.cleanup_crit_edge, %if.then26.i, %if.then7.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i.ph, %if.then13 ], [ -22, %if.then17 ], [ 0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %tpm_find_and_validate_cc.exit.cleanup_crit_edge ], [ -22, %if.then26.i ], [ -95, %if.then7.i ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm2_commit_space(ptr noundef %chip, ptr noundef %space, ptr nocapture noundef %buf, ptr nocapture noundef %bufsiz) local_unnamed_addr #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %space, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_cc = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %last_cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_cc, align 4
  %work_space.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27
  %2 = getelementptr inbounds %struct.tpm_header, ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @tpm2_find_cc(ptr noundef %chip, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.do.end_crit_edge, label %if.end3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %cc_attrs_tbl.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 30
  %5 = ptrtoint ptr %cc_attrs_tbl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cc_attrs_tbl.i, align 4
  %arrayidx.i = getelementptr i32, ptr %6, i32 %call.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end3.i.if.end3thread-pre-split_crit_edge, label %if.end5.i

if.end3.i.if.end3thread-pre-split_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3thread-pre-split

if.end5.i:                                        ; preds = %if.end3.i
  %arrayidx6.i = getelementptr i8, ptr %buf, i32 10
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %and8.i = and i32 %11, -16777216
  %12 = zext i32 %and8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and8.i, label %do.end.i [
    i32 -2147483648, label %sw.bb.i
    i32 33554432, label %if.end5.i.sw.bb14.i_crit_edge
    i32 50331648, label %if.end5.i.sw.bb14.i_crit_edge66
  ]

if.end5.i.sw.bb14.i_crit_edge66:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14.i

if.end5.i.sw.bb14.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14.i

sw.bb.i:                                          ; preds = %if.end5.i
  %13 = ptrtoint ptr %work_space.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %work_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i.i, label %sw.bb.i.tpm2_map_to_vhandle.exit.i_crit_edge, label %if.then.1.i.i

sw.bb.i.tpm2_map_to_vhandle.exit.i_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_map_to_vhandle.exit.i

if.then.1.i.i:                                    ; preds = %sw.bb.i
  %arrayidx.1.i.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.1.i.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.1.i.i, label %if.then.1.i.i.tpm2_map_to_vhandle.exit.i_crit_edge, label %if.then.2.i.i

if.then.1.i.i.tpm2_map_to_vhandle.exit.i_crit_edge: ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_map_to_vhandle.exit.i

if.then.2.i.i:                                    ; preds = %if.then.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not.2.i.i = icmp eq i32 %18, 0
  br i1 %tobool1.not.2.i.i, label %if.then.2.i.i.tpm2_map_to_vhandle.exit.i_crit_edge, label %if.then.2.i.i.out_no_slots.i_crit_edge

if.then.2.i.i.out_no_slots.i_crit_edge:           ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_slots.i

if.then.2.i.i.tpm2_map_to_vhandle.exit.i_crit_edge: ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_map_to_vhandle.exit.i

tpm2_map_to_vhandle.exit.i:                       ; preds = %if.then.2.i.i.tpm2_map_to_vhandle.exit.i_crit_edge, %if.then.1.i.i.tpm2_map_to_vhandle.exit.i_crit_edge, %sw.bb.i.tpm2_map_to_vhandle.exit.i_crit_edge
  %i.026.lcssa28.i.i = phi i32 [ 0, %sw.bb.i.tpm2_map_to_vhandle.exit.i_crit_edge ], [ 1, %if.then.1.i.i.tpm2_map_to_vhandle.exit.i_crit_edge ], [ 2, %if.then.2.i.i.tpm2_map_to_vhandle.exit.i_crit_edge ]
  %arrayidx.le.i.i = getelementptr [3 x i32], ptr %work_space.i, i32 0, i32 %i.026.lcssa28.i.i
  %19 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %arrayidx.le.i.i, align 4
  %or32.i.i = xor i32 %i.026.lcssa28.i.i, -2130706433
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or32.i.i, ptr %arrayidx6.i, align 4
  br label %if.end3thread-pre-split

sw.bb14.i:                                        ; preds = %if.end5.i.sw.bb14.i_crit_edge, %if.end5.i.sw.bb14.i_crit_edge66
  %arrayidx.i.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.i.i = icmp eq i32 %22, 0
  br i1 %cmp1.i.i, label %sw.bb14.i.tpm2_add_session.exit.thread.i_crit_edge, label %for.inc.i.i

sw.bb14.i.tpm2_add_session.exit.thread.i_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_add_session.exit.thread.i

for.inc.i.i:                                      ; preds = %sw.bb14.i
  %arrayidx.1.i1.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1.1.i.i = icmp eq i32 %24, 0
  br i1 %cmp1.1.i.i, label %for.inc.i.i.tpm2_add_session.exit.thread.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.tpm2_add_session.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_add_session.exit.thread.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i2.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.2.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.2.i.i = icmp eq i32 %26, 0
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.tpm2_add_session.exit.thread.i_crit_edge, label %for.inc.1.i.i.out_no_slots.i_crit_edge

for.inc.1.i.i.out_no_slots.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_no_slots.i

for.inc.1.i.i.tpm2_add_session.exit.thread.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm2_add_session.exit.thread.i

tpm2_add_session.exit.thread.i:                   ; preds = %for.inc.1.i.i.tpm2_add_session.exit.thread.i_crit_edge, %for.inc.i.i.tpm2_add_session.exit.thread.i_crit_edge, %sw.bb14.i.tpm2_add_session.exit.thread.i_crit_edge
  %i.018.lcssa.i.i = phi i32 [ 0, %sw.bb14.i.tpm2_add_session.exit.thread.i_crit_edge ], [ 1, %for.inc.i.i.tpm2_add_session.exit.thread.i_crit_edge ], [ 2, %for.inc.1.i.i.tpm2_add_session.exit.thread.i_crit_edge ]
  %arrayidx6.i.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 %i.018.lcssa.i.i
  %27 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %11, ptr %arrayidx6.i.i, align 4
  br label %if.end3thread-pre-split

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %11) #9
  br label %if.end3thread-pre-split

out_no_slots.i:                                   ; preds = %for.inc.1.i.i.out_no_slots.i_crit_edge, %if.then.2.i.i.out_no_slots.i_crit_edge
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %11) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %11) #9
  br label %do.end

if.end3thread-pre-split:                          ; preds = %do.end.i, %tpm2_add_session.exit.thread.i, %tpm2_map_to_vhandle.exit.i, %if.end3.i.if.end3thread-pre-split_crit_edge
  %28 = ptrtoint ptr %last_cc to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %last_cc, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3thread-pre-split, %if.end.if.end3_crit_edge
  %29 = phi i32 [ %.pr, %if.end3thread-pre-split ], [ %1, %if.end.if.end3_crit_edge ]
  %30 = ptrtoint ptr %bufsiz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bufsiz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 378, i32 %29)
  %cmp.not.i49 = icmp eq i32 %29, 378
  br i1 %cmp.not.i49, label %lor.lhs.false.i, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.end3
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1.not.i = icmp eq i32 %33, 0
  br i1 %cmp1.not.i, label %if.end.i50, label %lor.lhs.false.i.if.end8_crit_edge

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.i50:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %31)
  %cmp2.i = icmp ult i32 %31, 19
  br i1 %cmp2.i, label %if.end.i50.do.end_crit_edge, label %if.end4.i

if.end.i50.do.end_crit_edge:                      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i50
  %capability.i = getelementptr i8, ptr %buf, i32 11
  %34 = ptrtoint ptr %capability.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %capability.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp5.not.i = icmp eq i32 %35, 1
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end4.i.if.end8_crit_edge

if.end4.i.if.end8_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end7.i:                                        ; preds = %if.end4.i
  %count.i = getelementptr i8, ptr %buf, i32 15
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741820, i32 %37)
  %cmp8.i = icmp ult i32 %37, 1073741820
  %mul.i = shl i32 %37, 2
  %add.i = add i32 %mul.i, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %31)
  %cmp12.not.i = icmp eq i32 %add.i, %31
  %or.cond.i = select i1 %cmp8.i, i1 %cmp12.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.preheader.i, label %if.end7.i.do.end_crit_edge

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.preheader.i:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1658.not.i = icmp eq i32 %37, 0
  br i1 %cmp1658.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %handles.i = getelementptr i8, ptr %buf, i32 19
  %arrayidx6.1.i.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 1
  %arrayidx6.2.i.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc26.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx17.i = getelementptr [0 x i32], ptr %handles.i, i32 0, i32 %i.059.i
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17.i, align 4
  %and.i = and i32 %39, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i)
  %cond.i = icmp eq i32 %and.i, -2147483648
  br i1 %cond.i, label %sw.bb.i51, label %for.body.i.for.inc.sink.split.i_crit_edge

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

sw.bb.i51:                                        ; preds = %for.body.i
  %40 = ptrtoint ptr %work_space.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %work_space.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp7.i.i = icmp eq i32 %41, %39
  br i1 %cmp7.i.i, label %sw.bb.i51.for.inc.sink.split.i_crit_edge, label %if.else.1.i.i

sw.bb.i51.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.else.1.i.i:                                    ; preds = %sw.bb.i51
  %42 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx6.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp7.1.i.i = icmp eq i32 %43, %39
  br i1 %cmp7.1.i.i, label %if.else.1.i.i.for.inc.sink.split.i_crit_edge, label %if.else.2.i.i

if.else.1.i.i.for.inc.sink.split.i_crit_edge:     ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.else.2.i.i:                                    ; preds = %if.else.1.i.i
  %44 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx6.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %39)
  %cmp7.2.i.i = icmp eq i32 %45, %39
  br i1 %cmp7.2.i.i, label %if.else.2.i.i.for.inc.sink.split.i_crit_edge, label %if.else.2.i.i.for.inc.i_crit_edge

if.else.2.i.i.for.inc.i_crit_edge:                ; preds = %if.else.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.else.2.i.i.for.inc.sink.split.i_crit_edge:     ; preds = %if.else.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.else.2.i.i.for.inc.sink.split.i_crit_edge, %if.else.1.i.i.for.inc.sink.split.i_crit_edge, %sw.bb.i51.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %i.024.ph.i.neg.sink.i = phi i32 [ -2130706435, %if.else.2.i.i.for.inc.sink.split.i_crit_edge ], [ -2130706434, %if.else.1.i.i.for.inc.sink.split.i_crit_edge ], [ -2130706433, %sw.bb.i51.for.inc.sink.split.i_crit_edge ], [ %39, %for.body.i.for.inc.sink.split.i_crit_edge ]
  %arrayidx22.i = getelementptr [0 x i32], ptr %handles.i, i32 0, i32 %j.060.i
  %46 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %i.024.ph.i.neg.sink.i, ptr %arrayidx22.i, align 1
  %inc.i = add i32 %j.060.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else.2.i.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.060.i, %if.else.2.i.i.for.inc.i_crit_edge ], [ %inc.i, %for.inc.sink.split.i ]
  %inc26.i = add nuw i32 %i.059.i, 1
  %47 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %count.i, align 1
  %cmp16.i = icmp ult i32 %inc26.i, %48
  br i1 %cmp16.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %j.1.i, %for.inc.i.for.end.i_crit_edge ]
  %mul27.i = shl i32 %j.0.lcssa.i, 2
  %add28.i = add i32 %mul27.i, 19
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %buf, i32 0, i32 1
  %49 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %add28.i, ptr %length.i, align 1
  %50 = ptrtoint ptr %count.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %j.0.lcssa.i, ptr %count.i, align 1
  br label %if.end8

if.end8:                                          ; preds = %for.end.i, %if.end4.i.if.end8_crit_edge, %lor.lhs.false.i.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #5
  %51 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %offset.i, align 4
  %context_buf.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 1
  %buf_size.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 4
  %52 = ptrtoint ptr %work_space.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %work_space.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %53, label %if.end.i55 [
    i32 0, label %if.end8.for.inc.i57_crit_edge
    i32 -1, label %if.end8.for.inc.i57_crit_edge67
  ]

if.end8.for.inc.i57_crit_edge67:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i57

if.end8.for.inc.i57_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i57

if.end.i55:                                       ; preds = %if.end8
  %55 = ptrtoint ptr %context_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %context_buf.i, align 4
  %57 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_size.i, align 4
  %call.i54 = call fastcc i32 @tpm2_save_context(ptr noundef %chip, i32 noundef %53, ptr noundef %56, i32 noundef %58, ptr noundef nonnull %offset.i) #5
  %59 = zext i32 %call.i54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call.i54, label %if.end.i55.if.then11_crit_edge [
    i32 -2, label %if.end.i55.for.inc.sink.split.i56_crit_edge
    i32 0, label %if.end13.i
  ]

if.end.i55.for.inc.sink.split.i56_crit_edge:      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i56

if.end.i55.if.then11_crit_edge:                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.end13.i:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %work_space.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %work_space.i, align 4
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %61) #5
  br label %for.inc.sink.split.i56

for.inc.sink.split.i56:                           ; preds = %if.end13.i, %if.end.i55.for.inc.sink.split.i56_crit_edge
  %.sink.i = phi i32 [ -1, %if.end13.i ], [ 0, %if.end.i55.for.inc.sink.split.i56_crit_edge ]
  %62 = ptrtoint ptr %work_space.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink.i, ptr %work_space.i, align 4
  br label %for.inc.i57

for.inc.i57:                                      ; preds = %for.inc.sink.split.i56, %if.end8.for.inc.i57_crit_edge, %if.end8.for.inc.i57_crit_edge67
  %arrayidx.1.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.1.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %64, label %if.end.1.i [
    i32 0, label %for.inc.i57.for.inc.1.i_crit_edge
    i32 -1, label %for.inc.i57.for.inc.1.i_crit_edge68
  ]

for.inc.i57.for.inc.1.i_crit_edge68:              ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.i57.for.inc.1.i_crit_edge:                ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i57
  %66 = ptrtoint ptr %context_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %context_buf.i, align 4
  %68 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_size.i, align 4
  %call.1.i = call fastcc i32 @tpm2_save_context(ptr noundef %chip, i32 noundef %64, ptr noundef %67, i32 noundef %69, ptr noundef nonnull %offset.i) #5
  %70 = zext i32 %call.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.1.i, label %if.end.1.i.if.then11_crit_edge [
    i32 -2, label %if.end.1.i.for.inc.1.sink.split.i_crit_edge
    i32 0, label %if.end13.1.i
  ]

if.end.1.i.for.inc.1.sink.split.i_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.sink.split.i

if.end.1.i.if.then11_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.end13.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.1.i, align 4
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %72) #5
  br label %for.inc.1.sink.split.i

for.inc.1.sink.split.i:                           ; preds = %if.end13.1.i, %if.end.1.i.for.inc.1.sink.split.i_crit_edge
  %.sink82.i = phi i32 [ -1, %if.end13.1.i ], [ 0, %if.end.1.i.for.inc.1.sink.split.i_crit_edge ]
  %73 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink82.i, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.sink.split.i, %for.inc.i57.for.inc.1.i_crit_edge, %for.inc.i57.for.inc.1.i_crit_edge68
  %arrayidx.2.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 0, i32 2
  %74 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.2.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %75, label %if.end.2.i [
    i32 0, label %for.inc.1.i.for.inc.2.i_crit_edge
    i32 -1, label %for.inc.1.i.for.inc.2.i_crit_edge69
  ]

for.inc.1.i.for.inc.2.i_crit_edge69:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %77 = ptrtoint ptr %context_buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %context_buf.i, align 4
  %79 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buf_size.i, align 4
  %call.2.i = call fastcc i32 @tpm2_save_context(ptr noundef %chip, i32 noundef %75, ptr noundef %78, i32 noundef %80, ptr noundef nonnull %offset.i) #5
  %81 = zext i32 %call.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.2.i, label %if.end.2.i.if.then11_crit_edge [
    i32 -2, label %if.end.2.i.for.inc.2.sink.split.i_crit_edge
    i32 0, label %if.end13.2.i
  ]

if.end.2.i.for.inc.2.sink.split.i_crit_edge:      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.sink.split.i

if.end.2.i.if.then11_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.end13.2.i:                                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.2.i, align 4
  tail call void @tpm2_flush_context(ptr noundef %chip, i32 noundef %83) #5
  br label %for.inc.2.sink.split.i

for.inc.2.sink.split.i:                           ; preds = %if.end13.2.i, %if.end.2.i.for.inc.2.sink.split.i_crit_edge
  %.sink83.i = phi i32 [ -1, %if.end13.2.i ], [ 0, %if.end.2.i.for.inc.2.sink.split.i_crit_edge ]
  %84 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink83.i, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.2.sink.split.i, %for.inc.1.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge69
  %85 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %offset.i, align 4
  %session_buf.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 3
  %arrayidx21.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 0
  %86 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool22.not.i = icmp eq i32 %87, 0
  br i1 %tobool22.not.i, label %for.inc.2.i.for.inc38.i_crit_edge, label %if.end24.i

for.inc.2.i.for.inc38.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.end24.i:                                       ; preds = %for.inc.2.i
  %88 = ptrtoint ptr %session_buf.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %session_buf.i, align 4
  %90 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf_size.i, align 4
  %call28.i = call fastcc i32 @tpm2_save_context(ptr noundef %chip, i32 noundef %87, ptr noundef %89, i32 noundef %91, ptr noundef nonnull %offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, -2
  br i1 %cmp29.i, label %if.then30.i, label %if.else33.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %arrayidx21.i, align 4
  br label %for.inc38.i

if.else33.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp34.i = icmp slt i32 %call28.i, 0
  br i1 %cmp34.i, label %if.else33.i.if.then35.i_crit_edge, label %if.else33.i.for.inc38.i_crit_edge

if.else33.i.for.inc38.i_crit_edge:                ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.else33.i.if.then35.i_crit_edge:                ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

if.then35.i:                                      ; preds = %if.else33.2.i.if.then35.i_crit_edge, %if.else33.1.i.if.then35.i_crit_edge, %if.else33.i.if.then35.i_crit_edge
  %call28.lcssa.i = phi i32 [ %call28.i, %if.else33.i.if.then35.i_crit_edge ], [ %call28.1.i, %if.else33.1.i.if.then35.i_crit_edge ], [ %call28.2.i, %if.else33.2.i.if.then35.i_crit_edge ]
  tail call void @tpm2_flush_space(ptr noundef %chip) #5
  br label %if.then11

for.inc38.i:                                      ; preds = %if.else33.i.for.inc38.i_crit_edge, %if.then30.i, %for.inc.2.i.for.inc38.i_crit_edge
  %arrayidx21.1.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx21.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool22.not.1.i = icmp eq i32 %94, 0
  br i1 %tobool22.not.1.i, label %for.inc38.i.for.inc38.1.i_crit_edge, label %if.end24.1.i

for.inc38.i.for.inc38.1.i_crit_edge:              ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.1.i

if.end24.1.i:                                     ; preds = %for.inc38.i
  %95 = ptrtoint ptr %session_buf.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %session_buf.i, align 4
  %97 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_size.i, align 4
  %call28.1.i = call fastcc i32 @tpm2_save_context(ptr noundef %chip, i32 noundef %94, ptr noundef %96, i32 noundef %98, ptr noundef nonnull %offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call28.1.i)
  %cmp29.1.i = icmp eq i32 %call28.1.i, -2
  br i1 %cmp29.1.i, label %if.then30.1.i, label %if.else33.1.i

if.else33.1.i:                                    ; preds = %if.end24.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i)
  %cmp34.1.i = icmp slt i32 %call28.1.i, 0
  br i1 %cmp34.1.i, label %if.else33.1.i.if.then35.i_crit_edge, label %if.else33.1.i.for.inc38.1.i_crit_edge

if.else33.1.i.for.inc38.1.i_crit_edge:            ; preds = %if.else33.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.1.i

if.else33.1.i.if.then35.i_crit_edge:              ; preds = %if.else33.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

if.then30.1.i:                                    ; preds = %if.end24.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx21.1.i, align 4
  br label %for.inc38.1.i

for.inc38.1.i:                                    ; preds = %if.then30.1.i, %if.else33.1.i.for.inc38.1.i_crit_edge, %for.inc38.i.for.inc38.1.i_crit_edge
  %arrayidx21.2.i = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 27, i32 2, i32 2
  %100 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx21.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool22.not.2.i = icmp eq i32 %101, 0
  br i1 %tobool22.not.2.i, label %for.inc38.1.i.if.end12_crit_edge, label %if.end24.2.i

for.inc38.1.i.if.end12_crit_edge:                 ; preds = %for.inc38.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end24.2.i:                                     ; preds = %for.inc38.1.i
  %102 = ptrtoint ptr %session_buf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %session_buf.i, align 4
  %104 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %buf_size.i, align 4
  %call28.2.i = call fastcc i32 @tpm2_save_context(ptr noundef %chip, i32 noundef %101, ptr noundef %103, i32 noundef %105, ptr noundef nonnull %offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call28.2.i)
  %cmp29.2.i = icmp eq i32 %call28.2.i, -2
  br i1 %cmp29.2.i, label %if.then30.2.i, label %if.else33.2.i

if.else33.2.i:                                    ; preds = %if.end24.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i)
  %cmp34.2.i = icmp slt i32 %call28.2.i, 0
  br i1 %cmp34.2.i, label %if.else33.2.i.if.then35.i_crit_edge, label %if.else33.2.i.if.end12_crit_edge

if.else33.2.i.if.end12_crit_edge:                 ; preds = %if.else33.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.else33.2.i.if.then35.i_crit_edge:              ; preds = %if.else33.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35.i

if.then30.2.i:                                    ; preds = %if.end24.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %arrayidx21.2.i, align 4
  br label %if.end12

if.then11:                                        ; preds = %if.then35.i, %if.end.2.i.if.then11_crit_edge, %if.end.1.i.if.then11_crit_edge, %if.end.i55.if.then11_crit_edge
  %retval.0.i58.ph = phi i32 [ %call.2.i, %if.end.2.i.if.then11_crit_edge ], [ %call.1.i, %if.end.1.i.if.then11_crit_edge ], [ %call.i54, %if.end.i55.if.then11_crit_edge ], [ %call28.lcssa.i, %if.then35.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #5
  br label %do.end

if.end12:                                         ; preds = %if.then30.2.i, %if.else33.2.i.if.end12_crit_edge, %for.inc38.1.i.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #5
  %length = getelementptr inbounds %struct.tpm_header, ptr %buf, i32 0, i32 1
  %107 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %length, align 1
  %109 = ptrtoint ptr %bufsiz to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %bufsiz, align 4
  %110 = call ptr @memcpy(ptr %space, ptr %work_space.i, i32 12)
  %session_tbl = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 2
  %111 = call ptr @memcpy(ptr %session_tbl, ptr %arrayidx21.i, i32 12)
  %context_buf = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 1
  %112 = ptrtoint ptr %context_buf to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %context_buf, align 4
  %114 = ptrtoint ptr %context_buf.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %context_buf.i, align 4
  %buf_size = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 4
  %116 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %buf_size, align 4
  %118 = call ptr @memcpy(ptr %113, ptr %115, i32 %117)
  %session_buf = getelementptr inbounds %struct.tpm_space, ptr %space, i32 0, i32 3
  %119 = ptrtoint ptr %session_buf to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %session_buf, align 4
  %121 = ptrtoint ptr %session_buf.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %session_buf.i, align 4
  %123 = load i32, ptr %buf_size, align 4
  %124 = call ptr @memcpy(ptr %120, ptr %122, i32 %123)
  br label %cleanup

do.end:                                           ; preds = %if.then11, %if.end7.i.do.end_crit_edge, %if.end.i50.do.end_crit_edge, %out_no_slots.i, %if.end.i.do.end_crit_edge
  %rc.0 = phi i32 [ %retval.0.i58.ph, %if.then11 ], [ -12, %out_no_slots.i ], [ -14, %if.end.i.do.end_crit_edge ], [ -14, %if.end7.i.do.end_crit_edge ], [ -14, %if.end.i50.do.end_crit_edge ]
  tail call void @tpm2_flush_space(ptr noundef %chip)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %rc.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.end ], [ 0, %if.end12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_find_cc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_load_context(ptr noundef %chip, ptr nocapture noundef readonly %buf, ptr nocapture noundef %offset, ptr nocapture noundef writeonly %handle) unnamed_addr #0 align 64 {
entry:
  %tbuf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbuf) #5
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %tbuf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #5
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tbuf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32767, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 353, ptr %6, align 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %9
  %blob_size = getelementptr inbounds %struct.tpm2_context, ptr %arrayidx, i32 0, i32 3
  %10 = ptrtoint ptr %blob_size to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %blob_size, align 1
  %conv = zext i16 %11 to i32
  %add = add nuw nsw i32 %conv, 18
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %length.i.i43 = getelementptr inbounds %struct.tpm_header, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %length.i.i43 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %length.i.i43, align 1
  %16 = load i32, ptr %tbuf, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i44 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i44, label %if.end.i45, label %if.end.tpm_buf_append.exit_crit_edge

if.end.tpm_buf_append.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm_buf_append.exit

if.end.i45:                                       ; preds = %if.end
  %add.i = add i32 %15, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #5
  %17 = ptrtoint ptr %tbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tbuf, align 4
  %or.i = or i32 %18, 1
  store i32 %or.i, ptr %tbuf, align 4
  br label %tpm_buf_append.exit

if.end20.i:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr i8, ptr %13, i32 %15
  %19 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx, i32 %add)
  %20 = ptrtoint ptr %length.i.i43 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %add.i, ptr %length.i.i43, align 1
  br label %tpm_buf_append.exit

tpm_buf_append.exit:                              ; preds = %if.end20.i, %do.end.i, %if.end.tpm_buf_append.exit_crit_edge
  %call2 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %tbuf, i32 noundef 4, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %tpm_buf_append.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call2) #9
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %tpm_buf_append.exit
  %and.i47 = and i32 %call2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  %and1.i = and i32 %call2, 255
  %cond.i = select i1 %tobool.not.i48, i32 %call2, i32 %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 139, i32 %cond.i)
  %cmp6 = icmp eq i32 %cond.i, 139
  call void @__sanitizer_cov_trace_const_cmp4(i32 2320, i32 %call2)
  %cmp8 = icmp eq i32 %call2, 2320
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %handle, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %0, align 4
  br label %cleanup.sink.split

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp12.not = icmp eq i32 %call2, 0
  br i1 %cmp12.not, label %if.end21, label %do.end17

do.end17:                                         ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %call2) #9
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %0, align 4
  %arrayidx22 = getelementptr i8, ptr %29, i32 10
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %handle, align 4
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset, align 4
  %add24 = add i32 %34, %add
  store i32 %add24, ptr %offset, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %do.end17, %if.then10, %do.end
  %.sink54 = phi ptr [ %29, %if.end21 ], [ %27, %do.end17 ], [ %25, %if.then10 ], [ %22, %do.end ]
  %retval.0.ph = phi i32 [ 0, %if.end21 ], [ -14, %do.end17 ], [ -2, %if.then10 ], [ -14, %do.end ]
  %35 = ptrtoint ptr %.sink54 to i32
  call void @free_pages(i32 noundef %35, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbuf) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_save_context(ptr noundef %chip, i32 noundef %handle, ptr nocapture noundef writeonly %buf, i32 noundef %buf_size, ptr nocapture noundef %offset) unnamed_addr #0 align 64 {
entry:
  %tbuf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tbuf) #5
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %tbuf, i32 0, i32 1
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #5
  %1 = inttoptr i32 %call.i to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tbuf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -32767, ptr %1, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %6 = getelementptr inbounds %struct.tpm_header, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 354, ptr %6, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %length.i.i.i, align 1
  %12 = load i32, ptr %tbuf, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tpm_buf_append_u32.exit_crit_edge

if.end.tpm_buf_append_u32.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end
  %add.i.i = add i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #5
  %13 = ptrtoint ptr %tbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tbuf, align 4
  %or.i.i = or i32 %14, 1
  store i32 %or.i.i, ptr %tbuf, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %11
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %handle, ptr %arrayidx.i.i, align 1
  %16 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end.tpm_buf_append_u32.exit_crit_edge
  %call1 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %tbuf, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.27, i32 noundef %call1) #9
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %tpm_buf_append_u32.exit
  %and.i = and i32 %call1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i42 = icmp eq i32 %and.i, 0
  %and1.i = and i32 %call1, 255
  %cond.i = select i1 %tobool.not.i42, i32 %call1, i32 %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2320, i32 %cond.i)
  %cmp4 = icmp eq i32 %cond.i, 2320
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  br label %cleanup.sink.split

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool7.not = icmp eq i32 %call1, 0
  br i1 %tobool7.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.27, i32 noundef %call1) #9
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.else6
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 4
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %length.i, align 1
  %sub = add i32 %26, -10
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add = add i32 %28, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %buf_size)
  %cmp17 = icmp ugt i32 %add, %buf_size
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27) #9
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %buf, i32 %28
  %arrayidx24 = getelementptr i8, ptr %24, i32 10
  %31 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx24, i32 %sub)
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add25 = add i32 %33, %sub
  store i32 %add25, ptr %offset, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end23, %do.end21, %do.end11, %if.then5, %do.end
  %.sink50 = phi ptr [ %24, %if.end23 ], [ %30, %do.end21 ], [ %22, %do.end11 ], [ %20, %if.then5 ], [ %18, %do.end ]
  %retval.0.ph = phi i32 [ 0, %if.end23 ], [ -12, %do.end21 ], [ -14, %do.end11 ], [ -2, %if.then5 ], [ -14, %do.end ]
  %34 = ptrtoint ptr %.sink50 to i32
  call void @free_pages(i32 noundef %34, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm2-space.c", i32 574, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tpm2_commit_space._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tpm2_commit_space._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/char/tpm/tpm2-space.c", i32 282, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tpm_find_and_validate_cc.__UNIQUE_ID_ddebug242, !9, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/tpm2-space.c", i32 295, i32 2}
!15 = !{ptr @tpm_find_and_validate_cc.__UNIQUE_ID_ddebug243, !14, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/tpm2-space.c", i32 189, i32 4}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tpm2_load_space._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @tpm2_load_space._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/char/tpm/tpm2-space.c", i32 215, i32 4}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tpm2_load_space._entry.11, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tpm2_load_space._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/tpm2-space.c", i32 89, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tpm2_load_context._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tpm2_load_context._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/tpm/tpm2-space.c", i32 109, i32 3}
!33 = !{ptr @tpm2_load_context._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tpm2_load_context._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/tpm/tpm2-space.c", i32 414, i32 3}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tpm2_map_response_header._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @tpm2_map_response_header._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/tpm/tpm2-space.c", i32 422, i32 2}
!45 = !{ptr @tpm2_map_response_header._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tpm2_map_response_header._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/tpm/tpm2-space.c", i32 137, i32 3}
!49 = !{ptr @tpm2_save_context._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tpm2_save_context._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @tpm2_save_context._entry.28, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/char/tpm/tpm2-space.c", i32 145, i32 3}
!53 = !{ptr @tpm2_save_context._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/tpm/tpm2-space.c", i32 153, i32 3}
!56 = !{ptr @tpm2_save_context._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tpm2_save_context._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148188576, i64 2148188581, i64 2148188594, i64 2148188638, i64 2148188672, i64 2148188693}
!68 = !{!"auto-init"}
