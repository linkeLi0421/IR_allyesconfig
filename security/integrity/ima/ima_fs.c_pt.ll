; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_fs.c_pt.bc'
source_filename = "../security/integrity/ima/ima_fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ima_h_table = type { %struct.atomic_t, %struct.atomic_t, [1024 x %struct.hlist_head] }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ima_queue_entry = type { %struct.hlist_node, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ima_template_entry = type { i32, ptr, ptr, i32, [0 x %struct.ima_field_data] }
%struct.ima_field_data = type { ptr, i32 }
%struct.ima_template_desc = type { %struct.list_head, ptr, ptr, i32, ptr }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.ima_template_field = type { [16 x i8], ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__setup_str_default_canonical_fmt_setup = internal constant [18 x i8] c"ima_canonical_fmt\00", section ".init.rodata", align 1
@__setup_default_canonical_fmt_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_default_canonical_fmt_setup, ptr @default_canonical_fmt_setup, i32 0 }, section ".init.setup", align 4
@ima_canonical_fmt = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@ima_sha1_idx = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ima\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@integrity_dir = external dso_local local_unnamed_addr global ptr, align 4
@ima_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"integrity/ima\00", [18 x i8] zeroinitializer }, align 32
@ima_symlink = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"binary_runtime_measurements\00", [36 x i8] zeroinitializer }, align 32
@ima_measurements_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ima_measurements_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@binary_runtime_measurements = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ascii_runtime_measurements\00", [37 x i8] zeroinitializer }, align 32
@ima_ascii_measurements_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ima_ascii_measurements_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ascii_runtime_measurements = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"runtime_measurements_count\00", [37 x i8] zeroinitializer }, align 32
@ima_measurements_count_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ima_show_measurements_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@runtime_measurements_count = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"violations\00", [21 x i8] zeroinitializer }, align 32
@ima_htable_violations_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @ima_show_htable_violations, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@violations = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@ima_measure_policy_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @seq_read, ptr @ima_write_policy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ima_open_policy, ptr null, ptr @ima_release_policy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ima_policy = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ima_measurments_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ima_measurements_start, ptr @ima_measurements_stop, ptr @ima_measurements_next, ptr @ima_measurements_show }, [16 x i8] zeroinitializer }, align 32
@ima_measurements_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"security/integrity/ima/ima_fs.c\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ima_measurements = external dso_local global %struct.list_head, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ima_ascii_measurements_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ima_measurements_start, ptr @ima_measurements_stop, ptr @ima_measurements_next, ptr @ima_ascii_measurements_show }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2d \00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ima_htable = external dso_local global %struct.ima_h_table, align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%li\0A\00", [27 x i8] zeroinitializer }, align 32
@ima_write_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ima_write_mutex, i64 52), ptr getelementptr (i8, ptr @ima_write_mutex, i64 52) }, ptr @ima_write_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ima_appraise = external dso_local local_unnamed_addr global i32, align 4
@ima_write_policy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013ima: signed policy file (specified as an absolute pathname) required\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ima_write_policy\00", [47 x i8] zeroinitializer }, align 32
@ima_write_policy._entry_ptr = internal global ptr @ima_write_policy._entry, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"policy_update\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"signed policy required\00", [41 x i8] zeroinitializer }, align 32
@valid_policy = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ima_write_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ima_write_mutex\00", [16 x i8] zeroinitializer }, align 32
@ima_read_policy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.10, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ima: Unable to open file: %s (%d)\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ima_read_policy\00", [16 x i8] zeroinitializer }, align 32
@ima_read_policy._entry_ptr = internal global ptr @ima_read_policy._entry, section ".printk_index", align 4
@ima_read_policy.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.10, ptr @.str.28, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rule: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ima: rule: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@ima_policy_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ima_policy_start, ptr @ima_policy_stop, ptr @ima_policy_next, ptr @ima_policy_show }, [16 x i8] zeroinitializer }, align 32
@ima_fs_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"completed\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@ima_release_policy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.10, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016ima: policy update %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ima_release_policy\00", [45 x i8] zeroinitializer }, align 32
@ima_release_policy._entry_ptr = internal global ptr @ima_release_policy._entry, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"ima_canonical_fmt\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 29, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 165, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 180, i32 50 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 182, i32 50 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 213, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"ima_dir\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 359, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 459, i32 55 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"ima_symlink\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 360, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 465, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"ima_measurements_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 201, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"binary_runtime_measurements\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 361, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 472, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"ima_ascii_measurements_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 267, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"ascii_runtime_measurements\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 362, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 479, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"ima_measurements_count_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 71, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"runtime_measurements_count\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 363, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 486, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"ima_htable_violations_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 58, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"violations\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 364, i32 23 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 491, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"ima_measure_policy_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 445, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"ima_policy\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 365, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"ima_measurments_seqops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 189, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 84, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 695, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 723, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"ima_ascii_measurements_seqops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 255, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 234, i32 16 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 240, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 244, i32 15 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 251, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 47, i32 42 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"ima_write_mutex\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 341, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 343, i32 9 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 343, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"valid_policy\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 27, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 290, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 298, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"ima_policy_seqops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 374, i32 36 }
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"ima_fs_flags\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 371, i32 22 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 412, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 412, i32 51 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [35 x i8] c"../security/integrity/ima/ima_fs.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 422, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__setup_default_canonical_fmt_setup, ptr @ima_read_policy._entry, ptr @ima_read_policy._entry_ptr, ptr @ima_release_policy._entry, ptr @ima_release_policy._entry_ptr, ptr @ima_write_policy._entry, ptr @ima_write_policy._entry_ptr, ptr @ima_canonical_fmt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ima_dir, ptr @.str.4, ptr @ima_symlink, ptr @.str.5, ptr @ima_measurements_ops, ptr @binary_runtime_measurements, ptr @.str.6, ptr @ima_ascii_measurements_ops, ptr @ascii_runtime_measurements, ptr @.str.7, ptr @ima_measurements_count_ops, ptr @runtime_measurements_count, ptr @.str.8, ptr @ima_htable_violations_ops, ptr @violations, ptr @.str.9, ptr @ima_measure_policy_ops, ptr @ima_policy, ptr @ima_measurments_seqops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ima_ascii_measurements_seqops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ima_write_mutex, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @valid_policy, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ima_policy_seqops, ptr @ima_fs_flags, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_canonical_fmt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_symlink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_measurements_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binary_runtime_measurements to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_ascii_measurements_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascii_runtime_measurements to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_measurements_count_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @runtime_measurements_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_htable_violations_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @violations to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_measure_policy_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_policy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_measurments_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_ascii_measurements_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_write_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_write_policy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_policy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_read_policy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_policy_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_fs_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_release_policy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @default_canonical_fmt_setup(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 1, ptr @ima_canonical_fmt, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_putc(ptr noundef %m, ptr nocapture noundef readonly %data, i32 noundef %datalen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datalen)
  %tobool.not1 = icmp eq i32 %datalen, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %datalen.addr.03 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %datalen, %entry.while.body_crit_edge ]
  %data.addr.02 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %dec = add i32 %datalen.addr.03, -1
  %incdec.ptr = getelementptr i8, ptr %data.addr.02, i32 1
  %0 = ptrtoint ptr %data.addr.02 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.02, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %1) #11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_measurements_show(ptr noundef %m, ptr nocapture noundef readonly %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.ima_queue_entry, ptr %v, i32 0, i32 2
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %template_desc = getelementptr inbounds %struct.ima_template_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %template_desc, align 4
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2.not = icmp eq i8 %7, 0
  br i1 %cmp2.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fmt = getelementptr inbounds %struct.ima_template_desc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.false ], [ %5, %if.end.cond.end_crit_edge ]
  %10 = load i8, ptr @ima_canonical_fmt, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %cond12 = select i1 %tobool.not, i32 %12, i32 %13
  %pcr.sroa.0.0.extract.shift = lshr i32 %cond12, 24
  %pcr.sroa.0.0.extract.trunc = trunc i32 %pcr.sroa.0.0.extract.shift to i8
  %pcr.sroa.5.0.extract.shift = lshr i32 %cond12, 16
  %pcr.sroa.5.0.extract.trunc = trunc i32 %pcr.sroa.5.0.extract.shift to i8
  %pcr.sroa.6.0.extract.shift = lshr i32 %cond12, 8
  %pcr.sroa.6.0.extract.trunc = trunc i32 %pcr.sroa.6.0.extract.shift to i8
  %pcr.sroa.7.0.extract.trunc = trunc i32 %cond12 to i8
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %pcr.sroa.0.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %pcr.sroa.5.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %pcr.sroa.6.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %pcr.sroa.7.0.extract.trunc) #11
  %digests = getelementptr inbounds %struct.ima_template_entry, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %digests to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %digests, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_sha1_idx to i32))
  %16 = load i32, ptr @ima_sha1_idx, align 4
  %digest = getelementptr %struct.tpm_digest, ptr %15, i32 %16, i32 1
  %incdec.ptr.i98 = getelementptr i8, ptr %digest, i32 1
  %17 = ptrtoint ptr %digest to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %digest, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %18) #11
  %incdec.ptr.i98.1 = getelementptr i8, ptr %digest, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i98 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i98, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %20) #11
  %incdec.ptr.i98.2 = getelementptr i8, ptr %digest, i32 3
  %21 = ptrtoint ptr %incdec.ptr.i98.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.i98.1, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %22) #11
  %incdec.ptr.i98.3 = getelementptr i8, ptr %digest, i32 4
  %23 = ptrtoint ptr %incdec.ptr.i98.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i98.2, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %24) #11
  %incdec.ptr.i98.4 = getelementptr i8, ptr %digest, i32 5
  %25 = ptrtoint ptr %incdec.ptr.i98.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i98.3, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %26) #11
  %incdec.ptr.i98.5 = getelementptr i8, ptr %digest, i32 6
  %27 = ptrtoint ptr %incdec.ptr.i98.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.i98.4, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %28) #11
  %incdec.ptr.i98.6 = getelementptr i8, ptr %digest, i32 7
  %29 = ptrtoint ptr %incdec.ptr.i98.5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.i98.5, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %30) #11
  %incdec.ptr.i98.7 = getelementptr i8, ptr %digest, i32 8
  %31 = ptrtoint ptr %incdec.ptr.i98.6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i98.6, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %32) #11
  %incdec.ptr.i98.8 = getelementptr i8, ptr %digest, i32 9
  %33 = ptrtoint ptr %incdec.ptr.i98.7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.i98.7, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %34) #11
  %incdec.ptr.i98.9 = getelementptr i8, ptr %digest, i32 10
  %35 = ptrtoint ptr %incdec.ptr.i98.8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.i98.8, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %36) #11
  %incdec.ptr.i98.10 = getelementptr i8, ptr %digest, i32 11
  %37 = ptrtoint ptr %incdec.ptr.i98.9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i98.9, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %38) #11
  %incdec.ptr.i98.11 = getelementptr i8, ptr %digest, i32 12
  %39 = ptrtoint ptr %incdec.ptr.i98.10 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.i98.10, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %40) #11
  %incdec.ptr.i98.12 = getelementptr i8, ptr %digest, i32 13
  %41 = ptrtoint ptr %incdec.ptr.i98.11 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.i98.11, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %42) #11
  %incdec.ptr.i98.13 = getelementptr i8, ptr %digest, i32 14
  %43 = ptrtoint ptr %incdec.ptr.i98.12 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr.i98.12, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %44) #11
  %incdec.ptr.i98.14 = getelementptr i8, ptr %digest, i32 15
  %45 = ptrtoint ptr %incdec.ptr.i98.13 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr.i98.13, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %46) #11
  %incdec.ptr.i98.15 = getelementptr i8, ptr %digest, i32 16
  %47 = ptrtoint ptr %incdec.ptr.i98.14 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr.i98.14, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %48) #11
  %incdec.ptr.i98.16 = getelementptr i8, ptr %digest, i32 17
  %49 = ptrtoint ptr %incdec.ptr.i98.15 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr.i98.15, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %50) #11
  %incdec.ptr.i98.17 = getelementptr i8, ptr %digest, i32 18
  %51 = ptrtoint ptr %incdec.ptr.i98.16 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr.i98.16, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %52) #11
  %incdec.ptr.i98.18 = getelementptr i8, ptr %digest, i32 19
  %53 = ptrtoint ptr %incdec.ptr.i98.17 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i98.17, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %54) #11
  %55 = ptrtoint ptr %incdec.ptr.i98.18 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr.i98.18, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %56) #11
  %57 = load i8, ptr @ima_canonical_fmt, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool14.not = icmp eq i8 %57, 0
  %call = tail call i32 @strlen(ptr noundef %cond) #14
  %58 = tail call i32 @llvm.bswap.i32(i32 %call)
  %cond19 = select i1 %tobool14.not, i32 %call, i32 %58
  %namelen.sroa.0.0.extract.shift = lshr i32 %cond19, 24
  %namelen.sroa.0.0.extract.trunc = trunc i32 %namelen.sroa.0.0.extract.shift to i8
  %namelen.sroa.5.0.extract.shift = lshr i32 %cond19, 16
  %namelen.sroa.5.0.extract.trunc = trunc i32 %namelen.sroa.5.0.extract.shift to i8
  %namelen.sroa.6.0.extract.shift = lshr i32 %cond19, 8
  %namelen.sroa.6.0.extract.trunc = trunc i32 %namelen.sroa.6.0.extract.shift to i8
  %namelen.sroa.7.0.extract.trunc = trunc i32 %cond19 to i8
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %namelen.sroa.0.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %namelen.sroa.5.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %namelen.sroa.6.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %namelen.sroa.7.0.extract.trunc) #11
  %call20 = tail call i32 @strlen(ptr noundef %cond) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not1.i = icmp eq i32 %call20, 0
  br i1 %tobool.not1.i, label %cond.end.ima_putc.exit115_crit_edge, label %cond.end.while.body.i114_crit_edge

