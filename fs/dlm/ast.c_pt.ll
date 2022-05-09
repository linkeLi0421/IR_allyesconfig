; ModuleID = '/llk/IR_all_yes/fs/dlm/ast.c_pt.bc'
source_filename = "../fs/dlm/ast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.45 }
%struct.atomic_t = type { i32 }
%union.anon.45 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.2 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.2 = type { ptr }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.1, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.1 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@dlm_add_lkb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017dlm: %s: skip %x add bast %llu mode %d for bast %llu mode %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlm_add_lkb_callback\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/dlm/ast.c\00", [19 x i8] zeroinitializer }, align 32
@dlm_add_lkb_callback._entry_ptr = internal global ptr @dlm_add_lkb_callback._entry, section ".printk_index", align 4
@dlm_add_lkb_callback._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dlm: %s: no callbacks %x %llu flags %x mode %d sb %d %x\0A\00", [37 x i8] zeroinitializer }, align 32
@dlm_add_lkb_callback._entry_ptr.5 = internal global ptr @dlm_add_lkb_callback._entry.3, section ".printk_index", align 4
@dlm_rem_lkb_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017dlm: %s: skip %x bast %llu mode %d for cast %llu mode %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlm_rem_lkb_callback\00", [43 x i8] zeroinitializer }, align 32
@dlm_rem_lkb_callback._entry_ptr = internal global ptr @dlm_rem_lkb_callback._entry, section ".printk_index", align 4
@dlm_cb_seq_spin = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.3 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dlm_cb_seq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@dlm_callback_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dlm: %s: dlm_callback_work %x no work\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlm_callback_work\00", [46 x i8] zeroinitializer }, align 32
@dlm_callback_work._entry_ptr = internal global ptr @dlm_callback_work._entry, section ".printk_index", align 4
@dlm_callback_work._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dlm: %s: dlm_callback_work %x resid %d\0A\00", [54 x i8] zeroinitializer }, align 32
@dlm_callback_work._entry_ptr.12 = internal global ptr @dlm_callback_work._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dlm_callback\00", [19 x i8] zeroinitializer }, align 32
@dlm_callback_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dlm: can't start dlm_callback workqueue\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_callback_start\00", [45 x i8] zeroinitializer }, align 32
@dlm_callback_start._entry_ptr = internal global ptr @dlm_callback_start._entry, section ".printk_index", align 4
@dlm_callback_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016dlm: %s: %s %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_callback_resume\00", [44 x i8] zeroinitializer }, align 32
@dlm_callback_resume._entry_ptr = internal global ptr @dlm_callback_resume._entry, section ".printk_index", align 4
@dlm_callback_resume._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017dlm: %s: %s %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dlm_callback_resume._entry_ptr.20 = internal global ptr @dlm_callback_resume._entry.18, section ".printk_index", align 4
@dlm_dump_lkb_callbacks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013dlm: last_bast %x %llu flags %x mode %d sb %d %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlm_dump_lkb_callbacks\00", [41 x i8] zeroinitializer }, align 32
@dlm_dump_lkb_callbacks._entry_ptr = internal global ptr @dlm_dump_lkb_callbacks._entry, section ".printk_index", align 4
@dlm_dump_lkb_callbacks._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013dlm: last_cast %x %llu flags %x mode %d sb %d %x\0A\00", [44 x i8] zeroinitializer }, align 32
@dlm_dump_lkb_callbacks._entry_ptr.25 = internal global ptr @dlm_dump_lkb_callbacks._entry.23, section ".printk_index", align 4
@dlm_dump_lkb_callbacks._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dlm: cb %x %llu flags %x mode %d sb %d %x\0A\00", [51 x i8] zeroinitializer }, align 32
@dlm_dump_lkb_callbacks._entry_ptr.28 = internal global ptr @dlm_dump_lkb_callbacks._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlm_cb_seq_spin\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_dlm_bast = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/dlm.h\00", [37 x i8] zeroinitializer }, align 32
@trace_dlm_bast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dlm_ast = external dso_local global %struct.tracepoint, align 4
@trace_dlm_ast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 81, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 103, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 149, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"dlm_cb_seq_spin\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"dlm_cb_seq\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 19, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 229, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 242, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 274, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 277, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 330, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 26, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 34, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 43, i32 3 }
@___asan_gen_.130 = private constant [16 x i8] c"../fs/dlm/ast.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 20, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant [30 x i8] c"../include/trace/events/dlm.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 116, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 108, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @dlm_add_lkb_callback._entry, ptr @dlm_add_lkb_callback._entry.3, ptr @dlm_add_lkb_callback._entry_ptr, ptr @dlm_add_lkb_callback._entry_ptr.5, ptr @dlm_callback_resume._entry, ptr @dlm_callback_resume._entry.18, ptr @dlm_callback_resume._entry_ptr, ptr @dlm_callback_resume._entry_ptr.20, ptr @dlm_callback_start._entry, ptr @dlm_callback_start._entry_ptr, ptr @dlm_callback_work._entry, ptr @dlm_callback_work._entry.10, ptr @dlm_callback_work._entry_ptr, ptr @dlm_callback_work._entry_ptr.12, ptr @dlm_dump_lkb_callbacks._entry, ptr @dlm_dump_lkb_callbacks._entry.23, ptr @dlm_dump_lkb_callbacks._entry.26, ptr @dlm_dump_lkb_callbacks._entry_ptr, ptr @dlm_dump_lkb_callbacks._entry_ptr.25, ptr @dlm_dump_lkb_callbacks._entry_ptr.28, ptr @dlm_rem_lkb_callback._entry, ptr @dlm_rem_lkb_callback._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @dlm_cb_seq_spin, ptr @dlm_cb_seq, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_add_lkb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_add_lkb_callback._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_rem_lkb_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_cb_seq_spin to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_cb_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_callback_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_callback_work._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_callback_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_callback_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_callback_resume._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_dump_lkb_callbacks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_dump_lkb_callbacks._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_dump_lkb_callbacks._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_add_lkb_callback(ptr nocapture noundef %lkb, i32 noundef %flags, i32 noundef %mode, i32 noundef %status, i32 noundef %sbflags, i64 noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lkb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lkb, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.for.end.thread_crit_edge, label %for.inc

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

if.end:                                           ; preds = %for.inc.4.if.end_crit_edge, %for.inc.3.if.end_crit_edge, %for.inc.2.if.end_crit_edge, %for.inc.1.if.end_crit_edge, %for.inc.if.end_crit_edge
  %i.0106.lcssa = phi i32 [ 1, %for.inc.if.end_crit_edge ], [ 2, %for.inc.1.if.end_crit_edge ], [ 3, %for.inc.2.if.end_crit_edge ], [ 4, %for.inc.3.if.end_crit_edge ], [ 5, %for.inc.4.if.end_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx.1, %for.inc.if.end_crit_edge ], [ %arrayidx.2, %for.inc.1.if.end_crit_edge ], [ %arrayidx.3, %for.inc.2.if.end_crit_edge ], [ %arrayidx.4, %for.inc.3.if.end_crit_edge ], [ %arrayidx.5, %for.inc.4.if.end_crit_edge ]
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %if.end.for.end.thread_crit_edge, label %land.lhs.true4

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true4:                                   ; preds = %if.end
  %sub = add nsw i32 %i.0106.lcssa, -1
  %flags7 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 %sub, i32 1
  %6 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags7, align 8
  %and8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true4.for.end.thread_crit_edge, label %if.then10

land.lhs.true4.for.end.thread_crit_edge:          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

if.then10:                                        ; preds = %land.lhs.true4
  %arrayidx6 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 %sub
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx6, align 8
  %mode18 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 %sub, i32 4
  %10 = ptrtoint ptr %mode18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode18, align 1
  %conv = sext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %mode)
  %cmp19 = icmp eq i32 %conv, %mode
  br i1 %cmp19, label %if.then10.do.body_crit_edge, label %lor.lhs.false

