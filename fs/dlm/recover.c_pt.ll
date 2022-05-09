; ModuleID = '/llk/IR_all_yes/fs/dlm/recover.c_pt.bc'
source_filename = "../fs/dlm/recover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.41, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.41 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.42 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_member = type { %struct.list_head, i32, i32, i32, i32, i32, i32 }
%struct.dlm_rcom = type { %struct.dlm_header, i32, i32, i64, i64, i64, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dlm_rsbtable = type { %struct.rb_root, %struct.rb_root, %struct.spinlock, i32 }
%struct.rb_root = type { ptr }

@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/dlm/recover.c\00", [47 x i8] zeroinitializer }, align 32
@dlm_wait_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dlm: %s: dlm_wait_function timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlm_wait_function\00", [46 x i8] zeroinitializer }, align 32
@dlm_wait_function._entry_ptr = internal global ptr @dlm_wait_function._entry, section ".printk_index", align 4
@dlm_wait_function._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dlm: %s: dlm_wait_function aborted\0A\00", [58 x i8] zeroinitializer }, align 32
@dlm_wait_function._entry_ptr.5 = internal global ptr @dlm_wait_function._entry.3, section ".printk_index", align 4
@dlm_recover_masters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016dlm: %s: dlm_recover_masters\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_recover_masters\00", [44 x i8] zeroinitializer }, align 32
@dlm_recover_masters._entry_ptr = internal global ptr @dlm_recover_masters._entry, section ".printk_index", align 4
@dlm_recover_masters._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dlm: %s: dlm_recover_masters\0A\00", [32 x i8] zeroinitializer }, align 32
@dlm_recover_masters._entry_ptr.10 = internal global ptr @dlm_recover_masters._entry.8, section ".printk_index", align 4
@dlm_recover_masters._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dlm: %s: dlm_recover_masters %u of %u\0A\00", [55 x i8] zeroinitializer }, align 32
@dlm_recover_masters._entry_ptr.13 = internal global ptr @dlm_recover_masters._entry.11, section ".printk_index", align 4
@dlm_recover_masters._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dlm: %s: dlm_recover_masters %u of %u\0A\00", [55 x i8] zeroinitializer }, align 32
@dlm_recover_masters._entry_ptr.16 = internal global ptr @dlm_recover_masters._entry.14, section ".printk_index", align 4
@dlm_recover_master_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: %s: dlm_recover_master_reply no id %llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dlm_recover_master_reply\00", [39 x i8] zeroinitializer }, align 32
@dlm_recover_master_reply._entry_ptr = internal global ptr @dlm_recover_master_reply._entry, section ".printk_index", align 4
@dlm_recover_locks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dlm: %s: dlm_recover_locks %d out\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlm_recover_locks\00", [46 x i8] zeroinitializer }, align 32
@dlm_recover_locks._entry_ptr = internal global ptr @dlm_recover_locks._entry, section ".printk_index", align 4
@dlm_recover_locks._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dlm: %s: dlm_recover_locks %d out\0A\00", [59 x i8] zeroinitializer }, align 32
@dlm_recover_locks._entry_ptr.23 = internal global ptr @dlm_recover_locks._entry.21, section ".printk_index", align 4
@dlm_recovered_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013\0ADLM:  Assertion failed on line %d of file %s\0ADLM:  assertion:  \22%s\22\0ADLM:  time = %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_recovered_lock\00", [45 x i8] zeroinitializer }, align 32
@dlm_recovered_lock._entry_ptr = internal global ptr @dlm_recovered_lock._entry, section ".printk_index", align 4
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rsb_flag(r, RSB_NEW_MASTER)\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dlm_recovered_lock._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dlm_recovered_lock._entry_ptr.29 = internal global ptr @dlm_recovered_lock._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DLM:  Record message above and reboot.\0A\00", [56 x i8] zeroinitializer }, align 32
@dlm_recover_rsbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dlm: %s: dlm_recover_rsbs %d done\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_recover_rsbs\00", [47 x i8] zeroinitializer }, align 32
@dlm_recover_rsbs._entry_ptr = internal global ptr @dlm_recover_rsbs._entry, section ".printk_index", align 4
@dlm_recover_rsbs._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dlm: %s: dlm_recover_rsbs %d done\0A\00", [59 x i8] zeroinitializer }, align 32
@dlm_recover_rsbs._entry_ptr.35 = internal global ptr @dlm_recover_rsbs._entry.33, section ".printk_index", align 4
@dlm_create_root_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013dlm: %s: root list not empty\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlm_create_root_list\00", [43 x i8] zeroinitializer }, align 32
@dlm_create_root_list._entry_ptr = internal global ptr @dlm_create_root_list._entry, section ".printk_index", align 4
@dlm_create_root_list._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: %s: dlm_create_root_list toss not empty\0A\00", [48 x i8] zeroinitializer }, align 32
@dlm_create_root_list._entry_ptr.40 = internal global ptr @dlm_create_root_list._entry.38, section ".printk_index", align 4
@dlm_clear_toss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016dlm: %s: dlm_clear_toss %u done\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlm_clear_toss\00", [17 x i8] zeroinitializer }, align 32
@dlm_clear_toss._entry_ptr = internal global ptr @dlm_clear_toss._entry, section ".printk_index", align 4
@dlm_clear_toss._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dlm: %s: dlm_clear_toss %u done\0A\00", [61 x i8] zeroinitializer }, align 32
@dlm_clear_toss._entry_ptr.45 = internal global ptr @dlm_clear_toss._entry.43, section ".printk_index", align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@recover_idr_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dlm: %s: warning: recover_list_count %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"recover_idr_clear\00", [46 x i8] zeroinitializer }, align 32
@recover_idr_clear._entry_ptr = internal global ptr @recover_idr_clear._entry, section ".printk_index", align 4
@recover_locks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.51, ptr @.str, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"recover_locks\00", [18 x i8] zeroinitializer }, align 32
@recover_locks._entry_ptr = internal global ptr @recover_locks._entry, section ".printk_index", align 4
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"!r->res_recover_locks_count\00", [36 x i8] zeroinitializer }, align 32
@recover_locks._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.51, ptr @.str, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@recover_locks._entry_ptr.54 = internal global ptr @recover_locks._entry.53, section ".printk_index", align 4
@recover_list_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.55, ptr @.str, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"recover_list_clear\00", [45 x i8] zeroinitializer }, align 32
@recover_list_clear._entry_ptr = internal global ptr @recover_list_clear._entry, section ".printk_index", align 4
@recover_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dlm: %s: recover_conversion %x set gr to rq %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"recover_conversion\00", [45 x i8] zeroinitializer }, align 32
@recover_conversion._entry_ptr = internal global ptr @recover_conversion._entry, section ".printk_index", align 4
@recover_conversion._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dlm: %s: recover_conversion %x set gr %d\0A\00", [52 x i8] zeroinitializer }, align 32
@recover_conversion._entry_ptr.60 = internal global ptr @recover_conversion._entry.58, section ".printk_index", align 4
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 48, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 54, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 60, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 531, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 557, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 573, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 690, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 701, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 888, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 901, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 915, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 955, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 36, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 372, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 638, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 288, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 837, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [20 x i8] c"../fs/dlm/recover.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 841, i32 4 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @dlm_clear_toss._entry, ptr @dlm_clear_toss._entry.43, ptr @dlm_clear_toss._entry_ptr, ptr @dlm_clear_toss._entry_ptr.45, ptr @dlm_create_root_list._entry, ptr @dlm_create_root_list._entry.38, ptr @dlm_create_root_list._entry_ptr, ptr @dlm_create_root_list._entry_ptr.40, ptr @dlm_recover_locks._entry, ptr @dlm_recover_locks._entry.21, ptr @dlm_recover_locks._entry_ptr, ptr @dlm_recover_locks._entry_ptr.23, ptr @dlm_recover_master_reply._entry, ptr @dlm_recover_master_reply._entry_ptr, ptr @dlm_recover_masters._entry, ptr @dlm_recover_masters._entry.11, ptr @dlm_recover_masters._entry.14, ptr @dlm_recover_masters._entry.8, ptr @dlm_recover_masters._entry_ptr, ptr @dlm_recover_masters._entry_ptr.10, ptr @dlm_recover_masters._entry_ptr.13, ptr @dlm_recover_masters._entry_ptr.16, ptr @dlm_recover_rsbs._entry, ptr @dlm_recover_rsbs._entry.33, ptr @dlm_recover_rsbs._entry_ptr, ptr @dlm_recover_rsbs._entry_ptr.35, ptr @dlm_recovered_lock._entry, ptr @dlm_recovered_lock._entry.27, ptr @dlm_recovered_lock._entry_ptr, ptr @dlm_recovered_lock._entry_ptr.29, ptr @dlm_wait_function._entry, ptr @dlm_wait_function._entry.3, ptr @dlm_wait_function._entry_ptr, ptr @dlm_wait_function._entry_ptr.5, ptr @recover_conversion._entry, ptr @recover_conversion._entry.58, ptr @recover_conversion._entry_ptr, ptr @recover_conversion._entry_ptr.60, ptr @recover_idr_clear._entry, ptr @recover_idr_clear._entry_ptr, ptr @recover_list_clear._entry, ptr @recover_list_clear._entry_ptr, ptr @recover_locks._entry, ptr @recover_locks._entry.53, ptr @recover_locks._entry_ptr, ptr @recover_locks._entry_ptr.54, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_wait_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_wait_function._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_masters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_masters._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_masters._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_masters._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_master_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_locks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_locks._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recovered_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recovered_lock._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_rsbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_rsbs._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_create_root_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_create_root_list._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_clear_toss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_clear_toss._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_idr_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_locks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_locks._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_list_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_conversion._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_wait_function(ptr noundef %ls, ptr nocapture noundef readonly %testfn) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %ls_wait_general = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 83
  br label %while.cond

while.cond:                                       ; preds = %if.end48.while.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  %mul = mul i32 %0, 100
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 50) #7
  %call = call i32 %testfn(ptr noundef %ls) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.end, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

lor.end:                                          ; preds = %while.cond
  %1 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not, label %3, label %lor.end.while.end_crit_edge

lor.end.while.end_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

3:                                                ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool10.not = icmp eq i32 %mul, 0
  br i1 %tobool10.not, label %.if.end48_crit_edge, label %if.then13

.if.end48_crit_edge:                              ; preds = %3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then13:                                        ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call16128 = call i32 @prepare_to_wait_event(ptr noundef %ls_wait_general, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call18129 = call i32 %testfn(ptr noundef %ls) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18129)
  %tobool19.not130 = icmp eq i32 %call18129, 0
  br i1 %tobool19.not130, label %lor.end23.preheader, label %if.then13.if.end44.thread138_crit_edge

if.then13.if.end44.thread138_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138

lor.end23.preheader:                              ; preds = %if.then13
  %mul15 = mul i32 %5, 100
  br label %lor.end23

lor.end23:                                        ; preds = %cleanup.lor.end23_crit_edge, %lor.end23.preheader
  %__ret14.0131 = phi i32 [ %call41, %cleanup.lor.end23_crit_edge ], [ %mul15, %lor.end23.preheader ]
  %6 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i102 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i102)
  %tobool22.not = icmp eq i32 %and1.i.i102, 0
  br i1 %tobool22.not, label %8, label %lor.end23.if.end44.thread138_crit_edge

lor.end23.if.end44.thread138_crit_edge:           ; preds = %lor.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138

8:                                                ; preds = %lor.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.0131)
  %tobool34.not = icmp eq i32 %__ret14.0131, 0
  br i1 %tobool34.not, label %if.end44, label %cleanup

cleanup:                                          ; preds = %8
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret14.0131) #7
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %ls_wait_general, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call18 = call i32 %testfn(ptr noundef %ls) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.lor.end23_crit_edge, label %cleanup.if.end44.thread138_crit_edge

cleanup.if.end44.thread138_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138

cleanup.lor.end23_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end23

if.end44.thread138:                               ; preds = %cleanup.if.end44.thread138_crit_edge, %lor.end23.if.end44.thread138_crit_edge, %if.then13.if.end44.thread138_crit_edge
  call void @finish_wait(ptr noundef %ls_wait_general, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %while.end

if.end44:                                         ; preds = %8
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %ls_wait_general, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %.if.end48_crit_edge
  %9 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ls_flags.i, align 4
  %11 = and i32 %10, 64
  %tobool50.not = icmp eq i32 %11, 0
  br i1 %tobool50.not, label %if.end48.while.cond_crit_edge, label %do.body52

if.end48.while.cond_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.body52:                                        ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool53.not = icmp eq i32 %12, 0
  br i1 %tobool53.not, label %do.body52.cleanup81_crit_edge, label %do.body52.cleanup81.sink.split_crit_edge

do.body52.cleanup81.sink.split_crit_edge:         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81.sink.split

do.body52.cleanup81_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

while.end:                                        ; preds = %if.end44.thread138, %lor.end.while.end_crit_edge, %while.cond.while.end_crit_edge
  %13 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i104 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i104)
  %tobool65.not = icmp eq i32 %and1.i.i104, 0
  br i1 %tobool65.not, label %while.end.cleanup81_crit_edge, label %do.body67

while.end.cleanup81_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

do.body67:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool68.not = icmp eq i32 %15, 0
  br i1 %tobool68.not, label %do.body67.cleanup81_crit_edge, label %do.body67.cleanup81.sink.split_crit_edge

do.body67.cleanup81.sink.split_crit_edge:         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81.sink.split

do.body67.cleanup81_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

cleanup81.sink.split:                             ; preds = %do.body67.cleanup81.sink.split_crit_edge, %do.body52.cleanup81.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str.1, %do.body52.cleanup81.sink.split_crit_edge ], [ @.str.4, %do.body67.cleanup81.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %do.body52.cleanup81.sink.split_crit_edge ], [ -4, %do.body67.cleanup81.sink.split_crit_edge ]
  %ls_name74 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, ptr noundef %ls_name74) #10
  br label %cleanup81

cleanup81:                                        ; preds = %cleanup81.sink.split, %do.body67.cleanup81_crit_edge, %while.end.cleanup81_crit_edge, %do.body52.cleanup81_crit_edge
  %retval.0 = phi i32 [ -110, %do.body52.cleanup81_crit_edge ], [ 0, %while.end.cleanup81_crit_edge ], [ -4, %do.body67.cleanup81_crit_edge ], [ %retval.0.ph, %cleanup81.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_status(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_lock = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #7
  %ls_recover_status = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 62
  %0 = ptrtoint ptr %ls_recover_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_recover_status, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #7
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_set_recover_status(ptr noundef %ls, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_lock = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #7
  %ls_recover_status.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 62
  %0 = ptrtoint ptr %ls_recover_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_recover_status.i, align 8
  %or.i = or i32 %1, %status
  store i32 %or.i, ptr %ls_recover_status.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_members_wait(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  %slots = alloca ptr, align 4
  %num_slots = alloca i32, align 4
  %slots_size = alloca i32, align 4
  %gen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slots) #7
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %slots, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_slots) #7
  %1 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_slots, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slots_size) #7
  %2 = ptrtoint ptr %slots_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %slots_size, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen) #7
  %3 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gen, align 4, !annotation !113
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  %4 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %memb.057 = load ptr, ptr %ls_nodes, align 4
  %cmp.not58 = icmp eq ptr %memb.057, %ls_nodes
  br i1 %cmp.not58, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %memb.059 = phi ptr [ %memb.0, %for.body.for.body_crit_edge ], [ %memb.057, %entry.for.body_crit_edge ]
  %slot = getelementptr inbounds %struct.dlm_member, ptr %memb.059, i32 0, i32 3
  %5 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %slot, align 4
  %generation = getelementptr inbounds %struct.dlm_member, ptr %memb.059, i32 0, i32 6
  %6 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %generation, align 4
  %7 = ptrtoint ptr %memb.059 to i32
  call void @__asan_load4_noabort(i32 %7)
  %memb.0 = load ptr, ptr %memb.059, align 4
  %cmp.not = icmp eq ptr %memb.0, %ls_nodes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ls_low_nodeid = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 34
  %8 = ptrtoint ptr %ls_low_nodeid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ls_low_nodeid, align 8
  %call = tail call i32 @dlm_our_nodeid() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call)
  %cmp7 = icmp eq i32 %9, %call
  %ls_recover_buf.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  %10 = ptrtoint ptr %ls_recover_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ls_recover_buf.i, align 8
  br i1 %cmp7, label %if.then, label %if.else15

if.then:                                          ; preds = %for.end
  %12 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %memb.040.i = load ptr, ptr %ls_nodes, align 4
  %cmp.not41.i = icmp eq ptr %memb.040.i, %ls_nodes
  br i1 %cmp.not41.i, label %if.then.if.end_crit_edge, label %for.cond2.preheader.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond2.preheader.lr.ph.i:                      ; preds = %if.then
  %ls_flags.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %rc_result.i = getelementptr inbounds %struct.dlm_rcom, ptr %11, i32 0, i32 2
  br label %for.cond2.preheader.i

for.cond.loopexit.i:                              ; preds = %if.end6.i
  %13 = ptrtoint ptr %memb.042.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %memb.0.i = load ptr, ptr %memb.042.i, align 4
  %cmp.not.i = icmp eq ptr %memb.0.i, %ls_nodes
  br i1 %cmp.not.i, label %for.cond.loopexit.i.if.end_crit_edge, label %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge

for.cond.loopexit.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i

