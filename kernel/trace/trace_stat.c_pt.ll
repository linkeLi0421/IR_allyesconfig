; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_stat.c_pt.bc'
source_filename = "../kernel/trace/trace_stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.tracer_stat = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stat_session = type { %struct.list_head, ptr, %struct.rb_root, %struct.mutex, ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.90 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.94 = type { ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.stat_node = type { %struct.rb_node, ptr }
%struct.rb_node = type { i32, ptr, ptr }

@all_stat_sessions_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @all_stat_sessions_mutex, i64 52), ptr getelementptr (i8, ptr @all_stat_sessions_mutex, i64 52) }, ptr @all_stat_sessions_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@all_stat_sessions = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @all_stat_sessions, ptr @all_stat_sessions }, [24 x i8] zeroinitializer }, align 32
@register_stat_tracer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&session->stat_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"all_stat_sessions_mutex.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"all_stat_sessions_mutex\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stat_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tracing_stat_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_stat_open, ptr null, ptr @tracing_stat_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trace_stat\00", [21 x i8] zeroinitializer }, align 32
@tracing_stat_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Could not create tracefs 'trace_stat' entry\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tracing_stat_init\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/trace/trace_stat.c\00", [38 x i8] zeroinitializer }, align 32
@tracing_stat_init._entry_ptr = internal global ptr @tracing_stat_init._entry, section ".printk_index", align 4
@trace_stat_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @stat_seq_start, ptr @stat_seq_stop, ptr @stat_seq_next, ptr @stat_seq_show }, [16 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_stat.gcda\00", [34 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [31 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1741570136, i32 315412035 }, %emit_function_args_ty { i32 1, i32 436087400, i32 315412035 }, %emit_function_args_ty { i32 2, i32 -20435385, i32 315412035 }, %emit_function_args_ty { i32 3, i32 173965931, i32 315412035 }, %emit_function_args_ty { i32 4, i32 1894801535, i32 315412035 }, %emit_function_args_ty { i32 5, i32 -481620889, i32 315412035 }, %emit_function_args_ty { i32 6, i32 119297913, i32 315412035 }, %emit_function_args_ty { i32 7, i32 975909662, i32 315412035 }, %emit_function_args_ty { i32 8, i32 -400554785, i32 315412035 }, %emit_function_args_ty { i32 9, i32 -1782918348, i32 315412035 }, %emit_function_args_ty { i32 10, i32 795548855, i32 315412035 }, %emit_function_args_ty { i32 11, i32 727036892, i32 315412035 }, %emit_function_args_ty { i32 12, i32 1841983822, i32 315412035 }, %emit_function_args_ty { i32 13, i32 1624494247, i32 315412035 }, %emit_function_args_ty { i32 14, i32 -963894156, i32 315412035 }, %emit_function_args_ty { i32 15, i32 2082705474, i32 315412035 }, %emit_function_args_ty { i32 16, i32 -619098116, i32 315412035 }, %emit_function_args_ty { i32 17, i32 -1503784902, i32 315412035 }, %emit_function_args_ty { i32 18, i32 1538178830, i32 315412035 }, %emit_function_args_ty { i32 19, i32 -1706770493, i32 315412035 }, %emit_function_args_ty { i32 20, i32 1055818060, i32 315412035 }, %emit_function_args_ty { i32 21, i32 224735495, i32 315412035 }, %emit_function_args_ty { i32 22, i32 2116277050, i32 315412035 }, %emit_function_args_ty { i32 23, i32 -32861627, i32 315412035 }, %emit_function_args_ty { i32 24, i32 1728225013, i32 315412035 }, %emit_function_args_ty { i32 25, i32 -1055816004, i32 315412035 }, %emit_function_args_ty { i32 26, i32 1767119679, i32 315412035 }, %emit_function_args_ty { i32 27, i32 992444288, i32 315412035 }, %emit_function_args_ty { i32 28, i32 1112388048, i32 315412035 }, %emit_function_args_ty { i32 29, i32 -1342645549, i32 315412035 }, %emit_function_args_ty { i32 30, i32 -1696498604, i32 315412035 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [31 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.36 }]
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"all_stat_sessions_mutex\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"all_stat_sessions\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 41, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 334, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 42, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"stat_dir\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 45, i32 24 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"tracing_stat_fops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 270, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 285, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 287, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"trace_stat_seq_ops\00", align 1
@___asan_gen_.77 = private constant [29 x i8] c"../kernel/trace/trace_stat.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 225, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @tracing_stat_init._entry, ptr @tracing_stat_init._entry_ptr, ptr @all_stat_sessions_mutex, ptr @all_stat_sessions, ptr @register_stat_tracer.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stat_dir, ptr @tracing_stat_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @trace_stat_seq_ops], section "llvm.metadata"
@1 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_stat_sessions_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_stat_sessions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_stat_tracer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracing_stat_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tracing_stat_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_stat_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_stat_tracer(ptr noundef %trace) local_unnamed_addr #0 align 64 !dbg !35 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !38
  %tobool.not = icmp eq ptr %trace, null, !dbg !39
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !41
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !41
  %0 = add i64 %gcov_ctr26, 1, !dbg !41
  store i64 %0, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !41
  br label %cleanup, !dbg !41

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !42
  %1 = add i64 %gcov_ctr, 1, !dbg !42
  store i64 %1, ptr @__llvm_gcov_ctr, align 16, !dbg !42
  %stat_start = getelementptr inbounds %struct.tracer_stat, ptr %trace, i32 0, i32 1, !dbg !43
  %2 = ptrtoint ptr %stat_start to i32, !dbg !43
  call void @__asan_load4_noabort(i32 %2), !dbg !43
  %3 = load ptr, ptr %stat_start, align 4, !dbg !43
  %tobool1.not = icmp eq ptr %3, null, !dbg !42
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false, !dbg !44

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !44
  br label %cleanup, !dbg !44

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !45
  %4 = add i64 %gcov_ctr27, 1, !dbg !45
  store i64 %4, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !45
  %stat_next = getelementptr inbounds %struct.tracer_stat, ptr %trace, i32 0, i32 2, !dbg !46
  %5 = ptrtoint ptr %stat_next to i32, !dbg !46
  call void @__asan_load4_noabort(i32 %5), !dbg !46
  %6 = load ptr, ptr %stat_next, align 4, !dbg !46
  %tobool2.not = icmp eq ptr %6, null, !dbg !45
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3, !dbg !47

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10, !dbg !47
  br label %cleanup, !dbg !47

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !48
  %7 = add i64 %gcov_ctr28, 1, !dbg !48
  store i64 %7, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !48
  %stat_show = getelementptr inbounds %struct.tracer_stat, ptr %trace, i32 0, i32 4, !dbg !49
  %8 = ptrtoint ptr %stat_show to i32, !dbg !49
  call void @__asan_load4_noabort(i32 %8), !dbg !49
  %9 = load ptr, ptr %stat_show, align 4, !dbg !49
  %tobool4.not = icmp eq ptr %9, null, !dbg !48
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end6, !dbg !50

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10, !dbg !50
  br label %cleanup, !dbg !50

if.end6:                                          ; preds = %lor.lhs.false3
  tail call void @mutex_lock_nested(ptr noundef nonnull @all_stat_sessions_mutex, i32 noundef 0) #11, !dbg !51
  %node.059 = load ptr, ptr @all_stat_sessions, align 4, !dbg !52
  %cmp.not60 = icmp eq ptr %node.059, @all_stat_sessions, !dbg !52
  br i1 %cmp.not60, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge, !dbg !52

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body, !dbg !52

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10, !dbg !52
  br label %for.end, !dbg !52

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %if.end6.for.body_crit_edge
  %node.061 = phi ptr [ %node.0, %if.end9.for.body_crit_edge ], [ %node.059, %if.end6.for.body_crit_edge ]
  %ts = getelementptr inbounds %struct.stat_session, ptr %node.061, i32 0, i32 1, !dbg !53
  %10 = ptrtoint ptr %ts to i32, !dbg !53
  call void @__asan_load4_noabort(i32 %10), !dbg !53
  %11 = load ptr, ptr %ts, align 4, !dbg !53
  %cmp7 = icmp eq ptr %11, %trace, !dbg !54
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !55

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !56
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !56
  %12 = add i64 %gcov_ctr30, 1, !dbg !56
  store i64 %12, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !56
  br label %out, !dbg !56

if.end9:                                          ; preds = %for.body
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !57
  %13 = add i64 %gcov_ctr29, 1, !dbg !57
  store i64 %13, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !57
  %14 = ptrtoint ptr %node.061 to i32, !dbg !52
  call void @__asan_load4_noabort(i32 %14), !dbg !52
  %node.0 = load ptr, ptr %node.061, align 4, !dbg !52
  %cmp.not = icmp eq ptr %node.0, @all_stat_sessions, !dbg !52
  br i1 %cmp.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge, !dbg !52, !llvm.loop !58

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10, !dbg !52
  br label %for.body, !dbg !52

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10, !dbg !52
  br label %for.end, !dbg !52

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end6.for.end_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %15 = add i64 %gcov_ctr.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.7, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !59
  %16 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !59
  store i64 %16, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !59
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !67
  %17 = add i64 %gcov_ctr11.i.i, 1, !dbg !67
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !67
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.17, align 16, !dbg !68
  %18 = add i64 %gcov_ctr.i.i.i, 1, !dbg !68
  store i64 %18, ptr @__llvm_gcov_ctr.17, align 16, !dbg !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !71
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !71
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 112) #12, !dbg !72
  %tobool14.not = icmp eq ptr %call7.i.i, null, !dbg !73
  br i1 %tobool14.not, label %if.then15, label %if.end16, !dbg !74

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !75
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !75
  %20 = add i64 %gcov_ctr31, 1, !dbg !75
  store i64 %20, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !75
  br label %out, !dbg !75