cond.end.while.body.i114_crit_edge:               ; preds = %cond.end
  br label %while.body.i114

cond.end.ima_putc.exit115_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_putc.exit115

while.body.i114:                                  ; preds = %while.body.i114.while.body.i114_crit_edge, %cond.end.while.body.i114_crit_edge
  %datalen.addr.03.i109 = phi i32 [ %dec.i111, %while.body.i114.while.body.i114_crit_edge ], [ %call20, %cond.end.while.body.i114_crit_edge ]
  %data.addr.02.i110 = phi ptr [ %incdec.ptr.i112, %while.body.i114.while.body.i114_crit_edge ], [ %cond, %cond.end.while.body.i114_crit_edge ]
  %dec.i111 = add i32 %datalen.addr.03.i109, -1
  %incdec.ptr.i112 = getelementptr i8, ptr %data.addr.02.i110, i32 1
  %59 = ptrtoint ptr %data.addr.02.i110 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %data.addr.02.i110, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %60) #11
  %tobool.not.i113 = icmp eq i32 %dec.i111, 0
  br i1 %tobool.not.i113, label %while.body.i114.ima_putc.exit115_crit_edge, label %while.body.i114.while.body.i114_crit_edge

while.body.i114.while.body.i114_crit_edge:        ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i114

while.body.i114.ima_putc.exit115_crit_edge:       ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %ima_putc.exit115