for.cond.loopexit.i.if.end_crit_edge:             ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond2.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %memb.042.i = phi ptr [ %memb.040.i, %for.cond2.preheader.lr.ph.i ], [ %memb.0.i, %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge ]
  %14 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i35.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35.i)
  %tobool.not36.i = icmp eq i32 %and1.i.i35.i, 0
  br i1 %tobool.not36.i, label %if.end.lr.ph.i, label %for.cond2.preheader.i.out_crit_edge

for.cond2.preheader.i.out_crit_edge:              ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.lr.ph.i:                                   ; preds = %for.cond2.preheader.i
  %nodeid.i = getelementptr inbounds %struct.dlm_member, ptr %memb.042.i, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.end12.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %delay.037.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %spec.select.i, %if.end12.i.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nodeid.i, align 4
  %call3.i = tail call i32 @dlm_rcom_status(ptr noundef %ls, i32 noundef %17, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6.i:                                        ; preds = %if.end.i
  tail call void @dlm_slot_save(ptr noundef %ls, ptr noundef %11, ptr noundef %memb.042.i) #7
  %18 = ptrtoint ptr %rc_result.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rc_result.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.cond.loopexit.i

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %delay.037.i)
  %cmp13.i = icmp slt i32 %delay.037.i, 1000
  %add.i = add i32 %delay.037.i, 20
  %spec.select.i = select i1 %cmp13.i, i32 %add.i, i32 %delay.037.i
  tail call void @msleep(i32 noundef %spec.select.i) #7
  %20 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end12.i.if.end.i_crit_edge, label %if.end12.i.out_crit_edge

if.end12.i.out_crit_edge:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12.i.if.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end:                                           ; preds = %for.cond.loopexit.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %call10 = call i32 @dlm_slots_assign(ptr noundef %ls, ptr noundef nonnull %num_slots, ptr noundef nonnull %slots_size, ptr noundef nonnull %slots, ptr noundef nonnull %gen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %ls_recover_lock = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #7
  %ls_recover_status.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 62
  %22 = ptrtoint ptr %ls_recover_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ls_recover_status.i, align 8
  %or.i = or i32 %23, 2
  store i32 %or.i, ptr %ls_recover_status.i, align 8
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_slots, align 4
  %ls_num_slots = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 38
  %26 = ptrtoint ptr %ls_num_slots to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ls_num_slots, align 8
  %27 = ptrtoint ptr %slots_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slots_size, align 4
  %ls_slots_size = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 39
  %29 = ptrtoint ptr %ls_slots_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ls_slots_size, align 4
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slots, align 4
  %ls_slots = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 40
  %32 = ptrtoint ptr %ls_slots to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ls_slots, align 8
  %33 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gen, align 4
  %ls_generation = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 3
  %35 = ptrtoint ptr %ls_generation to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ls_generation, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #7
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #7
  br label %out

if.else15:                                        ; preds = %for.end
  %36 = ptrtoint ptr %ls_low_nodeid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ls_low_nodeid, align 8
  %rc_result.i42 = getelementptr inbounds %struct.dlm_rcom, ptr %11, i32 0, i32 2
  %ls_flags.i.i43 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %38 = ptrtoint ptr %ls_flags.i.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %ls_flags.i.i43, align 4
  %and1.i.i16.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i16.i)
  %tobool.not17.i = icmp eq i32 %and1.i.i16.i, 0
  br i1 %tobool.not17.i, label %if.else15.if.end.i44_crit_edge, label %if.else15.out_crit_edge

if.else15.out_crit_edge:                          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else15.if.end.i44_crit_edge:                   ; preds = %if.else15
  br label %if.end.i44

if.end.i44:                                       ; preds = %if.end7.i.if.end.i44_crit_edge, %if.else15.if.end.i44_crit_edge
  %delay.018.i = phi i32 [ %spec.select.i47, %if.end7.i.if.end.i44_crit_edge ], [ 0, %if.else15.if.end.i44_crit_edge ]
  %call1.i = tail call i32 @dlm_rcom_status(ptr noundef %ls, i32 noundef %37, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i44.out_crit_edge

if.end.i44.out_crit_edge:                         ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4.i:                                        ; preds = %if.end.i44
  %40 = ptrtoint ptr %rc_result.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rc_result.i42, align 4
  %and.i45 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool5.not.i = icmp eq i32 %and.i45, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end19

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %delay.018.i)
  %cmp.i = icmp slt i32 %delay.018.i, 1000
  %add.i46 = add i32 %delay.018.i, 20
  %spec.select.i47 = select i1 %cmp.i, i32 %add.i46, i32 %delay.018.i
  tail call void @msleep(i32 noundef %spec.select.i47) #7
  %42 = ptrtoint ptr %ls_flags.i.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %ls_flags.i.i43, align 4
  %and1.i.i.i48 = and i32 %43, 1
  %tobool.not.i49 = icmp eq i32 %and1.i.i.i48, 0
  br i1 %tobool.not.i49, label %if.end7.i.if.end.i44_crit_edge, label %if.end7.i.out_crit_edge

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7.i.if.end.i44_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i44

if.end19:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @dlm_slots_copy_in(ptr noundef %ls) #7
  br label %out

out:                                              ; preds = %if.end19, %if.end7.i.out_crit_edge, %if.end.i44.out_crit_edge, %if.else15.out_crit_edge, %if.else, %if.then12, %if.end12.i.out_crit_edge, %if.end.i.out_crit_edge, %for.cond2.preheader.i.out_crit_edge
  %error.0 = phi i32 [ 0, %if.else ], [ 0, %if.then12 ], [ 0, %if.end19 ], [ -4, %if.else15.out_crit_edge ], [ %call3.i, %if.end.i.out_crit_edge ], [ -4, %if.end12.i.out_crit_edge ], [ -4, %for.cond2.preheader.i.out_crit_edge ], [ -4, %if.end7.i.out_crit_edge ], [ %call1.i, %if.end.i44.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slots_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_slots) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slots) #7
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_slots_assign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_slots_copy_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_directory_wait(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wait_status(ptr noundef %ls, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_status(ptr noundef %ls, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %status, 1
  %ls_low_nodeid = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 34
  %0 = ptrtoint ptr %ls_low_nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_low_nodeid, align 8
  %call = tail call i32 @dlm_our_nodeid() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp = icmp eq i32 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ls_nodes.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  %2 = ptrtoint ptr %ls_nodes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %memb.040.i = load ptr, ptr %ls_nodes.i, align 4
  %cmp.not41.i = icmp eq ptr %memb.040.i, %ls_nodes.i
  br i1 %cmp.not41.i, label %if.then.if.then2_crit_edge, label %for.cond2.preheader.lr.ph.i

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

for.cond2.preheader.lr.ph.i:                      ; preds = %if.then
  %ls_recover_buf.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  %3 = ptrtoint ptr %ls_recover_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ls_recover_buf.i, align 8
  %ls_flags.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %rc_result.i = getelementptr inbounds %struct.dlm_rcom, ptr %4, i32 0, i32 2
  br label %for.cond2.preheader.i

for.cond.loopexit.i:                              ; preds = %if.end6.i
  %5 = ptrtoint ptr %memb.042.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %memb.0.i = load ptr, ptr %memb.042.i, align 4
  %cmp.not.i = icmp eq ptr %memb.0.i, %ls_nodes.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.if.then2_crit_edge, label %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge

for.cond.loopexit.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i

for.cond.loopexit.i.if.then2_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

for.cond2.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %memb.042.i = phi ptr [ %memb.040.i, %for.cond2.preheader.lr.ph.i ], [ %memb.0.i, %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge ]
  %6 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i35.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35.i)
  %tobool.not36.i = icmp eq i32 %and1.i.i35.i, 0
  br i1 %tobool.not36.i, label %if.end.lr.ph.i, label %for.cond2.preheader.i.if.end4_crit_edge

for.cond2.preheader.i.if.end4_crit_edge:          ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.lr.ph.i:                                   ; preds = %for.cond2.preheader.i
  %nodeid.i = getelementptr inbounds %struct.dlm_member, ptr %memb.042.i, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.end12.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %delay.037.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %spec.select.i, %if.end12.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nodeid.i, align 4
  %call3.i = tail call i32 @dlm_rcom_status(ptr noundef %ls, i32 noundef %9, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end6.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %rc_result.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc_result.i, align 4
  %and.i = and i32 %11, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.cond.loopexit.i

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %delay.037.i)
  %cmp13.i = icmp slt i32 %delay.037.i, 1000
  %add.i = add i32 %delay.037.i, 20
  %spec.select.i = select i1 %cmp13.i, i32 %add.i, i32 %delay.037.i
  tail call void @msleep(i32 noundef %spec.select.i) #7
  %12 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i.i = and i32 %13, 1
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end12.i.if.end.i_crit_edge, label %if.end12.i.if.end4_crit_edge

if.end12.i.if.end4_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end12.i.if.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then2:                                         ; preds = %for.cond.loopexit.i.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %ls_recover_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_lock.i) #7
  %ls_recover_status.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 62
  %14 = ptrtoint ptr %ls_recover_status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ls_recover_status.i.i, align 8
  %or.i.i = or i32 %15, %shl
  store i32 %or.i.i, ptr %ls_recover_status.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock.i) #7
  br label %if.end4

if.else:                                          ; preds = %entry
  %ls_recover_buf.i11 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  %16 = ptrtoint ptr %ls_recover_buf.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ls_recover_buf.i11, align 8
  %18 = ptrtoint ptr %ls_low_nodeid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ls_low_nodeid, align 8
  %rc_result.i12 = getelementptr inbounds %struct.dlm_rcom, ptr %17, i32 0, i32 2
  %ls_flags.i.i13 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %20 = ptrtoint ptr %ls_flags.i.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %ls_flags.i.i13, align 4
  %and1.i.i16.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i16.i)
  %tobool.not17.i = icmp eq i32 %and1.i.i16.i, 0
  br i1 %tobool.not17.i, label %if.else.if.end.i14_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.else.if.end.i14_crit_edge:                     ; preds = %if.else
  br label %if.end.i14

if.end.i14:                                       ; preds = %if.end7.i.if.end.i14_crit_edge, %if.else.if.end.i14_crit_edge
  %delay.018.i = phi i32 [ %spec.select.i17, %if.end7.i.if.end.i14_crit_edge ], [ 0, %if.else.if.end.i14_crit_edge ]
  %call1.i = tail call i32 @dlm_rcom_status(ptr noundef %ls, i32 noundef %19, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i14.if.end4_crit_edge

if.end.i14.if.end4_crit_edge:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4.i:                                        ; preds = %if.end.i14
  %22 = ptrtoint ptr %rc_result.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rc_result.i12, align 4
  %and.i15 = and i32 %23, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool5.not.i = icmp eq i32 %and.i15, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end4.i.if.end4_crit_edge

if.end4.i.if.end4_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %delay.018.i)
  %cmp.i = icmp slt i32 %delay.018.i, 1000
  %add.i16 = add i32 %delay.018.i, 20
  %spec.select.i17 = select i1 %cmp.i, i32 %add.i16, i32 %delay.018.i
  tail call void @msleep(i32 noundef %spec.select.i17) #7
  %24 = ptrtoint ptr %ls_flags.i.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %ls_flags.i.i13, align 4
  %and1.i.i.i18 = and i32 %25, 1
  %tobool.not.i19 = icmp eq i32 %and1.i.i.i18, 0
  br i1 %tobool.not.i19, label %if.end7.i.if.end.i14_crit_edge, label %if.end7.i.if.end4_crit_edge

if.end7.i.if.end4_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end7.i.if.end.i14_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i14

if.end4:                                          ; preds = %if.end7.i.if.end4_crit_edge, %if.end4.i.if.end4_crit_edge, %if.end.i14.if.end4_crit_edge, %if.else.if.end4_crit_edge, %if.then2, %if.end12.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %for.cond2.preheader.i.if.end4_crit_edge
  %error.0 = phi i32 [ 0, %if.then2 ], [ -4, %if.else.if.end4_crit_edge ], [ %call3.i, %if.end.i.if.end4_crit_edge ], [ -4, %if.end12.i.if.end4_crit_edge ], [ -4, %for.cond2.preheader.i.if.end4_crit_edge ], [ 0, %if.end4.i.if.end4_crit_edge ], [ %call1.i, %if.end.i14.if.end4_crit_edge ], [ -4, %if.end7.i.if.end4_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_locks_wait(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wait_status(ptr noundef %ls, i32 noundef 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_done_wait(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wait_status(ptr noundef %ls, i32 noundef 64)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_masters(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %0 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.do.end14.sink.split_crit_edge

entry.do.end14.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.sink.split

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.else.do.end14_crit_edge, label %if.else.do.end14.sink.split_crit_edge

if.else.do.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.sink.split

if.else.do.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end14.sink.split:                              ; preds = %if.else.do.end14.sink.split_crit_edge, %entry.do.end14.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.6, %entry.do.end14.sink.split_crit_edge ], [ @.str.9, %if.else.do.end14.sink.split_crit_edge ]
  %ls_name9 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink, ptr noundef %ls_name9) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end14.sink.split, %if.else.do.end14_crit_edge
  %ls_root_sem = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 87
  tail call void @down_read(ptr noundef %ls_root_sem) #7
  %ls_root_list = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %4 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn172 = load ptr, ptr %ls_root_list, align 4
  %cmp.not174 = icmp eq ptr %.pn172, %ls_root_list
  br i1 %cmp.not174, label %do.end14.for.end_crit_edge, label %for.body.lr.ph

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end14
  %5 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool22.not = icmp eq i32 %5, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn178 = phi ptr [ %.pn172, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %total.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %count.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %count.2, %for.inc.for.body_crit_edge ]
  %r.0179 = getelementptr i8, ptr %.pn178, i32 -188
  %6 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i91 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i91)
  %tobool18.not = icmp eq i32 %and1.i.i91, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  br label %if.then66

if.end21:                                         ; preds = %for.body
  %res_mutex.i = getelementptr i8, ptr %.pn178, i32 -180
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i, i32 noundef 0) #7
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call.i = tail call i32 @dlm_dir_nodeid(ptr noundef %r.0179) #7
  %call1.i = tail call i32 @dlm_our_nodeid() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call1.i)
  %cmp.i = icmp eq i32 %call.i, %call1.i
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  tail call void @dlm_purge_mstcpy_locks(ptr noundef %r.0179) #7
  %res_master_nodeid.i = getelementptr i8, ptr %.pn178, i32 -76
  %8 = ptrtoint ptr %res_master_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %res_master_nodeid.i, align 4
  %res_nodeid.i = getelementptr i8, ptr %.pn178, i32 -80
  %9 = ptrtoint ptr %res_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i, ptr %res_nodeid.i, align 4
  %res_grantqueue.i.i.i = getelementptr i8, ptr %.pn178, i32 -24
  %10 = ptrtoint ptr %res_grantqueue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn11.i.i.i.i = load ptr, ptr %res_grantqueue.i.i.i, align 4
  %cmp.not12.i.i.i.i = icmp eq ptr %.pn11.i.i.i.i, %res_grantqueue.i.i.i
  br i1 %cmp.not12.i.i.i.i, label %if.then23.set_lock_master.exit.i.i.i_crit_edge, label %if.then23.for.body.i.i.i.i_crit_edge

if.then23.for.body.i.i.i.i_crit_edge:             ; preds = %if.then23
  br label %for.body.i.i.i.i

if.then23.set_lock_master.exit.i.i.i_crit_edge:   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then23.for.body.i.i.i.i_crit_edge
  %.pn13.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn11.i.i.i.i, %if.then23.for.body.i.i.i.i_crit_edge ]
  %lkb_flags.i.i.i.i = getelementptr i8, ptr %.pn13.i.i.i.i, i32 -20
  %11 = ptrtoint ptr %lkb_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lkb_flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i.i.i.i = getelementptr i8, ptr %.pn13.i.i.i.i, i32 -44
  %13 = ptrtoint ptr %lkb_nodeid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %lkb_nodeid.i.i.i.i, align 8
  %lkb_remid.i.i.i.i = getelementptr i8, ptr %.pn13.i.i.i.i, i32 -32
  %14 = ptrtoint ptr %lkb_remid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %lkb_remid.i.i.i.i, align 4
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %.pn13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i.i.i.i = load ptr, ptr %.pn13.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %res_grantqueue.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.set_lock_master.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.set_lock_master.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit.i.i.i

set_lock_master.exit.i.i.i:                       ; preds = %for.inc.i.i.i.i.set_lock_master.exit.i.i.i_crit_edge, %if.then23.set_lock_master.exit.i.i.i_crit_edge
  %res_convertqueue.i.i.i = getelementptr i8, ptr %.pn178, i32 -16
  %16 = ptrtoint ptr %res_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %res_nodeid.i, align 4
  %18 = ptrtoint ptr %res_convertqueue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn11.i8.i.i.i = load ptr, ptr %res_convertqueue.i.i.i, align 4
  %cmp.not12.i9.i.i.i = icmp eq ptr %.pn11.i8.i.i.i, %res_convertqueue.i.i.i
  br i1 %cmp.not12.i9.i.i.i, label %set_lock_master.exit.i.i.i.set_lock_master.exit21.i.i.i_crit_edge, label %set_lock_master.exit.i.i.i.for.body.i14.i.i.i_crit_edge

set_lock_master.exit.i.i.i.for.body.i14.i.i.i_crit_edge: ; preds = %set_lock_master.exit.i.i.i
  br label %for.body.i14.i.i.i

set_lock_master.exit.i.i.i.set_lock_master.exit21.i.i.i_crit_edge: ; preds = %set_lock_master.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit21.i.i.i