if.end16:                                         ; preds = %for.end
  %ts17 = getelementptr inbounds %struct.stat_session, ptr %call7.i.i, i32 0, i32 1, !dbg !76
  %21 = ptrtoint ptr %ts17 to i32, !dbg !77
  call void @__asan_store4_noabort(i32 %21), !dbg !77
  store ptr %trace, ptr %ts17, align 8, !dbg !77
  %gcov_ctr.i48 = load i64, ptr @__llvm_gcov_ctr.8, align 8, !dbg !78
  %22 = add i64 %gcov_ctr.i48, 1, !dbg !78
  store i64 %22, ptr @__llvm_gcov_ctr.8, align 8, !dbg !78
  %23 = ptrtoint ptr %call7.i.i to i32, !dbg !78
  call void @__asan_store4_noabort(i32 %23), !dbg !78
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8, !dbg !78
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1, !dbg !82
  %24 = ptrtoint ptr %prev.i to i32, !dbg !83
  call void @__asan_store4_noabort(i32 %24), !dbg !83
  store ptr %call7.i.i, ptr %prev.i, align 4, !dbg !83
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %call7.i.i, i32 0, i32 3, !dbg !84
  tail call void @__mutex_init(ptr noundef %stat_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @register_stat_tracer.__key) #11, !dbg !84
  %25 = load ptr, ptr @stat_dir, align 4, !dbg !85
  %tobool.not.i = icmp eq ptr %25, null, !dbg !85
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end16.if.end.i_crit_edge, !dbg !88

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10, !dbg !88
  br label %if.end.i, !dbg !88

land.lhs.true.i:                                  ; preds = %if.end16
  %gcov_ctr.i49 = load i64, ptr @__llvm_gcov_ctr.9, align 16, !dbg !89
  %26 = add i64 %gcov_ctr.i49, 1, !dbg !89
  store i64 %26, ptr @__llvm_gcov_ctr.9, align 16, !dbg !89
  %call.i.i = tail call i32 @tracing_init_dentry() #11, !dbg !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !93
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0, !dbg !93
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !93

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !94
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.21, align 16, !dbg !94
  %27 = add i64 %gcov_ctr.i.i, 1, !dbg !94
  store i64 %27, ptr @__llvm_gcov_ctr.21, align 16, !dbg !94
  br label %if.then.i, !dbg !94

if.end.i.i:                                       ; preds = %land.lhs.true.i
  %call1.i.i = tail call ptr @tracefs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #11, !dbg !95
  store ptr %call1.i.i, ptr @stat_dir, align 4, !dbg !96
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null, !dbg !97
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %tracing_stat_init.exit.i, !dbg !98

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !99
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !99
  %28 = add i64 %gcov_ctr6.i.i, 1, !dbg !99
  store i64 %28, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 1), align 8, !dbg !99
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13, !dbg !99
  br label %if.then.i, !dbg !100

tracing_stat_init.exit.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !101
  %gcov_ctr7.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !101
  %29 = add i64 %gcov_ctr7.i.i, 1, !dbg !101
  store i64 %29, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.21, i32 0, i32 2), align 16, !dbg !101
  br label %if.end.i, !dbg !102

if.then.i:                                        ; preds = %do.end.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ -12, %do.end.i.i ], [ -19, %if.then.i.i ]
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !103
  %30 = add i64 %gcov_ctr7.i, 1, !dbg !103
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 1), align 8, !dbg !103
  br label %if.then21, !dbg !104

if.end.i:                                         ; preds = %tracing_stat_init.exit.i, %if.end16.if.end.i_crit_edge
  %31 = ptrtoint ptr %ts17 to i32, !dbg !105
  call void @__asan_load4_noabort(i32 %31), !dbg !105
  %32 = load ptr, ptr %ts17, align 8, !dbg !105
  %33 = ptrtoint ptr %32 to i32, !dbg !106
  call void @__asan_load4_noabort(i32 %33), !dbg !106
  %34 = load ptr, ptr %32, align 4, !dbg !106
  %35 = load ptr, ptr @stat_dir, align 4, !dbg !107
  %call2.i = tail call ptr @tracefs_create_file(ptr noundef %34, i16 noundef zeroext 416, ptr noundef %35, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tracing_stat_fops) #11, !dbg !108
  %file.i = getelementptr inbounds %struct.stat_session, ptr %call7.i.i, i32 0, i32 4, !dbg !109
  %36 = ptrtoint ptr %file.i to i32, !dbg !110
  call void @__asan_store4_noabort(i32 %36), !dbg !110
  store ptr %call2.i, ptr %file.i, align 4, !dbg !110
  %tobool4.not.i = icmp eq ptr %call2.i, null, !dbg !111
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end22, !dbg !112

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !113
  %gcov_ctr8.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !113
  %37 = add i64 %gcov_ctr8.i, 1, !dbg !113
  store i64 %37, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 2), align 16, !dbg !113
  br label %if.then21, !dbg !113

if.then21:                                        ; preds = %if.then5.i, %if.then.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %if.then.i ], [ -12, %if.then5.i ]
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !114
  %38 = add i64 %gcov_ctr33, 1, !dbg !114
  store i64 %38, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 8), align 16, !dbg !114
  %gcov_ctr.i50 = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %39 = add i64 %gcov_ctr.i50, 1
  store i64 %39, ptr @__llvm_gcov_ctr.10, align 8
  %file.i51 = getelementptr inbounds %struct.stat_session, ptr %call7.i.i, i32 0, i32 4, !dbg !115
  %40 = ptrtoint ptr %file.i51 to i32, !dbg !115
  call void @__asan_load4_noabort(i32 %40), !dbg !115
  %41 = load ptr, ptr %file.i51, align 4, !dbg !115
  tail call void @tracefs_remove(ptr noundef %41) #11, !dbg !118
  tail call fastcc void @__reset_stat_session(ptr noundef nonnull %call7.i.i) #11, !dbg !119
  tail call void @mutex_destroy(ptr noundef %stat_mutex) #11, !dbg !120
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11, !dbg !121
  br label %out, !dbg !122

if.end22:                                         ; preds = %if.end.i
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !123
  %42 = add i64 %gcov_ctr9.i, 1, !dbg !123
  store i64 %42, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.9, i32 0, i32 3), align 8, !dbg !123
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8, !dbg !124
  %43 = add i64 %gcov_ctr32, 1, !dbg !124
  store i64 %43, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 7), align 8, !dbg !124
  %gcov_ctr.i52 = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %44 = add i64 %gcov_ctr.i52, 1
  store i64 %44, ptr @__llvm_gcov_ctr.11, align 8
  %45 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @all_stat_sessions, i32 0, i32 1), align 4, !dbg !125
  %call.i.i53 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %45, ptr noundef nonnull @all_stat_sessions) #11, !dbg !128
  br i1 %call.i.i53, label %if.end.i.i54, label %if.end22.list_add_tail.exit_crit_edge, !dbg !131

if.end22.list_add_tail.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10, !dbg !131
  br label %list_add_tail.exit, !dbg !131

if.end.i.i54:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10, !dbg !132
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @all_stat_sessions, i32 0, i32 1), align 4, !dbg !132
  %46 = ptrtoint ptr %call7.i.i to i32, !dbg !133
  call void @__asan_store4_noabort(i32 %46), !dbg !133
  store ptr @all_stat_sessions, ptr %call7.i.i, align 8, !dbg !133
  %47 = ptrtoint ptr %prev.i to i32, !dbg !134
  call void @__asan_store4_noabort(i32 %47), !dbg !134
  store ptr %45, ptr %prev.i, align 4, !dbg !134
  %48 = ptrtoint ptr %45 to i32, !dbg !135
  call void @__asan_store4_noabort(i32 %48), !dbg !135
  store volatile ptr %call7.i.i, ptr %45, align 4, !dbg !135
  br label %list_add_tail.exit, !dbg !135

list_add_tail.exit:                               ; preds = %if.end.i.i54, %if.end22.list_add_tail.exit_crit_edge
  %__llvm_gcov_ctr.34.sink1.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), %if.end.i.i54 ], [ @__llvm_gcov_ctr.34, %if.end22.list_add_tail.exit_crit_edge ]
  %49 = ptrtoint ptr %__llvm_gcov_ctr.34.sink1.i.i to i32, !dbg !136
  call void @__asan_load8_noabort(i32 %49), !dbg !136
  %gcov_ctr.i.i55 = load i64, ptr %__llvm_gcov_ctr.34.sink1.i.i, align 8, !dbg !136
  %50 = add i64 %gcov_ctr.i.i55, 1, !dbg !136
  store i64 %50, ptr %__llvm_gcov_ctr.34.sink1.i.i, align 8, !dbg !136
  br label %out, !dbg !137

out:                                              ; preds = %list_add_tail.exit, %if.then21, %if.then15, %if.then8
  %ret.0 = phi i32 [ -22, %if.then8 ], [ %retval.0.i.ph, %if.then21 ], [ 0, %list_add_tail.exit ], [ -12, %if.then15 ], !dbg !138
  tail call void @mutex_unlock(ptr noundef nonnull @all_stat_sessions_mutex) #11, !dbg !139
  br label %cleanup, !dbg !140