ima_putc.exit115:                                 ; preds = %while.body.i114.ima_putc.exit115_crit_edge, %cond.end.ima_putc.exit115_crit_edge
  %call21 = tail call i32 @strcmp(ptr noundef %cond, ptr noundef nonnull dereferenceable(4) @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %ima_putc.exit115.if.end35_crit_edge, label %if.then27

ima_putc.exit115.if.end35_crit_edge:              ; preds = %ima_putc.exit115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then27:                                        ; preds = %ima_putc.exit115
  call void @__sanitizer_cov_trace_pc() #13
  %61 = load i8, ptr @ima_canonical_fmt, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool28.not = icmp eq i8 %61, 0
  %template_data_len30 = getelementptr inbounds %struct.ima_template_entry, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %template_data_len30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %template_data_len30, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %cond34 = select i1 %tobool28.not, i32 %63, i32 %64
  %template_data_len.sroa.0.0.extract.shift = lshr i32 %cond34, 24
  %template_data_len.sroa.0.0.extract.trunc = trunc i32 %template_data_len.sroa.0.0.extract.shift to i8
  %template_data_len.sroa.5.0.extract.shift = lshr i32 %cond34, 16
  %template_data_len.sroa.5.0.extract.trunc = trunc i32 %template_data_len.sroa.5.0.extract.shift to i8
  %template_data_len.sroa.6.0.extract.shift = lshr i32 %cond34, 8
  %template_data_len.sroa.6.0.extract.trunc = trunc i32 %template_data_len.sroa.6.0.extract.shift to i8
  %template_data_len.sroa.7.0.extract.trunc = trunc i32 %cond34 to i8
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %template_data_len.sroa.0.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %template_data_len.sroa.5.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %template_data_len.sroa.6.0.extract.trunc) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %template_data_len.sroa.7.0.extract.trunc) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %ima_putc.exit115.if.end35_crit_edge
  %65 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %template_desc, align 4
  %num_fields125 = getelementptr inbounds %struct.ima_template_desc, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %num_fields125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_fields125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp37126 = icmp sgt i32 %68, 0
  br i1 %cmp37126, label %if.end35.for.body_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %if.end35.for.body_crit_edge
  %69 = phi ptr [ %77, %if.end58.for.body_crit_edge ], [ %66, %if.end35.for.body_crit_edge ]
  %i.0127 = phi i32 [ %inc, %if.end58.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %fields = getelementptr inbounds %struct.ima_template_desc, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fields, align 4
  %arrayidx40 = getelementptr ptr, ptr %71, i32 %i.0127
  %72 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx40, align 4
  br i1 %cmp22, label %land.lhs.true51, label %for.body.if.end58_crit_edge

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true51:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 @strcmp(ptr noundef %73, ptr noundef nonnull dereferenceable(2) @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp eq i32 %call44, 0
  %spec.select = zext i1 %cmp45 to i32
  %call54 = tail call i32 @strcmp(ptr noundef %73, ptr noundef nonnull dereferenceable(2) @.str.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  %spec.select94 = select i1 %cmp55, i32 2, i32 %spec.select
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true51, %for.body.if.end58_crit_edge
  %show.1 = phi i32 [ %spec.select94, %land.lhs.true51 ], [ 0, %for.body.if.end58_crit_edge ]
  %field_show = getelementptr inbounds %struct.ima_template_field, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %field_show to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %field_show, align 4
  %arrayidx59 = getelementptr %struct.ima_template_entry, ptr %1, i32 0, i32 4, i32 %i.0127
  tail call void %75(ptr noundef %m, i32 noundef %show.1, ptr noundef %arrayidx59) #11
  %inc = add nuw nsw i32 %i.0127, 1
  %76 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %template_desc, align 4
  %num_fields = getelementptr inbounds %struct.ima_template_desc, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_fields, align 4
  %cmp37 = icmp slt i32 %inc, %79
  br i1 %cmp37, label %if.end58.for.body_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %if.end58.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_print_digest(ptr noundef %m, ptr nocapture noundef readonly %digest, i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp3.not = icmp eq i32 %size, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %digest, i32 %i.04
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv) #11
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_fs_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @integrity_dir to i32))
  %0 = load ptr, ptr @integrity_dir, align 4
  %call = tail call ptr @securityfs_create_dir(ptr noundef nonnull @.str, ptr noundef %0) #11
  store ptr %call, ptr @ima_dir, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @securityfs_create_symlink(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef null) #11
  store ptr %call2, ptr @ima_symlink, align 4
  %cmp.i26 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  %1 = load ptr, ptr @ima_dir, align 4
  %call6 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 288, ptr noundef %1, ptr noundef null, ptr noundef nonnull @ima_measurements_ops) #11
  store ptr %call6, ptr @binary_runtime_measurements, align 4
  %cmp.i27 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end5
  %2 = load ptr, ptr @ima_dir, align 4
  %call10 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 288, ptr noundef %2, ptr noundef null, ptr noundef nonnull @ima_ascii_measurements_ops) #11
  store ptr %call10, ptr @ascii_runtime_measurements, align 4
  %cmp.i28 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end13:                                         ; preds = %if.end9
  %3 = load ptr, ptr @ima_dir, align 4
  %call14 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 288, ptr noundef %3, ptr noundef null, ptr noundef nonnull @ima_measurements_count_ops) #11
  store ptr %call14, ptr @runtime_measurements_count, align 4
  %cmp.i29 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.end13.out_crit_edge, label %if.end17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %if.end13
  %4 = load ptr, ptr @ima_dir, align 4
  %call18 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 288, ptr noundef %4, ptr noundef null, ptr noundef nonnull @ima_htable_violations_ops) #11
  store ptr %call18, ptr @violations, align 4
  %cmp.i30 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end21:                                         ; preds = %if.end17
  %5 = load ptr, ptr @ima_dir, align 4
  %call22 = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %5, ptr noundef null, ptr noundef nonnull @ima_measure_policy_ops) #11
  store ptr %call22, ptr @ima_policy, align 4
  %cmp.i31 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.end21.out_crit_edge, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end21.out_crit_edge, %if.end17.out_crit_edge, %if.end13.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %6 = load ptr, ptr @ima_policy, align 4
  tail call void @securityfs_remove(ptr noundef %6) #11
  %7 = load ptr, ptr @violations, align 4
  tail call void @securityfs_remove(ptr noundef %7) #11
  %8 = load ptr, ptr @runtime_measurements_count, align 4
  tail call void @securityfs_remove(ptr noundef %8) #11
  %9 = load ptr, ptr @ascii_runtime_measurements, align 4
  tail call void @securityfs_remove(ptr noundef %9) #11
  %10 = load ptr, ptr @binary_runtime_measurements, align 4
  tail call void @securityfs_remove(ptr noundef %10) #11
  %11 = load ptr, ptr @ima_symlink, align 4
  tail call void @securityfs_remove(ptr noundef %11) #11
  %12 = load ptr, ptr @ima_dir, align 4
  tail call void @securityfs_remove(ptr noundef %12) #11
  br label %return