if.then10.do.body_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %mode)
  %cmp21 = icmp sgt i32 %conv, %mode
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp24 = icmp sgt i8 %11, 3
  %or.cond101 = and i1 %cmp24, %cmp21
  br i1 %or.cond101, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.for.end.thread_crit_edge

lor.lhs.false.for.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then10.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  br i1 %tobool27.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 91
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %13 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lkb_id, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %ls_name, i32 noundef %14, i64 noundef %seq, i32 noundef %mode, i64 noundef %9, i32 noundef %conv) #10
  br label %out

for.end.thread:                                   ; preds = %lor.lhs.false.for.end.thread_crit_edge, %land.lhs.true4.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %arrayidx.lcssa115 = phi ptr [ %arrayidx.lcssa, %if.end.for.end.thread_crit_edge ], [ %arrayidx.lcssa, %land.lhs.true4.for.end.thread_crit_edge ], [ %arrayidx.lcssa, %lor.lhs.false.for.end.thread_crit_edge ], [ %arrayidx, %entry.for.end.thread_crit_edge ]
  %i.0106.lcssa114 = phi i32 [ %i.0106.lcssa, %if.end.for.end.thread_crit_edge ], [ %i.0106.lcssa, %land.lhs.true4.for.end.thread_crit_edge ], [ %i.0106.lcssa, %lor.lhs.false.for.end.thread_crit_edge ], [ 0, %entry.for.end.thread_crit_edge ]
  %15 = ptrtoint ptr %arrayidx.lcssa115 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %seq, ptr %arrayidx.lcssa115, align 8
  %flags40 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 %i.0106.lcssa114, i32 1
  %16 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags, ptr %flags40, align 8
  %conv41 = trunc i32 %mode to i8
  %mode44 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 %i.0106.lcssa114, i32 4
  %17 = ptrtoint ptr %mode44 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv41, ptr %mode44, align 1
  %sb_status = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 %i.0106.lcssa114, i32 2
  %18 = ptrtoint ptr %sb_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %status, ptr %sb_status, align 4
  %conv48 = trunc i32 %sbflags to i8
  %sb_flags = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 %i.0106.lcssa114, i32 3
  %19 = ptrtoint ptr %sb_flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv48, ptr %sb_flags, align 8
  br label %out

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not.1 = icmp eq i64 %21, 0
  br i1 %tobool.not.1, label %for.inc.if.end_crit_edge, label %for.inc.1

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool.not.2 = icmp eq i64 %23, 0
  br i1 %tobool.not.2, label %for.inc.1.if.end_crit_edge, label %for.inc.2