for.body.i14.i.i.i:                               ; preds = %for.inc.i20.i.i.i.for.body.i14.i.i.i_crit_edge, %set_lock_master.exit.i.i.i.for.body.i14.i.i.i_crit_edge
  %.pn13.i10.i.i.i = phi ptr [ %.pn.i18.i.i.i, %for.inc.i20.i.i.i.for.body.i14.i.i.i_crit_edge ], [ %.pn11.i8.i.i.i, %set_lock_master.exit.i.i.i.for.body.i14.i.i.i_crit_edge ]
  %lkb_flags.i11.i.i.i = getelementptr i8, ptr %.pn13.i10.i.i.i, i32 -20
  %19 = ptrtoint ptr %lkb_flags.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lkb_flags.i11.i.i.i, align 8
  %and.i12.i.i.i = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i.i.i)
  %tobool.not.i13.i.i.i = icmp eq i32 %and.i12.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i, label %if.then.i17.i.i.i, label %for.body.i14.i.i.i.for.inc.i20.i.i.i_crit_edge

for.body.i14.i.i.i.for.inc.i20.i.i.i_crit_edge:   ; preds = %for.body.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i20.i.i.i

if.then.i17.i.i.i:                                ; preds = %for.body.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i15.i.i.i = getelementptr i8, ptr %.pn13.i10.i.i.i, i32 -44
  %21 = ptrtoint ptr %lkb_nodeid.i15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %lkb_nodeid.i15.i.i.i, align 8
  %lkb_remid.i16.i.i.i = getelementptr i8, ptr %.pn13.i10.i.i.i, i32 -32
  %22 = ptrtoint ptr %lkb_remid.i16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %lkb_remid.i16.i.i.i, align 4
  br label %for.inc.i20.i.i.i

for.inc.i20.i.i.i:                                ; preds = %if.then.i17.i.i.i, %for.body.i14.i.i.i.for.inc.i20.i.i.i_crit_edge
  %23 = ptrtoint ptr %.pn13.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i18.i.i.i = load ptr, ptr %.pn13.i10.i.i.i, align 4
  %cmp.not.i19.i.i.i = icmp eq ptr %.pn.i18.i.i.i, %res_convertqueue.i.i.i
  br i1 %cmp.not.i19.i.i.i, label %for.inc.i20.i.i.i.set_lock_master.exit21.i.i.i_crit_edge, label %for.inc.i20.i.i.i.for.body.i14.i.i.i_crit_edge

for.inc.i20.i.i.i.for.body.i14.i.i.i_crit_edge:   ; preds = %for.inc.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i14.i.i.i

for.inc.i20.i.i.i.set_lock_master.exit21.i.i.i_crit_edge: ; preds = %for.inc.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit21.i.i.i

set_lock_master.exit21.i.i.i:                     ; preds = %for.inc.i20.i.i.i.set_lock_master.exit21.i.i.i_crit_edge, %set_lock_master.exit.i.i.i.set_lock_master.exit21.i.i.i_crit_edge
  %res_waitqueue.i.i.i = getelementptr i8, ptr %.pn178, i32 -8
  %24 = ptrtoint ptr %res_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res_nodeid.i, align 4
  %26 = ptrtoint ptr %res_waitqueue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn11.i22.i.i.i = load ptr, ptr %res_waitqueue.i.i.i, align 4
  %cmp.not12.i23.i.i.i = icmp eq ptr %.pn11.i22.i.i.i, %res_waitqueue.i.i.i
  br i1 %cmp.not12.i23.i.i.i, label %set_lock_master.exit21.i.i.i.recover_master_static.exit_crit_edge, label %set_lock_master.exit21.i.i.i.for.body.i28.i.i.i_crit_edge

set_lock_master.exit21.i.i.i.for.body.i28.i.i.i_crit_edge: ; preds = %set_lock_master.exit21.i.i.i
  br label %for.body.i28.i.i.i

set_lock_master.exit21.i.i.i.recover_master_static.exit_crit_edge: ; preds = %set_lock_master.exit21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_master_static.exit

for.body.i28.i.i.i:                               ; preds = %for.inc.i34.i.i.i.for.body.i28.i.i.i_crit_edge, %set_lock_master.exit21.i.i.i.for.body.i28.i.i.i_crit_edge
  %.pn13.i24.i.i.i = phi ptr [ %.pn.i32.i.i.i, %for.inc.i34.i.i.i.for.body.i28.i.i.i_crit_edge ], [ %.pn11.i22.i.i.i, %set_lock_master.exit21.i.i.i.for.body.i28.i.i.i_crit_edge ]
  %lkb_flags.i25.i.i.i = getelementptr i8, ptr %.pn13.i24.i.i.i, i32 -20
  %27 = ptrtoint ptr %lkb_flags.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lkb_flags.i25.i.i.i, align 8
  %and.i26.i.i.i = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i.i)
  %tobool.not.i27.i.i.i = icmp eq i32 %and.i26.i.i.i, 0
  br i1 %tobool.not.i27.i.i.i, label %if.then.i31.i.i.i, label %for.body.i28.i.i.i.for.inc.i34.i.i.i_crit_edge

for.body.i28.i.i.i.for.inc.i34.i.i.i_crit_edge:   ; preds = %for.body.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i34.i.i.i

if.then.i31.i.i.i:                                ; preds = %for.body.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i29.i.i.i = getelementptr i8, ptr %.pn13.i24.i.i.i, i32 -44
  %29 = ptrtoint ptr %lkb_nodeid.i29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %25, ptr %lkb_nodeid.i29.i.i.i, align 8
  %lkb_remid.i30.i.i.i = getelementptr i8, ptr %.pn13.i24.i.i.i, i32 -32
  %30 = ptrtoint ptr %lkb_remid.i30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %lkb_remid.i30.i.i.i, align 4
  br label %for.inc.i34.i.i.i

for.inc.i34.i.i.i:                                ; preds = %if.then.i31.i.i.i, %for.body.i28.i.i.i.for.inc.i34.i.i.i_crit_edge
  %31 = ptrtoint ptr %.pn13.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i32.i.i.i = load ptr, ptr %.pn13.i24.i.i.i, align 4
  %cmp.not.i33.i.i.i = icmp eq ptr %.pn.i32.i.i.i, %res_waitqueue.i.i.i
  br i1 %cmp.not.i33.i.i.i, label %for.inc.i34.i.i.i.recover_master_static.exit_crit_edge, label %for.inc.i34.i.i.i.for.body.i28.i.i.i_crit_edge

for.inc.i34.i.i.i.for.body.i28.i.i.i_crit_edge:   ; preds = %for.inc.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i28.i.i.i

for.inc.i34.i.i.i.recover_master_static.exit_crit_edge: ; preds = %for.inc.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_master_static.exit

recover_master_static.exit:                       ; preds = %for.inc.i34.i.i.i.recover_master_static.exit_crit_edge, %set_lock_master.exit21.i.i.i.recover_master_static.exit_crit_edge
  %res_flags.i.i.i = getelementptr i8, ptr %.pn178, i32 -88
  %32 = ptrtoint ptr %res_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %res_flags.i.i.i, align 4
  %or.i.i4.i.i = or i32 %33, 24
  store i32 %or.i.i4.i.i, ptr %res_flags.i.i.i, align 4
  %inc.i = add i32 %count.0175, 1
  br label %if.end27

if.else25:                                        ; preds = %if.end21
  %res_nodeid.i.i = getelementptr i8, ptr %.pn178, i32 -80
  %34 = ptrtoint ptr %res_nodeid.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %res_nodeid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.not.i, label %if.else25.if.end27_crit_edge, label %if.end.i

if.else25.if.end27_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end.i:                                         ; preds = %if.else25
  %36 = ptrtoint ptr %r.0179 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %r.0179, align 4
  %call1.i92 = tail call i32 @dlm_is_removed(ptr noundef %37, i32 noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool2.not.i = icmp eq i32 %call1.i92, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %res_flags.i.i = getelementptr i8, ptr %.pn178, i32 -88
  %38 = ptrtoint ptr %res_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %res_flags.i.i, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool4.not.i = icmp eq i32 %40, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end27_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

land.lhs.true.i.if.end27_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call i32 @dlm_our_nodeid() #7
  %call8.i = tail call i32 @dlm_dir_nodeid(ptr noundef %r.0179) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %call7.i)
  %cmp.i93 = icmp eq i32 %call8.i, %call7.i
  br i1 %cmp.i93, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end6.i
  br i1 %tobool2.not.i, label %if.then9.i.if.end13.i_crit_edge, label %if.then11.i

if.then9.i.if.end13.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %res_master_nodeid.i94 = getelementptr i8, ptr %.pn178, i32 -76
  %41 = ptrtoint ptr %res_master_nodeid.i94 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call7.i, ptr %res_master_nodeid.i94, align 4
  %42 = ptrtoint ptr %res_nodeid.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %res_nodeid.i.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then9.i.if.end13.i_crit_edge
  %res_grantqueue.i.i.i95 = getelementptr i8, ptr %.pn178, i32 -24
  %43 = ptrtoint ptr %res_nodeid.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %res_nodeid.i.i, align 4
  %45 = ptrtoint ptr %res_grantqueue.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn11.i.i.i.i96 = load ptr, ptr %res_grantqueue.i.i.i95, align 4
  %cmp.not12.i.i.i.i97 = icmp eq ptr %.pn11.i.i.i.i96, %res_grantqueue.i.i.i95
  br i1 %cmp.not12.i.i.i.i97, label %if.end13.i.set_lock_master.exit.i.i.i112_crit_edge, label %if.end13.i.for.body.i.i.i.i102_crit_edge

if.end13.i.for.body.i.i.i.i102_crit_edge:         ; preds = %if.end13.i
  br label %for.body.i.i.i.i102

if.end13.i.set_lock_master.exit.i.i.i112_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit.i.i.i112

for.body.i.i.i.i102:                              ; preds = %for.inc.i.i.i.i108.for.body.i.i.i.i102_crit_edge, %if.end13.i.for.body.i.i.i.i102_crit_edge
  %.pn13.i.i.i.i98 = phi ptr [ %.pn.i.i.i.i106, %for.inc.i.i.i.i108.for.body.i.i.i.i102_crit_edge ], [ %.pn11.i.i.i.i96, %if.end13.i.for.body.i.i.i.i102_crit_edge ]
  %lkb_flags.i.i.i.i99 = getelementptr i8, ptr %.pn13.i.i.i.i98, i32 -20
  %46 = ptrtoint ptr %lkb_flags.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lkb_flags.i.i.i.i99, align 8
  %and.i.i.i.i100 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i100)
  %tobool.not.i.i.i.i101 = icmp eq i32 %and.i.i.i.i100, 0
  br i1 %tobool.not.i.i.i.i101, label %if.then.i.i.i.i105, label %for.body.i.i.i.i102.for.inc.i.i.i.i108_crit_edge

for.body.i.i.i.i102.for.inc.i.i.i.i108_crit_edge: ; preds = %for.body.i.i.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i108

if.then.i.i.i.i105:                               ; preds = %for.body.i.i.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i.i.i.i103 = getelementptr i8, ptr %.pn13.i.i.i.i98, i32 -44
  %48 = ptrtoint ptr %lkb_nodeid.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %lkb_nodeid.i.i.i.i103, align 8
  %lkb_remid.i.i.i.i104 = getelementptr i8, ptr %.pn13.i.i.i.i98, i32 -32
  %49 = ptrtoint ptr %lkb_remid.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %lkb_remid.i.i.i.i104, align 4
  br label %for.inc.i.i.i.i108

for.inc.i.i.i.i108:                               ; preds = %if.then.i.i.i.i105, %for.body.i.i.i.i102.for.inc.i.i.i.i108_crit_edge
  %50 = ptrtoint ptr %.pn13.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i.i.i.i106 = load ptr, ptr %.pn13.i.i.i.i98, align 4
  %cmp.not.i.i.i.i107 = icmp eq ptr %.pn.i.i.i.i106, %res_grantqueue.i.i.i95
  br i1 %cmp.not.i.i.i.i107, label %for.inc.i.i.i.i108.set_lock_master.exit.i.i.i112_crit_edge, label %for.inc.i.i.i.i108.for.body.i.i.i.i102_crit_edge

for.inc.i.i.i.i108.for.body.i.i.i.i102_crit_edge: ; preds = %for.inc.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i102

for.inc.i.i.i.i108.set_lock_master.exit.i.i.i112_crit_edge: ; preds = %for.inc.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit.i.i.i112

set_lock_master.exit.i.i.i112:                    ; preds = %for.inc.i.i.i.i108.set_lock_master.exit.i.i.i112_crit_edge, %if.end13.i.set_lock_master.exit.i.i.i112_crit_edge
  %res_convertqueue.i.i.i109 = getelementptr i8, ptr %.pn178, i32 -16
  %51 = ptrtoint ptr %res_nodeid.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %res_nodeid.i.i, align 4
  %53 = ptrtoint ptr %res_convertqueue.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn11.i8.i.i.i110 = load ptr, ptr %res_convertqueue.i.i.i109, align 4
  %cmp.not12.i9.i.i.i111 = icmp eq ptr %.pn11.i8.i.i.i110, %res_convertqueue.i.i.i109
  br i1 %cmp.not12.i9.i.i.i111, label %set_lock_master.exit.i.i.i112.set_lock_master.exit21.i.i.i127_crit_edge, label %set_lock_master.exit.i.i.i112.for.body.i14.i.i.i117_crit_edge

set_lock_master.exit.i.i.i112.for.body.i14.i.i.i117_crit_edge: ; preds = %set_lock_master.exit.i.i.i112
  br label %for.body.i14.i.i.i117

set_lock_master.exit.i.i.i112.set_lock_master.exit21.i.i.i127_crit_edge: ; preds = %set_lock_master.exit.i.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit21.i.i.i127

for.body.i14.i.i.i117:                            ; preds = %for.inc.i20.i.i.i123.for.body.i14.i.i.i117_crit_edge, %set_lock_master.exit.i.i.i112.for.body.i14.i.i.i117_crit_edge
  %.pn13.i10.i.i.i113 = phi ptr [ %.pn.i18.i.i.i121, %for.inc.i20.i.i.i123.for.body.i14.i.i.i117_crit_edge ], [ %.pn11.i8.i.i.i110, %set_lock_master.exit.i.i.i112.for.body.i14.i.i.i117_crit_edge ]
  %lkb_flags.i11.i.i.i114 = getelementptr i8, ptr %.pn13.i10.i.i.i113, i32 -20
  %54 = ptrtoint ptr %lkb_flags.i11.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lkb_flags.i11.i.i.i114, align 8
  %and.i12.i.i.i115 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i.i.i115)
  %tobool.not.i13.i.i.i116 = icmp eq i32 %and.i12.i.i.i115, 0
  br i1 %tobool.not.i13.i.i.i116, label %if.then.i17.i.i.i120, label %for.body.i14.i.i.i117.for.inc.i20.i.i.i123_crit_edge

for.body.i14.i.i.i117.for.inc.i20.i.i.i123_crit_edge: ; preds = %for.body.i14.i.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i20.i.i.i123

if.then.i17.i.i.i120:                             ; preds = %for.body.i14.i.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i15.i.i.i118 = getelementptr i8, ptr %.pn13.i10.i.i.i113, i32 -44
  %56 = ptrtoint ptr %lkb_nodeid.i15.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %52, ptr %lkb_nodeid.i15.i.i.i118, align 8
  %lkb_remid.i16.i.i.i119 = getelementptr i8, ptr %.pn13.i10.i.i.i113, i32 -32
  %57 = ptrtoint ptr %lkb_remid.i16.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %lkb_remid.i16.i.i.i119, align 4
  br label %for.inc.i20.i.i.i123

for.inc.i20.i.i.i123:                             ; preds = %if.then.i17.i.i.i120, %for.body.i14.i.i.i117.for.inc.i20.i.i.i123_crit_edge
  %58 = ptrtoint ptr %.pn13.i10.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i18.i.i.i121 = load ptr, ptr %.pn13.i10.i.i.i113, align 4
  %cmp.not.i19.i.i.i122 = icmp eq ptr %.pn.i18.i.i.i121, %res_convertqueue.i.i.i109
  br i1 %cmp.not.i19.i.i.i122, label %for.inc.i20.i.i.i123.set_lock_master.exit21.i.i.i127_crit_edge, label %for.inc.i20.i.i.i123.for.body.i14.i.i.i117_crit_edge

for.inc.i20.i.i.i123.for.body.i14.i.i.i117_crit_edge: ; preds = %for.inc.i20.i.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i14.i.i.i117

for.inc.i20.i.i.i123.set_lock_master.exit21.i.i.i127_crit_edge: ; preds = %for.inc.i20.i.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit21.i.i.i127

set_lock_master.exit21.i.i.i127:                  ; preds = %for.inc.i20.i.i.i123.set_lock_master.exit21.i.i.i127_crit_edge, %set_lock_master.exit.i.i.i112.set_lock_master.exit21.i.i.i127_crit_edge
  %res_waitqueue.i.i.i124 = getelementptr i8, ptr %.pn178, i32 -8
  %59 = ptrtoint ptr %res_nodeid.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %res_nodeid.i.i, align 4
  %61 = ptrtoint ptr %res_waitqueue.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn11.i22.i.i.i125 = load ptr, ptr %res_waitqueue.i.i.i124, align 4
  %cmp.not12.i23.i.i.i126 = icmp eq ptr %.pn11.i22.i.i.i125, %res_waitqueue.i.i.i124
  br i1 %cmp.not12.i23.i.i.i126, label %set_lock_master.exit21.i.i.i127.set_new_master.exit.i_crit_edge, label %set_lock_master.exit21.i.i.i127.for.body.i28.i.i.i132_crit_edge