return:                                           ; preds = %out, %if.end21.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %out ], [ -1, %entry.return_crit_edge ], [ 0, %if.end21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @securityfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_measurements_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @ima_measurments_seqops) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ima_measurements_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @ima_measurements_start.__warned, align 1
  br i1 %.b23, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ima_measurements_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 84, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_measurements to i32))
  %.pn45 = load volatile ptr, ptr @ima_measurements, align 4
  %cmp.not46 = icmp eq ptr %.pn45, @ima_measurements
  br i1 %cmp.not46, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %for.body
  %dec = add i64 %l.047, -1
  %6 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, @ima_measurements
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn45, %do.end.for.body_crit_edge ]
  %l.047 = phi i64 [ %dec, %for.cond.for.body_crit_edge ], [ %1, %do.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %l.047)
  %tobool9.not = icmp eq i64 %l.047, 0
  br i1 %tobool9.not, label %if.then10, label %for.cond

if.then10:                                        ; preds = %for.body
  %qe.0.le = getelementptr i8, ptr %.pn48, i32 -8
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i24, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %if.then10
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i33, label %for.end.rcu_read_unlock.exit43_crit_edge, label %land.lhs.true.i36

for.end.rcu_read_unlock.exit43_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit43

land.lhs.true.i36:                                ; preds = %for.end
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit43

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit43

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit43