cleanup:                                          ; preds = %out, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %if.then ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], !dbg !138
  ret i32 %retval.0, !dbg !141
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_stat_tracer(ptr noundef readnone %trace) local_unnamed_addr #0 align 64 !dbg !142 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !143
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.12, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 16
  tail call void @mutex_lock_nested(ptr noundef nonnull @all_stat_sessions_mutex, i32 noundef 0) #11, !dbg !144
  %1 = load ptr, ptr @all_stat_sessions, align 4, !dbg !145
  %cmp.not23 = icmp eq ptr %1, @all_stat_sessions, !dbg !145
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !145

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !145

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !145
  br label %for.end, !dbg !145

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %node.024 = phi ptr [ %tmp.025, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %ts = getelementptr inbounds %struct.stat_session, ptr %node.024, i32 0, i32 1, !dbg !146
  %2 = ptrtoint ptr %ts to i32, !dbg !146
  call void @__asan_load4_noabort(i32 %2), !dbg !146
  %3 = load ptr, ptr %ts, align 4, !dbg !146
  %cmp6 = icmp eq ptr %3, %trace, !dbg !147
  br i1 %cmp6, label %if.then, label %for.inc, !dbg !148

if.then:                                          ; preds = %for.body
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !149
  %4 = add i64 %gcov_ctr13, 1, !dbg !149
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !149
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.13, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.024) #11, !dbg !150
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !155

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !156
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.35, align 8, !dbg !156
  %6 = add i64 %gcov_ctr.i.i, 1, !dbg !156
  store i64 %6, ptr @__llvm_gcov_ctr.35, align 8, !dbg !156
  br label %list_del.exit, !dbg !156

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !157
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !157
  %7 = add i64 %gcov_ctr2.i.i, 1, !dbg !157
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !157
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.024, i32 0, i32 1, !dbg !158
  %8 = ptrtoint ptr %prev.i.i to i32, !dbg !158
  call void @__asan_load4_noabort(i32 %8), !dbg !158
  %9 = load ptr, ptr %prev.i.i, align 4, !dbg !158
  %10 = ptrtoint ptr %node.024 to i32, !dbg !159
  call void @__asan_load4_noabort(i32 %10), !dbg !159
  %11 = load ptr, ptr %node.024, align 4, !dbg !159
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !160
  %12 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !163
  call void @__asan_store4_noabort(i32 %12), !dbg !163
  store ptr %9, ptr %prev1.i.i.i, align 4, !dbg !163
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.36, align 8, !dbg !164
  %13 = add i64 %gcov_ctr.i.i.i, 1, !dbg !164
  store i64 %13, ptr @__llvm_gcov_ctr.36, align 8, !dbg !164
  %14 = ptrtoint ptr %9 to i32, !dbg !164
  call void @__asan_store4_noabort(i32 %14), !dbg !164
  store volatile ptr %11, ptr %9, align 4, !dbg !164
  br label %list_del.exit, !dbg !165

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %15 = ptrtoint ptr %node.024 to i32, !dbg !166
  call void @__asan_store4_noabort(i32 %15), !dbg !166
  store ptr inttoptr (i32 256 to ptr), ptr %node.024, align 4, !dbg !166
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.024, i32 0, i32 1, !dbg !167
  %16 = ptrtoint ptr %prev.i to i32, !dbg !168
  call void @__asan_store4_noabort(i32 %16), !dbg !168
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !168
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %17 = add i64 %gcov_ctr.i20, 1
  store i64 %17, ptr @__llvm_gcov_ctr.10, align 8
  %file.i = getelementptr inbounds %struct.stat_session, ptr %node.024, i32 0, i32 4, !dbg !169
  %18 = ptrtoint ptr %file.i to i32, !dbg !169
  call void @__asan_load4_noabort(i32 %18), !dbg !169
  %19 = load ptr, ptr %file.i, align 4, !dbg !169
  tail call void @tracefs_remove(ptr noundef %19) #11, !dbg !171
  tail call fastcc void @__reset_stat_session(ptr noundef %node.024) #11, !dbg !172
  %stat_mutex.i = getelementptr inbounds %struct.stat_session, ptr %node.024, i32 0, i32 3, !dbg !173
  tail call void @mutex_destroy(ptr noundef %stat_mutex.i) #11, !dbg !174
  tail call void @kfree(ptr noundef %node.024) #11, !dbg !175
  br label %for.end, !dbg !176

for.inc:                                          ; preds = %for.body
  %20 = ptrtoint ptr %node.024 to i32, !dbg !145
  call void @__asan_load4_noabort(i32 %20), !dbg !145
  %tmp.025 = load ptr, ptr %node.024, align 4, !dbg !145
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !145
  %21 = add i64 %gcov_ctr14, 1, !dbg !145
  store i64 %21, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !145
  %cmp.not = icmp eq ptr %tmp.025, @all_stat_sessions, !dbg !145
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !145, !llvm.loop !177

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10, !dbg !145
  br label %for.body, !dbg !145

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10, !dbg !145
  br label %for.end, !dbg !145

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @all_stat_sessions_mutex) #11, !dbg !179
  ret void, !dbg !180
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracing_stat_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 !dbg !181 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !182
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54, !dbg !183
  %0 = ptrtoint ptr %i_private to i32, !dbg !183
  call void @__asan_load4_noabort(i32 %0), !dbg !183
  %1 = load ptr, ptr %i_private, align 4, !dbg !183
  %call = tail call i32 @security_locked_down(i32 noundef 22) #11, !dbg !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !185
  %tobool.not = icmp eq i32 %call, 0, !dbg !185
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !186
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.22, align 16, !dbg !186
  %2 = add i64 %gcov_ctr, 1, !dbg !186
  store i64 %2, ptr @__llvm_gcov_ctr.22, align 16, !dbg !186
  br label %cleanup, !dbg !187

if.end:                                           ; preds = %entry
  %ts1.i = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 1, !dbg !188
  %3 = ptrtoint ptr %ts1.i to i32, !dbg !188
  call void @__asan_load4_noabort(i32 %3), !dbg !188
  %4 = load ptr, ptr %ts1.i, align 4, !dbg !188
  %stat_root.i = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 2, !dbg !191
  %stat_mutex.i = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 3, !dbg !192
  tail call void @mutex_lock_nested(ptr noundef %stat_mutex.i, i32 noundef 0) #11, !dbg !192
  tail call fastcc void @__reset_stat_session(ptr noundef %1) #11, !dbg !193
  %stat_cmp.i = getelementptr inbounds %struct.tracer_stat, ptr %4, i32 0, i32 3, !dbg !194
  %5 = ptrtoint ptr %stat_cmp.i to i32, !dbg !194
  call void @__asan_load4_noabort(i32 %5), !dbg !194
  %6 = load ptr, ptr %stat_cmp.i, align 4, !dbg !194
  %tobool.not.i = icmp eq ptr %6, null, !dbg !195
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge, !dbg !196

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !196
  br label %if.end.i, !dbg !196

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !197
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.24, align 16, !dbg !197
  %7 = add i64 %gcov_ctr.i, 1, !dbg !197
  store i64 %7, ptr @__llvm_gcov_ctr.24, align 16, !dbg !197
  %8 = ptrtoint ptr %stat_cmp.i to i32, !dbg !198
  call void @__asan_store4_noabort(i32 %8), !dbg !198
  store ptr @dummy_cmp, ptr %stat_cmp.i, align 4, !dbg !198
  br label %if.end.i, !dbg !197

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %stat_start.i = getelementptr inbounds %struct.tracer_stat, ptr %4, i32 0, i32 1, !dbg !199
  %9 = ptrtoint ptr %stat_start.i to i32, !dbg !199
  call void @__asan_load4_noabort(i32 %9), !dbg !199
  %10 = load ptr, ptr %stat_start.i, align 4, !dbg !199
  %call.i = tail call ptr %10(ptr noundef %4) #11, !dbg !200
  %tobool3.not.i = icmp eq ptr %call.i, null, !dbg !201
  br i1 %tobool3.not.i, label %if.end.i.if.end4_crit_edge, label %if.end5.i, !dbg !202

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !202
  br label %if.end4, !dbg !202

if.end5.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %stat_cmp.i to i32, !dbg !203
  call void @__asan_load4_noabort(i32 %11), !dbg !203
  %12 = load ptr, ptr %stat_cmp.i, align 4, !dbg !203
  %call7.i = tail call fastcc i32 @insert_stat(ptr noundef %stat_root.i, ptr noundef nonnull %call.i, ptr noundef %12) #11, !dbg !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i), !dbg !205
  %tobool8.not.i = icmp eq i32 %call7.i, 0, !dbg !205
  br i1 %tobool8.not.i, label %for.cond.preheader.i, label %if.then9.i, !dbg !205

for.cond.preheader.i:                             ; preds = %if.end5.i
  %stat_next.i = getelementptr inbounds %struct.tracer_stat, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %stat_next.i to i32, !dbg !206
  call void @__asan_load4_noabort(i32 %13), !dbg !206
  %14 = load ptr, ptr %stat_next.i, align 4, !dbg !206
  %call1152.i = tail call ptr %14(ptr noundef nonnull %call.i, i32 noundef 1) #11, !dbg !207
  %tobool12.not53.i = icmp eq ptr %call1152.i, null, !dbg !208
  br i1 %tobool12.not53.i, label %for.cond.preheader.i.if.end4_crit_edge, label %for.cond.preheader.i.if.end14.i_crit_edge, !dbg !209

for.cond.preheader.i.if.end14.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %if.end14.i, !dbg !209

for.cond.preheader.i.if.end4_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !209
  br label %if.end4, !dbg !209

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !210
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !210
  %15 = add i64 %gcov_ctr27.i, 1, !dbg !210
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 2), align 16, !dbg !210
  br label %if.then3, !dbg !210

if.end14.i:                                       ; preds = %for.inc.i.if.end14.i_crit_edge, %for.cond.preheader.i.if.end14.i_crit_edge
  %call1155.i = phi ptr [ %call11.i, %for.inc.i.if.end14.i_crit_edge ], [ %call1152.i, %for.cond.preheader.i.if.end14.i_crit_edge ]
  %i.054.i = phi i32 [ %inc.i, %for.inc.i.if.end14.i_crit_edge ], [ 1, %for.cond.preheader.i.if.end14.i_crit_edge ]
  %16 = ptrtoint ptr %stat_cmp.i to i32, !dbg !211
  call void @__asan_load4_noabort(i32 %16), !dbg !211
  %17 = load ptr, ptr %stat_cmp.i, align 4, !dbg !211
  %call16.i = tail call fastcc i32 @insert_stat(ptr noundef %stat_root.i, ptr noundef nonnull %call1155.i, ptr noundef %17) #11, !dbg !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i), !dbg !213
  %tobool17.not.i = icmp eq i32 %call16.i, 0, !dbg !213
  br i1 %tobool17.not.i, label %for.inc.i, label %if.then18.i, !dbg !213

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !214
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !214
  %18 = add i64 %gcov_ctr28.i, 1, !dbg !214
  store i64 %18, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 3), align 8, !dbg !214
  tail call fastcc void @__reset_stat_session(ptr noundef %1) #11, !dbg !215
  br label %if.then3, !dbg !216

for.inc.i:                                        ; preds = %if.end14.i
  %gcov_ctr29.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 4), align 16, !dbg !217
  %19 = add i64 %gcov_ctr29.i, 1, !dbg !217
  store i64 %19, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 4), align 16, !dbg !217
  %inc.i = add i32 %i.054.i, 1, !dbg !217
  %20 = ptrtoint ptr %stat_next.i to i32, !dbg !206
  call void @__asan_load4_noabort(i32 %20), !dbg !206
  %21 = load ptr, ptr %stat_next.i, align 4, !dbg !206
  %call11.i = tail call ptr %21(ptr noundef nonnull %call1155.i, i32 noundef %inc.i) #11, !dbg !207
  %tobool12.not.i = icmp eq ptr %call11.i, null, !dbg !208
  br i1 %tobool12.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.if.end14.i_crit_edge, !dbg !209, !llvm.loop !218

for.inc.i.if.end14.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !209
  br label %if.end14.i, !dbg !209

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !209
  br label %if.end4, !dbg !209