set_lock_master.exit21.i.i.i127.for.body.i28.i.i.i132_crit_edge: ; preds = %set_lock_master.exit21.i.i.i127
  br label %for.body.i28.i.i.i132

set_lock_master.exit21.i.i.i127.set_new_master.exit.i_crit_edge: ; preds = %set_lock_master.exit21.i.i.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_new_master.exit.i

for.body.i28.i.i.i132:                            ; preds = %for.inc.i34.i.i.i138.for.body.i28.i.i.i132_crit_edge, %set_lock_master.exit21.i.i.i127.for.body.i28.i.i.i132_crit_edge
  %.pn13.i24.i.i.i128 = phi ptr [ %.pn.i32.i.i.i136, %for.inc.i34.i.i.i138.for.body.i28.i.i.i132_crit_edge ], [ %.pn11.i22.i.i.i125, %set_lock_master.exit21.i.i.i127.for.body.i28.i.i.i132_crit_edge ]
  %lkb_flags.i25.i.i.i129 = getelementptr i8, ptr %.pn13.i24.i.i.i128, i32 -20
  %62 = ptrtoint ptr %lkb_flags.i25.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lkb_flags.i25.i.i.i129, align 8
  %and.i26.i.i.i130 = and i32 %63, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i.i130)
  %tobool.not.i27.i.i.i131 = icmp eq i32 %and.i26.i.i.i130, 0
  br i1 %tobool.not.i27.i.i.i131, label %if.then.i31.i.i.i135, label %for.body.i28.i.i.i132.for.inc.i34.i.i.i138_crit_edge

for.body.i28.i.i.i132.for.inc.i34.i.i.i138_crit_edge: ; preds = %for.body.i28.i.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i34.i.i.i138

if.then.i31.i.i.i135:                             ; preds = %for.body.i28.i.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i29.i.i.i133 = getelementptr i8, ptr %.pn13.i24.i.i.i128, i32 -44
  %64 = ptrtoint ptr %lkb_nodeid.i29.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %60, ptr %lkb_nodeid.i29.i.i.i133, align 8
  %lkb_remid.i30.i.i.i134 = getelementptr i8, ptr %.pn13.i24.i.i.i128, i32 -32
  %65 = ptrtoint ptr %lkb_remid.i30.i.i.i134 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %lkb_remid.i30.i.i.i134, align 4
  br label %for.inc.i34.i.i.i138

for.inc.i34.i.i.i138:                             ; preds = %if.then.i31.i.i.i135, %for.body.i28.i.i.i132.for.inc.i34.i.i.i138_crit_edge
  %66 = ptrtoint ptr %.pn13.i24.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i32.i.i.i136 = load ptr, ptr %.pn13.i24.i.i.i128, align 4
  %cmp.not.i33.i.i.i137 = icmp eq ptr %.pn.i32.i.i.i136, %res_waitqueue.i.i.i124
  br i1 %cmp.not.i33.i.i.i137, label %for.inc.i34.i.i.i138.set_new_master.exit.i_crit_edge, label %for.inc.i34.i.i.i138.for.body.i28.i.i.i132_crit_edge

for.inc.i34.i.i.i138.for.body.i28.i.i.i132_crit_edge: ; preds = %for.inc.i34.i.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i28.i.i.i132

for.inc.i34.i.i.i138.set_new_master.exit.i_crit_edge: ; preds = %for.inc.i34.i.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_new_master.exit.i

set_new_master.exit.i:                            ; preds = %for.inc.i34.i.i.i138.set_new_master.exit.i_crit_edge, %set_lock_master.exit21.i.i.i127.set_new_master.exit.i_crit_edge
  %res_flags.i.i.i139 = getelementptr i8, ptr %.pn178, i32 -88
  %67 = ptrtoint ptr %res_flags.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %res_flags.i.i.i139, align 4
  %or.i.i4.i.i140 = or i32 %68, 24
  store i32 %or.i.i4.i.i140, ptr %res_flags.i.i.i139, align 4
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end6.i
  %69 = ptrtoint ptr %r.0179 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %r.0179, align 4
  tail call void @idr_preload(i32 noundef 3136) #7
  %ls_recover_idr_lock.i.i = getelementptr inbounds %struct.dlm_ls, ptr %70, i32 0, i32 82
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i.i) #7
  %res_id.i.i = getelementptr i8, ptr %.pn178, i32 -68
  %71 = ptrtoint ptr %res_id.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %res_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i33.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i33.i, label %if.end.i.i, label %if.else.i.recover_idr_add.exit.i_crit_edge

if.else.i.recover_idr_add.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_idr_add.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  %ls_recover_idr.i.i = getelementptr inbounds %struct.dlm_ls, ptr %70, i32 0, i32 81
  %call.i.i = tail call i32 @idr_alloc(ptr noundef %ls_recover_idr.i.i, ptr noundef %r.0179, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.recover_idr_add.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.recover_idr_add.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_idr_add.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %res_id.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i.i, ptr %res_id.i.i, align 4
  %ls_recover_list_count.i.i = getelementptr inbounds %struct.dlm_ls, ptr %70, i32 0, i32 80
  %74 = ptrtoint ptr %ls_recover_list_count.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ls_recover_list_count.i.i, align 8
  %inc.i.i = add i32 %75, 1
  store i32 %inc.i.i, ptr %ls_recover_list_count.i.i, align 8
  tail call void @dlm_hold_rsb(ptr noundef %r.0179) #7
  br label %recover_idr_add.exit.i

recover_idr_add.exit.i:                           ; preds = %if.end2.i.i, %if.end.i.i.recover_idr_add.exit.i_crit_edge, %if.else.i.recover_idr_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i.i) #7
  %76 = tail call i32 @llvm.read_register.i32(metadata !103) #7
  %and.i.i.i34.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i34.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %81, ptrtoint (ptr @radix_tree_preloads to i32)
  %82 = inttoptr i32 %add.i.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %82) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !114
  %83 = tail call i32 @llvm.read_register.i32(metadata !103) #7
  %and.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %call15.i = tail call i32 @dlm_send_rcom_lookup(ptr noundef %r.0179, i32 noundef %call8.i) #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %recover_idr_add.exit.i, %set_new_master.exit.i
  %error.0.i = phi i32 [ 0, %set_new_master.exit.i ], [ %call15.i, %recover_idr_add.exit.i ]
  %inc.i141 = add i32 %count.0175, 1
  br label %if.end27

if.end27:                                         ; preds = %if.end16.i, %land.lhs.true.i.if.end27_crit_edge, %if.else25.if.end27_crit_edge, %recover_master_static.exit
  %count.2 = phi i32 [ %inc.i, %recover_master_static.exit ], [ %count.0175, %if.else25.if.end27_crit_edge ], [ %count.0175, %land.lhs.true.i.if.end27_crit_edge ], [ %inc.i141, %if.end16.i ]
  %error.0 = phi i32 [ 0, %recover_master_static.exit ], [ 0, %if.else25.if.end27_crit_edge ], [ 0, %land.lhs.true.i.if.end27_crit_edge ], [ %error.0.i, %if.end16.i ]
  tail call void @mutex_unlock(ptr noundef %res_mutex.i) #7
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 0) #7
  %call.i143 = tail call i32 @__cond_resched() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool30.not = icmp eq i32 %error.0, 0
  br i1 %tobool30.not, label %for.inc, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  br label %if.then66

for.inc:                                          ; preds = %if.end27
  %inc = add i32 %total.0177, 1
  %87 = ptrtoint ptr %.pn178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn = load ptr, ptr %.pn178, align 4
  %cmp.not = icmp eq ptr %.pn, %ls_root_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end14.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %do.end14.for.end_crit_edge ], [ %count.2, %for.inc.for.end_crit_edge ]
  %total.0.lcssa = phi i32 [ 0, %do.end14.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %88 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool41.not = icmp eq i32 %88, 0
  br i1 %tobool41.not, label %if.else50, label %for.end.do.end63.sink.split_crit_edge

for.end.do.end63.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63.sink.split

if.else50:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %89 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool51.not = icmp eq i32 %89, 0
  br i1 %tobool51.not, label %if.else50.do.end63_crit_edge, label %if.else50.do.end63.sink.split_crit_edge

if.else50.do.end63.sink.split_crit_edge:          ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63.sink.split

if.else50.do.end63_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

do.end63.sink.split:                              ; preds = %if.else50.do.end63.sink.split_crit_edge, %for.end.do.end63.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %for.end.do.end63.sink.split_crit_edge ], [ @.str.15, %if.else50.do.end63.sink.split_crit_edge ]
  %ls_name57 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, ptr noundef %ls_name57, i32 noundef %count.0.lcssa, i32 noundef %total.0.lcssa) #10
  br label %do.end63

do.end63:                                         ; preds = %do.end63.sink.split, %if.else50.do.end63_crit_edge
  %ls_wait_general.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 83
  %ls_recover_idr_lock.i156 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 82
  %ls_recover_list_count.i157 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 80
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end48.i.while.cond.i_crit_edge, %do.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3) to i32))
  %90 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  %mul.i = mul i32 %90, 100
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 50) #7
  call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i156) #7
  %91 = ptrtoint ptr %ls_recover_list_count.i157 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ls_recover_list_count.i157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i158.not = icmp eq i32 %92, 0
  call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i156) #7
  br i1 %tobool.not.i158.not, label %while.cond.i.while.end.i_crit_edge, label %lor.end.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

lor.end.i:                                        ; preds = %while.cond.i
  %93 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool5.not.i, label %95, label %lor.end.i.while.end.i_crit_edge

lor.end.i.while.end.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

95:                                               ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool10.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool10.not.i, label %.if.end48.i_crit_edge, label %if.then13.i

.if.end48.i_crit_edge:                            ; preds = %95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then13.i:                                      ; preds = %95
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %96 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3) to i32))
  %97 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call16128.i = call i32 @prepare_to_wait_event(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i156) #7
  %98 = ptrtoint ptr %ls_recover_list_count.i157 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ls_recover_list_count.i157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i154.not = icmp eq i32 %99, 0
  call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i156) #7
  br i1 %tobool.not.i154.not, label %if.then13.i.if.end44.thread138.i_crit_edge, label %lor.end23.i.preheader

if.then13.i.if.end44.thread138.i_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138.i

lor.end23.i.preheader:                            ; preds = %if.then13.i
  %mul15.i = mul i32 %97, 100
  br label %lor.end23.i

lor.end23.i:                                      ; preds = %cleanup.i.lor.end23.i_crit_edge, %lor.end23.i.preheader
  %__ret14.0131.i = phi i32 [ %call41.i, %cleanup.i.lor.end23.i_crit_edge ], [ %mul15.i, %lor.end23.i.preheader ]
  %100 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i102.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i102.i)
  %tobool22.not.i = icmp eq i32 %and1.i.i102.i, 0
  br i1 %tobool22.not.i, label %102, label %lor.end23.i.if.end44.thread138.i_crit_edge

lor.end23.i.if.end44.thread138.i_crit_edge:       ; preds = %lor.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138.i

102:                                              ; preds = %lor.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.0131.i)
  %tobool34.not.i = icmp eq i32 %__ret14.0131.i, 0
  br i1 %tobool34.not.i, label %if.end44.i, label %cleanup.i

cleanup.i:                                        ; preds = %102
  %call41.i = call i32 @schedule_timeout(i32 noundef %__ret14.0131.i) #7
  %call16.i = call i32 @prepare_to_wait_event(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i156) #7
  %103 = ptrtoint ptr %ls_recover_list_count.i157 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ls_recover_list_count.i157, align 8
  %tobool.not.i150.not = icmp eq i32 %104, 0
  call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i156) #7
  br i1 %tobool.not.i150.not, label %cleanup.i.if.end44.thread138.i_crit_edge, label %cleanup.i.lor.end23.i_crit_edge

cleanup.i.lor.end23.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end23.i

cleanup.i.if.end44.thread138.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138.i

if.end44.thread138.i:                             ; preds = %cleanup.i.if.end44.thread138.i_crit_edge, %lor.end23.i.if.end44.thread138.i_crit_edge, %if.then13.i.if.end44.thread138.i_crit_edge
  call void @finish_wait(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %while.end.i

if.end44.i:                                       ; preds = %102
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end44.i, %.if.end48.i_crit_edge
  %105 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %ls_flags.i, align 4
  %107 = and i32 %106, 64
  %tobool50.not.i = icmp eq i32 %107, 0
  br i1 %tobool50.not.i, label %if.end48.i.while.cond.i_crit_edge, label %do.body52.i

if.end48.i.while.cond.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.body52.i:                                      ; preds = %if.end48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %108 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool53.not.i = icmp eq i32 %108, 0
  br i1 %tobool53.not.i, label %do.body52.i.if.then66_crit_edge, label %do.body52.i.cleanup81.sink.split.i_crit_edge

do.body52.i.cleanup81.sink.split.i_crit_edge:     ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81.sink.split.i

do.body52.i.if.then66_crit_edge:                  ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

while.end.i:                                      ; preds = %if.end44.thread138.i, %lor.end.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %109 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i104.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i104.i)
  %tobool65.not.i = icmp eq i32 %and1.i.i104.i, 0
  br i1 %tobool65.not.i, label %while.end.i.if.end67_crit_edge, label %do.body67.i

while.end.i.if.end67_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.body67.i:                                      ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %111 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool68.not.i = icmp eq i32 %111, 0
  br i1 %tobool68.not.i, label %do.body67.i.if.then66_crit_edge, label %do.body67.i.cleanup81.sink.split.i_crit_edge

do.body67.i.cleanup81.sink.split.i_crit_edge:     ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81.sink.split.i

do.body67.i.if.then66_crit_edge:                  ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66

cleanup81.sink.split.i:                           ; preds = %do.body67.i.cleanup81.sink.split.i_crit_edge, %do.body52.i.cleanup81.sink.split.i_crit_edge
  %.str.4.sink.i = phi ptr [ @.str.1, %do.body52.i.cleanup81.sink.split.i_crit_edge ], [ @.str.4, %do.body67.i.cleanup81.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -110, %do.body52.i.cleanup81.sink.split.i_crit_edge ], [ -4, %do.body67.i.cleanup81.sink.split.i_crit_edge ]
  %ls_name74.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, ptr noundef %ls_name74.i) #10
  br label %if.then66

if.then66:                                        ; preds = %cleanup81.sink.split.i, %do.body67.i.if.then66_crit_edge, %do.body52.i.if.then66_crit_edge, %if.then31, %if.then19
  %error.1.ph = phi i32 [ %retval.0.ph.i, %cleanup81.sink.split.i ], [ -4, %do.body67.i.if.then66_crit_edge ], [ -110, %do.body52.i.if.then66_crit_edge ], [ %error.0, %if.then31 ], [ -4, %if.then19 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %ls_recover_idr_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 82
  call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i) #7
  %ls_recover_idr.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 81
  %112 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %id.i, align 4
  %call19.i = call ptr @idr_get_next(ptr noundef %ls_recover_idr.i, ptr noundef nonnull %id.i) #7
  %cmp.not20.i = icmp eq ptr %call19.i, null
  br i1 %cmp.not20.i, label %if.then66.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then66.for.end.i_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then66
  %ls_recover_list_count.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 80
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call21.i = phi ptr [ %call19.i, %for.body.lr.ph.i ], [ %call.i146, %for.body.i.for.body.i_crit_edge ]
  %113 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id.i, align 4
  %call2.i = call ptr @idr_remove(ptr noundef %ls_recover_idr.i, i32 noundef %114) #7
  %res_id.i = getelementptr inbounds %struct.dlm_rsb, ptr %call21.i, i32 0, i32 8
  %115 = ptrtoint ptr %res_id.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %res_id.i, align 4
  %res_recover_locks_count.i = getelementptr inbounds %struct.dlm_rsb, ptr %call21.i, i32 0, i32 21
  %116 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %res_recover_locks_count.i, align 4
  %117 = ptrtoint ptr %ls_recover_list_count.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ls_recover_list_count.i, align 8
  %dec.i = add i32 %118, -1
  store i32 %dec.i, ptr %ls_recover_list_count.i, align 8
  call void @dlm_put_rsb(ptr noundef nonnull %call21.i) #7
  %119 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %id.i, align 4
  %add.i = add i32 %120, 1
  store i32 %add.i, ptr %id.i, align 4
  %call.i146 = call ptr @idr_get_next(ptr noundef %ls_recover_idr.i, ptr noundef nonnull %id.i) #7
  %cmp.not.i = icmp eq ptr %call.i146, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then66.for.end.i_crit_edge
  %ls_recover_list_count3.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 80
  %121 = ptrtoint ptr %ls_recover_list_count3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ls_recover_list_count3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp4.not.i = icmp eq i32 %122, 0
  br i1 %cmp4.not.i, label %for.end.i.recover_idr_clear.exit_crit_edge, label %do.end.i

for.end.i.recover_idr_clear.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_idr_clear.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ls_name.i, i32 noundef %122) #10
  %123 = ptrtoint ptr %ls_recover_list_count3.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %ls_recover_list_count3.i, align 8
  br label %recover_idr_clear.exit

recover_idr_clear.exit:                           ; preds = %do.end.i, %for.end.i.recover_idr_clear.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %if.end67