rcu_read_unlock.exit43:                           ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit43_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit43_crit_edge, %for.end.rcu_read_unlock.exit43_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit43, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %qe.0.le, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit43 ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i40 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i42 = add i32 %10, -1
  store volatile i32 %sub.i.i.i42, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ima_measurements_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ima_measurements_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %later = getelementptr inbounds %struct.ima_queue_entry, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %later to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %later, align 4
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i5, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %rcu_read_lock.exit
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %6 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i12 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %5, @ima_measurements
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %spec.select = select i1 %cmp, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_ascii_measurements_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @ima_ascii_measurements_seqops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_ascii_measurements_show(ptr noundef %m, ptr nocapture noundef readonly %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.ima_queue_entry, ptr %v, i32 0, i32 2
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %template_desc = getelementptr inbounds %struct.ima_template_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %template_desc, align 4
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2.not = icmp eq i8 %7, 0
  br i1 %cmp2.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fmt = getelementptr inbounds %struct.ima_template_desc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.false ], [ %5, %if.end.cond.end_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %11) #11
  %digests = getelementptr inbounds %struct.ima_template_entry, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %digests to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %digests, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_sha1_idx to i32))
  %14 = load i32, ptr @ima_sha1_idx, align 4
  %digest = getelementptr %struct.tpm_digest, ptr %13, i32 %14, i32 1
  %15 = ptrtoint ptr %digest to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %digest, align 1
  %conv.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i) #11
  %add.ptr.i.1 = getelementptr i8, ptr %digest, i32 1
  %17 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.1, align 1
  %conv.i.1 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.1) #11
  %add.ptr.i.2 = getelementptr i8, ptr %digest, i32 2
  %19 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i.2, align 1
  %conv.i.2 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.2) #11
  %add.ptr.i.3 = getelementptr i8, ptr %digest, i32 3
  %21 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.3, align 1
  %conv.i.3 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.3) #11
  %add.ptr.i.4 = getelementptr i8, ptr %digest, i32 4
  %23 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.4, align 1
  %conv.i.4 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.4) #11
  %add.ptr.i.5 = getelementptr i8, ptr %digest, i32 5
  %25 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.5, align 1
  %conv.i.5 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.5) #11
  %add.ptr.i.6 = getelementptr i8, ptr %digest, i32 6
  %27 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.6, align 1
  %conv.i.6 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.6) #11
  %add.ptr.i.7 = getelementptr i8, ptr %digest, i32 7
  %29 = ptrtoint ptr %add.ptr.i.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.7, align 1
  %conv.i.7 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.7) #11
  %add.ptr.i.8 = getelementptr i8, ptr %digest, i32 8
  %31 = ptrtoint ptr %add.ptr.i.8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr.i.8, align 1
  %conv.i.8 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.8) #11
  %add.ptr.i.9 = getelementptr i8, ptr %digest, i32 9
  %33 = ptrtoint ptr %add.ptr.i.9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.9, align 1
  %conv.i.9 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.9) #11
  %add.ptr.i.10 = getelementptr i8, ptr %digest, i32 10
  %35 = ptrtoint ptr %add.ptr.i.10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.i.10, align 1
  %conv.i.10 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.10) #11
  %add.ptr.i.11 = getelementptr i8, ptr %digest, i32 11
  %37 = ptrtoint ptr %add.ptr.i.11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.11, align 1
  %conv.i.11 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.11) #11
  %add.ptr.i.12 = getelementptr i8, ptr %digest, i32 12
  %39 = ptrtoint ptr %add.ptr.i.12 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i.12, align 1
  %conv.i.12 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.12) #11
  %add.ptr.i.13 = getelementptr i8, ptr %digest, i32 13
  %41 = ptrtoint ptr %add.ptr.i.13 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i.13, align 1
  %conv.i.13 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.13) #11
  %add.ptr.i.14 = getelementptr i8, ptr %digest, i32 14
  %43 = ptrtoint ptr %add.ptr.i.14 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i.14, align 1
  %conv.i.14 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.14) #11
  %add.ptr.i.15 = getelementptr i8, ptr %digest, i32 15
  %45 = ptrtoint ptr %add.ptr.i.15 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.15, align 1
  %conv.i.15 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.15) #11
  %add.ptr.i.16 = getelementptr i8, ptr %digest, i32 16
  %47 = ptrtoint ptr %add.ptr.i.16 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.16, align 1
  %conv.i.16 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.16) #11
  %add.ptr.i.17 = getelementptr i8, ptr %digest, i32 17
  %49 = ptrtoint ptr %add.ptr.i.17 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i.17, align 1
  %conv.i.17 = zext i8 %50 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.17) #11
  %add.ptr.i.18 = getelementptr i8, ptr %digest, i32 18
  %51 = ptrtoint ptr %add.ptr.i.18 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i.18, align 1
  %conv.i.18 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.18) #11
  %add.ptr.i.19 = getelementptr i8, ptr %digest, i32 19
  %53 = ptrtoint ptr %add.ptr.i.19 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i.19, align 1
  %conv.i.19 = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %conv.i.19) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef %cond) #11
  %55 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %template_desc, align 4
  %num_fields41 = getelementptr inbounds %struct.ima_template_desc, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %num_fields41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_fields41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp942 = icmp sgt i32 %58, 0
  br i1 %cmp942, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.17) #11
  %len = getelementptr %struct.ima_template_entry, ptr %1, i32 0, i32 4, i32 %i.043, i32 1
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp12 = icmp eq i32 %60, 0
  br i1 %cmp12, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11 = getelementptr %struct.ima_template_entry, ptr %1, i32 0, i32 4, i32 %i.043
  %61 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %template_desc, align 4
  %fields = getelementptr inbounds %struct.ima_template_desc, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fields, align 4
  %arrayidx17 = getelementptr ptr, ptr %64, i32 %i.043
  %65 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx17, align 4
  %field_show = getelementptr inbounds %struct.ima_template_field, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %field_show to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %field_show, align 4
  tail call void %68(ptr noundef %m, i32 noundef 3, ptr noundef %arrayidx11) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %69 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %template_desc, align 4
  %num_fields = getelementptr inbounds %struct.ima_template_desc, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_fields, align 4
  %cmp9 = icmp slt i32 %inc, %72
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.18) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_show_measurements_count(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmpbuf.i) #11
  %0 = call ptr @memset(ptr %tmpbuf.i, i32 255, i32 32)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ima_htable, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_htable to i32))
  %1 = load volatile i32, ptr @ima_htable, align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf.i, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %1) #11
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf.i, i32 noundef %call1.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmpbuf.i) #11
  ret i32 %call3.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_show_htable_violations(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #1 align 64 {
entry:
  %tmpbuf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmpbuf.i) #11
  %0 = call ptr @memset(ptr %tmpbuf.i, i32 255, i32 32)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1), i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1) to i32))
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1), align 4
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %tmpbuf.i, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %1) #11
  %call3.i = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %tmpbuf.i, i32 noundef %call1.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmpbuf.i) #11
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_write_policy(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %datalen, ptr nocapture noundef readonly %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp1.not = icmp eq i64 %1, 0
  br i1 %cmp1.not, label %if.end3, label %entry.if.then24_crit_edge

entry.if.then24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.end3:                                          ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %datalen, i32 4095)
  %call = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %2) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  br label %out

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @ima_write_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.out_free_crit_edge, label %if.end11