if.then3:                                         ; preds = %if.then18.i, %if.then9.i
  %retval.0.i = phi i32 [ %call16.i, %if.then18.i ], [ %call7.i, %if.then9.i ], !dbg !221
  tail call void @mutex_unlock(ptr noundef %stat_mutex.i) #11, !dbg !221
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !222
  %22 = add i64 %gcov_ctr11, 1, !dbg !222
  store i64 %22, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !222
  br label %cleanup, !dbg !223

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %for.cond.preheader.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), %if.end.i.if.end4_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), %for.cond.preheader.i.if.end4_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 5), %for.inc.i.if.end4_crit_edge ]
  %23 = ptrtoint ptr %.sink to i32, !dbg !221
  call void @__asan_load8_noabort(i32 %23), !dbg !221
  %gcov_ctr30.i = load i64, ptr %.sink, align 8, !dbg !221
  %24 = add i64 %gcov_ctr30.i, 1, !dbg !221
  store i64 %24, ptr %.sink, align 8, !dbg !221
  tail call void @mutex_unlock(ptr noundef %stat_mutex.i) #11, !dbg !221
  %call5 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @trace_stat_seq_ops) #11, !dbg !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !225
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !225
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !225

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10, !dbg !226
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !226
  %25 = add i64 %gcov_ctr13, 1, !dbg !226
  store i64 %25, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 3), align 8, !dbg !226
  %gcov_ctr.i23 = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %26 = add i64 %gcov_ctr.i23, 1
  store i64 %26, ptr @__llvm_gcov_ctr.25, align 8
  tail call void @mutex_lock_nested(ptr noundef %stat_mutex.i, i32 noundef 0) #11, !dbg !227
  tail call fastcc void @__reset_stat_session(ptr noundef %1) #11, !dbg !230
  tail call void @mutex_unlock(ptr noundef %stat_mutex.i) #11, !dbg !231
  br label %cleanup, !dbg !232

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10, !dbg !233
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !233
  %27 = add i64 %gcov_ctr12, 1, !dbg !233
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 2), align 16, !dbg !233
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16, !dbg !234
  %28 = ptrtoint ptr %private_data to i32, !dbg !234
  call void @__asan_load4_noabort(i32 %28), !dbg !234
  %29 = load ptr, ptr %private_data, align 4, !dbg !234
  %private = getelementptr inbounds %struct.seq_file, ptr %29, i32 0, i32 11, !dbg !235
  %30 = ptrtoint ptr %private to i32, !dbg !236
  call void @__asan_store4_noabort(i32 %30), !dbg !236
  store ptr %1, ptr %private, align 8, !dbg !236
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %if.then3 ], [ %call5, %if.then7 ], [ 0, %if.end8 ], !dbg !238
  ret i32 %retval.0, !dbg !239
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracing_stat_release(ptr noundef %i, ptr noundef %f) #0 align 64 !dbg !240 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !241
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.23, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 54, !dbg !242
  %1 = ptrtoint ptr %i_private to i32, !dbg !242
  call void @__asan_load4_noabort(i32 %1), !dbg !242
  %2 = load ptr, ptr %i_private, align 4, !dbg !242
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.25, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.25, align 8
  %stat_mutex.i = getelementptr inbounds %struct.stat_session, ptr %2, i32 0, i32 3, !dbg !243
  tail call void @mutex_lock_nested(ptr noundef %stat_mutex.i, i32 noundef 0) #11, !dbg !243
  tail call fastcc void @__reset_stat_session(ptr noundef %2) #11, !dbg !245
  tail call void @mutex_unlock(ptr noundef %stat_mutex.i) #11, !dbg !246
  %call = tail call i32 @seq_release(ptr noundef %i, ptr noundef %f) #11, !dbg !247
  ret i32 %call, !dbg !248
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__reset_stat_session(ptr noundef %session) unnamed_addr #0 align 64 !dbg !249 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !250
  %stat_root = getelementptr inbounds %struct.stat_session, ptr %session, i32 0, i32 2, !dbg !251
  %call = tail call ptr @rb_first_postorder(ptr noundef %stat_root) #11, !dbg !251
  %tobool.not = icmp eq ptr %call, null, !dbg !251
  br i1 %tobool.not, label %cond.end.thread, label %land.rhs.lr.ph, !dbg !251

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !251
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.26, align 16, !dbg !251
  %0 = add i64 %gcov_ctr, 1, !dbg !251
  store i64 %0, ptr @__llvm_gcov_ctr.26, align 16, !dbg !251
  br label %for.end, !dbg !251

land.rhs.lr.ph:                                   ; preds = %entry
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !251
  %1 = add i64 %gcov_ctr20, 1, !dbg !251
  store i64 %1, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 1), align 8, !dbg !251
  %ts = getelementptr inbounds %struct.stat_session, ptr %session, i32 0, i32 1
  br label %land.rhs, !dbg !251

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %snode.034 = phi ptr [ %call, %land.rhs.lr.ph ], [ %call4, %if.end.land.rhs_crit_edge ]
  %call4 = tail call ptr @rb_next_postorder(ptr noundef nonnull %snode.034) #11, !dbg !251
  %tobool6.not = icmp eq ptr %call4, null, !dbg !251
  br i1 %tobool6.not, label %cond.false11, label %cond.true7, !dbg !251

cond.true7:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10, !dbg !251
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 3), align 8, !dbg !251
  %2 = add i64 %gcov_ctr22, 1, !dbg !251
  store i64 %2, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 3), align 8, !dbg !251
  br label %for.body, !dbg !251

cond.false11:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10, !dbg !251
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 2), align 16, !dbg !251
  %3 = add i64 %gcov_ctr21, 1, !dbg !251
  store i64 %3, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 2), align 16, !dbg !251
  br label %for.body, !dbg !251

for.body:                                         ; preds = %cond.false11, %cond.true7
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 4), align 16, !dbg !252
  %4 = add i64 %gcov_ctr23, 1, !dbg !252
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 4), align 16, !dbg !252
  %5 = ptrtoint ptr %ts to i32, !dbg !253
  call void @__asan_load4_noabort(i32 %5), !dbg !253
  %6 = load ptr, ptr %ts, align 4, !dbg !253
  %stat_release = getelementptr inbounds %struct.tracer_stat, ptr %6, i32 0, i32 5, !dbg !254
  %7 = ptrtoint ptr %stat_release to i32, !dbg !254
  call void @__asan_load4_noabort(i32 %7), !dbg !254
  %8 = load ptr, ptr %stat_release, align 4, !dbg !254
  %tobool16.not = icmp eq ptr %8, null, !dbg !252
  br i1 %tobool16.not, label %for.body.if.end_crit_edge, label %if.then, !dbg !252

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !252
  br label %if.end, !dbg !252

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !255
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 5), align 8, !dbg !255
  %9 = add i64 %gcov_ctr24, 1, !dbg !255
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.26, i32 0, i32 5), align 8, !dbg !255
  %10 = ptrtoint ptr %ts to i32, !dbg !256
  call void @__asan_load4_noabort(i32 %10), !dbg !256
  %11 = load ptr, ptr %ts, align 4, !dbg !256
  %stat_release18 = getelementptr inbounds %struct.tracer_stat, ptr %11, i32 0, i32 5, !dbg !257
  %12 = ptrtoint ptr %stat_release18 to i32, !dbg !257
  call void @__asan_load4_noabort(i32 %12), !dbg !257
  %13 = load ptr, ptr %stat_release18, align 4, !dbg !257
  %stat = getelementptr inbounds %struct.stat_node, ptr %snode.034, i32 0, i32 1, !dbg !258
  %14 = ptrtoint ptr %stat to i32, !dbg !258
  call void @__asan_load4_noabort(i32 %14), !dbg !258
  %15 = load ptr, ptr %stat, align 4, !dbg !258
  tail call void %13(ptr noundef %15) #11, !dbg !255
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %snode.034) #11, !dbg !259
  br i1 %tobool6.not, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge, !dbg !251, !llvm.loop !260

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !251
  br label %land.rhs, !dbg !251

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !251
  br label %for.end, !dbg !251

for.end:                                          ; preds = %if.end.for.end_crit_edge, %cond.end.thread
  %16 = ptrtoint ptr %stat_root to i32, !dbg !262
  call void @__asan_store4_noabort(i32 %16), !dbg !262
  store ptr null, ptr %stat_root, align 4, !dbg !262
  ret void, !dbg !263
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_cmp(ptr nocapture noundef readnone %p1, ptr nocapture noundef readnone %p2) #4 align 64 !dbg !264 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !265
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.27, align 8
  ret i32 -1, !dbg !266
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_stat(ptr noundef %root, ptr noundef %stat, ptr nocapture noundef readonly %cmp) unnamed_addr #0 align 64 !dbg !267 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !268
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.7, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !269
  %1 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !269
  store i64 %1, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !269
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !273
  %2 = add i64 %gcov_ctr11.i.i, 1, !dbg !273
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 2), align 16, !dbg !273
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.17, align 16, !dbg !274
  %3 = add i64 %gcov_ctr.i.i.i, 1, !dbg !274
  store i64 %3, ptr @__llvm_gcov_ctr.17, align 16, !dbg !274
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !276
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !276
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #12, !dbg !277
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !278
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !280
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 16, !dbg !280
  %5 = add i64 %gcov_ctr, 1, !dbg !280
  store i64 %5, ptr @__llvm_gcov_ctr.28, align 16, !dbg !280
  br label %cleanup, !dbg !280