for.inc.1.if.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.not.3 = icmp eq i64 %25, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end_crit_edge, label %for.inc.3

for.inc.2.if.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool.not.4 = icmp eq i64 %27, 0
  br i1 %tobool.not.4, label %for.inc.3.if.end_crit_edge, label %for.inc.4

for.inc.3.if.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool.not.5 = icmp eq i64 %29, 0
  br i1 %tobool.not.5, label %for.inc.4.if.end_crit_edge, label %do.end56

for.inc.4.if.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end56:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name58 = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 91
  %lkb_id60 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %30 = ptrtoint ptr %lkb_id60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkb_id60, align 8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %ls_name58, i32 noundef %31, i64 noundef %seq, i32 noundef %flags, i32 noundef %mode, i32 noundef %status, i32 noundef %sbflags) #10
  tail call fastcc void @dlm_dump_lkb_callbacks(ptr noundef %lkb)
  br label %out

out:                                              ; preds = %do.end56, %for.end.thread, %do.end, %do.body.out_crit_edge
  %rv.1 = phi i32 [ -1, %do.end56 ], [ 0, %do.end ], [ 0, %do.body.out_crit_edge ], [ 0, %for.end.thread ]
  ret i32 %rv.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_dump_lkb_callbacks(ptr nocapture noundef readonly %lkb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %0 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lkb_id, align 8
  %lkb_last_bast = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 30
  %2 = ptrtoint ptr %lkb_last_bast to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lkb_last_bast, align 8
  %flags = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 30, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %mode = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 30, i32 4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 1
  %conv = sext i8 %7 to i32
  %sb_status = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 30, i32 2
  %8 = ptrtoint ptr %sb_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_status, align 4
  %sb_flags = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 30, i32 3
  %10 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_flags, align 8
  %conv5 = zext i8 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %1, i64 noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %9, i32 noundef %conv5) #10
  %12 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lkb_id, align 8
  %lkb_last_cast = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29
  %14 = ptrtoint ptr %lkb_last_cast to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lkb_last_cast, align 8
  %flags13 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29, i32 1
  %16 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags13, align 8
  %mode15 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29, i32 4
  %18 = ptrtoint ptr %mode15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mode15, align 1
  %conv16 = sext i8 %19 to i32
  %sb_status18 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29, i32 2
  %20 = ptrtoint ptr %sb_status18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sb_status18, align 4
  %sb_flags20 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29, i32 3
  %22 = ptrtoint ptr %sb_flags20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sb_flags20, align 8
  %conv21 = zext i8 %23 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %13, i64 noundef %15, i32 noundef %17, i32 noundef %conv16, i32 noundef %21, i32 noundef %conv21) #10
  %24 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lkb_id, align 8
  %arrayidx = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx, align 8
  %flags32 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 0, i32 1
  %28 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags32, align 8
  %mode35 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 0, i32 4
  %30 = ptrtoint ptr %mode35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode35, align 1
  %conv36 = sext i8 %31 to i32
  %sb_status39 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 0, i32 2
  %32 = ptrtoint ptr %sb_status39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sb_status39, align 4
  %sb_flags42 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 0, i32 3
  %34 = ptrtoint ptr %sb_flags42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sb_flags42, align 8
  %conv43 = zext i8 %35 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %25, i64 noundef %27, i32 noundef %29, i32 noundef %conv36, i32 noundef %33, i32 noundef %conv43) #10
  %36 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lkb_id, align 8
  %arrayidx.1 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.1, align 8
  %flags32.1 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 1, i32 1
  %40 = ptrtoint ptr %flags32.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags32.1, align 8
  %mode35.1 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 1, i32 4
  %42 = ptrtoint ptr %mode35.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mode35.1, align 1
  %conv36.1 = sext i8 %43 to i32
  %sb_status39.1 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 1, i32 2
  %44 = ptrtoint ptr %sb_status39.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sb_status39.1, align 4
  %sb_flags42.1 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 1, i32 3
  %46 = ptrtoint ptr %sb_flags42.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sb_flags42.1, align 8
  %conv43.1 = zext i8 %47 to i32
  %call44.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %37, i64 noundef %39, i32 noundef %41, i32 noundef %conv36.1, i32 noundef %45, i32 noundef %conv43.1) #10
  %48 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lkb_id, align 8
  %arrayidx.2 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 2
  %50 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.2, align 8
  %flags32.2 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 2, i32 1
  %52 = ptrtoint ptr %flags32.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags32.2, align 8
  %mode35.2 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 2, i32 4
  %54 = ptrtoint ptr %mode35.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mode35.2, align 1
  %conv36.2 = sext i8 %55 to i32
  %sb_status39.2 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 2, i32 2
  %56 = ptrtoint ptr %sb_status39.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sb_status39.2, align 4
  %sb_flags42.2 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 2, i32 3
  %58 = ptrtoint ptr %sb_flags42.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sb_flags42.2, align 8
  %conv43.2 = zext i8 %59 to i32
  %call44.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %49, i64 noundef %51, i32 noundef %53, i32 noundef %conv36.2, i32 noundef %57, i32 noundef %conv43.2) #10
  %60 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lkb_id, align 8
  %arrayidx.3 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 3
  %62 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.3, align 8
  %flags32.3 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 3, i32 1
  %64 = ptrtoint ptr %flags32.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags32.3, align 8
  %mode35.3 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 3, i32 4
  %66 = ptrtoint ptr %mode35.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mode35.3, align 1
  %conv36.3 = sext i8 %67 to i32
  %sb_status39.3 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 3, i32 2
  %68 = ptrtoint ptr %sb_status39.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sb_status39.3, align 4
  %sb_flags42.3 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 3, i32 3
  %70 = ptrtoint ptr %sb_flags42.3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sb_flags42.3, align 8
  %conv43.3 = zext i8 %71 to i32
  %call44.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %61, i64 noundef %63, i32 noundef %65, i32 noundef %conv36.3, i32 noundef %69, i32 noundef %conv43.3) #10
  %72 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lkb_id, align 8
  %arrayidx.4 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 4
  %74 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx.4, align 8
  %flags32.4 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 4, i32 1
  %76 = ptrtoint ptr %flags32.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags32.4, align 8
  %mode35.4 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 4, i32 4
  %78 = ptrtoint ptr %mode35.4 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %mode35.4, align 1
  %conv36.4 = sext i8 %79 to i32
  %sb_status39.4 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 4, i32 2
  %80 = ptrtoint ptr %sb_status39.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sb_status39.4, align 4
  %sb_flags42.4 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 4, i32 3
  %82 = ptrtoint ptr %sb_flags42.4 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sb_flags42.4, align 8
  %conv43.4 = zext i8 %83 to i32
  %call44.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %73, i64 noundef %75, i32 noundef %77, i32 noundef %conv36.4, i32 noundef %81, i32 noundef %conv43.4) #10
  %84 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %lkb_id, align 8
  %arrayidx.5 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 5
  %86 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx.5, align 8
  %flags32.5 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 5, i32 1
  %88 = ptrtoint ptr %flags32.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags32.5, align 8
  %mode35.5 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 5, i32 4
  %90 = ptrtoint ptr %mode35.5 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mode35.5, align 1
  %conv36.5 = sext i8 %91 to i32
  %sb_status39.5 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 5, i32 2
  %92 = ptrtoint ptr %sb_status39.5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sb_status39.5, align 4
  %sb_flags42.5 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 5, i32 3
  %94 = ptrtoint ptr %sb_flags42.5 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sb_flags42.5, align 8
  %conv43.5 = zext i8 %95 to i32
  %call44.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %85, i64 noundef %87, i32 noundef %89, i32 noundef %conv36.5, i32 noundef %93, i32 noundef %conv43.5) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_rem_lkb_callback(ptr noundef %ls, ptr nocapture noundef %lkb, ptr nocapture noundef %cb, ptr nocapture noundef %resid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resid, align 4
  %lkb_callbacks = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28
  %1 = ptrtoint ptr %lkb_callbacks to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %lkb_callbacks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %3 = call ptr @memcpy(ptr %cb, ptr %lkb_callbacks, i32 24)
  %4 = call ptr @memset(ptr %lkb_callbacks, i32 0, i32 24)
  %arrayidx6 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool8.not = icmp eq i64 %6, 0
  br i1 %tobool8.not, label %if.end.for.end_crit_edge, label %if.end10

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10:                                         ; preds = %if.end
  %7 = call ptr @memcpy(ptr %lkb_callbacks, ptr %arrayidx6, i32 24)
  %8 = call ptr @memset(ptr %arrayidx6, i32 0, i32 24)
  %9 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resid, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %resid, align 4
  %arrayidx6.1 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 2
  %11 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx6.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool8.not.1 = icmp eq i64 %12, 0
  br i1 %tobool8.not.1, label %if.end10.for.end_crit_edge, label %if.end10.1

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10.1:                                       ; preds = %if.end10
  %13 = call ptr @memcpy(ptr %arrayidx6, ptr %arrayidx6.1, i32 24)
  %14 = call ptr @memset(ptr %arrayidx6.1, i32 0, i32 24)
  %15 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resid, align 4
  %inc.1 = add i32 %16, 1
  store i32 %inc.1, ptr %resid, align 4
  %arrayidx6.2 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 3
  %17 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx6.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool8.not.2 = icmp eq i64 %18, 0
  br i1 %tobool8.not.2, label %if.end10.1.for.end_crit_edge, label %if.end10.2

if.end10.1.for.end_crit_edge:                     ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10.2:                                       ; preds = %if.end10.1
  %19 = call ptr @memcpy(ptr %arrayidx6.1, ptr %arrayidx6.2, i32 24)
  %20 = call ptr @memset(ptr %arrayidx6.2, i32 0, i32 24)
  %21 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resid, align 4
  %inc.2 = add i32 %22, 1
  store i32 %inc.2, ptr %resid, align 4
  %arrayidx6.3 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 4
  %23 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx6.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool8.not.3 = icmp eq i64 %24, 0
  br i1 %tobool8.not.3, label %if.end10.2.for.end_crit_edge, label %if.end10.3

if.end10.2.for.end_crit_edge:                     ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10.3:                                       ; preds = %if.end10.2
  %25 = call ptr @memcpy(ptr %arrayidx6.2, ptr %arrayidx6.3, i32 24)
  %26 = call ptr @memset(ptr %arrayidx6.3, i32 0, i32 24)
  %27 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resid, align 4
  %inc.3 = add i32 %28, 1
  store i32 %inc.3, ptr %resid, align 4
  %arrayidx6.4 = getelementptr %struct.dlm_lkb, ptr %lkb, i32 0, i32 28, i32 5
  %29 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx6.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool8.not.4 = icmp eq i64 %30, 0
  br i1 %tobool8.not.4, label %if.end10.3.for.end_crit_edge, label %if.end10.4

if.end10.3.for.end_crit_edge:                     ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10.4:                                       ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #9
  %31 = call ptr @memcpy(ptr %arrayidx6.3, ptr %arrayidx6.4, i32 24)
  %32 = call ptr @memset(ptr %arrayidx6.4, i32 0, i32 24)
  %33 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %resid, align 4
  %inc.4 = add i32 %34, 1
  store i32 %inc.4, ptr %resid, align 4
  br label %for.end

for.end:                                          ; preds = %if.end10.4, %if.end10.3.for.end_crit_edge, %if.end10.2.for.end_crit_edge, %if.end10.1.for.end_crit_edge, %if.end10.for.end_crit_edge, %if.end.for.end_crit_edge
  %flags = getelementptr inbounds %struct.dlm_callback, ptr %cb, i32 0, i32 1
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %and = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.end.if.end44_crit_edge, label %land.lhs.true

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true:                                    ; preds = %for.end
  %lkb_last_cast = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29
  %37 = ptrtoint ptr %lkb_last_cast to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %lkb_last_cast, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool20.not = icmp eq i64 %38, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end44_crit_edge, label %if.then21

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then21:                                        ; preds = %land.lhs.true
  %mode = getelementptr inbounds %struct.dlm_callback, ptr %cb, i32 0, i32 4
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode, align 1
  %conv = sext i8 %40 to i32
  %mode23 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29, i32 4
  %41 = ptrtoint ptr %mode23 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mode23, align 1
  %conv24 = sext i8 %42 to i32
  %call = tail call i32 @dlm_modes_compat(i32 noundef %conv, i32 noundef %conv24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.then21.if.end44_crit_edge, label %if.then26

if.then21.if.end44_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then26:                                        ; preds = %if.then21
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 8
  %or = or i32 %44, 4
  store i32 %or, ptr %flags, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool28.not = icmp eq i32 %45, 0
  br i1 %tobool28.not, label %if.then26.out_crit_edge, label %do.end

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %46 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lkb_id, align 8
  %48 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %cb, align 8
  %50 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mode, align 1
  %conv33 = sext i8 %51 to i32
  %52 = ptrtoint ptr %lkb_last_cast to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %lkb_last_cast, align 8
  %54 = ptrtoint ptr %mode23 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mode23, align 1
  %conv38 = sext i8 %55 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %ls_name, i32 noundef %47, i64 noundef %49, i32 noundef %conv33, i64 noundef %53, i32 noundef %conv38) #10
  br label %out

if.end44:                                         ; preds = %if.then21.if.end44_crit_edge, %land.lhs.true.if.end44_crit_edge, %for.end.if.end44_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 8
  %and46 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end51_crit_edge, label %if.then48

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_last_cast49 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 29
  %58 = call ptr @memcpy(ptr %lkb_last_cast49, ptr %cb, i32 24)
  %call50 = tail call i64 @ktime_get() #7
  %lkb_last_cast_time = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 31
  %59 = ptrtoint ptr %lkb_last_cast_time to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %call50, ptr %lkb_last_cast_time, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end44.if.end51_crit_edge
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 8
  %and53 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.out_crit_edge, label %if.then55

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %lkb_last_bast = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 30
  %62 = call ptr @memcpy(ptr %lkb_last_bast, ptr %cb, i32 24)
  %call56 = tail call i64 @ktime_get() #7
  %lkb_last_bast_time = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 32
  %63 = ptrtoint ptr %lkb_last_bast_time to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %call56, ptr %lkb_last_bast_time, align 8
  br label %out

out:                                              ; preds = %if.then55, %if.end51.out_crit_edge, %do.end, %if.then26.out_crit_edge, %entry.out_crit_edge
  %rv.0 = phi i32 [ -2, %entry.out_crit_edge ], [ 0, %do.end ], [ 0, %if.then26.out_crit_edge ], [ 0, %if.then55 ], [ 0, %if.end51.out_crit_edge ]
  ret i32 %rv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_modes_compat(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_add_cb(ptr noundef %lkb, i32 noundef %flags, i32 noundef %mode, i32 noundef %status, i32 noundef %sbflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lkb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lkb, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @dlm_cb_seq_spin) #7
  %4 = load i64, ptr @dlm_cb_seq, align 8
  %inc = add i64 %4, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc)
  %tobool.not = icmp eq i64 %inc, 0
  %spec.select = select i1 %tobool.not, i64 1, i64 %inc
  store i64 %spec.select, ptr @dlm_cb_seq, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dlm_cb_seq_spin) #7
  %lkb_flags = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 8
  %5 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lkb_flags, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dlm_user_add_ast(ptr noundef %lkb, i32 noundef %flags, i32 noundef %mode, i32 noundef %status, i32 noundef %sbflags, i64 noundef %spec.select) #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %lkb_cb_mutex = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %lkb_cb_mutex, i32 noundef 0) #7
  %lkb_callbacks = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 28
  %7 = ptrtoint ptr %lkb_callbacks to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lkb_callbacks, align 8
  %call = tail call i32 @dlm_add_lkb_callback(ptr noundef %lkb, i32 noundef %flags, i32 noundef %mode, i32 noundef %status, i32 noundef %sbflags, i64 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool7.not = icmp eq i64 %8, 0
  %or.cond = select i1 %cmp, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %if.then8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then8:                                         ; preds = %if.end4
  %lkb_ref = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lkb_ref, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %lkb_ref, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lkb_ref, ptr %lkb_ref, i32 1, ptr elementtype(i32) %lkb_ref) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !79