if.end67:                                         ; preds = %recover_idr_clear.exit, %while.end.i.if.end67_crit_edge
  %error.1166 = phi i32 [ %error.1.ph, %recover_idr_clear.exit ], [ 0, %while.end.i.if.end67_crit_edge ]
  ret i32 %error.1166
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_master_reply(ptr noundef %ls, ptr nocapture noundef readonly %rc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 3
  %0 = ptrtoint ptr %rc_id to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rc_id, align 8
  %ls_recover_idr_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 82
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i) #7
  %ls_recover_idr.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 81
  %conv.i = trunc i64 %1 to i32
  %call.i = tail call ptr @idr_find(ptr noundef %ls_recover_idr.i, i32 noundef %conv.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %2 = ptrtoint ptr %rc_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rc_id, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %ls_name, i64 noundef %3) #10
  br label %out

if.end:                                           ; preds = %entry
  %rc_result = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 2
  %4 = ptrtoint ptr %rc_result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rc_result, align 4
  %call3 = tail call i32 @dlm_our_nodeid() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call3)
  %cmp = icmp eq i32 %5, %call3
  %. = select i1 %cmp, i32 0, i32 %5
  %res_mutex.i = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i, i32 noundef 0) #7
  %res_master_nodeid = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %res_master_nodeid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %res_master_nodeid, align 4
  %res_nodeid = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %res_nodeid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %res_nodeid, align 4
  %res_grantqueue.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %res_grantqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn11.i.i.i = load ptr, ptr %res_grantqueue.i.i, align 4
  %cmp.not12.i.i.i = icmp eq ptr %.pn11.i.i.i, %res_grantqueue.i.i
  br i1 %cmp.not12.i.i.i, label %if.end.set_lock_master.exit.i.i_crit_edge, label %if.end.for.body.i.i.i_crit_edge

if.end.for.body.i.i.i_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i.i

if.end.set_lock_master.exit.i.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.for.body.i.i.i_crit_edge
  %.pn13.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn11.i.i.i, %if.end.for.body.i.i.i_crit_edge ]
  %lkb_flags.i.i.i = getelementptr i8, ptr %.pn13.i.i.i, i32 -20
  %9 = ptrtoint ptr %lkb_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lkb_flags.i.i.i, align 8
  %and.i.i.i = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i.i.i = getelementptr i8, ptr %.pn13.i.i.i, i32 -44
  %11 = ptrtoint ptr %lkb_nodeid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %., ptr %lkb_nodeid.i.i.i, align 8
  %lkb_remid.i.i.i = getelementptr i8, ptr %.pn13.i.i.i, i32 -32
  %12 = ptrtoint ptr %lkb_remid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lkb_remid.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %13 = ptrtoint ptr %.pn13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i.i.i = load ptr, ptr %.pn13.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %res_grantqueue.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.set_lock_master.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.set_lock_master.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit.i.i

set_lock_master.exit.i.i:                         ; preds = %for.inc.i.i.i.set_lock_master.exit.i.i_crit_edge, %if.end.set_lock_master.exit.i.i_crit_edge
  %res_convertqueue.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 17
  %14 = ptrtoint ptr %res_nodeid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %res_nodeid, align 4
  %16 = ptrtoint ptr %res_convertqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn11.i8.i.i = load ptr, ptr %res_convertqueue.i.i, align 4
  %cmp.not12.i9.i.i = icmp eq ptr %.pn11.i8.i.i, %res_convertqueue.i.i
  br i1 %cmp.not12.i9.i.i, label %set_lock_master.exit.i.i.set_lock_master.exit21.i.i_crit_edge, label %set_lock_master.exit.i.i.for.body.i14.i.i_crit_edge

set_lock_master.exit.i.i.for.body.i14.i.i_crit_edge: ; preds = %set_lock_master.exit.i.i
  br label %for.body.i14.i.i

set_lock_master.exit.i.i.set_lock_master.exit21.i.i_crit_edge: ; preds = %set_lock_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit21.i.i

for.body.i14.i.i:                                 ; preds = %for.inc.i20.i.i.for.body.i14.i.i_crit_edge, %set_lock_master.exit.i.i.for.body.i14.i.i_crit_edge
  %.pn13.i10.i.i = phi ptr [ %.pn.i18.i.i, %for.inc.i20.i.i.for.body.i14.i.i_crit_edge ], [ %.pn11.i8.i.i, %set_lock_master.exit.i.i.for.body.i14.i.i_crit_edge ]
  %lkb_flags.i11.i.i = getelementptr i8, ptr %.pn13.i10.i.i, i32 -20
  %17 = ptrtoint ptr %lkb_flags.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lkb_flags.i11.i.i, align 8
  %and.i12.i.i = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %and.i12.i.i, 0
  br i1 %tobool.not.i13.i.i, label %if.then.i17.i.i, label %for.body.i14.i.i.for.inc.i20.i.i_crit_edge

for.body.i14.i.i.for.inc.i20.i.i_crit_edge:       ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i20.i.i

if.then.i17.i.i:                                  ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i15.i.i = getelementptr i8, ptr %.pn13.i10.i.i, i32 -44
  %19 = ptrtoint ptr %lkb_nodeid.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %lkb_nodeid.i15.i.i, align 8
  %lkb_remid.i16.i.i = getelementptr i8, ptr %.pn13.i10.i.i, i32 -32
  %20 = ptrtoint ptr %lkb_remid.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lkb_remid.i16.i.i, align 4
  br label %for.inc.i20.i.i

for.inc.i20.i.i:                                  ; preds = %if.then.i17.i.i, %for.body.i14.i.i.for.inc.i20.i.i_crit_edge
  %21 = ptrtoint ptr %.pn13.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i18.i.i = load ptr, ptr %.pn13.i10.i.i, align 4
  %cmp.not.i19.i.i = icmp eq ptr %.pn.i18.i.i, %res_convertqueue.i.i
  br i1 %cmp.not.i19.i.i, label %for.inc.i20.i.i.set_lock_master.exit21.i.i_crit_edge, label %for.inc.i20.i.i.for.body.i14.i.i_crit_edge

for.inc.i20.i.i.for.body.i14.i.i_crit_edge:       ; preds = %for.inc.i20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i14.i.i

for.inc.i20.i.i.set_lock_master.exit21.i.i_crit_edge: ; preds = %for.inc.i20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_lock_master.exit21.i.i

set_lock_master.exit21.i.i:                       ; preds = %for.inc.i20.i.i.set_lock_master.exit21.i.i_crit_edge, %set_lock_master.exit.i.i.set_lock_master.exit21.i.i_crit_edge
  %res_waitqueue.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 18
  %22 = ptrtoint ptr %res_nodeid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %res_nodeid, align 4
  %24 = ptrtoint ptr %res_waitqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn11.i22.i.i = load ptr, ptr %res_waitqueue.i.i, align 4
  %cmp.not12.i23.i.i = icmp eq ptr %.pn11.i22.i.i, %res_waitqueue.i.i
  br i1 %cmp.not12.i23.i.i, label %set_lock_master.exit21.i.i.set_new_master.exit_crit_edge, label %set_lock_master.exit21.i.i.for.body.i28.i.i_crit_edge

set_lock_master.exit21.i.i.for.body.i28.i.i_crit_edge: ; preds = %set_lock_master.exit21.i.i
  br label %for.body.i28.i.i

set_lock_master.exit21.i.i.set_new_master.exit_crit_edge: ; preds = %set_lock_master.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_new_master.exit

for.body.i28.i.i:                                 ; preds = %for.inc.i34.i.i.for.body.i28.i.i_crit_edge, %set_lock_master.exit21.i.i.for.body.i28.i.i_crit_edge
  %.pn13.i24.i.i = phi ptr [ %.pn.i32.i.i, %for.inc.i34.i.i.for.body.i28.i.i_crit_edge ], [ %.pn11.i22.i.i, %set_lock_master.exit21.i.i.for.body.i28.i.i_crit_edge ]
  %lkb_flags.i25.i.i = getelementptr i8, ptr %.pn13.i24.i.i, i32 -20
  %25 = ptrtoint ptr %lkb_flags.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lkb_flags.i25.i.i, align 8
  %and.i26.i.i = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i)
  %tobool.not.i27.i.i = icmp eq i32 %and.i26.i.i, 0
  br i1 %tobool.not.i27.i.i, label %if.then.i31.i.i, label %for.body.i28.i.i.for.inc.i34.i.i_crit_edge

for.body.i28.i.i.for.inc.i34.i.i_crit_edge:       ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i34.i.i

if.then.i31.i.i:                                  ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_nodeid.i29.i.i = getelementptr i8, ptr %.pn13.i24.i.i, i32 -44
  %27 = ptrtoint ptr %lkb_nodeid.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %lkb_nodeid.i29.i.i, align 8
  %lkb_remid.i30.i.i = getelementptr i8, ptr %.pn13.i24.i.i, i32 -32
  %28 = ptrtoint ptr %lkb_remid.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %lkb_remid.i30.i.i, align 4
  br label %for.inc.i34.i.i

for.inc.i34.i.i:                                  ; preds = %if.then.i31.i.i, %for.body.i28.i.i.for.inc.i34.i.i_crit_edge
  %29 = ptrtoint ptr %.pn13.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i32.i.i = load ptr, ptr %.pn13.i24.i.i, align 4
  %cmp.not.i33.i.i = icmp eq ptr %.pn.i32.i.i, %res_waitqueue.i.i
  br i1 %cmp.not.i33.i.i, label %for.inc.i34.i.i.set_new_master.exit_crit_edge, label %for.inc.i34.i.i.for.body.i28.i.i_crit_edge

for.inc.i34.i.i.for.body.i28.i.i_crit_edge:       ; preds = %for.inc.i34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i28.i.i

for.inc.i34.i.i.set_new_master.exit_crit_edge:    ; preds = %for.inc.i34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_new_master.exit

set_new_master.exit:                              ; preds = %for.inc.i34.i.i.set_new_master.exit_crit_edge, %set_lock_master.exit21.i.i.set_new_master.exit_crit_edge
  %res_flags.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %res_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %res_flags.i.i, align 4
  %or.i.i4.i = or i32 %31, 24
  store i32 %or.i.i4.i, ptr %res_flags.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %res_mutex.i) #7
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %ls_recover_idr_lock.i24 = getelementptr inbounds %struct.dlm_ls, ptr %33, i32 0, i32 82
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i24) #7
  %ls_recover_idr.i25 = getelementptr inbounds %struct.dlm_ls, ptr %33, i32 0, i32 81
  %res_id.i = getelementptr inbounds %struct.dlm_rsb, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %res_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %res_id.i, align 4
  %call.i26 = tail call ptr @idr_remove(ptr noundef %ls_recover_idr.i25, i32 noundef %35) #7
  %36 = ptrtoint ptr %res_id.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %res_id.i, align 4
  %ls_recover_list_count.i = getelementptr inbounds %struct.dlm_ls, ptr %33, i32 0, i32 80
  %37 = ptrtoint ptr %ls_recover_list_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ls_recover_list_count.i, align 8
  %dec.i = add i32 %38, -1
  store i32 %dec.i, ptr %ls_recover_list_count.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i24) #7
  tail call void @dlm_put_rsb(ptr noundef nonnull %call.i) #7
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_idr_lock.i) #7
  %ls_recover_list_count.i28 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 80
  %39 = ptrtoint ptr %ls_recover_list_count.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ls_recover_list_count.i28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.not = icmp eq i32 %40, 0
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_idr_lock.i) #7
  br i1 %tobool.not.i.not, label %if.then8, label %set_new_master.exit.out_crit_edge

set_new_master.exit.out_crit_edge:                ; preds = %set_new_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then8:                                         ; preds = %set_new_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ls_wait_general = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 83
  tail call void @__wake_up(ptr noundef %ls_wait_general, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %out

out:                                              ; preds = %if.then8, %set_new_master.exit.out_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_locks(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_root_sem = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 87
  tail call void @down_read(ptr noundef %ls_root_sem) #7
  %ls_root_list = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %0 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn112 = load ptr, ptr %ls_root_list, align 4
  %cmp.not114 = icmp eq ptr %.pn112, %ls_root_list
  br i1 %cmp.not114, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn116 = phi ptr [ %.pn112, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %count.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %r.0117 = getelementptr i8, ptr %.pn116, i32 -188
  %res_nodeid.i = getelementptr i8, ptr %.pn116, i32 -80
  %1 = ptrtoint ptr %res_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res_nodeid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.not = icmp eq i32 %2, 0
  %res_flags.i = getelementptr i8, ptr %.pn116, i32 -88
  br i1 %tobool.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res_flags.i, align 4
  %and.i.i = and i32 %4, -9
  store i32 %and.i.i, ptr %res_flags.i, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %res_flags.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ls_flags.i, align 4
  %and1.i.i65 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i65)
  %tobool7.not = icmp eq i32 %and1.i.i65, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  br label %if.then42

if.end10:                                         ; preds = %if.end5
  %res_mutex.i.i = getelementptr i8, ptr %.pn116, i32 -180
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i.i, i32 noundef 0) #7
  %res_recover_locks_count.i = getelementptr i8, ptr %.pn116, i32 16
  %10 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res_recover_locks_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i66 = icmp eq i32 %11, 0
  br i1 %tobool.not.i66, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 638, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, i32 noundef %12) #10
  tail call void @dlm_dump_rsb(ptr noundef %r.0117) #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.30) #11
  unreachable