if.end7.out_free_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end11:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %5)
  %cmp12 = icmp eq i8 %5, 47
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call fastcc i32 @ima_read_policy(ptr noundef %call)
  br label %if.end21

if.else:                                          ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_appraise to i32))
  %6 = load i32, ptr @ima_appraise, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else18, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  tail call void @integrity_audit_msg(i32 noundef 1802, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 0) #11
  br label %if.end21

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @ima_parse_add_rule(ptr noundef %call) #11
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %do.end, %if.then14
  %result.0 = phi i32 [ %call15, %if.then14 ], [ -13, %do.end ], [ %call19, %if.else18 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ima_write_mutex) #11
  br label %out_free

out_free:                                         ; preds = %if.end21, %if.end7.out_free_crit_edge
  %result.1 = phi i32 [ %call8, %if.end7.out_free_crit_edge ], [ %result.0, %if.end21 ]
  tail call void @kfree(ptr noundef %call) #11
  br label %out

out:                                              ; preds = %out_free, %if.then5
  %result.2 = phi i32 [ %3, %if.then5 ], [ %result.1, %out_free ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2)
  %cmp22 = icmp slt i32 %result.2, 0
  br i1 %cmp22, label %out.if.then24_crit_edge, label %out.if.end25_crit_edge

out.if.end25_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