if.end:                                           ; preds = %entry
  %stat1 = getelementptr inbounds %struct.stat_node, ptr %call7.i.i, i32 0, i32 1, !dbg !281
  %6 = ptrtoint ptr %stat1 to i32, !dbg !282
  call void @__asan_store4_noabort(i32 %6), !dbg !282
  store ptr %stat, ptr %stat1, align 4, !dbg !282
  %7 = ptrtoint ptr %root to i32, !dbg !283
  call void @__asan_load4_noabort(i32 %7), !dbg !283
  %8 = load ptr, ptr %root, align 4, !dbg !283
  %tobool2.not26 = icmp eq ptr %8, null, !dbg !284
  br i1 %tobool2.not26, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge, !dbg !284

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body, !dbg !284

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !284
  br label %while.end, !dbg !284

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %if.end.while.body_crit_edge
  %9 = phi ptr [ %23, %if.end8.while.body_crit_edge ], [ %8, %if.end.while.body_crit_edge ]
  %new.027 = phi ptr [ %new.1, %if.end8.while.body_crit_edge ], [ %root, %if.end.while.body_crit_edge ]
  %10 = ptrtoint ptr %stat1 to i32, !dbg !285
  call void @__asan_load4_noabort(i32 %10), !dbg !285
  %11 = load ptr, ptr %stat1, align 4, !dbg !285
  %stat4 = getelementptr inbounds %struct.stat_node, ptr %9, i32 0, i32 1, !dbg !286
  %12 = ptrtoint ptr %stat4 to i32, !dbg !286
  call void @__asan_load4_noabort(i32 %12), !dbg !286
  %13 = load ptr, ptr %stat4, align 4, !dbg !286
  %call5 = tail call i32 %cmp(ptr noundef %11, ptr noundef %13) #11, !dbg !287
  %14 = ptrtoint ptr %new.027 to i32, !dbg !288
  call void @__asan_load4_noabort(i32 %14), !dbg !288
  %15 = load ptr, ptr %new.027, align 4, !dbg !288
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5), !dbg !289
  %cmp6 = icmp sgt i32 %call5, -1, !dbg !289
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !290

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !291
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !291
  %16 = add i64 %gcov_ctr13, 1, !dbg !291
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !291
  %17 = ptrtoint ptr %new.027 to i32, !dbg !292
  call void @__asan_load4_noabort(i32 %17), !dbg !292
  %18 = load ptr, ptr %new.027, align 4, !dbg !292
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2, !dbg !293
  br label %if.end8, !dbg !294

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !295
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !295
  %19 = add i64 %gcov_ctr14, 1, !dbg !295
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !295
  %20 = ptrtoint ptr %new.027 to i32, !dbg !296
  call void @__asan_load4_noabort(i32 %20), !dbg !296
  %21 = load ptr, ptr %new.027, align 4, !dbg !296
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1, !dbg !297
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %new.1 = phi ptr [ %rb_left, %if.then7 ], [ %rb_right, %if.else ], !dbg !298
  %22 = ptrtoint ptr %new.1 to i32, !dbg !283
  call void @__asan_load4_noabort(i32 %22), !dbg !283
  %23 = load ptr, ptr %new.1, align 4, !dbg !283
  %tobool2.not = icmp eq ptr %23, null, !dbg !284
  br i1 %tobool2.not, label %while.cond.while.end_crit_edge, label %if.end8.while.body_crit_edge, !dbg !284, !llvm.loop !299

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10, !dbg !284
  br label %while.body, !dbg !284

while.cond.while.end_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10, !dbg !284
  %phi.cast.le = ptrtoint ptr %15 to i32, !dbg !284
  br label %while.end, !dbg !284

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.1, %while.cond.while.end_crit_edge ], [ %root, %if.end.while.end_crit_edge ], !dbg !298
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !301
  %24 = add i64 %gcov_ctr12, 1, !dbg !301
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !301
  %gcov_ctr.i25 = load i64, ptr @__llvm_gcov_ctr.29, align 8
  %25 = add i64 %gcov_ctr.i25, 1
  store i64 %25, ptr @__llvm_gcov_ctr.29, align 8
  %26 = ptrtoint ptr %call7.i.i to i32, !dbg !302
  call void @__asan_store4_noabort(i32 %26), !dbg !302
  store i32 %parent.0.lcssa, ptr %call7.i.i, align 8, !dbg !302
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1, !dbg !306
  %27 = ptrtoint ptr %rb_right.i to i32, !dbg !307
  call void @__asan_store4_noabort(i32 %27), !dbg !307
  store ptr null, ptr %rb_right.i, align 4, !dbg !307
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2, !dbg !308
  %28 = ptrtoint ptr %rb_left.i to i32, !dbg !309
  call void @__asan_store4_noabort(i32 %28), !dbg !309
  store ptr null, ptr %rb_left.i, align 8, !dbg !309
  %29 = ptrtoint ptr %new.0.lcssa to i32, !dbg !310
  call void @__asan_store4_noabort(i32 %29), !dbg !310
  store ptr %call7.i.i, ptr %new.0.lcssa, align 4, !dbg !310
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %root) #11, !dbg !311
  br label %cleanup, !dbg !312

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %if.then ], !dbg !298
  ret i32 %retval.0, !dbg !313
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stat_seq_start(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %pos) #0 align 64 !dbg !314 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !315
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11, !dbg !316
  %0 = ptrtoint ptr %private to i32, !dbg !316
  call void @__asan_load4_noabort(i32 %0), !dbg !316
  %1 = load ptr, ptr %private, align 8, !dbg !316
  %2 = ptrtoint ptr %pos to i32, !dbg !317
  call void @__asan_load8_noabort(i32 %2), !dbg !317
  %3 = load i64, ptr %pos, align 8, !dbg !317
  %conv = trunc i64 %3 to i32, !dbg !317
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 3, !dbg !318
  tail call void @mutex_lock_nested(ptr noundef %stat_mutex, i32 noundef 0) #11, !dbg !318
  %ts = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 1, !dbg !319
  %4 = ptrtoint ptr %ts to i32, !dbg !319
  call void @__asan_load4_noabort(i32 %4), !dbg !319
  %5 = load ptr, ptr %ts, align 4, !dbg !319
  %stat_headers = getelementptr inbounds %struct.tracer_stat, ptr %5, i32 0, i32 6, !dbg !320
  %6 = ptrtoint ptr %stat_headers to i32, !dbg !320
  call void @__asan_load4_noabort(i32 %6), !dbg !320
  %7 = load ptr, ptr %stat_headers, align 4, !dbg !320
  %tobool.not = icmp eq ptr %7, null, !dbg !321
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then, !dbg !321

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !321
  br label %if.end3, !dbg !321

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv), !dbg !322
  %cmp = icmp eq i32 %conv, 0, !dbg !322
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end, !dbg !323

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !323
  br label %cleanup, !dbg !323

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10, !dbg !324
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !324
  %8 = add i64 %gcov_ctr11, 1, !dbg !324
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !324
  %dec = add i32 %conv, -1, !dbg !324
  br label %if.end3, !dbg !325

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %n.0 = phi i32 [ %dec, %if.end ], [ %conv, %entry.if.end3_crit_edge ], !dbg !326
  %stat_root = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 2, !dbg !327
  %call = tail call ptr @rb_first(ptr noundef %stat_root) #11, !dbg !328
  %tobool4.not22 = icmp eq ptr %call, null, !dbg !329
  br i1 %tobool4.not22, label %if.end3.cleanup_crit_edge, label %land.rhs.preheader, !dbg !330

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10, !dbg !330
  br label %cleanup, !dbg !330

land.rhs.preheader:                               ; preds = %if.end3
  %smax = call i32 @llvm.smax.i32(i32 %n.0, i32 0), !dbg !331
  br label %land.rhs, !dbg !331

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.preheader
  %i.024 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %node.023 = phi ptr [ %call7, %for.body.land.rhs_crit_edge ], [ %call, %land.rhs.preheader ]
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !332
  %9 = add i64 %gcov_ctr12, 1, !dbg !332
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !332
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024, i32 %smax), !dbg !333
  %exitcond.not = icmp eq i32 %i.024, %smax, !dbg !333
  br i1 %exitcond.not, label %land.rhs.cleanup_crit_edge, label %for.body, !dbg !331

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10, !dbg !331
  br label %cleanup, !dbg !331