if.end.i:                                         ; preds = %if.end10
  %res_grantqueue.i = getelementptr i8, ptr %.pn116, i32 -24
  %13 = ptrtoint ptr %res_grantqueue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn11.i.i = load ptr, ptr %res_grantqueue.i, align 4
  %cmp.not12.i.i = icmp eq ptr %.pn11.i.i, %res_grantqueue.i
  br i1 %cmp.not12.i.i, label %if.end.i.if.end9.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn13.i.i = phi ptr [ %.pn.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %.pn11.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %lkb.0.i.i = getelementptr i8, ptr %.pn13.i.i, i32 -52
  %call.i.i = tail call i32 @dlm_send_rcom_lock(ptr noundef %r.0117, ptr noundef %lkb.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.if.then13_crit_edge

for.body.i.i.if.then13_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.end.i.i:                                       ; preds = %for.body.i.i
  %14 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %res_recover_locks_count.i, align 4
  %inc.i.i = add i32 %15, 1
  store i32 %inc.i.i, ptr %res_recover_locks_count.i, align 4
  %16 = ptrtoint ptr %.pn13.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i.i = load ptr, ptr %.pn13.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %res_grantqueue.i
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end9.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end.i.i.if.end9.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %res_convertqueue.i = getelementptr i8, ptr %.pn116, i32 -16
  %17 = ptrtoint ptr %res_convertqueue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn11.i37.i = load ptr, ptr %res_convertqueue.i, align 4
  %cmp.not12.i38.i = icmp eq ptr %.pn11.i37.i, %res_convertqueue.i
  br i1 %cmp.not12.i38.i, label %if.end9.i.if.end13.i_crit_edge, label %if.end9.i.for.body.i45.i_crit_edge

if.end9.i.for.body.i45.i_crit_edge:               ; preds = %if.end9.i
  br label %for.body.i45.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

for.body.i45.i:                                   ; preds = %if.end.i49.i.for.body.i45.i_crit_edge, %if.end9.i.for.body.i45.i_crit_edge
  %.pn13.i41.i = phi ptr [ %.pn.i47.i, %if.end.i49.i.for.body.i45.i_crit_edge ], [ %.pn11.i37.i, %if.end9.i.for.body.i45.i_crit_edge ]
  %lkb.0.i42.i = getelementptr i8, ptr %.pn13.i41.i, i32 -52
  %call.i43.i = tail call i32 @dlm_send_rcom_lock(ptr noundef %r.0117, ptr noundef %lkb.0.i42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.end.i49.i, label %for.body.i45.i.if.then13_crit_edge

for.body.i45.i.if.then13_crit_edge:               ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.end.i49.i:                                     ; preds = %for.body.i45.i
  %18 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res_recover_locks_count.i, align 4
  %inc.i46.i = add i32 %19, 1
  store i32 %inc.i46.i, ptr %res_recover_locks_count.i, align 4
  %20 = ptrtoint ptr %.pn13.i41.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i47.i = load ptr, ptr %.pn13.i41.i, align 4
  %cmp.not.i48.i = icmp eq ptr %.pn.i47.i, %res_convertqueue.i
  br i1 %cmp.not.i48.i, label %if.end.i49.i.if.end13.i_crit_edge, label %if.end.i49.i.for.body.i45.i_crit_edge

if.end.i49.i.for.body.i45.i_crit_edge:            ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i45.i

if.end.i49.i.if.end13.i_crit_edge:                ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i49.i.if.end13.i_crit_edge, %if.end9.i.if.end13.i_crit_edge
  %res_waitqueue.i = getelementptr i8, ptr %.pn116, i32 -8
  %21 = ptrtoint ptr %res_waitqueue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn11.i52.i = load ptr, ptr %res_waitqueue.i, align 4
  %cmp.not12.i53.i = icmp eq ptr %.pn11.i52.i, %res_waitqueue.i
  br i1 %cmp.not12.i53.i, label %if.end17thread-pre-split.i, label %if.end13.i.for.body.i60.i_crit_edge

if.end13.i.for.body.i60.i_crit_edge:              ; preds = %if.end13.i
  br label %for.body.i60.i

for.body.i60.i:                                   ; preds = %if.end.i64.i.for.body.i60.i_crit_edge, %if.end13.i.for.body.i60.i_crit_edge
  %.pn13.i56.i = phi ptr [ %.pn.i62.i, %if.end.i64.i.for.body.i60.i_crit_edge ], [ %.pn11.i52.i, %if.end13.i.for.body.i60.i_crit_edge ]
  %lkb.0.i57.i = getelementptr i8, ptr %.pn13.i56.i, i32 -52
  %call.i58.i = tail call i32 @dlm_send_rcom_lock(ptr noundef %r.0117, ptr noundef %lkb.0.i57.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool.not.i59.i, label %if.end.i64.i, label %for.body.i60.i.if.then13_crit_edge

for.body.i60.i.if.then13_crit_edge:               ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.end.i64.i:                                     ; preds = %for.body.i60.i
  %22 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %res_recover_locks_count.i, align 4
  %inc.i61.i = add i32 %23, 1
  store i32 %inc.i61.i, ptr %res_recover_locks_count.i, align 4
  %24 = ptrtoint ptr %.pn13.i56.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i62.i = load ptr, ptr %.pn13.i56.i, align 4
  %cmp.not.i63.i = icmp eq ptr %.pn.i62.i, %res_waitqueue.i
  br i1 %cmp.not.i63.i, label %if.end.i64.i.if.end17.i_crit_edge, label %if.end.i64.i.for.body.i60.i_crit_edge

if.end.i64.i.for.body.i60.i_crit_edge:            ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i60.i

if.end.i64.i.if.end17.i_crit_edge:                ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17thread-pre-split.i:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %res_recover_locks_count.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17thread-pre-split.i, %if.end.i64.i.if.end17.i_crit_edge
  %26 = phi i32 [ %.pr.i, %if.end17thread-pre-split.i ], [ %inc.i61.i, %if.end.i64.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not.i = icmp eq i32 %26, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end17.i
  %27 = ptrtoint ptr %r.0117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r.0117, align 4
  %ls_recover_list_lock.i.i = getelementptr inbounds %struct.dlm_ls, ptr %28, i32 0, i32 79
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_list_lock.i.i) #7
  %res_recover_list.i.i = getelementptr i8, ptr %.pn116, i32 8
  %29 = ptrtoint ptr %res_recover_list.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %res_recover_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %res_recover_list.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.then20.i.recover_list_add.exit.i_crit_edge

if.then20.i.recover_list_add.exit.i_crit_edge:    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_list_add.exit.i

if.then.i.i:                                      ; preds = %if.then20.i
  %ls_recover_list.i.i = getelementptr inbounds %struct.dlm_ls, ptr %28, i32 0, i32 78
  %prev.i.i.i = getelementptr inbounds %struct.dlm_ls, ptr %28, i32 0, i32 78, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %res_recover_list.i.i, ptr noundef %32, ptr noundef %ls_recover_list.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_add_tail.exit.i.i_crit_edge

if.then.i.i.list_add_tail.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %res_recover_list.i.i, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %res_recover_list.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ls_recover_list.i.i, ptr %res_recover_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn116, i32 12
  %35 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %res_recover_list.i.i, ptr %32, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_add_tail.exit.i.i_crit_edge
  %ls_recover_list_count.i.i = getelementptr inbounds %struct.dlm_ls, ptr %28, i32 0, i32 80
  %37 = ptrtoint ptr %ls_recover_list_count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ls_recover_list_count.i.i, align 8
  %inc.i67.i = add i32 %38, 1
  store i32 %inc.i67.i, ptr %ls_recover_list_count.i.i, align 8
  tail call void @dlm_hold_rsb(ptr noundef %r.0117) #7
  br label %recover_list_add.exit.i

recover_list_add.exit.i:                          ; preds = %list_add_tail.exit.i.i, %if.then20.i.recover_list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_list_lock.i.i) #7
  br label %if.end15

if.else.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %res_flags.i, align 4
  %and.i.i.i = and i32 %40, -9
  store i32 %and.i.i.i, ptr %res_flags.i, align 4
  br label %if.end15

if.then13:                                        ; preds = %for.body.i60.i.if.then13_crit_edge, %for.body.i45.i.if.then13_crit_edge, %for.body.i.i.if.then13_crit_edge
  %error.0.i.ph = phi i32 [ %call.i58.i, %for.body.i60.i.if.then13_crit_edge ], [ %call.i43.i, %for.body.i45.i.if.then13_crit_edge ], [ %call.i.i, %for.body.i.i.if.then13_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %res_mutex.i.i) #7
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  br label %if.then42

if.end15:                                         ; preds = %if.else.i, %recover_list_add.exit.i
  tail call void @mutex_unlock(ptr noundef %res_mutex.i.i) #7
  %41 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %res_recover_locks_count.i, align 4
  %add = add i32 %42, %count.0115
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.end.for.inc_crit_edge, %if.then
  %count.1 = phi i32 [ %count.0115, %if.then ], [ %add, %if.end15 ], [ %count.0115, %if.end.for.inc_crit_edge ]
  %43 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn116, align 4
  %cmp.not = icmp eq ptr %.pn, %ls_root_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %for.inc.for.end_crit_edge ]
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %44 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool22.not = icmp eq i32 %44, 0
  br i1 %tobool22.not, label %if.else, label %for.end.do.end39.sink.split_crit_edge

for.end.do.end39.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.sink.split

if.else:                                          ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool27.not = icmp eq i32 %45, 0
  br i1 %tobool27.not, label %if.else.do.end39_crit_edge, label %if.else.do.end39.sink.split_crit_edge

if.else.do.end39.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.sink.split

if.else.do.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end39.sink.split:                              ; preds = %if.else.do.end39.sink.split_crit_edge, %for.end.do.end39.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %for.end.do.end39.sink.split_crit_edge ], [ @.str.22, %if.else.do.end39.sink.split_crit_edge ]
  %ls_name33 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink, ptr noundef %ls_name33, i32 noundef %count.0.lcssa) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end39.sink.split, %if.else.do.end39_crit_edge
  %ls_flags.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %ls_wait_general.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 83
  %ls_recover_list_lock.i81 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 79
  %ls_recover_list.i82 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 78
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end48.i.while.cond.i_crit_edge, %do.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3) to i32))
  %46 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  %mul.i = mul i32 %46, 100
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 50) #7
  call void @_raw_spin_lock(ptr noundef %ls_recover_list_lock.i81) #7
  %47 = ptrtoint ptr %ls_recover_list.i82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %ls_recover_list.i82, align 4
  %cmp.i.i83.not = icmp eq ptr %48, %ls_recover_list.i82
  call void @_raw_spin_unlock(ptr noundef %ls_recover_list_lock.i81) #7
  br i1 %cmp.i.i83.not, label %while.cond.i.while.end.i_crit_edge, label %lor.end.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

lor.end.i:                                        ; preds = %while.cond.i
  %49 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool5.not.i, label %51, label %lor.end.i.while.end.i_crit_edge

lor.end.i.while.end.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

51:                                               ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool10.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool10.not.i, label %.if.end48.i_crit_edge, label %if.then13.i

.if.end48.i_crit_edge:                            ; preds = %51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then13.i:                                      ; preds = %51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %52 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3) to i32))
  %53 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call16128.i = call i32 @prepare_to_wait_event(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  call void @_raw_spin_lock(ptr noundef %ls_recover_list_lock.i81) #7
  %54 = ptrtoint ptr %ls_recover_list.i82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %ls_recover_list.i82, align 4
  %cmp.i.i79.not = icmp eq ptr %55, %ls_recover_list.i82
  call void @_raw_spin_unlock(ptr noundef %ls_recover_list_lock.i81) #7
  br i1 %cmp.i.i79.not, label %if.then13.i.if.end44.thread138.i_crit_edge, label %lor.end23.i.preheader

if.then13.i.if.end44.thread138.i_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138.i

lor.end23.i.preheader:                            ; preds = %if.then13.i
  %mul15.i = mul i32 %53, 100
  br label %lor.end23.i

lor.end23.i:                                      ; preds = %cleanup.i.lor.end23.i_crit_edge, %lor.end23.i.preheader
  %__ret14.0131.i = phi i32 [ %call41.i, %cleanup.i.lor.end23.i_crit_edge ], [ %mul15.i, %lor.end23.i.preheader ]
  %56 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i102.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i102.i)
  %tobool22.not.i = icmp eq i32 %and1.i.i102.i, 0
  br i1 %tobool22.not.i, label %58, label %lor.end23.i.if.end44.thread138.i_crit_edge

lor.end23.i.if.end44.thread138.i_crit_edge:       ; preds = %lor.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138.i

58:                                               ; preds = %lor.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.0131.i)
  %tobool34.not.i = icmp eq i32 %__ret14.0131.i, 0
  br i1 %tobool34.not.i, label %if.end44.i, label %cleanup.i

cleanup.i:                                        ; preds = %58
  %call41.i = call i32 @schedule_timeout(i32 noundef %__ret14.0131.i) #7
  %call16.i = call i32 @prepare_to_wait_event(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  call void @_raw_spin_lock(ptr noundef %ls_recover_list_lock.i81) #7
  %59 = ptrtoint ptr %ls_recover_list.i82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %ls_recover_list.i82, align 4
  %cmp.i.i.not = icmp eq ptr %60, %ls_recover_list.i82
  call void @_raw_spin_unlock(ptr noundef %ls_recover_list_lock.i81) #7
  br i1 %cmp.i.i.not, label %cleanup.i.if.end44.thread138.i_crit_edge, label %cleanup.i.lor.end23.i_crit_edge

cleanup.i.lor.end23.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end23.i

cleanup.i.if.end44.thread138.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.thread138.i

if.end44.thread138.i:                             ; preds = %cleanup.i.if.end44.thread138.i_crit_edge, %lor.end23.i.if.end44.thread138.i_crit_edge, %if.then13.i.if.end44.thread138.i_crit_edge
  call void @finish_wait(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %while.end.i

if.end44.i:                                       ; preds = %58
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %ls_wait_general.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end44.i, %.if.end48.i_crit_edge
  %61 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %ls_flags.i.i, align 4
  %63 = and i32 %62, 64
  %tobool50.not.i = icmp eq i32 %63, 0
  br i1 %tobool50.not.i, label %if.end48.i.while.cond.i_crit_edge, label %do.body52.i

if.end48.i.while.cond.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.body52.i:                                      ; preds = %if.end48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %64 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool53.not.i = icmp eq i32 %64, 0
  br i1 %tobool53.not.i, label %do.body52.i.if.then42_crit_edge, label %do.body52.i.cleanup81.sink.split.i_crit_edge

do.body52.i.cleanup81.sink.split.i_crit_edge:     ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81.sink.split.i

do.body52.i.if.then42_crit_edge:                  ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

while.end.i:                                      ; preds = %if.end44.thread138.i, %lor.end.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %65 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i104.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i104.i)
  %tobool65.not.i = icmp eq i32 %and1.i.i104.i, 0
  br i1 %tobool65.not.i, label %while.end.i.if.end43_crit_edge, label %do.body67.i

while.end.i.if.end43_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body67.i:                                      ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %67 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool68.not.i = icmp eq i32 %67, 0
  br i1 %tobool68.not.i, label %do.body67.i.if.then42_crit_edge, label %do.body67.i.cleanup81.sink.split.i_crit_edge

do.body67.i.cleanup81.sink.split.i_crit_edge:     ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81.sink.split.i

do.body67.i.if.then42_crit_edge:                  ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

cleanup81.sink.split.i:                           ; preds = %do.body67.i.cleanup81.sink.split.i_crit_edge, %do.body52.i.cleanup81.sink.split.i_crit_edge
  %.str.4.sink.i = phi ptr [ @.str.1, %do.body52.i.cleanup81.sink.split.i_crit_edge ], [ @.str.4, %do.body67.i.cleanup81.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -110, %do.body52.i.cleanup81.sink.split.i_crit_edge ], [ -4, %do.body67.i.cleanup81.sink.split.i_crit_edge ]
  %ls_name74.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, ptr noundef %ls_name74.i) #10
  br label %if.then42

if.then42:                                        ; preds = %cleanup81.sink.split.i, %do.body67.i.if.then42_crit_edge, %do.body52.i.if.then42_crit_edge, %if.then13, %if.then8
  %error.0.ph = phi i32 [ %retval.0.ph.i, %cleanup81.sink.split.i ], [ -4, %do.body67.i.if.then42_crit_edge ], [ -110, %do.body52.i.if.then42_crit_edge ], [ %error.0.i.ph, %if.then13 ], [ -4, %if.then8 ]
  %ls_recover_list_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 79
  call void @_raw_spin_lock(ptr noundef %ls_recover_list_lock.i) #7
  %ls_recover_list.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 78
  %68 = ptrtoint ptr %ls_recover_list.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ls_recover_list.i, align 4
  %cmp.not33.i = icmp eq ptr %69, %ls_recover_list.i
  br i1 %cmp.not33.i, label %if.then42.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then42.for.end.i_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then42
  %ls_recover_list_count.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 80
  br label %for.body.i

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in34.i = phi ptr [ %69, %for.body.lr.ph.i ], [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ]
  %r.0.i = getelementptr i8, ptr %.pn.in34.i, i32 -196
  %70 = ptrtoint ptr %.pn.in34.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i = load ptr, ptr %.pn.in34.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %.pn.in34.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i70, align 4
  %73 = ptrtoint ptr %.pn.in34.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %.pn.in34.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %77 = ptrtoint ptr %.pn.in34.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %.pn.in34.i, ptr %.pn.in34.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %.pn.in34.i, ptr %prev.i3.i.i, align 4
  %res_recover_locks_count.i71 = getelementptr i8, ptr %.pn.in34.i, i32 8
  %79 = ptrtoint ptr %res_recover_locks_count.i71 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %res_recover_locks_count.i71, align 4
  call void @dlm_put_rsb(ptr noundef %r.0.i) #7
  %80 = ptrtoint ptr %ls_recover_list_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ls_recover_list_count.i, align 8
  %dec.i = add i32 %81, -1
  store i32 %dec.i, ptr %ls_recover_list_count.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %ls_recover_list.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.for.end.i_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del_init.exit.i.for.end.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %list_del_init.exit.i.for.end.i_crit_edge, %if.then42.for.end.i_crit_edge
  %ls_recover_list_count13.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 80
  %82 = ptrtoint ptr %ls_recover_list_count13.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ls_recover_list_count13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp14.not.i = icmp eq i32 %83, 0
  br i1 %cmp14.not.i, label %for.end.i.recover_list_clear.exit_crit_edge, label %do.end.i73

for.end.i.recover_list_clear.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_list_clear.exit

do.end.i73:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ls_name.i, i32 noundef %83) #10
  %84 = ptrtoint ptr %ls_recover_list_count13.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %ls_recover_list_count13.i, align 8
  br label %recover_list_clear.exit

recover_list_clear.exit:                          ; preds = %do.end.i73, %for.end.i.recover_list_clear.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ls_recover_list_lock.i) #7
  br label %if.end43

if.end43:                                         ; preds = %recover_list_clear.exit, %while.end.i.if.end43_crit_edge
  %error.091 = phi i32 [ %error.0.ph, %recover_list_clear.exit ], [ 0, %while.end.i.if.end43_crit_edge ]
  ret i32 %error.091
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_recovered_lock(ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res_flags.i = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 3
  %0 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %res_flags.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 701, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef %3) #10
  tail call void @dlm_dump_rsb(ptr noundef %r) #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.30) #11
  unreachable

if.end:                                           ; preds = %entry
  %res_recover_locks_count = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 21
  %4 = ptrtoint ptr %res_recover_locks_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res_recover_locks_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %res_recover_locks_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %and.i.i = and i32 %1, -9
  %6 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i.i, ptr %res_flags.i, align 4
  %7 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r, align 4
  %ls_recover_list_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %8, i32 0, i32 79
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_list_lock.i) #7
  %res_recover_list.i = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %res_recover_list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.recover_list_del.exit_crit_edge

if.then8.recover_list_del.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_list_del.exit

if.end.i.i.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %res_recover_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res_recover_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %recover_list_del.exit

recover_list_del.exit:                            ; preds = %if.end.i.i.i, %if.then8.recover_list_del.exit_crit_edge
  %15 = ptrtoint ptr %res_recover_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %res_recover_list.i, ptr %res_recover_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %res_recover_list.i, ptr %prev.i3.i.i, align 4
  %ls_recover_list_count.i = getelementptr inbounds %struct.dlm_ls, ptr %8, i32 0, i32 80
  %17 = ptrtoint ptr %ls_recover_list_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ls_recover_list_count.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %ls_recover_list_count.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_list_lock.i) #7
  tail call void @dlm_put_rsb(ptr noundef %r) #7
  br label %if.end9