out.if.then24_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %out.if.then24_crit_edge, %entry.if.then24_crit_edge
  %result.237 = phi i32 [ %result.2, %out.if.then24_crit_edge ], [ -22, %entry.if.then24_crit_edge ]
  store i1 true, ptr @valid_policy, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %out.if.end25_crit_edge
  %result.236 = phi i32 [ %result.237, %if.then24 ], [ %result.2, %out.if.end25_crit_edge ]
  ret i32 %result.236
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_open_policy(ptr nocapture noundef readnone %inode, ptr noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %and2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 0
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %if.then
  %call = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @seq_open(ptr noundef %filp, ptr noundef nonnull @ima_policy_seqops) #11
  br label %return

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @ima_fs_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %. = select i1 %tobool9.not, i32 0, i32 -16
  br label %return

return:                                           ; preds = %if.end7, %if.end5, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -13, %if.then.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ %., %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_release_policy(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %.b14 = load i1, ptr @valid_policy, align 4
  br i1 %.b14, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @ima_check_policy() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @valid_policy, align 4
  br label %do.end

do.end:                                           ; preds = %if.then4, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %cause.0 = phi ptr [ @.str.31, %if.then4 ], [ @.str.30, %land.lhs.true.do.end_crit_edge ], [ @.str.31, %if.end.do.end_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %cause.0) #15
  %.b13 = load i1, ptr @valid_policy, align 4
  %lnot.ext = zext i1 %.b13 to i32
  tail call void @integrity_audit_msg(i32 noundef 1802, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull %cause.0, i32 noundef %lnot.ext, i32 noundef 0) #11
  %.b = load i1, ptr @valid_policy, align 4
  br i1 %.b, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ima_delete_rules() #11
  store i1 false, ptr @valid_policy, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @ima_fs_flags) #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ima_update_policy() #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @ima_fs_flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end10 ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ima_read_policy(ptr noundef %path) unnamed_addr #1 align 64 {
entry:
  %data = alloca ptr, align 4
  %datap = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datap) #11
  %call = tail call i32 @strlen(ptr noundef %path) #14
  %1 = ptrtoint ptr %datap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %path, ptr %datap, align 4
  %call1 = call ptr @strsep(ptr noundef nonnull %datap, ptr noundef nonnull @.str.18) #11
  %call2 = call i32 @kernel_read_file_from_path(ptr noundef %path, i64 noundef 0, ptr noundef nonnull %data, i32 noundef 2147483647, ptr noundef null, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %path, i32 noundef %call2) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %datap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %datap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4.not46 = icmp eq i32 %call2, 0
  br i1 %cmp4.not46, label %if.end.if.else_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