for.body:                                         ; preds = %land.rhs
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !334
  %10 = add i64 %gcov_ctr13, 1, !dbg !334
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !334
  %call7 = tail call ptr @rb_next(ptr noundef nonnull %node.023) #11, !dbg !335
  %inc = add nuw i32 %i.024, 1, !dbg !336
  %tobool4.not = icmp eq ptr %call7, null, !dbg !329
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.body.land.rhs_crit_edge, !dbg !330, !llvm.loop !337

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !330
  br label %land.rhs, !dbg !330

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !330
  br label %cleanup, !dbg !330

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.30, %if.then.cleanup_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 4), %if.end3.cleanup_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 4), %land.rhs.cleanup_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 4), %for.body.cleanup_crit_edge ]
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %if.then.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ null, %for.body.cleanup_crit_edge ], [ %node.023, %land.rhs.cleanup_crit_edge ], !dbg !326
  %11 = ptrtoint ptr %.sink to i32, !dbg !326
  call void @__asan_load8_noabort(i32 %11), !dbg !326
  %gcov_ctr14 = load i64, ptr %.sink, align 16, !dbg !326
  %12 = add i64 %gcov_ctr14, 1, !dbg !326
  store i64 %12, ptr %.sink, align 16, !dbg !326
  ret ptr %retval.0, !dbg !339
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stat_seq_stop(ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %p) #0 align 64 !dbg !340 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !341
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11, !dbg !342
  %1 = ptrtoint ptr %private to i32, !dbg !342
  call void @__asan_load4_noabort(i32 %1), !dbg !342
  %2 = load ptr, ptr %private, align 8, !dbg !342
  %stat_mutex = getelementptr inbounds %struct.stat_session, ptr %2, i32 0, i32 3, !dbg !343
  tail call void @mutex_unlock(ptr noundef %stat_mutex) #11, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stat_seq_next(ptr nocapture noundef readonly %s, ptr noundef %p, ptr nocapture noundef %pos) #0 align 64 !dbg !346 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !347
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11, !dbg !348
  %0 = ptrtoint ptr %private to i32, !dbg !348
  call void @__asan_load4_noabort(i32 %0), !dbg !348
  %1 = load ptr, ptr %private, align 8, !dbg !348
  %2 = ptrtoint ptr %pos to i32, !dbg !349
  call void @__asan_load8_noabort(i32 %2), !dbg !349
  %3 = load i64, ptr %pos, align 8, !dbg !349
  %inc = add i64 %3, 1, !dbg !349
  store i64 %inc, ptr %pos, align 8, !dbg !349
  %cmp = icmp eq ptr %p, inttoptr (i32 1 to ptr), !dbg !350
  br i1 %cmp, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !352
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.32, align 8, !dbg !352
  %4 = add i64 %gcov_ctr, 1, !dbg !352
  store i64 %4, ptr @__llvm_gcov_ctr.32, align 8, !dbg !352
  %stat_root = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 2, !dbg !353
  %call = tail call ptr @rb_first(ptr noundef %stat_root) #11, !dbg !354
  br label %cleanup, !dbg !355

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !356
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !356
  %5 = add i64 %gcov_ctr3, 1, !dbg !356
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !356
  %call1 = tail call ptr @rb_next(ptr noundef %p) #11, !dbg !357
  br label %cleanup, !dbg !358

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %call1, %if.end ], !dbg !359
  ret ptr %retval.0, !dbg !360
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_seq_show(ptr noundef %s, ptr noundef readonly %v) #0 align 64 !dbg !361 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !362
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11, !dbg !363
  %0 = ptrtoint ptr %private to i32, !dbg !363
  call void @__asan_load4_noabort(i32 %0), !dbg !363
  %1 = load ptr, ptr %private, align 8, !dbg !363
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr), !dbg !364
  br i1 %cmp, label %if.then, label %if.end, !dbg !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !366
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !366
  %2 = add i64 %gcov_ctr, 1, !dbg !366
  store i64 %2, ptr @__llvm_gcov_ctr.33, align 8, !dbg !366
  %ts = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 1, !dbg !367
  %3 = ptrtoint ptr %ts to i32, !dbg !367
  call void @__asan_load4_noabort(i32 %3), !dbg !367
  %4 = load ptr, ptr %ts, align 4, !dbg !367
  %stat_headers = getelementptr inbounds %struct.tracer_stat, ptr %4, i32 0, i32 6, !dbg !368
  %5 = ptrtoint ptr %stat_headers to i32, !dbg !368
  call void @__asan_load4_noabort(i32 %5), !dbg !368
  %6 = load ptr, ptr %stat_headers, align 4, !dbg !368
  %call = tail call i32 %6(ptr noundef %s) #11, !dbg !366
  br label %cleanup, !dbg !369

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !370
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !370
  %7 = add i64 %gcov_ctr4, 1, !dbg !370
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.33, i32 0, i32 1), align 8, !dbg !370
  %ts1 = getelementptr inbounds %struct.stat_session, ptr %1, i32 0, i32 1, !dbg !371
  %8 = ptrtoint ptr %ts1 to i32, !dbg !371
  call void @__asan_load4_noabort(i32 %8), !dbg !371
  %9 = load ptr, ptr %ts1, align 4, !dbg !371
  %stat_show = getelementptr inbounds %struct.tracer_stat, ptr %9, i32 0, i32 4, !dbg !372
  %10 = ptrtoint ptr %stat_show to i32, !dbg !372
  call void @__asan_load4_noabort(i32 %10), !dbg !372
  %11 = load ptr, ptr %stat_show, align 4, !dbg !372
  %stat = getelementptr inbounds %struct.stat_node, ptr %v, i32 0, i32 1, !dbg !373
  %12 = ptrtoint ptr %stat to i32, !dbg !373
  call void @__asan_load4_noabort(i32 %12), !dbg !373
  %13 = load ptr, ptr %stat, align 4, !dbg !373
  %call2 = tail call i32 %11(ptr noundef %s, ptr noundef %13) #11, !dbg !370
  br label %cleanup, !dbg !374

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ], !dbg !375
  ret i32 %retval.0, !dbg !376
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracefs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 315412035) #11
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #11
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #11
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 31
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_summary_info() #11
  tail call void @llvm_gcda_end_file() #11
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.7, align 8
  store i64 0, ptr @__llvm_gcov_ctr.8, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.9, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.10, align 8
  store i64 0, ptr @__llvm_gcov_ctr.11, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.12, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.14, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.16, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.17, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.18, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.20, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.21, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.22, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.24, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.25, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.26, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.28, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.29, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.30, i8 0, i64 40, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.32, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.33, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.34, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.35, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.36, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #11
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind uwtable(sync) }
attributes #6 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.gcov = !{!33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_stat.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @register_stat_tracer.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_stat.c", i32 334, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../kernel/trace/trace_stat.c", i32 42, i32 8}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @all_stat_sessions_mutex, !6, !"all_stat_sessions_mutex", i1 false, i1 false}
!9 = !{ptr @all_stat_sessions, !10, !"all_stat_sessions", i1 false, i1 false}
!10 = !{!"../kernel/trace/trace_stat.c", i32 41, i32 8}
!11 = !{ptr @stat_dir, !12, !"stat_dir", i1 false, i1 false}
!12 = !{!"../kernel/trace/trace_stat.c", i32 45, i32 24}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/trace/trace_stat.c", i32 285, i32 32}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/trace/trace_stat.c", i32 287, i32 3}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tracing_stat_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @tracing_stat_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @tracing_stat_fops, !22, !"tracing_stat_fops", i1 false, i1 false}
!22 = !{!"../kernel/trace/trace_stat.c", i32 270, i32 37}
!23 = !{ptr @trace_stat_seq_ops, !24, !"trace_stat_seq_ops", i1 false, i1 false}
!24 = !{!"../kernel/trace/trace_stat.c", i32 225, i32 36}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_stat.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_stat.gcda", !0}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = distinct !DISubprogram(name: "register_stat_tracer", scope: !1, file: !1, line: 308, type: !36, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!36 = !DISubroutineType(types: !37)
!37 = !{}
!38 = !DILocation(line: 309, scope: !35)
!39 = !DILocation(line: 313, column: 7, scope: !35)
!40 = !DILocation(line: 313, column: 6, scope: !35)
!41 = !DILocation(line: 314, column: 3, scope: !35)
!42 = !DILocation(line: 316, column: 7, scope: !35)
!43 = !DILocation(line: 316, column: 14, scope: !35)
!44 = !DILocation(line: 316, column: 25, scope: !35)
!45 = !DILocation(line: 316, column: 29, scope: !35)
!46 = !DILocation(line: 316, column: 36, scope: !35)
!47 = !DILocation(line: 316, column: 46, scope: !35)
!48 = !DILocation(line: 316, column: 50, scope: !35)
!49 = !DILocation(line: 316, column: 57, scope: !35)
!50 = !DILocation(line: 316, column: 6, scope: !35)
!51 = !DILocation(line: 320, column: 2, scope: !35)
!52 = !DILocation(line: 321, column: 2, scope: !35)
!53 = !DILocation(line: 322, column: 13, scope: !35)
!54 = !DILocation(line: 322, column: 16, scope: !35)
!55 = !DILocation(line: 322, column: 7, scope: !35)
!56 = !DILocation(line: 323, column: 4, scope: !35)
!57 = !DILocation(line: 324, column: 2, scope: !35)
!58 = distinct !{!58, !52, !57}
!59 = !DILocation(line: 376, column: 3, scope: !60, inlinedAt: !62)
!60 = distinct !DISubprogram(name: "__kmalloc_index", scope: !61, file: !61, line: 369, type: !36, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!61 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!62 = distinct !DILocation(line: 576, column: 11, scope: !63, inlinedAt: !64)
!63 = distinct !DISubprogram(name: "kmalloc", scope: !61, file: !61, line: 567, type: !36, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!64 = distinct !DILocation(line: 714, column: 9, scope: !65, inlinedAt: !66)
!65 = distinct !DISubprogram(name: "kzalloc", scope: !61, file: !61, line: 712, type: !36, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!66 = distinct !DILocation(line: 328, column: 12, scope: !35)
!67 = !DILocation(line: 582, column: 33, scope: !63, inlinedAt: !64)
!68 = !DILocation(line: 339, column: 3, scope: !69, inlinedAt: !70)
!69 = distinct !DISubprogram(name: "kmalloc_type", scope: !61, file: !61, line: 332, type: !36, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!70 = distinct !DILocation(line: 582, column: 20, scope: !63, inlinedAt: !64)
!71 = !DILocation(line: 582, column: 5, scope: !63, inlinedAt: !64)
!72 = !DILocation(line: 581, column: 10, scope: !63, inlinedAt: !64)
!73 = !DILocation(line: 329, column: 7, scope: !35)
!74 = !DILocation(line: 329, column: 6, scope: !35)
!75 = !DILocation(line: 330, column: 3, scope: !35)
!76 = !DILocation(line: 332, column: 11, scope: !35)
!77 = !DILocation(line: 332, column: 14, scope: !35)
!78 = !DILocation(line: 37, column: 2, scope: !79, inlinedAt: !81)
!79 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !80, file: !80, line: 35, type: !36, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!80 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!81 = distinct !DILocation(line: 333, column: 2, scope: !35)
!82 = !DILocation(line: 38, column: 8, scope: !79, inlinedAt: !81)
!83 = !DILocation(line: 38, column: 13, scope: !79, inlinedAt: !81)
!84 = !DILocation(line: 334, column: 2, scope: !35)
!85 = !DILocation(line: 297, column: 7, scope: !86, inlinedAt: !87)
!86 = distinct !DISubprogram(name: "init_stat_file", scope: !1, file: !1, line: 293, type: !36, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!87 = distinct !DILocation(line: 336, column: 8, scope: !35)
!88 = !DILocation(line: 297, column: 16, scope: !86, inlinedAt: !87)
!89 = !DILocation(line: 297, column: 26, scope: !86, inlinedAt: !87)
!90 = !DILocation(line: 281, column: 8, scope: !91, inlinedAt: !92)
!91 = distinct !DISubprogram(name: "tracing_stat_init", scope: !1, file: !1, line: 277, type: !36, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!92 = distinct !DILocation(line: 297, column: 26, scope: !86, inlinedAt: !87)
!93 = !DILocation(line: 282, column: 6, scope: !91, inlinedAt: !92)
!94 = !DILocation(line: 283, column: 3, scope: !91, inlinedAt: !92)
!95 = !DILocation(line: 285, column: 13, scope: !91, inlinedAt: !92)
!96 = !DILocation(line: 285, column: 11, scope: !91, inlinedAt: !92)
!97 = !DILocation(line: 286, column: 7, scope: !91, inlinedAt: !92)
!98 = !DILocation(line: 286, column: 6, scope: !91, inlinedAt: !92)
!99 = !DILocation(line: 287, column: 3, scope: !91, inlinedAt: !92)
!100 = !DILocation(line: 288, column: 3, scope: !91, inlinedAt: !92)
!101 = !DILocation(line: 290, column: 2, scope: !91, inlinedAt: !92)
!102 = !DILocation(line: 297, column: 6, scope: !86, inlinedAt: !87)
!103 = !DILocation(line: 298, column: 10, scope: !86, inlinedAt: !87)
!104 = !DILocation(line: 298, column: 3, scope: !86, inlinedAt: !87)
!105 = !DILocation(line: 300, column: 47, scope: !86, inlinedAt: !87)
!106 = !DILocation(line: 300, column: 51, scope: !86, inlinedAt: !87)
!107 = !DILocation(line: 301, column: 10, scope: !86, inlinedAt: !87)
!108 = !DILocation(line: 300, column: 18, scope: !86, inlinedAt: !87)
!109 = !DILocation(line: 300, column: 11, scope: !86, inlinedAt: !87)
!110 = !DILocation(line: 300, column: 16, scope: !86, inlinedAt: !87)
!111 = !DILocation(line: 303, column: 7, scope: !86, inlinedAt: !87)
!112 = !DILocation(line: 303, column: 6, scope: !86, inlinedAt: !87)
!113 = !DILocation(line: 304, column: 3, scope: !86, inlinedAt: !87)
!114 = !DILocation(line: 338, column: 19, scope: !35)
!115 = !DILocation(line: 69, column: 26, scope: !116, inlinedAt: !117)
!116 = distinct !DISubprogram(name: "destroy_session", scope: !1, file: !1, line: 67, type: !36, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!117 = distinct !DILocation(line: 338, column: 3, scope: !35)
!118 = !DILocation(line: 69, column: 2, scope: !116, inlinedAt: !117)
!119 = !DILocation(line: 70, column: 2, scope: !116, inlinedAt: !117)
!120 = !DILocation(line: 71, column: 2, scope: !116, inlinedAt: !117)
!121 = !DILocation(line: 72, column: 2, scope: !116, inlinedAt: !117)
!122 = !DILocation(line: 339, column: 3, scope: !35)
!123 = !DILocation(line: 305, column: 2, scope: !86, inlinedAt: !87)
!124 = !DILocation(line: 342, column: 6, scope: !35)
!125 = !DILocation(line: 102, column: 24, scope: !126, inlinedAt: !127)
!126 = distinct !DISubprogram(name: "list_add_tail", scope: !80, file: !80, line: 100, type: !36, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!127 = distinct !DILocation(line: 344, column: 2, scope: !35)
!128 = !DILocation(line: 69, column: 7, scope: !129, inlinedAt: !130)
!129 = distinct !DISubprogram(name: "__list_add", scope: !80, file: !80, line: 65, type: !36, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!130 = distinct !DILocation(line: 102, column: 2, scope: !126, inlinedAt: !127)
!131 = !DILocation(line: 69, column: 6, scope: !129, inlinedAt: !130)
!132 = !DILocation(line: 72, column: 13, scope: !129, inlinedAt: !130)
!133 = !DILocation(line: 73, column: 12, scope: !129, inlinedAt: !130)
!134 = !DILocation(line: 74, column: 12, scope: !129, inlinedAt: !130)
!135 = !DILocation(line: 75, column: 2, scope: !129, inlinedAt: !130)
!136 = !DILocation(line: 0, scope: !129, inlinedAt: !130)
!137 = !DILocation(line: 344, column: 2, scope: !35)
!138 = !DILocation(line: 0, scope: !35)
!139 = !DILocation(line: 346, column: 2, scope: !35)
!140 = !DILocation(line: 348, column: 2, scope: !35)
!141 = !DILocation(line: 349, column: 1, scope: !35)
!142 = distinct !DISubprogram(name: "unregister_stat_tracer", scope: !1, file: !1, line: 351, type: !36, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!143 = !DILocation(line: 352, scope: !142)
!144 = !DILocation(line: 355, column: 2, scope: !142)
!145 = !DILocation(line: 356, column: 2, scope: !142)
!146 = !DILocation(line: 357, column: 13, scope: !142)
!147 = !DILocation(line: 357, column: 16, scope: !142)
!148 = !DILocation(line: 357, column: 7, scope: !142)
!149 = !DILocation(line: 358, column: 14, scope: !142)
!150 = !DILocation(line: 134, column: 7, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__list_del_entry", scope: !80, file: !80, line: 132, type: !36, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!152 = distinct !DILocation(line: 148, column: 2, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "list_del", scope: !80, file: !80, line: 146, type: !36, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!154 = distinct !DILocation(line: 358, column: 4, scope: !142)
!155 = !DILocation(line: 134, column: 6, scope: !151, inlinedAt: !152)
!156 = !DILocation(line: 135, column: 3, scope: !151, inlinedAt: !152)
!157 = !DILocation(line: 137, column: 13, scope: !151, inlinedAt: !152)
!158 = !DILocation(line: 137, column: 20, scope: !151, inlinedAt: !152)
!159 = !DILocation(line: 137, column: 33, scope: !151, inlinedAt: !152)
!160 = !DILocation(line: 114, column: 8, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "__list_del", scope: !80, file: !80, line: 112, type: !36, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!162 = distinct !DILocation(line: 137, column: 2, scope: !151, inlinedAt: !152)
!163 = !DILocation(line: 114, column: 13, scope: !161, inlinedAt: !162)
!164 = !DILocation(line: 115, column: 2, scope: !161, inlinedAt: !162)
!165 = !DILocation(line: 138, column: 1, scope: !151, inlinedAt: !152)
!166 = !DILocation(line: 149, column: 14, scope: !153, inlinedAt: !154)
!167 = !DILocation(line: 150, column: 9, scope: !153, inlinedAt: !154)
!168 = !DILocation(line: 150, column: 14, scope: !153, inlinedAt: !154)
!169 = !DILocation(line: 69, column: 26, scope: !116, inlinedAt: !170)
!170 = distinct !DILocation(line: 359, column: 4, scope: !142)
!171 = !DILocation(line: 69, column: 2, scope: !116, inlinedAt: !170)
!172 = !DILocation(line: 70, column: 2, scope: !116, inlinedAt: !170)
!173 = !DILocation(line: 71, column: 26, scope: !116, inlinedAt: !170)
!174 = !DILocation(line: 71, column: 2, scope: !116, inlinedAt: !170)
!175 = !DILocation(line: 72, column: 2, scope: !116, inlinedAt: !170)
!176 = !DILocation(line: 360, column: 4, scope: !142)
!177 = distinct !{!177, !145, !178}
!178 = !DILocation(line: 362, column: 2, scope: !142)
!179 = !DILocation(line: 363, column: 2, scope: !142)
!180 = !DILocation(line: 364, column: 1, scope: !142)
!181 = distinct !DISubprogram(name: "tracing_stat_open", scope: !1, file: !1, line: 233, type: !36, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!182 = !DILocation(line: 234, scope: !181)
!183 = !DILocation(line: 237, column: 40, scope: !181)
!184 = !DILocation(line: 239, column: 8, scope: !181)
!185 = !DILocation(line: 240, column: 6, scope: !181)
!186 = !DILocation(line: 241, column: 10, scope: !181)
!187 = !DILocation(line: 241, column: 3, scope: !181)
!188 = !DILocation(line: 125, column: 36, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "stat_seq_init", scope: !1, file: !1, line: 123, type: !36, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!190 = distinct !DILocation(line: 243, column: 8, scope: !181)
!191 = !DILocation(line: 126, column: 35, scope: !189, inlinedAt: !190)
!192 = !DILocation(line: 131, column: 2, scope: !189, inlinedAt: !190)
!193 = !DILocation(line: 132, column: 2, scope: !189, inlinedAt: !190)
!194 = !DILocation(line: 134, column: 11, scope: !189, inlinedAt: !190)
!195 = !DILocation(line: 134, column: 7, scope: !189, inlinedAt: !190)
!196 = !DILocation(line: 134, column: 6, scope: !189, inlinedAt: !190)
!197 = !DILocation(line: 135, column: 3, scope: !189, inlinedAt: !190)
!198 = !DILocation(line: 135, column: 16, scope: !189, inlinedAt: !190)
!199 = !DILocation(line: 137, column: 13, scope: !189, inlinedAt: !190)
!200 = !DILocation(line: 137, column: 9, scope: !189, inlinedAt: !190)
!201 = !DILocation(line: 138, column: 7, scope: !189, inlinedAt: !190)
!202 = !DILocation(line: 138, column: 6, scope: !189, inlinedAt: !190)
!203 = !DILocation(line: 141, column: 36, scope: !189, inlinedAt: !190)
!204 = !DILocation(line: 141, column: 8, scope: !189, inlinedAt: !190)
!205 = !DILocation(line: 142, column: 6, scope: !189, inlinedAt: !190)
!206 = !DILocation(line: 149, column: 14, scope: !189, inlinedAt: !190)
!207 = !DILocation(line: 149, column: 10, scope: !189, inlinedAt: !190)
!208 = !DILocation(line: 152, column: 8, scope: !189, inlinedAt: !190)
!209 = !DILocation(line: 152, column: 7, scope: !189, inlinedAt: !190)
!210 = !DILocation(line: 143, column: 3, scope: !189, inlinedAt: !190)
!211 = !DILocation(line: 155, column: 37, scope: !189, inlinedAt: !190)
!212 = !DILocation(line: 155, column: 9, scope: !189, inlinedAt: !190)
!213 = !DILocation(line: 156, column: 7, scope: !189, inlinedAt: !190)
!214 = !DILocation(line: 157, column: 4, scope: !189, inlinedAt: !190)
!215 = !DILocation(line: 165, column: 2, scope: !189, inlinedAt: !190)
!216 = !DILocation(line: 167, column: 2, scope: !189, inlinedAt: !190)
!217 = !DILocation(line: 148, column: 17, scope: !189, inlinedAt: !190)
!218 = distinct !{!218, !219, !220}
!219 = !DILocation(line: 148, column: 2, scope: !189, inlinedAt: !190)
!220 = !DILocation(line: 158, column: 2, scope: !189, inlinedAt: !190)
!221 = !DILocation(line: 0, scope: !189, inlinedAt: !190)
!222 = !DILocation(line: 245, column: 10, scope: !181)
!223 = !DILocation(line: 245, column: 3, scope: !181)
!224 = !DILocation(line: 247, column: 8, scope: !181)
!225 = !DILocation(line: 248, column: 6, scope: !181)
!226 = !DILocation(line: 249, column: 22, scope: !181)
!227 = !DILocation(line: 62, column: 2, scope: !228, inlinedAt: !229)
!228 = distinct !DISubprogram(name: "reset_stat_session", scope: !1, file: !1, line: 60, type: !36, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!229 = distinct !DILocation(line: 249, column: 3, scope: !181)
!230 = !DILocation(line: 63, column: 2, scope: !228, inlinedAt: !229)
!231 = !DILocation(line: 64, column: 2, scope: !228, inlinedAt: !229)
!232 = !DILocation(line: 250, column: 3, scope: !181)
!233 = !DILocation(line: 253, column: 6, scope: !181)
!234 = !DILocation(line: 253, column: 12, scope: !181)
!235 = !DILocation(line: 254, column: 5, scope: !181)
!236 = !DILocation(line: 254, column: 13, scope: !181)
!237 = !DILocation(line: 255, column: 2, scope: !181)
!238 = !DILocation(line: 0, scope: !181)
!239 = !DILocation(line: 256, column: 1, scope: !181)
!240 = distinct !DISubprogram(name: "tracing_stat_release", scope: !1, file: !1, line: 261, type: !36, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!241 = !DILocation(line: 262, scope: !240)
!242 = !DILocation(line: 263, column: 36, scope: !240)
!243 = !DILocation(line: 62, column: 2, scope: !228, inlinedAt: !244)
!244 = distinct !DILocation(line: 265, column: 2, scope: !240)
!245 = !DILocation(line: 63, column: 2, scope: !228, inlinedAt: !244)
!246 = !DILocation(line: 64, column: 2, scope: !228, inlinedAt: !244)
!247 = !DILocation(line: 267, column: 9, scope: !240)
!248 = !DILocation(line: 267, column: 2, scope: !240)
!249 = distinct !DISubprogram(name: "__reset_stat_session", scope: !1, file: !1, line: 47, type: !36, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!250 = !DILocation(line: 48, scope: !249)
!251 = !DILocation(line: 51, column: 2, scope: !249)
!252 = !DILocation(line: 52, column: 7, scope: !249)
!253 = !DILocation(line: 52, column: 16, scope: !249)
!254 = !DILocation(line: 52, column: 20, scope: !249)
!255 = !DILocation(line: 53, column: 4, scope: !249)
!256 = !DILocation(line: 53, column: 13, scope: !249)
!257 = !DILocation(line: 53, column: 17, scope: !249)
!258 = !DILocation(line: 53, column: 37, scope: !249)
!259 = !DILocation(line: 54, column: 3, scope: !249)
!260 = distinct !{!260, !251, !261}
!261 = !DILocation(line: 55, column: 2, scope: !249)
!262 = !DILocation(line: 57, column: 23, scope: !249)
!263 = !DILocation(line: 58, column: 1, scope: !249)
!264 = distinct !DISubprogram(name: "dummy_cmp", scope: !1, file: !1, line: 113, type: !36, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!265 = !DILocation(line: 114, scope: !264)
!266 = !DILocation(line: 115, column: 2, scope: !264)
!267 = distinct !DISubprogram(name: "insert_stat", scope: !1, file: !1, line: 75, type: !36, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!268 = !DILocation(line: 76, scope: !267)
!269 = !DILocation(line: 376, column: 3, scope: !60, inlinedAt: !270)
!270 = distinct !DILocation(line: 576, column: 11, scope: !63, inlinedAt: !271)
!271 = distinct !DILocation(line: 714, column: 9, scope: !65, inlinedAt: !272)
!272 = distinct !DILocation(line: 80, column: 9, scope: !267)
!273 = !DILocation(line: 582, column: 33, scope: !63, inlinedAt: !271)
!274 = !DILocation(line: 339, column: 3, scope: !69, inlinedAt: !275)
!275 = distinct !DILocation(line: 582, column: 20, scope: !63, inlinedAt: !271)
!276 = !DILocation(line: 582, column: 5, scope: !63, inlinedAt: !271)
!277 = !DILocation(line: 581, column: 10, scope: !63, inlinedAt: !271)
!278 = !DILocation(line: 81, column: 7, scope: !267)
!279 = !DILocation(line: 81, column: 6, scope: !267)
!280 = !DILocation(line: 82, column: 3, scope: !267)
!281 = !DILocation(line: 83, column: 8, scope: !267)
!282 = !DILocation(line: 83, column: 13, scope: !267)
!283 = !DILocation(line: 89, column: 9, scope: !267)
!284 = !DILocation(line: 89, column: 2, scope: !267)
!285 = !DILocation(line: 94, column: 22, scope: !267)
!286 = !DILocation(line: 94, column: 34, scope: !267)
!287 = !DILocation(line: 94, column: 12, scope: !267)
!288 = !DILocation(line: 96, column: 12, scope: !267)
!289 = !DILocation(line: 97, column: 14, scope: !267)
!290 = !DILocation(line: 97, column: 7, scope: !267)
!291 = !DILocation(line: 98, column: 14, scope: !267)
!292 = !DILocation(line: 98, column: 13, scope: !267)
!293 = !DILocation(line: 98, column: 20, scope: !267)
!294 = !DILocation(line: 98, column: 4, scope: !267)
!295 = !DILocation(line: 100, column: 14, scope: !267)
!296 = !DILocation(line: 100, column: 13, scope: !267)
!297 = !DILocation(line: 100, column: 20, scope: !267)
!298 = !DILocation(line: 0, scope: !267)
!299 = distinct !{!299, !284, !300}
!300 = !DILocation(line: 101, column: 2, scope: !267)
!301 = !DILocation(line: 103, column: 16, scope: !267)
!302 = !DILocation(line: 62, column: 26, scope: !303, inlinedAt: !305)
!303 = distinct !DISubprogram(name: "rb_link_node", scope: !304, file: !304, line: 59, type: !36, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!304 = !DIFile(filename: "../include/linux/rbtree.h", directory: "/llk/linux-5.17/build_arm_allyes")
!305 = distinct !DILocation(line: 103, column: 2, scope: !267)
!306 = !DILocation(line: 63, column: 24, scope: !303, inlinedAt: !305)
!307 = !DILocation(line: 63, column: 33, scope: !303, inlinedAt: !305)
!308 = !DILocation(line: 63, column: 8, scope: !303, inlinedAt: !305)
!309 = !DILocation(line: 63, column: 16, scope: !303, inlinedAt: !305)
!310 = !DILocation(line: 65, column: 11, scope: !303, inlinedAt: !305)
!311 = !DILocation(line: 104, column: 2, scope: !267)
!312 = !DILocation(line: 105, column: 2, scope: !267)
!313 = !DILocation(line: 106, column: 1, scope: !267)
!314 = distinct !DISubprogram(name: "stat_seq_start", scope: !1, file: !1, line: 171, type: !36, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!315 = !DILocation(line: 172, scope: !314)
!316 = !DILocation(line: 173, column: 36, scope: !314)
!317 = !DILocation(line: 175, column: 10, scope: !314)
!318 = !DILocation(line: 179, column: 2, scope: !314)
!319 = !DILocation(line: 182, column: 15, scope: !314)
!320 = !DILocation(line: 182, column: 19, scope: !314)
!321 = !DILocation(line: 182, column: 6, scope: !314)
!322 = !DILocation(line: 183, column: 9, scope: !314)
!323 = !DILocation(line: 183, column: 7, scope: !314)
!324 = !DILocation(line: 185, column: 4, scope: !314)
!325 = !DILocation(line: 186, column: 2, scope: !314)
!326 = !DILocation(line: 0, scope: !314)
!327 = !DILocation(line: 188, column: 28, scope: !314)
!328 = !DILocation(line: 188, column: 9, scope: !314)
!329 = !DILocation(line: 189, column: 14, scope: !314)
!330 = !DILocation(line: 189, column: 19, scope: !314)
!331 = !DILocation(line: 189, column: 2, scope: !314)
!332 = !DILocation(line: 189, column: 22, scope: !314)
!333 = !DILocation(line: 189, column: 24, scope: !314)
!334 = !DILocation(line: 190, column: 18, scope: !314)
!335 = !DILocation(line: 190, column: 10, scope: !314)
!336 = !DILocation(line: 189, column: 30, scope: !314)
!337 = distinct !{!337, !331, !338}
!338 = !DILocation(line: 190, column: 22, scope: !314)
!339 = !DILocation(line: 193, column: 1, scope: !314)
!340 = distinct !DISubprogram(name: "stat_seq_stop", scope: !1, file: !1, line: 208, type: !36, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!341 = !DILocation(line: 209, scope: !340)
!342 = !DILocation(line: 210, column: 36, scope: !340)
!343 = !DILocation(line: 211, column: 25, scope: !340)
!344 = !DILocation(line: 211, column: 2, scope: !340)
!345 = !DILocation(line: 212, column: 1, scope: !340)
!346 = distinct !DISubprogram(name: "stat_seq_next", scope: !1, file: !1, line: 195, type: !36, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!347 = !DILocation(line: 196, scope: !346)
!348 = !DILocation(line: 197, column: 36, scope: !346)
!349 = !DILocation(line: 200, column: 8, scope: !346)
!350 = !DILocation(line: 202, column: 8, scope: !346)
!351 = !DILocation(line: 202, column: 6, scope: !346)
!352 = !DILocation(line: 203, column: 20, scope: !346)
!353 = !DILocation(line: 203, column: 29, scope: !346)
!354 = !DILocation(line: 203, column: 10, scope: !346)
!355 = !DILocation(line: 203, column: 3, scope: !346)
!356 = !DILocation(line: 205, column: 17, scope: !346)
!357 = !DILocation(line: 205, column: 9, scope: !346)
!358 = !DILocation(line: 205, column: 2, scope: !346)
!359 = !DILocation(line: 0, scope: !346)
!360 = !DILocation(line: 206, column: 1, scope: !346)
!361 = distinct !DISubprogram(name: "stat_seq_show", scope: !1, file: !1, line: 214, type: !36, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!362 = !DILocation(line: 215, scope: !361)
!363 = !DILocation(line: 216, column: 36, scope: !361)
!364 = !DILocation(line: 219, column: 8, scope: !361)
!365 = !DILocation(line: 219, column: 6, scope: !361)
!366 = !DILocation(line: 220, column: 10, scope: !361)
!367 = !DILocation(line: 220, column: 19, scope: !361)
!368 = !DILocation(line: 220, column: 23, scope: !361)
!369 = !DILocation(line: 220, column: 3, scope: !361)
!370 = !DILocation(line: 222, column: 9, scope: !361)
!371 = !DILocation(line: 222, column: 18, scope: !361)
!372 = !DILocation(line: 222, column: 22, scope: !361)
!373 = !DILocation(line: 222, column: 38, scope: !361)
!374 = !DILocation(line: 222, column: 2, scope: !361)
!375 = !DILocation(line: 0, scope: !361)
!376 = !DILocation(line: 223, column: 1, scope: !361)