if.then8.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !80

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %lkb_ref, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %ls_flags, align 4
  %13 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %kref_get.exit
  %ls_cb_mutex = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 55
  tail call void @mutex_lock_nested(ptr noundef %ls_cb_mutex, i32 noundef 0) #7
  %lkb_cb_list = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 27
  %ls_cb_delay = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 56
  %14 = ptrtoint ptr %ls_cb_delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ls_cb_delay, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lkb_cb_list, ptr noundef %ls_cb_delay, ptr noundef %15) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_add.exit_crit_edge

if.then11.list_add.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lkb_cb_list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %lkb_cb_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %lkb_cb_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 27, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ls_cb_delay, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %ls_cb_delay to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %lkb_cb_list, ptr %ls_cb_delay, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then11.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ls_cb_mutex) #7
  br label %out

if.else:                                          ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ls_callback_wq = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 54
  %20 = ptrtoint ptr %ls_callback_wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ls_callback_wq, align 8
  %lkb_cb_work = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 26
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %lkb_cb_work) #7
  br label %out

out:                                              ; preds = %if.else, %list_add.exit, %if.end4.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lkb_cb_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_user_add_ast(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_callback_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %callbacks = alloca [6 x %struct.dlm_callback], align 8
  %resid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -208
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %callbacks) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resid) #7
  %4 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %resid, align 4, !annotation !81
  %5 = call ptr @memset(ptr %callbacks, i32 0, i32 144)
  %lkb_cb_mutex = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lkb_cb_mutex, i32 noundef 0) #7
  %lkb_callbacks = getelementptr i8, ptr %work, i32 56
  %6 = ptrtoint ptr %lkb_callbacks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lkb_callbacks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 91
  %lkb_id = getelementptr i8, ptr %work, i32 -192
  %8 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lkb_id, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %ls_name, i32 noundef %9) #10
  tail call void @dlm_print_lkb(ptr noundef %add.ptr) #7
  tail call fastcc void @dlm_dump_lkb_callbacks(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = call i32 @dlm_rem_lkb_callback(ptr noundef %3, ptr noundef %add.ptr, ptr noundef nonnull %callbacks, ptr noundef nonnull %resid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.for.end_crit_edge, label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %if.end
  %arrayidx2.1 = getelementptr inbounds [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 1
  %call3.1 = call i32 @dlm_rem_lkb_callback(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %arrayidx2.1, ptr noundef nonnull %resid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx2.2 = getelementptr inbounds [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 2
  %call3.2 = call i32 @dlm_rem_lkb_callback(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %arrayidx2.2, ptr noundef nonnull %resid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx2.3 = getelementptr inbounds [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 3
  %call3.3 = call i32 @dlm_rem_lkb_callback(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %arrayidx2.3, ptr noundef nonnull %resid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp slt i32 %call3.3, 0
  br i1 %cmp4.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx2.4 = getelementptr inbounds [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 4
  %call3.4 = call i32 @dlm_rem_lkb_callback(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %arrayidx2.4, ptr noundef nonnull %resid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp slt i32 %call3.4, 0
  br i1 %cmp4.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.5 = getelementptr inbounds [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 5
  %call3.5 = call i32 @dlm_rem_lkb_callback(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %arrayidx2.5, ptr noundef nonnull %resid)
  br label %for.end

for.end:                                          ; preds = %for.cond.4, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %10 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %for.end.if.end17_crit_edge, label %do.end11

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %ls_name13 = getelementptr inbounds %struct.dlm_ls, ptr %3, i32 0, i32 91
  %lkb_id15 = getelementptr i8, ptr %work, i32 -192
  %12 = ptrtoint ptr %lkb_id15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lkb_id15, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %ls_name13, i32 noundef %13, i32 noundef %11) #10
  tail call void @dlm_print_lkb(ptr noundef %add.ptr) #7
  tail call fastcc void @dlm_dump_lkb_callbacks(ptr noundef %add.ptr)
  br label %if.end17

if.end17:                                         ; preds = %do.end11, %for.end.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %lkb_cb_mutex) #7
  %lkb_astfn = getelementptr i8, ptr %work, i32 280
  %14 = ptrtoint ptr %lkb_astfn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lkb_astfn, align 8
  %lkb_bastfn = getelementptr i8, ptr %work, i32 284
  %16 = ptrtoint ptr %lkb_bastfn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lkb_bastfn, align 4
  %18 = getelementptr i8, ptr %work, i32 288
  %lkb_lksb = getelementptr i8, ptr %work, i32 276
  br label %for.body21

for.body21:                                       ; preds = %for.inc54.for.body21_crit_edge, %if.end17
  %i.195 = phi i32 [ 0, %if.end17 ], [ %inc55, %for.inc54.for.body21_crit_edge ]
  %arrayidx22 = getelementptr [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 %i.195
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx22, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool24.not = icmp eq i64 %20, 0
  br i1 %tobool24.not, label %for.body21.for.end56_crit_edge, label %if.end26

for.body21.for.end56_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

if.end26:                                         ; preds = %for.body21
  %flags = getelementptr [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 %i.195, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else, label %if.end26.for.inc54_crit_edge

if.end26.for.inc54_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc54

if.else:                                          ; preds = %if.end26
  %and32 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else39, label %if.then34

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 8
  %mode = getelementptr [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 %i.195, i32 4
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mode, align 1
  %conv = sext i8 %26 to i32
  tail call void %17(ptr noundef %24, i32 noundef %conv) #7
  tail call fastcc void @trace_dlm_bast(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %conv)
  br label %for.inc54

if.else39:                                        ; preds = %if.else
  %and42 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else39.for.inc54_crit_edge, label %if.then44

if.else39.for.inc54_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc54

if.then44:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  %sb_status = getelementptr [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 %i.195, i32 2
  %27 = ptrtoint ptr %sb_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sb_status, align 4
  %29 = ptrtoint ptr %lkb_lksb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lkb_lksb, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %30, align 4
  %sb_flags = getelementptr [6 x %struct.dlm_callback], ptr %callbacks, i32 0, i32 %i.195, i32 3
  %32 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sb_flags, align 8
  %34 = load ptr, ptr %lkb_lksb, align 4
  %sb_flags49 = getelementptr inbounds %struct.dlm_lksb, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %sb_flags49 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %sb_flags49, align 4
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %18, align 8
  tail call void %15(ptr noundef %37) #7
  %38 = ptrtoint ptr %lkb_lksb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lkb_lksb, align 4
  tail call fastcc void @trace_dlm_ast(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %39)
  br label %for.inc54

for.inc54:                                        ; preds = %if.then44, %if.else39.for.inc54_crit_edge, %if.then34, %if.end26.for.inc54_crit_edge
  %inc55 = add nuw nsw i32 %i.195, 1
  %exitcond.not = icmp eq i32 %inc55, 6
  br i1 %exitcond.not, label %for.inc54.for.end56_crit_edge, label %for.inc54.for.body21_crit_edge

for.inc54.for.body21_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.inc54.for.end56_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56

for.end56:                                        ; preds = %for.inc54.for.end56_crit_edge, %for.body21.for.end56_crit_edge
  %call57 = tail call i32 @dlm_put_lkb(ptr noundef %add.ptr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resid) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %callbacks) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_print_lkb(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dlm_bast(ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_bast, i32 0, i32 1), ptr blockaddress(@trace_dlm_bast, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !83
  %call42 = tail call i32 @__traceiter_dlm_bast(ptr noundef null, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_bast, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_bast, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dlm_bast.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dlm_bast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 137, ptr noundef nonnull @.str.31) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dlm_ast(ptr noundef %ls, ptr noundef %lkb, ptr noundef %lksb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_ast, i32 0, i32 1), ptr blockaddress(@trace_dlm_ast, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %call42 = tail call i32 @__traceiter_dlm_ast(ptr noundef null, ptr noundef %ls, ptr noundef %lkb, ptr noundef %lksb) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_ast, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dlm_ast, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dlm_ast.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_dlm_ast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 163, ptr noundef nonnull @.str.31) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_put_lkb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_callback_start(ptr nocapture noundef writeonly %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 24, i32 noundef 0) #7
  %ls_callback_wq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 54
  %0 = ptrtoint ptr %ls_callback_wq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ls_callback_wq, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_callback_stop(ptr nocapture noundef readonly %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_callback_wq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 54
  %0 = ptrtoint ptr %ls_callback_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_callback_wq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_callback_suspend(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %ls_flags) #7
  %ls_callback_wq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 54
  %0 = ptrtoint ptr %ls_callback_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_callback_wq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @flush_workqueue(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_callback_resume(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %ls_flags) #7
  %ls_callback_wq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 54
  %0 = ptrtoint ptr %ls_callback_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_callback_wq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %more.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

more.preheader:                                   ; preds = %entry
  %ls_cb_mutex = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 55
  %ls_cb_delay = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 56
  br label %more

more:                                             ; preds = %if.then22, %more.preheader
  %sum.0 = phi i32 [ %add, %if.then22 ], [ 0, %more.preheader ]
  tail call void @mutex_lock_nested(ptr noundef %ls_cb_mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %ls_cb_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_cb_delay, align 8
  br label %for.cond

for.cond:                                         ; preds = %list_del_init.exit.for.cond_crit_edge, %more
  %count.1 = phi i32 [ 0, %more ], [ %inc, %list_del_init.exit.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %3, %more ], [ %.pn, %list_del_init.exit.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %ls_cb_delay
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn.in, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %ls_callback_wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ls_callback_wq, align 8
  %lkb_cb_work = getelementptr i8, ptr %.pn.in, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %lkb_cb_work) #7
  %inc = add nuw nsw i32 %count.1, 1
  %cmp9 = icmp eq i32 %inc, 25
  br i1 %cmp9, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.cond_crit_edge

list_del_init.exit.for.cond_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %count.2 = phi i32 [ 25, %list_del_init.exit.for.end_crit_edge ], [ %count.1, %for.cond.for.end_crit_edge ]
  %15 = ptrtoint ptr %ls_cb_delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ls_cb_delay, align 4
  %cmp.i.not = icmp eq ptr %16, %ls_cb_delay
  tail call void @mutex_unlock(ptr noundef %ls_cb_mutex) #7
  %add = add i32 %count.2, %sum.0
  br i1 %cmp.i.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 325, i32 noundef 0) #7
  %call.i70 = tail call i32 @__cond_resched() #7
  br label %more

if.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool26.not = icmp eq i32 %add, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %do.body

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %17 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  br i1 %tobool28.not, label %if.else, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool33.not = icmp eq i32 %18, 0
  br i1 %tobool33.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.16, %do.body.cleanup.sink.split_crit_edge ], [ @.str.19, %if.else.cleanup.sink.split_crit_edge ]
  %ls_name39 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink, ptr noundef %ls_name39, ptr noundef nonnull @.str.17, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dlm_bast(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dlm_ast(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/ast.c", i32 81, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dlm_add_lkb_callback._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dlm_add_lkb_callback._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/dlm/ast.c", i32 103, i32 3}
!8 = !{ptr @dlm_add_lkb_callback._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dlm_add_lkb_callback._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/dlm/ast.c", i32 149, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dlm_rem_lkb_callback._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @dlm_rem_lkb_callback._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/dlm/ast.c", i32 229, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dlm_callback_work._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dlm_callback_work._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/dlm/ast.c", i32 242, i32 3}
!22 = !{ptr @dlm_callback_work._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dlm_callback_work._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/dlm/ast.c", i32 274, i32 39}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/dlm/ast.c", i32 277, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dlm_callback_start._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @dlm_callback_start._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/dlm/ast.c", i32 330, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dlm_callback_resume._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @dlm_callback_resume._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dlm_callback_resume._entry.18, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @dlm_callback_resume._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dlm_cb_seq, !40, !"dlm_cb_seq", i1 false, i1 false}
!40 = !{!"../fs/dlm/ast.c", i32 19, i32 17}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/dlm/ast.c", i32 26, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dlm_dump_lkb_callbacks._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dlm_dump_lkb_callbacks._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/dlm/ast.c", i32 34, i32 2}
!48 = !{ptr @dlm_dump_lkb_callbacks._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dlm_dump_lkb_callbacks._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/dlm/ast.c", i32 43, i32 3}
!52 = !{ptr @dlm_dump_lkb_callbacks._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dlm_dump_lkb_callbacks._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/dlm/ast.c", i32 20, i32 8}
!56 = !{ptr @dlm_cb_seq_spin, !55, !"dlm_cb_seq_spin", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/dlm.h", i32 116, i32 1}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/trace/events/dlm.h", i32 139, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148388878, i64 2148388910, i64 2148388939, i64 2148388973, i64 2148389004, i64 2148389027}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{!"auto-init"}
!82 = !{i64 2148869223, i64 2148869228, i64 2148869241, i64 2148869285, i64 2148869319, i64 2148869340}
!83 = !{i64 2152986716}
!84 = !{i64 2152986921}
!85 = !{i64 2149209782}
!86 = !{i64 2149210818}
!87 = !{i64 2153002831}
!88 = !{i64 2153003034}