if.end9:                                          ; preds = %recover_list_del.exit, %if.end.if.end9_crit_edge
  %19 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %r, align 4
  %ls_recover_list_lock.i23 = getelementptr inbounds %struct.dlm_ls, ptr %20, i32 0, i32 79
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_list_lock.i23) #7
  %ls_recover_list.i = getelementptr inbounds %struct.dlm_ls, ptr %20, i32 0, i32 78
  %21 = ptrtoint ptr %ls_recover_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ls_recover_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %22, %ls_recover_list.i
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_list_lock.i23) #7
  br i1 %cmp.i.i.not, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r, align 4
  %ls_wait_general = getelementptr inbounds %struct.dlm_ls, ptr %24, i32 0, i32 83
  tail call void @__wake_up(ptr noundef %ls_wait_general, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_dump_rsb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_recover_rsbs(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_root_sem = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 87
  tail call void @down_read(ptr noundef %ls_root_sem) #7
  %ls_root_list = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %0 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn90 = load ptr, ptr %ls_root_list, align 4
  %cmp.not92 = icmp eq ptr %.pn90, %ls_root_list
  br i1 %cmp.not92, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  br label %if.end37

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn94 = phi ptr [ %.pn, %if.end9.for.body_crit_edge ], [ %.pn90, %entry.for.body_crit_edge ]
  %count.093 = phi i32 [ %count.1, %if.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %r.095 = getelementptr i8, ptr %.pn94, i32 -188
  %res_mutex.i = getelementptr i8, ptr %.pn94, i32 -180
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i, i32 noundef 0) #7
  %res_nodeid.i = getelementptr i8, ptr %.pn94, i32 -80
  %1 = ptrtoint ptr %res_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res_nodeid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.not = icmp eq i32 %2, 0
  %res_flags.i = getelementptr i8, ptr %.pn94, i32 -88
  br i1 %tobool.not.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %res_flags.i, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  %6 = ptrtoint ptr %r.095 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r.095, align 4
  %res_grantqueue.i = getelementptr i8, ptr %.pn94, i32 -24
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then4
  %.pn.in.i = phi ptr [ %res_grantqueue.i, %if.then4 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %res_grantqueue.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %lkb_grmode.i = getelementptr i8, ptr %.pn.i, i32 -10
  %9 = ptrtoint ptr %lkb_grmode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lkb_grmode.i, align 2
  %11 = and i8 %10, -2
  %switch.i = icmp eq i8 %11, 2
  br i1 %switch.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv989.i = zext i8 %10 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %if.then.i, %for.cond.i.for.end.i_crit_edge
  %grmode.0.i = phi i32 [ %conv989.i, %if.then.i ], [ -1, %for.cond.i.for.end.i_crit_edge ]
  %res_convertqueue.i = getelementptr i8, ptr %.pn94, i32 -16
  %12 = ptrtoint ptr %res_convertqueue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn8890.i = load ptr, ptr %res_convertqueue.i, align 4
  %cmp22.not91.i = icmp eq ptr %.pn8890.i, %res_convertqueue.i
  br i1 %cmp22.not91.i, label %for.end.i.if.end_crit_edge, label %for.body25.lr.ph.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body25.lr.ph.i:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %grmode.0.i)
  %cmp32.i = icmp eq i32 %grmode.0.i, -1
  %ls_name51.i = getelementptr inbounds %struct.dlm_ls, ptr %7, i32 0, i32 91
  %conv58.i = trunc i32 %grmode.0.i to i8
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc61.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %.pn8892.i = phi ptr [ %.pn8890.i, %for.body25.lr.ph.i ], [ %.pn88.i, %for.inc61.i.for.body25.i_crit_edge ]
  %lkb_grmode26.i = getelementptr i8, ptr %.pn8892.i, i32 -10
  %13 = ptrtoint ptr %lkb_grmode26.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lkb_grmode26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp28.not.i = icmp eq i8 %14, -1
  br i1 %cmp28.not.i, label %if.end31.i, label %for.body25.i.for.inc61.i_crit_edge

for.body25.i.for.inc61.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.i

if.end31.i:                                       ; preds = %for.body25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i59 = icmp eq i32 %15, 0
  br i1 %cmp32.i, label %do.body.i, label %do.body44.i

do.body.i:                                        ; preds = %if.end31.i
  br i1 %tobool.not.i59, label %do.body.i.do.end41.i_crit_edge, label %do.end.i

do.body.i.do.end41.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_id.i = getelementptr i8, ptr %.pn8892.i, i32 -36
  %16 = ptrtoint ptr %lkb_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lkb_id.i, align 8
  %lkb_rqmode.i = getelementptr i8, ptr %.pn8892.i, i32 -11
  %18 = ptrtoint ptr %lkb_rqmode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lkb_rqmode.i, align 1
  %conv38.i = sext i8 %19 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %ls_name51.i, i32 noundef %17, i32 noundef %conv38.i) #10
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end.i, %do.body.i.do.end41.i_crit_edge
  %lkb_rqmode42.i = getelementptr i8, ptr %.pn8892.i, i32 -11
  %20 = ptrtoint ptr %lkb_rqmode42.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lkb_rqmode42.i, align 1
  br label %for.inc61.sink.split.i

do.body44.i:                                      ; preds = %if.end31.i
  br i1 %tobool.not.i59, label %do.body44.i.for.inc61.sink.split.i_crit_edge, label %do.end49.i

do.body44.i.for.inc61.sink.split.i_crit_edge:     ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.sink.split.i

do.end49.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_id53.i = getelementptr i8, ptr %.pn8892.i, i32 -36
  %22 = ptrtoint ptr %lkb_id53.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lkb_id53.i, align 8
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %ls_name51.i, i32 noundef %23, i32 noundef %grmode.0.i) #10
  br label %for.inc61.sink.split.i

for.inc61.sink.split.i:                           ; preds = %do.end49.i, %do.body44.i.for.inc61.sink.split.i_crit_edge, %do.end41.i
  %.sink.i = phi i8 [ %21, %do.end41.i ], [ %conv58.i, %do.end49.i ], [ %conv58.i, %do.body44.i.for.inc61.sink.split.i_crit_edge ]
  %24 = ptrtoint ptr %lkb_grmode26.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i, ptr %lkb_grmode26.i, align 2
  br label %for.inc61.i

for.inc61.i:                                      ; preds = %for.inc61.sink.split.i, %for.body25.i.for.inc61.i_crit_edge
  %25 = ptrtoint ptr %.pn8892.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn88.i = load ptr, ptr %.pn8892.i, align 4
  %cmp22.not.i = icmp eq ptr %.pn88.i, %res_convertqueue.i
  br i1 %cmp22.not.i, label %for.inc61.i.if.end_crit_edge, label %for.inc61.i.for.body25.i_crit_edge

for.inc61.i.for.body25.i_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.i

for.inc61.i.if.end_crit_edge:                     ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.inc61.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %26 = ptrtoint ptr %r.095 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %r.095, align 4
  %ls_lvblen.i = getelementptr inbounds %struct.dlm_ls, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %ls_lvblen.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ls_lvblen.i, align 8
  %30 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %res_flags.i, align 4
  %32 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i60 = icmp eq i32 %32, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %33 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %res_flags.i, align 4
  %35 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i = icmp eq i32 %35, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i61

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i61:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i = or i32 %34, 2
  %36 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i.i, ptr %res_flags.i, align 4
  br label %recover_lvb.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %37 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %res_flags.i, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i, label %if.end.i.recover_lvb.exit_crit_edge, label %if.end6.i

if.end.i.recover_lvb.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_lvb.exit

if.end6.i:                                        ; preds = %if.end.i
  %res_grantqueue.i62 = getelementptr i8, ptr %.pn94, i32 -24
  %40 = ptrtoint ptr %res_grantqueue.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn175.i = load ptr, ptr %res_grantqueue.i62, align 4
  %cmp.not177.i = icmp eq ptr %.pn175.i, %res_grantqueue.i62
  br i1 %cmp.not177.i, label %if.end6.i.for.end.i68_crit_edge, label %if.end6.i.for.body.i63_crit_edge

if.end6.i.for.body.i63_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i63

if.end6.i.for.end.i68_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i68

for.body.i63:                                     ; preds = %for.inc.i.for.body.i63_crit_edge, %if.end6.i.for.body.i63_crit_edge
  %.pn181.i = phi ptr [ %.pn.i65, %for.inc.i.for.body.i63_crit_edge ], [ %.pn175.i, %if.end6.i.for.body.i63_crit_edge ]
  %high_lkb.0180.i = phi ptr [ %high_lkb.1.i, %for.inc.i.for.body.i63_crit_edge ], [ null, %if.end6.i.for.body.i63_crit_edge ]
  %high_seq.0179.i = phi i32 [ %high_seq.1.i, %for.inc.i.for.body.i63_crit_edge ], [ 0, %if.end6.i.for.body.i63_crit_edge ]
  %lock_lvb_exists.0178.i = phi i32 [ %lock_lvb_exists.1.i, %for.inc.i.for.body.i63_crit_edge ], [ 0, %if.end6.i.for.body.i63_crit_edge ]
  %lkb.0182.i = getelementptr i8, ptr %.pn181.i, i32 -52
  %lkb_exflags.i = getelementptr i8, ptr %.pn181.i, i32 -28
  %41 = ptrtoint ptr %lkb_exflags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lkb_exflags.i, align 8
  %and.i = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %for.body.i63.for.inc.i_crit_edge, label %if.end10.i

for.body.i63.for.inc.i_crit_edge:                 ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i:                                       ; preds = %for.body.i63
  %lkb_grmode.i64 = getelementptr i8, ptr %.pn181.i, i32 -10
  %43 = ptrtoint ptr %lkb_grmode.i64 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lkb_grmode.i64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp11.i = icmp sgt i8 %44, 1
  br i1 %cmp11.i, label %if.end10.i.if.end66.i_crit_edge, label %if.end14.i

if.end10.i.if.end66.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_lvbseq.i = getelementptr i8, ptr %.pn181.i, i32 -16
  %45 = ptrtoint ptr %lkb_lvbseq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lkb_lvbseq.i, align 4
  %sub.i = sub i32 %46, %high_seq.0179.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp15.i = icmp sgt i32 %sub.i, -1
  %spec.select.i = select i1 %cmp15.i, i32 %46, i32 %high_seq.0179.i
  %spec.select138.i = select i1 %cmp15.i, ptr %lkb.0182.i, ptr %high_lkb.0180.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %for.body.i63.for.inc.i_crit_edge
  %lock_lvb_exists.1.i = phi i32 [ %lock_lvb_exists.0178.i, %for.body.i63.for.inc.i_crit_edge ], [ 1, %if.end14.i ]
  %high_seq.1.i = phi i32 [ %high_seq.0179.i, %for.body.i63.for.inc.i_crit_edge ], [ %spec.select.i, %if.end14.i ]
  %high_lkb.1.i = phi ptr [ %high_lkb.0180.i, %for.body.i63.for.inc.i_crit_edge ], [ %spec.select138.i, %if.end14.i ]
  %47 = ptrtoint ptr %.pn181.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i65 = load ptr, ptr %.pn181.i, align 4
  %cmp.not.i66 = icmp eq ptr %.pn.i65, %res_grantqueue.i62
  br i1 %cmp.not.i66, label %for.inc.i.for.end.i68_crit_edge, label %for.inc.i.for.body.i63_crit_edge

for.inc.i.for.body.i63_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i63

for.inc.i.for.end.i68_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i68

for.end.i68:                                      ; preds = %for.inc.i.for.end.i68_crit_edge, %if.end6.i.for.end.i68_crit_edge
  %lock_lvb_exists.0.lcssa.i = phi i32 [ 0, %if.end6.i.for.end.i68_crit_edge ], [ %lock_lvb_exists.1.i, %for.inc.i.for.end.i68_crit_edge ]
  %high_seq.0.lcssa.i = phi i32 [ 0, %if.end6.i.for.end.i68_crit_edge ], [ %high_seq.1.i, %for.inc.i.for.end.i68_crit_edge ]
  %high_lkb.0.lcssa.i = phi ptr [ null, %if.end6.i.for.end.i68_crit_edge ], [ %high_lkb.1.i, %for.inc.i.for.end.i68_crit_edge ]
  %res_convertqueue.i67 = getelementptr i8, ptr %.pn94, i32 -16
  %48 = ptrtoint ptr %res_convertqueue.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn137185.i = load ptr, ptr %res_convertqueue.i67, align 4
  %lkb.1186.i = getelementptr i8, ptr %.pn137185.i, i32 -52
  %cmp32.not187.i = icmp eq ptr %.pn137185.i, %res_convertqueue.i67
  br i1 %cmp32.not187.i, label %for.end.i68.setflag.i_crit_edge, label %for.end.i68.for.body35.i_crit_edge

for.end.i68.for.body35.i_crit_edge:               ; preds = %for.end.i68
  br label %for.body35.i

for.end.i68.setflag.i_crit_edge:                  ; preds = %for.end.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %setflag.i

for.body35.i:                                     ; preds = %for.inc54.i.for.body35.i_crit_edge, %for.end.i68.for.body35.i_crit_edge
  %lkb.1192.i = phi ptr [ %lkb.1.i, %for.inc54.i.for.body35.i_crit_edge ], [ %lkb.1186.i, %for.end.i68.for.body35.i_crit_edge ]
  %.pn137191.i = phi ptr [ %.pn137.i, %for.inc54.i.for.body35.i_crit_edge ], [ %.pn137185.i, %for.end.i68.for.body35.i_crit_edge ]
  %high_lkb.2190.i = phi ptr [ %high_lkb.3.i, %for.inc54.i.for.body35.i_crit_edge ], [ %high_lkb.0.lcssa.i, %for.end.i68.for.body35.i_crit_edge ]
  %high_seq.2189.i = phi i32 [ %high_seq.3.i, %for.inc54.i.for.body35.i_crit_edge ], [ %high_seq.0.lcssa.i, %for.end.i68.for.body35.i_crit_edge ]
  %lock_lvb_exists.2188.i = phi i32 [ %lock_lvb_exists.3.i, %for.inc54.i.for.body35.i_crit_edge ], [ %lock_lvb_exists.0.lcssa.i, %for.end.i68.for.body35.i_crit_edge ]
  %lkb_exflags36.i = getelementptr i8, ptr %.pn137191.i, i32 -28
  %49 = ptrtoint ptr %lkb_exflags36.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lkb_exflags36.i, align 8
  %and37.i = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %for.body35.i.for.inc54.i_crit_edge, label %if.end40.i

for.body35.i.for.inc54.i_crit_edge:               ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc54.i

if.end40.i:                                       ; preds = %for.body35.i
  %lkb_grmode41.i = getelementptr i8, ptr %.pn137191.i, i32 -10
  %51 = ptrtoint ptr %lkb_grmode41.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lkb_grmode41.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp43.i = icmp sgt i8 %52, 1
  br i1 %cmp43.i, label %if.end40.i.if.end66.i_crit_edge, label %if.end46.i

if.end40.i.if.end66.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_lvbseq47.i = getelementptr i8, ptr %.pn137191.i, i32 -16
  %53 = ptrtoint ptr %lkb_lvbseq47.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lkb_lvbseq47.i, align 4
  %sub48.i = sub i32 %54, %high_seq.2189.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub48.i)
  %cmp49.i = icmp sgt i32 %sub48.i, -1
  %spec.select139.i = select i1 %cmp49.i, i32 %54, i32 %high_seq.2189.i
  %spec.select140.i = select i1 %cmp49.i, ptr %lkb.1192.i, ptr %high_lkb.2190.i
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %if.end46.i, %for.body35.i.for.inc54.i_crit_edge
  %lock_lvb_exists.3.i = phi i32 [ %lock_lvb_exists.2188.i, %for.body35.i.for.inc54.i_crit_edge ], [ 1, %if.end46.i ]
  %high_seq.3.i = phi i32 [ %high_seq.2189.i, %for.body35.i.for.inc54.i_crit_edge ], [ %spec.select139.i, %if.end46.i ]
  %high_lkb.3.i = phi ptr [ %high_lkb.2190.i, %for.body35.i.for.inc54.i_crit_edge ], [ %spec.select140.i, %if.end46.i ]
  %55 = ptrtoint ptr %.pn137191.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn137.i = load ptr, ptr %.pn137191.i, align 4
  %lkb.1.i = getelementptr i8, ptr %.pn137.i, i32 -52
  %cmp32.not.i = icmp eq ptr %.pn137.i, %res_convertqueue.i67
  br i1 %cmp32.not.i, label %for.inc54.i.setflag.i_crit_edge, label %for.inc54.i.for.body35.i_crit_edge

for.inc54.i.for.body35.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35.i

for.inc54.i.setflag.i_crit_edge:                  ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setflag.i

setflag.i:                                        ; preds = %for.inc54.i.setflag.i_crit_edge, %for.end.i68.setflag.i_crit_edge
  %lock_lvb_exists.2.lcssa.i = phi i32 [ %lock_lvb_exists.0.lcssa.i, %for.end.i68.setflag.i_crit_edge ], [ %lock_lvb_exists.3.i, %for.inc54.i.setflag.i_crit_edge ]
  %high_lkb.2.lcssa.i = phi ptr [ %high_lkb.0.lcssa.i, %for.end.i68.setflag.i_crit_edge ], [ %high_lkb.3.i, %for.inc54.i.setflag.i_crit_edge ]
  %lkb.1.lcssa.i = phi ptr [ %lkb.1186.i, %for.end.i68.setflag.i_crit_edge ], [ %lkb.1.i, %for.inc54.i.setflag.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock_lvb_exists.2.lcssa.i)
  %tobool61.not.i = icmp eq i32 %lock_lvb_exists.2.lcssa.i, 0
  br i1 %tobool61.not.i, label %setflag.i.recover_lvb.exit_crit_edge, label %if.then65.i

setflag.i.recover_lvb.exit_crit_edge:             ; preds = %setflag.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_lvb.exit