while.cond:                                       ; preds = %do.end15
  %sub = sub i32 %size.047, %call16
  %cmp4.not = icmp eq i32 %sub, 0
  br i1 %cmp4.not, label %while.cond.if.else_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.cond.if.else_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %size.047 = phi i32 [ %sub, %while.cond.land.rhs_crit_edge ], [ %call2, %if.end.land.rhs_crit_edge ]
  %call5 = call ptr @strsep(ptr noundef nonnull %datap, ptr noundef nonnull @.str.18) #11
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %land.rhs.if.else_crit_edge, label %do.body6

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.body6:                                         ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ima_read_policy.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ima_read_policy, %if.then12)) #11
          to label %do.end15 [label %if.then12], !srcloc !124

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ima_read_policy.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.29, ptr noundef nonnull %call5) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body6
  %call16 = call i32 @ima_parse_add_rule(ptr noundef nonnull %call5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %while.end, label %while.cond

while.end:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void @vfree(ptr noundef %6) #11
  br label %cleanup

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %while.cond.if.else_crit_edge, %if.end.if.else_crit_edge
  %call. = phi i32 [ %call, %if.end.if.else_crit_edge ], [ -22, %land.rhs.if.else_crit_edge ], [ %call, %while.cond.if.else_crit_edge ]
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void @vfree(ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %while.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call16, %while.end ], [ %call., %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datap) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_parse_add_rule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read_file_from_path(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ima_policy_start(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_policy_stop(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ima_policy_next(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_policy_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_check_policy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_delete_rules() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_update_policy() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !109, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__setup_default_canonical_fmt_setup, !1, !"__setup_default_canonical_fmt_setup", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_fs.c", i32 37, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_fs.c", i32 165, i32 28}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_fs.c", i32 180, i32 50}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/ima/ima_fs.c", i32 182, i32 50}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/integrity/ima/ima_fs.c", i32 213, i32 17}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_fs.c", i32 459, i32 55}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/ima/ima_fs.c", i32 465, i32 29}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/ima/ima_fs.c", i32 472, i32 29}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/integrity/ima/ima_fs.c", i32 479, i32 29}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/integrity/ima/ima_fs.c", i32 486, i32 29}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/integrity/ima/ima_fs.c", i32 491, i32 38}
!22 = !{ptr @ima_canonical_fmt, !23, !"ima_canonical_fmt", i1 false, i1 false}
!23 = !{!"../security/integrity/ima/ima_fs.c", i32 29, i32 6}
!24 = !{ptr @ima_dir, !25, !"ima_dir", i1 false, i1 false}
!25 = !{!"../security/integrity/ima/ima_fs.c", i32 359, i32 23}
!26 = !{ptr @ima_symlink, !27, !"ima_symlink", i1 false, i1 false}
!27 = !{!"../security/integrity/ima/ima_fs.c", i32 360, i32 23}
!28 = !{ptr @binary_runtime_measurements, !29, !"binary_runtime_measurements", i1 false, i1 false}
!29 = !{!"../security/integrity/ima/ima_fs.c", i32 361, i32 23}
!30 = !{ptr @ascii_runtime_measurements, !31, !"ascii_runtime_measurements", i1 false, i1 false}
!31 = !{!"../security/integrity/ima/ima_fs.c", i32 362, i32 23}
!32 = !{ptr @runtime_measurements_count, !33, !"runtime_measurements_count", i1 false, i1 false}
!33 = !{!"../security/integrity/ima/ima_fs.c", i32 363, i32 23}
!34 = !{ptr @violations, !35, !"violations", i1 false, i1 false}
!35 = !{!"../security/integrity/ima/ima_fs.c", i32 364, i32 23}
!36 = !{ptr @ima_policy, !37, !"ima_policy", i1 false, i1 false}
!37 = !{!"../security/integrity/ima/ima_fs.c", i32 365, i32 23}
!38 = !{ptr @__setup_str_default_canonical_fmt_setup, !1, !"__setup_str_default_canonical_fmt_setup", i1 false, i1 false}
!39 = !{ptr @ima_measurements_ops, !40, !"ima_measurements_ops", i1 false, i1 false}
!40 = !{!"../security/integrity/ima/ima_fs.c", i32 201, i32 37}
!41 = !{ptr @ima_measurments_seqops, !42, !"ima_measurments_seqops", i1 false, i1 false}
!42 = !{!"../security/integrity/ima/ima_fs.c", i32 189, i32 36}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../security/integrity/ima/ima_fs.c", i32 84, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ima_ascii_measurements_ops, !55, !"ima_ascii_measurements_ops", i1 false, i1 false}
!55 = !{!"../security/integrity/ima/ima_fs.c", i32 267, i32 37}
!56 = !{ptr @ima_ascii_measurements_seqops, !57, !"ima_ascii_measurements_seqops", i1 false, i1 false}
!57 = !{!"../security/integrity/ima/ima_fs.c", i32 255, i32 36}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/integrity/ima/ima_fs.c", i32 234, i32 16}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/integrity/ima/ima_fs.c", i32 240, i32 16}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/integrity/ima/ima_fs.c", i32 244, i32 15}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/integrity/ima/ima_fs.c", i32 251, i32 14}
!66 = !{ptr @ima_measurements_count_ops, !67, !"ima_measurements_count_ops", i1 false, i1 false}
!67 = !{!"../security/integrity/ima/ima_fs.c", i32 71, i32 37}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/integrity/ima/ima_fs.c", i32 47, i32 42}
!70 = !{ptr @ima_htable_violations_ops, !71, !"ima_htable_violations_ops", i1 false, i1 false}
!71 = !{!"../security/integrity/ima/ima_fs.c", i32 58, i32 37}
!72 = !{ptr @ima_measure_policy_ops, !73, !"ima_measure_policy_ops", i1 false, i1 false}
!73 = !{!"../security/integrity/ima/ima_fs.c", i32 445, i32 37}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/integrity/ima/ima_fs.c", i32 341, i32 3}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ima_write_policy._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ima_write_policy._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../security/integrity/ima/ima_fs.c", i32 343, i32 9}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../security/integrity/ima/ima_fs.c", i32 343, i32 26}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../security/integrity/ima/ima_fs.c", i32 27, i32 8}
!85 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ima_write_mutex, !84, !"ima_write_mutex", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../security/integrity/ima/ima_fs.c", i32 290, i32 3}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ima_read_policy._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ima_read_policy._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../security/integrity/ima/ima_fs.c", i32 298, i32 3}
!94 = !{ptr @ima_read_policy.__UNIQUE_ID_ddebug247, !93, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!95 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"valid_policy", i1 false, i1 false}
!97 = !{!"../security/integrity/ima/ima_fs.c", i32 39, i32 12}
!98 = !{ptr @ima_policy_seqops, !99, !"ima_policy_seqops", i1 false, i1 false}
!99 = !{!"../security/integrity/ima/ima_fs.c", i32 374, i32 36}
!100 = !{ptr @ima_fs_flags, !101, !"ima_fs_flags", i1 false, i1 false}
!101 = !{!"../security/integrity/ima/ima_fs.c", i32 371, i32 22}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../security/integrity/ima/ima_fs.c", i32 412, i32 37}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../security/integrity/ima/ima_fs.c", i32 412, i32 51}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../security/integrity/ima/ima_fs.c", i32 422, i32 2}
!108 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ima_release_policy._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ima_release_policy._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{i64 2149992658}
!123 = !{i64 2149992924}
!124 = !{i64 2148846300, i64 2148846305, i64 2148846318, i64 2148846362, i64 2148846396, i64 2148846417}