if.then65.i:                                      ; preds = %setflag.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i149.i = or i32 %38, 2
  %56 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i149.i, ptr %res_flags.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %if.end40.i.if.end66.i_crit_edge, %if.end10.i.if.end66.i_crit_edge
  %tobool64.not155165.i = phi i1 [ true, %if.then65.i ], [ false, %if.end40.i.if.end66.i_crit_edge ], [ false, %if.end10.i.if.end66.i_crit_edge ]
  %high_lkb.4156163.i = phi ptr [ %high_lkb.2.lcssa.i, %if.then65.i ], [ %high_lkb.2190.i, %if.end40.i.if.end66.i_crit_edge ], [ %high_lkb.0180.i, %if.end10.i.if.end66.i_crit_edge ]
  %lkb.2157161.i = phi ptr [ %lkb.1.lcssa.i, %if.then65.i ], [ %lkb.1192.i, %if.end40.i.if.end66.i_crit_edge ], [ %lkb.0182.i, %if.end10.i.if.end66.i_crit_edge ]
  %res_lvbptr.i = getelementptr i8, ptr %.pn94, i32 20
  %57 = ptrtoint ptr %res_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %res_lvbptr.i, align 4
  %tobool67.not.i = icmp eq ptr %58, null
  br i1 %tobool67.not.i, label %if.then68.i, label %if.end66.i.if.end76.i_crit_edge

if.end66.i.if.end76.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then68.i:                                      ; preds = %if.end66.i
  %call70.i = tail call ptr @dlm_allocate_lvb(ptr noundef %27) #7
  %59 = ptrtoint ptr %res_lvbptr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call70.i, ptr %res_lvbptr.i, align 4
  %tobool73.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool73.not.i, label %if.then68.i.recover_lvb.exit_crit_edge, label %if.then68.i.if.end76.i_crit_edge

if.then68.i.if.end76.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76.i

if.then68.i.recover_lvb.exit_crit_edge:           ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recover_lvb.exit

if.end76.i:                                       ; preds = %if.then68.i.if.end76.i_crit_edge, %if.end66.i.if.end76.i_crit_edge
  br i1 %tobool64.not155165.i, label %if.else.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_lvbseq79.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb.2157161.i, i32 0, i32 9
  %60 = ptrtoint ptr %lkb_lvbseq79.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lkb_lvbseq79.i, align 4
  %res_lvbseq.i = getelementptr i8, ptr %.pn94, i32 -64
  %62 = ptrtoint ptr %res_lvbseq.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %res_lvbseq.i, align 4
  %63 = ptrtoint ptr %res_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %res_lvbptr.i, align 4
  %lkb_lvbptr.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb.2157161.i, i32 0, i32 34
  %65 = ptrtoint ptr %lkb_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lkb_lvbptr.i, align 8
  %67 = call ptr @memcpy(ptr %64, ptr %66, i32 %29)
  br label %recover_lvb.exit

if.else.i:                                        ; preds = %if.end76.i
  %tobool81.not.i = icmp eq ptr %high_lkb.4156163.i, null
  br i1 %tobool81.not.i, label %if.else87.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_lvbseq83.i = getelementptr inbounds %struct.dlm_lkb, ptr %high_lkb.4156163.i, i32 0, i32 9
  %68 = ptrtoint ptr %lkb_lvbseq83.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lkb_lvbseq83.i, align 4
  %res_lvbseq84.i = getelementptr i8, ptr %.pn94, i32 -64
  %70 = ptrtoint ptr %res_lvbseq84.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %res_lvbseq84.i, align 4
  %71 = ptrtoint ptr %res_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %res_lvbptr.i, align 4
  %lkb_lvbptr86.i = getelementptr inbounds %struct.dlm_lkb, ptr %high_lkb.4156163.i, i32 0, i32 34
  %73 = ptrtoint ptr %lkb_lvbptr86.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lkb_lvbptr86.i, align 8
  %75 = call ptr @memcpy(ptr %72, ptr %74, i32 %29)
  br label %recover_lvb.exit

if.else87.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %res_lvbseq88.i = getelementptr i8, ptr %.pn94, i32 -64
  %76 = ptrtoint ptr %res_lvbseq88.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %res_lvbseq88.i, align 4
  %77 = ptrtoint ptr %res_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %res_lvbptr.i, align 4
  %79 = call ptr @memset(ptr %78, i32 0, i32 %29)
  br label %recover_lvb.exit

recover_lvb.exit:                                 ; preds = %if.else87.i, %if.then82.i, %if.then78.i, %if.then68.i.recover_lvb.exit_crit_edge, %setflag.i.recover_lvb.exit_crit_edge, %if.end.i.recover_lvb.exit_crit_edge, %if.then.i61
  %80 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %res_flags.i, align 4
  %82 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool6.not = icmp eq i32 %82, 0
  br i1 %tobool6.not, label %recover_lvb.exit.if.end8_crit_edge, label %if.then7

recover_lvb.exit.if.end8_crit_edge:               ; preds = %recover_lvb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %recover_lvb.exit
  %res_waitqueue.i = getelementptr i8, ptr %.pn94, i32 -8
  %83 = ptrtoint ptr %res_waitqueue.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %res_waitqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %84, %res_waitqueue.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.then7.if.then.i75_crit_edge

if.then7.if.then.i75_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i75

lor.lhs.false.i:                                  ; preds = %if.then7
  %res_convertqueue.i72 = getelementptr i8, ptr %.pn94, i32 -16
  %85 = ptrtoint ptr %res_convertqueue.i72 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %res_convertqueue.i72, align 4
  %cmp.i5.not.i = icmp eq ptr %86, %res_convertqueue.i72
  br i1 %cmp.i5.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %lor.lhs.false.i.if.then.i75_crit_edge

lor.lhs.false.i.if.then.i75_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i75

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.i75:                                      ; preds = %lor.lhs.false.i.if.then.i75_crit_edge, %if.then7.if.then.i75_crit_edge
  %or.i.i.i74 = or i32 %81, 64
  %87 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i.i.i74, ptr %res_flags.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then.i75, %lor.lhs.false.i.if.end8_crit_edge, %recover_lvb.exit.if.end8_crit_edge
  %inc = add i32 %count.093, 1
  br label %if.end9

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %res_flags.i, align 4
  %and.i.i = and i32 %89, -3
  store i32 %and.i.i, ptr %res_flags.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end8
  %count.1 = phi i32 [ %inc, %if.end8 ], [ %count.093, %if.else ]
  %res_flags.i78 = getelementptr i8, ptr %.pn94, i32 -88
  %90 = ptrtoint ptr %res_flags.i78 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %res_flags.i78, align 4
  %and.i.i83 = and i32 %91, -177
  store i32 %and.i.i83, ptr %res_flags.i78, align 4
  tail call void @mutex_unlock(ptr noundef %res_mutex.i) #7
  %92 = ptrtoint ptr %.pn94 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn = load ptr, ptr %.pn94, align 4
  %cmp.not = icmp eq ptr %.pn, %ls_root_list
  br i1 %cmp.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end9
  tail call void @up_read(ptr noundef %ls_root_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool16.not = icmp eq i32 %count.1, 0
  br i1 %tobool16.not, label %for.end.if.end37_crit_edge, label %do.body

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body:                                          ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %93 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool18.not = icmp eq i32 %93, 0
  br i1 %tobool18.not, label %if.else23, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ls_name, i32 noundef %count.1) #10
  br label %if.end37

if.else23:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %94 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool24.not = icmp eq i32 %94, 0
  br i1 %tobool24.not, label %if.else23.if.end37_crit_edge, label %do.end28

if.else23.if.end37_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end28:                                         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name30 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %ls_name30, i32 noundef %count.1) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end28, %if.else23.if.end37_crit_edge, %do.end, %for.end.if.end37_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_create_root_list(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_root_sem = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 87
  tail call void @down_write(ptr noundef %ls_root_sem) #7
  %ls_root_list = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %0 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ls_root_list, align 4
  %cmp.i.not = icmp eq ptr %1, %ls_root_list
  br i1 %cmp.i.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %ls_rsbtbl_size = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 15
  %2 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_rsbtbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp54.not = icmp eq i32 %3, 0
  br i1 %cmp54.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ls_rsbtbl = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 14
  %ls_name23 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %ls_name) #10
  br label %out

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end26.for.body_crit_edge ]
  %4 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_rsbtbl, align 8
  %lock = getelementptr %struct.dlm_rsbtable, ptr %5, i32 %i.055, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %6 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ls_rsbtbl, align 8
  %arrayidx3 = getelementptr %struct.dlm_rsbtable, ptr %7, i32 %i.055
  %call4 = tail call ptr @rb_first(ptr noundef %arrayidx3) #7
  %tobool6.not51 = icmp eq ptr %call4, null
  br i1 %tobool6.not51, label %for.body.do.end13_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.do.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

for.body7:                                        ; preds = %list_add.exit.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %n.052 = phi ptr [ %call10, %list_add.exit.for.body7_crit_edge ], [ %call4, %for.body.for.body7_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.052, i32 -152
  %res_root_list = getelementptr i8, ptr %n.052, i32 36
  %8 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ls_root_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %res_root_list, ptr noundef %ls_root_list, ptr noundef %9) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body7.list_add.exit_crit_edge

for.body7.list_add.exit_crit_edge:                ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %res_root_list, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %res_root_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %res_root_list, align 4
  %prev3.i.i = getelementptr i8, ptr %n.052, i32 40
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ls_root_list, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %res_root_list, ptr %ls_root_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.body7.list_add.exit_crit_edge
  tail call void @dlm_hold_rsb(ptr noundef %add.ptr) #7
  %call10 = tail call ptr @rb_next(ptr noundef nonnull %n.052) #7
  %tobool6.not = icmp eq ptr %call10, null
  br i1 %tobool6.not, label %list_add.exit.do.end13_crit_edge, label %list_add.exit.for.body7_crit_edge

list_add.exit.for.body7_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

list_add.exit.do.end13_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end13:                                         ; preds = %list_add.exit.do.end13_crit_edge, %for.body.do.end13_crit_edge
  %14 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ls_rsbtbl, align 8
  %toss = getelementptr %struct.dlm_rsbtable, ptr %15, i32 %i.055, i32 1
  %16 = ptrtoint ptr %toss to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %toss, align 4
  %cmp17 = icmp eq ptr %17, null
  br i1 %cmp17, label %do.end13.if.end26_crit_edge, label %do.end21

do.end13.if.end26_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end21:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %ls_name23) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end21, %do.end13.if.end26_crit_edge
  %18 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ls_rsbtbl, align 8
  %lock29 = getelementptr %struct.dlm_rsbtable, ptr %19, i32 %i.055, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock29) #7
  %inc = add nuw i32 %i.055, 1
  %20 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ls_rsbtbl_size, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %if.end26.for.body_crit_edge, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

out:                                              ; preds = %if.end26.out_crit_edge, %do.end, %for.cond.preheader.out_crit_edge
  %error.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %if.end26.out_crit_edge ]
  tail call void @up_write(ptr noundef %ls_root_sem) #7
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_hold_rsb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_release_root_list(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_root_sem = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 87
  tail call void @down_write(ptr noundef %ls_root_sem) #7
  %ls_root_list = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 86
  %0 = ptrtoint ptr %ls_root_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_root_list, align 8
  %cmp.not22 = icmp eq ptr %1, %ls_root_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %r.0 = getelementptr i8, ptr %.pn.in23, i32 -188
  %2 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in23, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in23, ptr %.pn.in23, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in23, ptr %prev.i3.i, align 4
  tail call void @dlm_put_rsb(ptr noundef %r.0) #7
  %cmp.not = icmp eq ptr %.pn, %ls_root_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_write(ptr noundef %ls_root_sem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put_rsb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_clear_toss(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_rsbtbl_size = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 15
  %0 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_rsbtbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp54.not = icmp eq i32 %1, 0
  br i1 %cmp54.not, label %entry.if.end33_crit_edge, label %for.body.lr.ph

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

for.body.lr.ph:                                   ; preds = %entry
  %ls_rsbtbl = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %count.057 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.end.for.body_crit_edge ]
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_rsbtbl, align 8
  %lock = getelementptr %struct.dlm_rsbtable, ptr %3, i32 %i.055, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %4 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_rsbtbl, align 8
  %toss = getelementptr %struct.dlm_rsbtable, ptr %5, i32 %i.055, i32 1
  %call = tail call ptr @rb_first(ptr noundef %toss) #7
  %tobool.not51 = icmp eq ptr %call, null
  br i1 %tobool.not51, label %for.body.for.end_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %n.053 = phi ptr [ %call5, %for.body4.for.body4_crit_edge ], [ %call, %for.body.for.body4_crit_edge ]
  %count.152 = phi i32 [ %inc, %for.body4.for.body4_crit_edge ], [ %count.057, %for.body.for.body4_crit_edge ]
  %call5 = tail call ptr @rb_next(ptr noundef nonnull %n.053) #7
  %add.ptr = getelementptr i8, ptr %n.053, i32 -152
  %6 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ls_rsbtbl, align 8
  %toss8 = getelementptr %struct.dlm_rsbtable, ptr %7, i32 %i.055, i32 1
  tail call void @rb_erase(ptr noundef nonnull %n.053, ptr noundef %toss8) #7
  tail call void @dlm_free_rsb(ptr noundef %add.ptr) #7
  %inc = add i32 %count.152, 1
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.body4.for.end_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body4.for.end_crit_edge, %for.body.for.end_crit_edge
  %count.1.lcssa = phi i32 [ %count.057, %for.body.for.end_crit_edge ], [ %inc, %for.body4.for.end_crit_edge ]
  %8 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ls_rsbtbl, align 8
  %lock11 = getelementptr %struct.dlm_rsbtable, ptr %9, i32 %i.055, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock11) #7
  %inc13 = add nuw i32 %i.055, 1
  %10 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ls_rsbtbl_size, align 4
  %cmp = icmp ult i32 %inc13, %11
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end14

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa)
  %tobool15.not = icmp eq i32 %count.1.lcssa, 0
  br i1 %tobool15.not, label %for.end14.if.end33_crit_edge, label %do.body

for.end14.if.end33_crit_edge:                     ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body:                                          ; preds = %for.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.else, label %do.body.if.end33.sink.split_crit_edge

do.body.if.end33.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.sink.split

if.else:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %if.else.if.end33_crit_edge, label %if.else.if.end33.sink.split_crit_edge

if.else.if.end33.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.sink.split

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33.sink.split:                              ; preds = %if.else.if.end33.sink.split_crit_edge, %do.body.if.end33.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.41, %do.body.if.end33.sink.split_crit_edge ], [ @.str.44, %if.else.if.end33.sink.split_crit_edge ]
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.41.sink, ptr noundef %ls_name, i32 noundef %count.1.lcssa) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %for.end14.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_free_rsb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_rcom_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_slot_save(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_dir_nodeid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_purge_mstcpy_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_is_removed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_send_rcom_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !103) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !115

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #7
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_send_rcom_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_allocate_lvb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/recover.c", i32 48, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/dlm/recover.c", i32 54, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dlm_wait_function._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @dlm_wait_function._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/dlm/recover.c", i32 60, i32 3}
!9 = !{ptr @dlm_wait_function._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @dlm_wait_function._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/dlm/recover.c", i32 531, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dlm_recover_masters._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @dlm_recover_masters._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dlm_recover_masters._entry.8, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @dlm_recover_masters._entry_ptr.10, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/dlm/recover.c", i32 557, i32 2}
!21 = !{ptr @dlm_recover_masters._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dlm_recover_masters._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dlm_recover_masters._entry.14, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @dlm_recover_masters._entry_ptr.16, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/dlm/recover.c", i32 573, i32 3}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dlm_recover_master_reply._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @dlm_recover_master_reply._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/dlm/recover.c", i32 690, i32 2}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dlm_recover_locks._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @dlm_recover_locks._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dlm_recover_locks._entry.21, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @dlm_recover_locks._entry_ptr.23, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/dlm/recover.c", i32 701, i32 2}
!41 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dlm_recovered_lock._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @dlm_recovered_lock._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dlm_recovered_lock._entry.27, !40, !"_entry", i1 false, i1 false}
!47 = !{ptr @dlm_recovered_lock._entry_ptr.29, !40, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !40, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/dlm/recover.c", i32 888, i32 3}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dlm_recover_rsbs._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @dlm_recover_rsbs._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dlm_recover_rsbs._entry.33, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @dlm_recover_rsbs._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/dlm/recover.c", i32 901, i32 3}
!59 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dlm_create_root_list._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @dlm_create_root_list._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/dlm/recover.c", i32 915, i32 4}
!64 = !{ptr @dlm_create_root_list._entry.38, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dlm_create_root_list._entry_ptr.40, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/dlm/recover.c", i32 955, i32 3}
!68 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dlm_clear_toss._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @dlm_clear_toss._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dlm_clear_toss._entry.43, !67, !"_entry", i1 false, i1 false}
!73 = !{ptr @dlm_clear_toss._entry_ptr.45, !67, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.46, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!76 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.49, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/dlm/recover.c", i32 372, i32 3}
!80 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @recover_idr_clear._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @recover_idr_clear._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/dlm/recover.c", i32 638, i32 2}
!85 = !{ptr @recover_locks._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @recover_locks._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @recover_locks._entry.53, !84, !"_entry", i1 false, i1 false}
!89 = !{ptr @recover_locks._entry_ptr.54, !84, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/dlm/recover.c", i32 288, i32 3}
!92 = !{ptr @recover_list_clear._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @recover_list_clear._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/dlm/recover.c", i32 837, i32 4}
!96 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @recover_conversion._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @recover_conversion._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/dlm/recover.c", i32 841, i32 4}
!101 = !{ptr @recover_conversion._entry.58, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @recover_conversion._entry_ptr.60, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 2152371262}
!115 = !{!"branch_weights", i32 2000, i32 1}
