; ModuleID = '/llk/IR_all_yes/lib/test_rhashtable.c_pt.bc'
source_filename = "../lib/test_rhashtable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhltable = type { %struct.rhashtable }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_data = type { i32, i32, ptr, ptr }
%struct.test_obj = type { %struct.test_obj_val, %struct.rhash_head }
%struct.test_obj_val = type { i32, i32 }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.test_obj_rhl = type { %struct.test_obj_val, %struct.rhlist_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }

@__param_str_parm_entries = internal constant [29 x i8] c"test_rhashtable.parm_entries\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@parm_entries = internal global { i32, [28 x i8] } { i32 50000, [28 x i8] zeroinitializer }, align 32
@__param_parm_entries = internal constant %struct.kernel_param { ptr @__param_str_parm_entries, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @parm_entries } }, section "__param", align 4
@__UNIQUE_ID_parm_entriestype224 = internal constant [42 x i8] c"test_rhashtable.parmtype=parm_entries:int\00", section ".modinfo", align 1
@__UNIQUE_ID_parm_entries225 = internal constant [76 x i8] c"test_rhashtable.parm=parm_entries:Number of entries to add (default: 50000)\00", section ".modinfo", align 1
@__param_str_runs = internal constant [21 x i8] c"test_rhashtable.runs\00", align 1
@runs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_runs = internal constant %struct.kernel_param { ptr @__param_str_runs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @runs } }, section "__param", align 4
@__UNIQUE_ID_runstype226 = internal constant [34 x i8] c"test_rhashtable.parmtype=runs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_runs227 = internal constant [71 x i8] c"test_rhashtable.parm=runs:Number of test runs per variant (default: 4)\00", section ".modinfo", align 1
@__param_str_max_size = internal constant [25 x i8] c"test_rhashtable.max_size\00", align 1
@max_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_size = internal constant %struct.kernel_param { ptr @__param_str_max_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @max_size } }, section "__param", align 4
@__UNIQUE_ID_max_sizetype228 = internal constant [38 x i8] c"test_rhashtable.parmtype=max_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_size229 = internal constant [71 x i8] c"test_rhashtable.parm=max_size:Maximum table size (default: calculated)\00", section ".modinfo", align 1
@__param_str_shrinking = internal constant [26 x i8] c"test_rhashtable.shrinking\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@shrinking = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_shrinking = internal constant %struct.kernel_param { ptr @__param_str_shrinking, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @shrinking } }, section "__param", align 4
@__UNIQUE_ID_shrinkingtype230 = internal constant [40 x i8] c"test_rhashtable.parmtype=shrinking:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_shrinking231 = internal constant [73 x i8] c"test_rhashtable.parm=shrinking:Enable automatic shrinking (default: off)\00", section ".modinfo", align 1
@__param_str_size = internal constant [21 x i8] c"test_rhashtable.size\00", align 1
@size = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_size = internal constant %struct.kernel_param { ptr @__param_str_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @size } }, section "__param", align 4
@__UNIQUE_ID_sizetype232 = internal constant [34 x i8] c"test_rhashtable.parmtype=size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_size233 = internal constant [66 x i8] c"test_rhashtable.parm=size:Initial size hint of table (default: 8)\00", section ".modinfo", align 1
@__param_str_tcount = internal constant [23 x i8] c"test_rhashtable.tcount\00", align 1
@tcount = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_tcount = internal constant %struct.kernel_param { ptr @__param_str_tcount, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @tcount } }, section "__param", align 4
@__UNIQUE_ID_tcounttype234 = internal constant [36 x i8] c"test_rhashtable.parmtype=tcount:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tcount235 = internal constant [69 x i8] c"test_rhashtable.parm=tcount:Number of threads to spawn (default: 10)\00", section ".modinfo", align 1
@__param_str_enomem_retry = internal constant [29 x i8] c"test_rhashtable.enomem_retry\00", align 1
@enomem_retry = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enomem_retry = internal constant %struct.kernel_param { ptr @__param_str_enomem_retry, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @enomem_retry } }, section "__param", align 4
@__UNIQUE_ID_enomem_retrytype236 = internal constant [43 x i8] c"test_rhashtable.parmtype=enomem_retry:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enomem_retry237 = internal constant [91 x i8] c"test_rhashtable.parm=enomem_retry:Retry insert even if -ENOMEM was returned (default: off)\00", section ".modinfo", align 1
@__initcall__kmod_test_rhashtable__245_826_test_rht_init6 = internal global ptr @test_rht_init, section ".initcall6.init", align 4
@__exitcall_test_rht_exit = internal global ptr @test_rht_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file246 = internal constant [41 x i8] c"test_rhashtable.file=lib/test_rhashtable\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [31 x i8] c"test_rhashtable.license=GPL v2\00", section ".modinfo", align 1
@test_rht_params = internal global { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 0, i16 8, i32 0, i16 0, i8 0, ptr @jhash, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@test_rht_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016Running rhashtable test nelem=%d, max_size=%d, shrinking=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_rht_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib/test_rhashtable.c\00", [42 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr = internal global ptr @test_rht_init._entry, section ".printk_index", align 4
@test_rht_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016Test %02d:\0A\00", [18 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.5 = internal global ptr @test_rht_init._entry.3, section ".printk_index", align 4
@ht = internal global { %struct.rhashtable, [60 x i8] } zeroinitializer, align 32
@test_rht_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Test failed: Unable to initialize hashtable: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.8 = internal global ptr @test_rht_init._entry.6, section ".printk_index", align 4
@test_rht_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Test failed: return code %lld\0A\00", [63 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.11 = internal global ptr @test_rht_init._entry.9, section ".printk_index", align 4
@test_rht_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016test if its possible to exceed max_size %d: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.14 = internal global ptr @test_rht_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no, ok\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"YES, failed\00", [20 x i8] zeroinitializer }, align 32
@test_rht_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Average test time: %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.19 = internal global ptr @test_rht_init._entry.17, section ".printk_index", align 4
@test_rht_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016Testing concurrent rhashtable access from %d threads\0A\00", [40 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.22 = internal global ptr @test_rht_init._entry.20, section ".printk_index", align 4
@startup_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@test_rht_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.24 = internal global ptr @test_rht_init._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rhashtable_thrad[%d]\00", [43 x i8] zeroinitializer }, align 32
@test_rht_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013 kthread_run failed for thread %d\0A\00", [59 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.28 = internal global ptr @test_rht_init._entry.26, section ".printk_index", align 4
@startup_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.131, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @startup_wait, i64 44), ptr getelementptr (i8, ptr @startup_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@test_rht_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013  wait_event interruptible failed\0A\00", [59 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.31 = internal global ptr @test_rht_init._entry.29, section ".printk_index", align 4
@test_rht_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Test failed: thread %d returned: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.34 = internal global ptr @test_rht_init._entry.32, section ".printk_index", align 4
@test_rht_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016Started %d threads, %d failed, rhltable test returns %d\0A\00", [37 x i8] zeroinitializer }, align 32
@test_rht_init._entry_ptr.37 = internal global ptr @test_rht_init._entry.35, section ".printk_index", align 4
@test_rhashtable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016  Adding %d keys\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_rhashtable\00", [16 x i8] zeroinitializer }, align 32
@test_rhashtable._entry_ptr = internal global ptr @test_rhashtable._entry, section ".printk_index", align 4
@test_rhashtable._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016  %u insertions retried due to memory pressure\0A\00", [46 x i8] zeroinitializer }, align 32
@test_rhashtable._entry_ptr.42 = internal global ptr @test_rhashtable._entry.40, section ".printk_index", align 4
@test_rhashtable._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016  Deleting %d keys\0A\00", [42 x i8] zeroinitializer }, align 32
@test_rhashtable._entry_ptr.45 = internal global ptr @test_rhashtable._entry.43, section ".printk_index", align 4
@test_rhashtable._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016  Duration of test: %lld ns\0A\00", [33 x i8] zeroinitializer }, align 32
@test_rhashtable._entry_ptr.48 = internal global ptr @test_rhashtable._entry.46, section ".printk_index", align 4
@insert_retry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016 %u insertions retried after -ENOMEM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"insert_retry\00", [19 x i8] zeroinitializer }, align 32
@insert_retry._entry_ptr = internal global ptr @insert_retry._entry, section ".printk_index", align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.53 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.55 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@test_bucket_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016Info: encountered resize\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_bucket_stats\00", [46 x i8] zeroinitializer }, align 32
@test_bucket_stats._entry_ptr = internal global ptr @test_bucket_stats._entry, section ".printk_index", align 4
@test_bucket_stats._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Test failed: rhashtable_walk_next() error: %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@test_bucket_stats._entry_ptr.60 = internal global ptr @test_bucket_stats._entry.58, section ".printk_index", align 4
@test_bucket_stats._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016  Traversal complete: counted=%u, nelems=%u, entries=%d, table-jumps=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@test_bucket_stats._entry_ptr.63 = internal global ptr @test_bucket_stats._entry.61, section ".printk_index", align 4
@test_bucket_stats._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Test failed: Total count mismatch ^^^\00", [56 x i8] zeroinitializer }, align 32
@test_bucket_stats._entry_ptr.66 = internal global ptr @test_bucket_stats._entry.64, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@test_rht_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Test failed: Could not find key %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_rht_lookup\00", [16 x i8] zeroinitializer }, align 32
@test_rht_lookup._entry_ptr = internal global ptr @test_rht_lookup._entry, section ".printk_index", align 4
@test_rht_lookup._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Test failed: Unexpected entry found for key %u\0A\00", [46 x i8] zeroinitializer }, align 32
@test_rht_lookup._entry_ptr.73 = internal global ptr @test_rht_lookup._entry.71, section ".printk_index", align 4
@test_rht_lookup._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Test failed: Lookup value mismatch %u!=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@test_rht_lookup._entry_ptr.76 = internal global ptr @test_rht_lookup._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.79 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.80 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.81 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.82 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.83 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.84 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@test_rhashtable_max._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016insert element %u should have failed with %d, got %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_rhashtable_max\00", [44 x i8] zeroinitializer }, align 32
@test_rhashtable_max._entry_ptr = internal global ptr @test_rhashtable_max._entry, section ".printk_index", align 4
@test_insert_duplicates_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016test inserting duplicates\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"test_insert_duplicates_run\00", [37 x i8] zeroinitializer }, align 32
@test_insert_duplicates_run._entry_ptr = internal global ptr @test_insert_duplicates_run._entry, section ".printk_index", align 4
@test_rht_params_dup = internal global { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 128, i16 8, i16 0, i16 8, i32 0, i16 0, i8 0, ptr @jhash, ptr @my_hashfn, ptr @my_cmpfn }, [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d on element %d/%d (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"missing rhltable elements (%d != %d, %s)\0A\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@print_ht.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@print_ht.__warned.93 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0Abucket[%d] -> \00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"[[\00", [29 x i8] zeroinitializer }, align 32
@print_ht.__warned.96 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" val %d (tid=%d)%s\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@print_ht.__warned.100 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"]]%s\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" -> \00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@print_ht._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013\0A---- ht: ----%s\0A-------------\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"print_ht\00", [23 x i8] zeroinitializer }, align 32
@print_ht._entry_ptr = internal global ptr @print_ht._entry, section ".printk_index", align 4
@threadfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013  thread[%d]: interrupted\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"threadfunc\00", [21 x i8] zeroinitializer }, align 32
@threadfunc._entry_ptr = internal global ptr @threadfunc._entry, section ".printk_index", align 4
@threadfunc._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013  thread[%d]: rhashtable_insert_fast failed\0A\00", [49 x i8] zeroinitializer }, align 32
@threadfunc._entry_ptr.110 = internal global ptr @threadfunc._entry.108, section ".printk_index", align 4
@threadfunc._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016  thread[%d]: %u insertions retried due to memory pressure\0A\00", [34 x i8] zeroinitializer }, align 32
@threadfunc._entry_ptr.113 = internal global ptr @threadfunc._entry.111, section ".printk_index", align 4
@threadfunc._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013  thread[%d]: rhashtable_lookup_test failed\0A\00", [49 x i8] zeroinitializer }, align 32
@threadfunc._entry_ptr.116 = internal global ptr @threadfunc._entry.114, section ".printk_index", align 4
@threadfunc._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013  thread[%d]: rhashtable_remove_fast failed\0A\00", [49 x i8] zeroinitializer }, align 32
@threadfunc._entry_ptr.119 = internal global ptr @threadfunc._entry.117, section ".printk_index", align 4
@threadfunc._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.107, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013  thread[%d]: rhashtable_lookup_test (2) failed\0A\00", [45 x i8] zeroinitializer }, align 32
@threadfunc._entry_ptr.122 = internal global ptr @threadfunc._entry.120, section ".printk_index", align 4
@thread_lookup_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013  found unexpected object %d-%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"thread_lookup_test\00", [45 x i8] zeroinitializer }, align 32
@thread_lookup_test._entry_ptr = internal global ptr @thread_lookup_test._entry, section ".printk_index", align 4
@thread_lookup_test._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013  object %d-%d not found!\0A\00", [35 x i8] zeroinitializer }, align 32
@thread_lookup_test._entry_ptr.127 = internal global ptr @thread_lookup_test._entry.125, section ".printk_index", align 4
@thread_lookup_test._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013  wrong object returned (got %d-%d, expected %d-%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@thread_lookup_test._entry_ptr.130 = internal global ptr @thread_lookup_test._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"startup_wait.lock\00", [46 x i8] zeroinitializer }, align 32
@rhlt = internal global { %struct.rhltable, [60 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error %d on element %d\0A\00", [40 x i8] zeroinitializer }, align 32
@test_rhltable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016test %d add/delete pairs into rhlist\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_rhltable\00", [18 x i8] zeroinitializer }, align 32
@test_rhltable._entry_ptr = internal global ptr @test_rhltable._entry, section ".printk_index", align 4
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"key not found during iteration %d of %d\00", [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"old element found, should be gone\00", [62 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"element %d not found\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rhltable_remove: err %d for iteration %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"elem %d allegedly still present\00", [32 x i8] zeroinitializer }, align 32
@test_rhltable._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.134, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test %d random rhlist add/delete operations\0A\00", [49 x i8] zeroinitializer }, align 32
@test_rhltable._entry_ptr.142 = internal global ptr @test_rhltable._entry.140, section ".printk_index", align 4
@.str.143 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot remove element at slot %d\00", [63 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"removed non-existent element %d, error %d not %d\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"succeeded to insert same object %d\00", [61 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to insert object %d\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"removed non-existent element, error %d not %d\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"parm_entries\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 29, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [5 x i8] c"runs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 33, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"max_size\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 37, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"shrinking\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 41, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 45, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"tcount\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 49, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant [13 x i8] c"enomem_retry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 53, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"test_rht_params\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 94, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 719, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 725, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [3 x i8] c"ht\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 266, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 730, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 739, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 746, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 752, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 759, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [14 x i8] c"startup_count\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 112, i32 17 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 775, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 785, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 788, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"startup_wait\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 795, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 803, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 817, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 220, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 234, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 244, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 261, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 131, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 715, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 755, i32 10 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 186, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 190, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 201, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 205, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 695, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 155, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 158, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 163, i32 5 }
@___asan_gen_.365 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 2089, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 723, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 474, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 584, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c"test_rht_params_dup\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 101, i32 33 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 566, i32 7 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 571, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 505, i32 37 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 510, i32 37 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 516, i32 38 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 517, i32 12 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 517, i32 19 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 525, i32 37 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 525, i32 68 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 525, i32 77 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 528, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 640, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 651, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 657, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 662, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 674, i32 5 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 684, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 616, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 619, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 622, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 113, i32 8 }
@___asan_gen_.499 = private unnamed_addr constant [5 x i8] c"rhlt\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 267, i32 24 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 300, i32 7 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 309, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 320, i32 7 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 328, i32 9 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 346, i32 7 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 350, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 359, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 369, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 387, i32 8 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 390, i32 8 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 402, i32 8 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 405, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.548 = private constant [25 x i8] c"../lib/test_rhashtable.c\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 435, i32 8 }
@llvm.compiler.used = appending global [198 x ptr] [ptr @__UNIQUE_ID_enomem_retry237, ptr @__UNIQUE_ID_enomem_retrytype236, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__UNIQUE_ID_max_size229, ptr @__UNIQUE_ID_max_sizetype228, ptr @__UNIQUE_ID_parm_entries225, ptr @__UNIQUE_ID_parm_entriestype224, ptr @__UNIQUE_ID_runs227, ptr @__UNIQUE_ID_runstype226, ptr @__UNIQUE_ID_shrinking231, ptr @__UNIQUE_ID_shrinkingtype230, ptr @__UNIQUE_ID_size233, ptr @__UNIQUE_ID_sizetype232, ptr @__UNIQUE_ID_tcount235, ptr @__UNIQUE_ID_tcounttype234, ptr @__exitcall_test_rht_exit, ptr @__initcall__kmod_test_rhashtable__245_826_test_rht_init6, ptr @__param_enomem_retry, ptr @__param_max_size, ptr @__param_parm_entries, ptr @__param_runs, ptr @__param_shrinking, ptr @__param_size, ptr @__param_tcount, ptr @insert_retry._entry, ptr @insert_retry._entry_ptr, ptr @print_ht._entry, ptr @print_ht._entry_ptr, ptr @test_bucket_stats._entry, ptr @test_bucket_stats._entry.58, ptr @test_bucket_stats._entry.61, ptr @test_bucket_stats._entry.64, ptr @test_bucket_stats._entry_ptr, ptr @test_bucket_stats._entry_ptr.60, ptr @test_bucket_stats._entry_ptr.63, ptr @test_bucket_stats._entry_ptr.66, ptr @test_insert_duplicates_run._entry, ptr @test_insert_duplicates_run._entry_ptr, ptr @test_rhashtable._entry, ptr @test_rhashtable._entry.40, ptr @test_rhashtable._entry.43, ptr @test_rhashtable._entry.46, ptr @test_rhashtable._entry_ptr, ptr @test_rhashtable._entry_ptr.42, ptr @test_rhashtable._entry_ptr.45, ptr @test_rhashtable._entry_ptr.48, ptr @test_rhashtable_max._entry, ptr @test_rhashtable_max._entry_ptr, ptr @test_rhltable._entry, ptr @test_rhltable._entry.140, ptr @test_rhltable._entry_ptr, ptr @test_rhltable._entry_ptr.142, ptr @test_rht_exit, ptr @test_rht_init._entry, ptr @test_rht_init._entry.12, ptr @test_rht_init._entry.17, ptr @test_rht_init._entry.20, ptr @test_rht_init._entry.23, ptr @test_rht_init._entry.26, ptr @test_rht_init._entry.29, ptr @test_rht_init._entry.3, ptr @test_rht_init._entry.32, ptr @test_rht_init._entry.35, ptr @test_rht_init._entry.6, ptr @test_rht_init._entry.9, ptr @test_rht_init._entry_ptr, ptr @test_rht_init._entry_ptr.11, ptr @test_rht_init._entry_ptr.14, ptr @test_rht_init._entry_ptr.19, ptr @test_rht_init._entry_ptr.22, ptr @test_rht_init._entry_ptr.24, ptr @test_rht_init._entry_ptr.28, ptr @test_rht_init._entry_ptr.31, ptr @test_rht_init._entry_ptr.34, ptr @test_rht_init._entry_ptr.37, ptr @test_rht_init._entry_ptr.5, ptr @test_rht_init._entry_ptr.8, ptr @test_rht_lookup._entry, ptr @test_rht_lookup._entry.71, ptr @test_rht_lookup._entry.74, ptr @test_rht_lookup._entry_ptr, ptr @test_rht_lookup._entry_ptr.73, ptr @test_rht_lookup._entry_ptr.76, ptr @thread_lookup_test._entry, ptr @thread_lookup_test._entry.125, ptr @thread_lookup_test._entry.128, ptr @thread_lookup_test._entry_ptr, ptr @thread_lookup_test._entry_ptr.127, ptr @thread_lookup_test._entry_ptr.130, ptr @threadfunc._entry, ptr @threadfunc._entry.108, ptr @threadfunc._entry.111, ptr @threadfunc._entry.114, ptr @threadfunc._entry.117, ptr @threadfunc._entry.120, ptr @threadfunc._entry_ptr, ptr @threadfunc._entry_ptr.110, ptr @threadfunc._entry_ptr.113, ptr @threadfunc._entry_ptr.116, ptr @threadfunc._entry_ptr.119, ptr @threadfunc._entry_ptr.122, ptr @parm_entries, ptr @runs, ptr @max_size, ptr @shrinking, ptr @size, ptr @tcount, ptr @enomem_retry, ptr @test_rht_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ht, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @startup_count, ptr @.str.25, ptr @.str.27, ptr @startup_wait, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @test_rht_params_dup, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @rhlt, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parm_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @runs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shrinking to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enomem_retry to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rhashtable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rhashtable._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rhashtable._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rhashtable._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_retry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bucket_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bucket_stats._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bucket_stats._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bucket_stats._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_lookup._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_lookup._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rhashtable_max._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_insert_duplicates_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rht_params_dup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_ht._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threadfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threadfunc._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threadfunc._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threadfunc._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threadfunc._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threadfunc._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_lookup_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_lookup_test._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread_lookup_test._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhlt to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rhltable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rhltable._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_rht_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_rht_init() #1 section ".init.text" align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load i32, ptr @parm_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  store i32 1, ptr @parm_entries, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @parm_entries, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 1000000)
  %3 = load i8, ptr @shrinking, align 1, !range !348
  store i8 %3, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 6), align 2
  %4 = load i32, ptr @max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %cond.false24, label %if.end.cond.end28_crit_edge

if.end.cond.end28_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end28

cond.false24:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i620 = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i620)
  %tobool.not.i.i.i = icmp eq i32 %sub.i620, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub.i620, i1 true) #19, !range !349
  %sub.i.i.i = sub nuw nsw i32 32, %5
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false24, %if.end.cond.end28_crit_edge
  %cond29 = phi i32 [ %4, %if.end.cond.end28_crit_edge ], [ %shl.i, %cond.false24 ]
  store i32 %cond29, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %6 = load i32, ptr @size, align 4
  %conv30 = trunc i32 %6 to i16
  store i16 %conv30, ptr @test_rht_params, align 4
  %add31 = add i32 %cond29, 1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add31, i32 12) #19
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i = select i1 %8, i32 -1, i32 %9
  %call33 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #20
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %cond.end28.cleanup450_crit_edge, label %do.end

cond.end28.cleanup450_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup450

do.end:                                           ; preds = %cond.end28
  %10 = load i32, ptr @size, align 4
  %11 = load i32, ptr @max_size, align 4
  %12 = load i8, ptr @shrinking, align 1, !range !348
  %13 = zext i8 %12 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %10, i32 noundef %11, i32 noundef %13) #21
  %14 = load i32, ptr @runs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp41665 = icmp sgt i32 %14, 0
  br i1 %cmp41665, label %do.end.for.body_crit_edge, label %do.end.do.end71_crit_edge

do.end.do.end71_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end71

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0667 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %total_time.0666 = phi i64 [ %total_time.1.ph, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.0667) #21
  %15 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %mul = mul i32 %15, 12
  %16 = call ptr @memset(ptr %call33, i32 0, i32 %mul)
  %call48 = tail call i32 @rhashtable_init(ptr noundef nonnull @ht, ptr noundef nonnull @test_rht_params) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end54, label %if.end57

do.end54:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call48) #21
  br label %for.inc

if.end57:                                         ; preds = %for.body
  %call58 = tail call fastcc i64 @test_rhashtable(ptr noundef nonnull %call33, i32 noundef %2) #22
  tail call void @rhashtable_destroy(ptr noundef nonnull @ht) #19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call58)
  %cmp59 = icmp slt i64 %call58, 0
  br i1 %cmp59, label %cleanup, label %if.end67

if.end67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %add68 = add i64 %call58, %total_time.0666
  br label %for.inc

cleanup:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @vfree(ptr noundef nonnull %call33) #19
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %call58) #21
  br label %cleanup450

for.inc:                                          ; preds = %if.end67, %do.end54
  %total_time.1.ph = phi i64 [ %add68, %if.end67 ], [ %total_time.0666, %do.end54 ]
  %inc = add nuw nsw i32 %i.0667, 1
  %17 = load i32, ptr @runs, align 4
  %cmp41 = icmp slt i32 %inc, %17
  br i1 %cmp41, label %for.inc.for.body_crit_edge, label %for.inc.do.end71_crit_edge

for.inc.do.end71_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end71

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end71:                                         ; preds = %for.inc.do.end71_crit_edge, %do.end.do.end71_crit_edge
  %total_time.0.lcssa = phi i64 [ 0, %do.end.do.end71_crit_edge ], [ %total_time.1.ph, %for.inc.do.end71_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %call73 = tail call fastcc i32 @test_rhashtable_max(ptr noundef nonnull %call33, i32 noundef %2) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp eq i32 %call73, 0
  %cond76 = select i1 %cmp74, ptr @.str.15, ptr @.str.16
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %18, ptr noundef nonnull %cond76) #21
  tail call void @vfree(ptr noundef nonnull %call33) #19
  %19 = load i32, ptr @runs, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %total_time.0.lcssa)
  %cmp258 = icmp ult i64 %total_time.0.lcssa, 4294967296
  br i1 %cmp258, label %if.then262, label %if.else268, !prof !350

if.then262:                                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #18
  %conv263 = trunc i64 %total_time.0.lcssa to i32
  %div266 = udiv i32 %conv263, %19
  %conv267 = zext i32 %div266 to i64
  br label %if.end272

if.else268:                                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #18
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %total_time.0.lcssa) #23, !srcloc !351
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  br label %if.end272

if.end272:                                        ; preds = %if.else268, %if.then262
  %total_time.2 = phi i64 [ %conv267, %if.then262 ], [ %asmresult1.i, %if.else268 ]
  %call278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %total_time.2) #21
  tail call fastcc void @test_insert_duplicates_run() #22
  %21 = load i32, ptr @tcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool280.not = icmp eq i32 %21, 0
  br i1 %tobool280.not, label %if.end272.cleanup450_crit_edge, label %do.end285

if.end272.cleanup450_crit_edge:                   ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup450

do.end285:                                        ; preds = %if.end272
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %21) #21
  %22 = load i32, ptr @tcount, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  store volatile i32 %22, ptr @startup_count, align 4
  %23 = load i32, ptr @tcount, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 16) #19
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  %retval.0.i627 = select i1 %25, i32 -1, i32 %26
  %call289 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i627) #20
  %tobool290.not = icmp eq ptr %call289, null
  br i1 %tobool290.not, label %do.end285.cleanup450_crit_edge, label %if.end292

do.end285.cleanup450_crit_edge:                   ; preds = %do.end285
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup450

if.end292:                                        ; preds = %do.end285
  %27 = load i32, ptr @tcount, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 12) #19
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %if.end292.array3_size.exit_crit_edge, label %if.end.i

if.end292.array3_size.exit_crit_edge:             ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #18
  br label %array3_size.exit

if.end.i:                                         ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #18
  %30 = extractvalue { i32, i1 } %28, 0
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 %2) #19
  %32 = extractvalue { i32, i1 } %31, 1
  %33 = extractvalue { i32, i1 } %31, 0
  %spec.select.i = select i1 %32, i32 -1, i32 %33
  br label %array3_size.exit

array3_size.exit:                                 ; preds = %if.end.i, %if.end292.array3_size.exit_crit_edge
  %retval.0.i628 = phi i32 [ -1, %if.end292.array3_size.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %call294 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i628) #20
  %tobool295.not = icmp eq ptr %call294, null
  br i1 %tobool295.not, label %if.then296, label %if.end297

if.then296:                                       ; preds = %array3_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @vfree(ptr noundef nonnull %call289) #19
  br label %cleanup450

if.end297:                                        ; preds = %array3_size.exit
  %34 = load i32, ptr @max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool298.not = icmp eq i32 %34, 0
  br i1 %tobool298.not, label %cond.false334, label %if.end297.cond.end339_crit_edge

if.end297.cond.end339_crit_edge:                  ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end339

cond.false334:                                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #18
  %35 = load i32, ptr @tcount, align 4
  %mul301 = mul i32 %35, %2
  %sub.i632 = add i32 %mul301, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i632)
  %tobool.not.i.i.i633 = icmp eq i32 %sub.i632, 0
  %36 = tail call i32 @llvm.ctlz.i32(i32 %sub.i632, i1 true) #19, !range !349
  %sub.i.i.i634 = sub nuw nsw i32 32, %36
  %sub.i.i.op.i635 = shl nuw i32 1, %sub.i.i.i634
  %shl.i636 = select i1 %tobool.not.i.i.i633, i32 1, i32 %sub.i.i.op.i635
  br label %cond.end339

cond.end339:                                      ; preds = %cond.false334, %if.end297.cond.end339_crit_edge
  %cond340 = phi i32 [ %34, %if.end297.cond.end339_crit_edge ], [ %shl.i636, %cond.false334 ]
  store i32 %cond340, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %call341 = tail call i32 @rhashtable_init(ptr noundef nonnull @ht, ptr noundef nonnull @test_rht_params) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %cmp342 = icmp slt i32 %call341, 0
  br i1 %cmp342, label %do.end347, label %for.cond351.preheader

for.cond351.preheader:                            ; preds = %cond.end339
  %37 = load i32, ptr @tcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp352668 = icmp sgt i32 %37, 0
  br i1 %cmp352668, label %for.cond351.preheader.for.body354_crit_edge, label %for.cond351.preheader.for.end382_crit_edge

for.cond351.preheader.for.end382_crit_edge:       ; preds = %for.cond351.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end382

for.cond351.preheader.for.body354_crit_edge:      ; preds = %for.cond351.preheader
  br label %for.body354

do.end347:                                        ; preds = %cond.end339
  call void @__sanitizer_cov_trace_pc() #18
  %call349 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call341) #21
  tail call void @vfree(ptr noundef nonnull %call289) #19
  tail call void @vfree(ptr noundef nonnull %call294) #19
  br label %cleanup450

for.body354:                                      ; preds = %for.inc380.for.body354_crit_edge, %for.cond351.preheader.for.body354_crit_edge
  %i.1670 = phi i32 [ %inc381, %for.inc380.for.body354_crit_edge ], [ 0, %for.cond351.preheader.for.body354_crit_edge ]
  %started_threads.0669 = phi i32 [ %started_threads.1, %for.inc380.for.body354_crit_edge ], [ 0, %for.cond351.preheader.for.body354_crit_edge ]
  %arrayidx = getelementptr %struct.thread_data, ptr %call289, i32 %i.1670
  %id = getelementptr %struct.thread_data, ptr %call289, i32 %i.1670, i32 1
  %38 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.1670, ptr %id, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %2, ptr %arrayidx, align 4
  %mul357 = mul i32 %i.1670, %2
  %add.ptr = getelementptr %struct.test_obj, ptr %call294, i32 %mul357
  %objs359 = getelementptr %struct.thread_data, ptr %call289, i32 %i.1670, i32 3
  %40 = ptrtoint ptr %objs359 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %objs359, align 4
  %call361 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @threadfunc, ptr noundef %arrayidx, i32 noundef -1, ptr noundef nonnull @.str.25, i32 noundef %i.1670) #19
  %cmp.i = icmp ugt ptr %call361, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end374, label %if.else377

do.end374:                                        ; preds = %for.body354
  call void @__sanitizer_cov_trace_pc() #18
  %task651 = getelementptr %struct.thread_data, ptr %call289, i32 %i.1670, i32 2
  %41 = ptrtoint ptr %task651 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call361, ptr %task651, align 4
  %call376 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.1670) #21
  %call.i.i616 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr nonnull @startup_count, i32 1, i32 3, i32 1) #19
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @startup_count, ptr nonnull @startup_count, i32 1, ptr nonnull elementtype(i32) @startup_count) #19, !srcloc !352
  br label %for.inc380

if.else377:                                       ; preds = %for.body354
  call void @__sanitizer_cov_trace_pc() #18
  %call364 = tail call i32 @wake_up_process(ptr noundef %call361) #19
  %task = getelementptr %struct.thread_data, ptr %call289, i32 %i.1670, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call361, ptr %task, align 4
  %inc378 = add i32 %started_threads.0669, 1
  br label %for.inc380

for.inc380:                                       ; preds = %if.else377, %do.end374
  %started_threads.1 = phi i32 [ %started_threads.0669, %do.end374 ], [ %inc378, %if.else377 ]
  %inc381 = add nuw nsw i32 %i.1670, 1
  %44 = load i32, ptr @tcount, align 4
  %cmp352 = icmp slt i32 %inc381, %44
  br i1 %cmp352, label %for.inc380.for.body354_crit_edge, label %for.inc380.for.end382_crit_edge

for.inc380.for.end382_crit_edge:                  ; preds = %for.inc380
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end382

for.inc380.for.body354_crit_edge:                 ; preds = %for.inc380
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body354

for.end382:                                       ; preds = %for.inc380.for.end382_crit_edge, %for.cond351.preheader.for.end382_crit_edge
  %started_threads.0.lcssa = phi i32 [ 0, %for.cond351.preheader.for.end382_crit_edge ], [ %started_threads.1, %for.inc380.for.end382_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 794) #19
  %call.i.i617 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  %45 = load volatile i32, ptr @startup_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp390 = icmp eq i32 %45, 0
  br i1 %cmp390, label %for.end382.if.end418_crit_edge, label %if.then392

for.end382.if.end418_crit_edge:                   ; preds = %for.end382
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end418

if.then392:                                       ; preds = %for.end382
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #19
  %46 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #19
  %call395673 = call i32 @prepare_to_wait_event(ptr noundef nonnull @startup_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #19
  %call.i.i618674 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  %47 = load volatile i32, ptr @startup_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp397675 = icmp eq i32 %47, 0
  br i1 %cmp397675, label %if.then392.if.end409.thread661_crit_edge, label %if.then392.if.end400_crit_edge

if.then392.if.end400_crit_edge:                   ; preds = %if.then392
  br label %if.end400

if.then392.if.end409.thread661_crit_edge:         ; preds = %if.then392
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end409.thread661

if.end400:                                        ; preds = %cleanup404.if.end400_crit_edge, %if.then392.if.end400_crit_edge
  %call395676 = phi i32 [ %call395, %cleanup404.if.end400_crit_edge ], [ %call395673, %if.then392.if.end400_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395676)
  %tobool401.not = icmp eq i32 %call395676, 0
  br i1 %tobool401.not, label %cleanup404, label %do.end415

cleanup404:                                       ; preds = %if.end400
  call void @schedule() #19
  %call395 = call i32 @prepare_to_wait_event(ptr noundef nonnull @startup_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #19
  %call.i.i618 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  %48 = load volatile i32, ptr @startup_count, align 4
  %cmp397 = icmp eq i32 %48, 0
  br i1 %cmp397, label %cleanup404.if.end409.thread661_crit_edge, label %cleanup404.if.end400_crit_edge

cleanup404.if.end400_crit_edge:                   ; preds = %cleanup404
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end400

cleanup404.if.end409.thread661_crit_edge:         ; preds = %cleanup404
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end409.thread661

if.end409.thread661:                              ; preds = %cleanup404.if.end409.thread661_crit_edge, %if.then392.if.end409.thread661_crit_edge
  call void @finish_wait(ptr noundef nonnull @startup_wait, ptr noundef nonnull %__wq_entry) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #19
  br label %if.end418

do.end415:                                        ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #19
  %call417 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #21
  br label %if.end418

if.end418:                                        ; preds = %do.end415, %if.end409.thread661, %for.end382.if.end418_crit_edge
  %call.i.i619 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr nonnull @startup_count, i32 1, i32 3, i32 1) #19
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @startup_count, ptr nonnull @startup_count, i32 1, ptr nonnull elementtype(i32) @startup_count) #19, !srcloc !352
  call void @__wake_up(ptr noundef nonnull @startup_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #19
  %50 = load i32, ptr @tcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp420677 = icmp sgt i32 %50, 0
  br i1 %cmp420677, label %if.end418.for.body422_crit_edge, label %if.end418.for.end442_crit_edge

if.end418.for.end442_crit_edge:                   ; preds = %if.end418
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end442

if.end418.for.body422_crit_edge:                  ; preds = %if.end418
  br label %for.body422

for.body422:                                      ; preds = %for.inc440.for.body422_crit_edge, %if.end418.for.body422_crit_edge
  %i.2679 = phi i32 [ %inc441, %for.inc440.for.body422_crit_edge ], [ 0, %if.end418.for.body422_crit_edge ]
  %failed_threads.0678 = phi i32 [ %failed_threads.1, %for.inc440.for.body422_crit_edge ], [ 0, %if.end418.for.body422_crit_edge ]
  %task424 = getelementptr %struct.thread_data, ptr %call289, i32 %i.2679, i32 2
  %51 = ptrtoint ptr %task424 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task424, align 4
  %cmp.i638 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i638, label %for.body422.for.inc440_crit_edge, label %if.end427

for.body422.for.inc440_crit_edge:                 ; preds = %for.body422
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc440

if.end427:                                        ; preds = %for.body422
  %call430 = call i32 @kthread_stop(ptr noundef %52) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call430)
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %if.end427.for.inc440_crit_edge, label %do.end435

if.end427.for.inc440_crit_edge:                   ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc440

do.end435:                                        ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #18
  %call437 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %i.2679, i32 noundef %call430) #21
  %inc438 = add i32 %failed_threads.0678, 1
  br label %for.inc440

for.inc440:                                       ; preds = %do.end435, %if.end427.for.inc440_crit_edge, %for.body422.for.inc440_crit_edge
  %failed_threads.1 = phi i32 [ %failed_threads.0678, %for.body422.for.inc440_crit_edge ], [ %inc438, %do.end435 ], [ %failed_threads.0678, %if.end427.for.inc440_crit_edge ]
  %inc441 = add nuw nsw i32 %i.2679, 1
  %53 = load i32, ptr @tcount, align 4
  %cmp420 = icmp slt i32 %inc441, %53
  br i1 %cmp420, label %for.inc440.for.body422_crit_edge, label %for.inc440.for.end442_crit_edge

for.inc440.for.end442_crit_edge:                  ; preds = %for.inc440
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end442

for.inc440.for.body422_crit_edge:                 ; preds = %for.inc440
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body422

for.end442:                                       ; preds = %for.inc440.for.end442_crit_edge, %if.end418.for.end442_crit_edge
  %failed_threads.0.lcssa = phi i32 [ 0, %if.end418.for.end442_crit_edge ], [ %failed_threads.1, %for.inc440.for.end442_crit_edge ]
  call void @rhashtable_destroy(ptr noundef nonnull @ht) #19
  call void @vfree(ptr noundef nonnull %call289) #19
  call void @vfree(ptr noundef nonnull %call294) #19
  %div443614 = lshr i32 %2, 4
  %call444 = call fastcc i32 @test_rhltable(i32 noundef %div443614) #22
  %call449 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %started_threads.0.lcssa, i32 noundef %failed_threads.0.lcssa, i32 noundef %call444) #21
  br label %cleanup450

cleanup450:                                       ; preds = %for.end442, %do.end347, %if.then296, %do.end285.cleanup450_crit_edge, %if.end272.cleanup450_crit_edge, %cleanup, %cond.end28.cleanup450_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup ], [ -22, %do.end347 ], [ 0, %for.end442 ], [ -12, %if.then296 ], [ -12, %cond.end28.cleanup450_crit_edge ], [ 0, %if.end272.cleanup450_crit_edge ], [ -12, %do.end285.cleanup450_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @test_rhashtable(ptr noundef %array, i32 noundef %entries) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %key = alloca %struct.test_obj_val, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %entries) #21
  %call.i22 = tail call i64 @ktime_get() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp41.not = icmp eq i32 %entries, 0
  br i1 %cmp41.not, label %entry.if.end14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %insert_retries.042 = phi i32 [ %insert_retries.238, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.test_obj, ptr %array, i32 %i.043
  %mul = shl i32 %i.043, 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mul, ptr %arrayidx, align 4
  %.unpack14 = load i32, ptr @test_rht_params, align 4
  %1 = insertvalue [7 x i32] undef, i32 %.unpack14, 0
  %.unpack15 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %2 = insertvalue [7 x i32] %1, i32 %.unpack15, 1
  %.unpack16 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %3 = insertvalue [7 x i32] %2, i32 %.unpack16, 2
  %.unpack17 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %4 = insertvalue [7 x i32] %3, i32 %.unpack17, 3
  %.unpack18 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %5 = insertvalue [7 x i32] %4, i32 %.unpack18, 4
  %.unpack19 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %6 = insertvalue [7 x i32] %5, i32 %.unpack19, 5
  %.unpack20 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %7 = insertvalue [7 x i32] %6, i32 %.unpack20, 6
  %call3 = tail call fastcc i32 @insert_retry(ptr noundef %arrayidx, [7 x i32] %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %add = add i32 %call3, %insert_retries.042
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.for.inc_crit_edge, label %cleanup63.loopexit

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %cleanup.thread
  %insert_retries.238 = phi i32 [ %add, %cleanup.thread ], [ %insert_retries.042, %cleanup.for.inc_crit_edge ]
  %inc = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %entries
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %insert_retries.238)
  %tobool7.not = icmp eq i32 %insert_retries.238, 0
  br i1 %tobool7.not, label %for.end.if.end14_crit_edge, label %do.end11

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

do.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %insert_retries.238) #21
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %for.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call fastcc void @test_bucket_stats(i32 noundef %entries)
  %8 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !353
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %if.end14.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end14.rcu_read_lock.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 696, ptr noundef nonnull @.str.68) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end14.rcu_read_lock.exit_crit_edge
  tail call fastcc void @test_rht_lookup(ptr noundef %array, i32 noundef %entries) #22
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i23, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %rcu_read_lock.exit
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %12 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i30 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  tail call fastcc void @test_bucket_stats(i32 noundef %entries)
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %entries) #21
  br i1 %cmp41.not, label %rcu_read_unlock.exit.for.end55_crit_edge, label %for.body24.lr.ph

rcu_read_unlock.exit.for.end55_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end55

for.body24.lr.ph:                                 ; preds = %rcu_read_unlock.exit
  %16 = getelementptr inbounds %struct.test_obj_val, ptr %key, i32 0, i32 1
  br label %for.body24

for.body24:                                       ; preds = %if.end50.for.body24_crit_edge, %for.body24.lr.ph
  %i.145 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc54, %if.end50.for.body24_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #19
  %mul26 = shl i32 %i.145, 1
  %17 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul26, ptr %key, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %16, align 4
  %arrayidx27 = getelementptr %struct.test_obj, ptr %array, i32 %i.145
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %20)
  %cmp30.not = icmp eq i32 %20, 2147483647
  br i1 %cmp30.not, label %for.body24.if.end50_crit_edge, label %if.then32

for.body24.if.end50_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then32:                                        ; preds = %for.body24
  %.unpack = load i32, ptr @test_rht_params, align 4
  %21 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.unpack1 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %22 = insertvalue [7 x i32] %21, i32 %.unpack1, 1
  %.unpack2 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %23 = insertvalue [7 x i32] %22, i32 %.unpack2, 2
  %.unpack3 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %24 = insertvalue [7 x i32] %23, i32 %.unpack3, 3
  %.unpack4 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %25 = insertvalue [7 x i32] %24, i32 %.unpack4, 4
  %.unpack5 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %26 = insertvalue [7 x i32] %25, i32 %.unpack5, 5
  %.unpack6 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %27 = insertvalue [7 x i32] %26, i32 %.unpack6, 6
  %call33 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %key, [7 x i32] %27)
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %do.body40, label %do.end48, !prof !355

do.body40:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/test_rhashtable.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 252, 0\0A.popsection", ""() #19, !srcloc !356
  unreachable

do.end48:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  %node = getelementptr inbounds %struct.test_obj, ptr %call33, i32 0, i32 1
  %.unpack7 = load i32, ptr @test_rht_params, align 4
  %28 = insertvalue [7 x i32] undef, i32 %.unpack7, 0
  %.unpack8 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %29 = insertvalue [7 x i32] %28, i32 %.unpack8, 1
  %.unpack9 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %30 = insertvalue [7 x i32] %29, i32 %.unpack9, 2
  %.unpack10 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %31 = insertvalue [7 x i32] %30, i32 %.unpack10, 3
  %.unpack11 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %32 = insertvalue [7 x i32] %31, i32 %.unpack11, 4
  %.unpack12 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %33 = insertvalue [7 x i32] %32, i32 %.unpack12, 5
  %.unpack13 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %34 = insertvalue [7 x i32] %33, i32 %.unpack13, 6
  %call.i32 = call fastcc i32 @__rhashtable_remove_fast(ptr noundef nonnull @ht, ptr noundef %node, [7 x i32] %34, i1 noundef zeroext false) #19
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %for.body24.if.end50_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 257, i32 noundef 0) #19
  %call.i33 = call i32 @__cond_resched() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #19
  %inc54 = add nuw i32 %i.145, 1
  %exitcond47.not = icmp eq i32 %inc54, %entries
  br i1 %exitcond47.not, label %if.end50.for.end55_crit_edge, label %if.end50.for.body24_crit_edge

if.end50.for.body24_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body24

if.end50.for.end55_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end55

for.end55:                                        ; preds = %if.end50.for.end55_crit_edge, %rcu_read_unlock.exit.for.end55_crit_edge
  %call.i34 = call i64 @ktime_get() #19
  %sub = sub i64 %call.i34, %call.i22
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i64 noundef %sub) #21
  br label %cleanup63

cleanup63.loopexit:                               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  %conv.le = sext i32 %call3 to i64
  br label %cleanup63

cleanup63:                                        ; preds = %cleanup63.loopexit, %for.end55
  %retval.2 = phi i64 [ %sub, %for.end55 ], [ %conv.le, %cleanup63.loopexit ]
  ret i64 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_rhashtable_max(ptr noundef %array, i32 noundef %entries) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %div73 = lshr i32 %entries, 3
  %sub.i87 = add nsw i32 %div73, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i87)
  %tobool.not.i.i.i = icmp eq i32 %sub.i87, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i87, i1 true) #19, !range !349
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  store i32 %shl.i, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %call25 = tail call i32 @rhashtable_init(ptr noundef nonnull @ht, ptr noundef nonnull @test_rht_params) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup49_crit_edge

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2694.not = icmp eq i32 %1, 0
  br i1 %cmp2694.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.test_obj, ptr %array, i32 %i.096
  %mul = shl i32 %i.096, 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %arrayidx, align 4
  %.unpack80 = load i32, ptr @test_rht_params, align 4
  %3 = insertvalue [7 x i32] undef, i32 %.unpack80, 0
  %.unpack81 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %4 = insertvalue [7 x i32] %3, i32 %.unpack81, 1
  %.unpack82 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %5 = insertvalue [7 x i32] %4, i32 %.unpack82, 2
  %.unpack83 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %6 = insertvalue [7 x i32] %5, i32 %.unpack83, 3
  %.unpack84 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %7 = insertvalue [7 x i32] %6, i32 %.unpack84, 4
  %.unpack85 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %8 = insertvalue [7 x i32] %7, i32 %.unpack85, 5
  %.unpack86 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %9 = insertvalue [7 x i32] %8, i32 %.unpack86, 6
  %call28 = tail call fastcc i32 @insert_retry(ptr noundef %arrayidx, [7 x i32] %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %10 = icmp sgt i32 %call28, -1
  br i1 %10, label %for.inc, label %for.body.cleanup49_crit_edge

for.body.cleanup49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.096, 1
  %11 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 2), align 4
  %cmp26 = icmp ult i32 %inc, %11
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %11, %for.inc.for.end_crit_edge ]
  %arrayidx37 = getelementptr %struct.test_obj, ptr %array, i32 %.lcssa
  %.unpack = load i32, ptr @test_rht_params, align 4
  %12 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.unpack74 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %13 = insertvalue [7 x i32] %12, i32 %.unpack74, 1
  %.unpack75 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %14 = insertvalue [7 x i32] %13, i32 %.unpack75, 2
  %.unpack76 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %15 = insertvalue [7 x i32] %14, i32 %.unpack76, 3
  %.unpack77 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %16 = insertvalue [7 x i32] %15, i32 %.unpack77, 4
  %.unpack78 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %17 = insertvalue [7 x i32] %16, i32 %.unpack78, 5
  %.unpack79 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %18 = insertvalue [7 x i32] %17, i32 %.unpack79, 6
  %call38 = tail call fastcc i32 @insert_retry(ptr noundef %arrayidx37, [7 x i32] %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %call38)
  %cmp39 = icmp eq i32 %call38, -7
  br i1 %cmp39, label %for.end.if.end48_crit_edge, label %do.end

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %19 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 2), align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %19, i32 noundef -7, i32 noundef %call38) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp44 = icmp eq i32 %call38, 0
  %spec.store.select = select i1 %cmp44, i32 -1, i32 %call38
  br label %if.end48

if.end48:                                         ; preds = %do.end, %for.end.if.end48_crit_edge
  %err.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %for.end.if.end48_crit_edge ]
  tail call void @rhashtable_destroy(ptr noundef nonnull @ht) #19
  br label %cleanup49

cleanup49:                                        ; preds = %if.end48, %for.body.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.2 = phi i32 [ %err.0, %if.end48 ], [ %call25, %entry.cleanup49_crit_edge ], [ %call28, %for.body.cleanup49_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_insert_duplicates_run() unnamed_addr #1 section ".init.text" align 64 {
entry:
  %rhl_test_objects = alloca [3 x %struct.test_obj_rhl], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rhl_test_objects) #19
  %0 = getelementptr inbounds i8, ptr %rhl_test_objects, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #21
  %2 = ptrtoint ptr %rhl_test_objects to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %rhl_test_objects, align 4
  %arrayidx1 = getelementptr inbounds [3 x %struct.test_obj_rhl], ptr %rhl_test_objects, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 21, ptr %arrayidx1, align 4
  %arrayidx7 = getelementptr inbounds [3 x %struct.test_obj_rhl], ptr %rhl_test_objects, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx7, align 4
  call fastcc void @test_insert_dup(ptr noundef nonnull %rhl_test_objects, i32 noundef 2, i1 noundef zeroext false) #22
  call fastcc void @test_insert_dup(ptr noundef nonnull %rhl_test_objects, i32 noundef 3, i1 noundef zeroext false) #22
  call fastcc void @test_insert_dup(ptr noundef nonnull %rhl_test_objects, i32 noundef 2, i1 noundef zeroext true) #22
  call fastcc void @test_insert_dup(ptr noundef nonnull %rhl_test_objects, i32 noundef 3, i1 noundef zeroext true) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rhl_test_objects) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @threadfunc(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !357
  tail call void @llvm.prefetch.p0(ptr nonnull @startup_count, i32 1, i32 3, i32 1) #19
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @startup_count, ptr nonnull @startup_count, i32 1, ptr nonnull elementtype(i32) @startup_count) #19, !srcloc !358
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !359
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__wake_up(ptr noundef nonnull @startup_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 639) #19
  %call.i.i239 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  %1 = load volatile i32, ptr @startup_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.end.for.cond24.preheader_crit_edge, label %if.then5

if.end.for.cond24.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond24.preheader

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #19
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #19
  %call7253 = call i32 @prepare_to_wait_event(ptr noundef nonnull @startup_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #19
  %call.i.i240254 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  %3 = load volatile i32, ptr @startup_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp9255 = icmp eq i32 %3, -1
  br i1 %cmp9255, label %if.then5.if.end14.thread271_crit_edge, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  br label %if.end11

if.then5.if.end14.thread271_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread271

if.end11:                                         ; preds = %cleanup.if.end11_crit_edge, %if.then5.if.end11_crit_edge
  %call7256 = phi i32 [ %call7, %cleanup.if.end11_crit_edge ], [ %call7253, %if.then5.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7256)
  %tobool.not = icmp eq i32 %call7256, 0
  br i1 %tobool.not, label %cleanup, label %do.end20

cleanup:                                          ; preds = %if.end11
  call void @schedule() #19
  %call7 = call i32 @prepare_to_wait_event(ptr noundef nonnull @startup_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #19
  %call.i.i240 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @startup_count, i32 noundef 4) #19
  %4 = load volatile i32, ptr @startup_count, align 4
  %cmp9 = icmp eq i32 %4, -1
  br i1 %cmp9, label %cleanup.if.end14.thread271_crit_edge, label %cleanup.if.end11_crit_edge

cleanup.if.end11_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

cleanup.if.end14.thread271_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread271

if.end14.thread271:                               ; preds = %cleanup.if.end14.thread271_crit_edge, %if.then5.if.end14.thread271_crit_edge
  call void @finish_wait(ptr noundef nonnull @startup_wait, ptr noundef nonnull %__wq_entry) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #19
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %if.end14.thread271, %if.end.for.cond24.preheader_crit_edge
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp25257.not = icmp eq i32 %6, 0
  br i1 %cmp25257.not, label %for.cond24.preheader.if.end55_crit_edge, label %for.body.lr.ph

for.cond24.preheader.if.end55_crit_edge:          ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

for.body.lr.ph:                                   ; preds = %for.cond24.preheader
  %objs = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 3
  %id27 = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 1
  br label %for.body

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #19
  %id = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 1
  br label %out.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %insert_retries.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %insert_retries.1, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %objs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %objs, align 4
  %arrayidx = getelementptr %struct.test_obj, ptr %8, i32 %i.0259
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.0259, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %id27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id27, align 4
  %12 = load ptr, ptr %objs, align 4
  %tid = getelementptr %struct.test_obj, ptr %12, i32 %i.0259, i32 0, i32 1
  %13 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %tid, align 4
  %14 = load ptr, ptr %objs, align 4
  %.unpack232 = load i32, ptr @test_rht_params, align 4
  %15 = insertvalue [7 x i32] undef, i32 %.unpack232, 0
  %.unpack233 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %16 = insertvalue [7 x i32] %15, i32 %.unpack233, 1
  %.unpack234 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %17 = insertvalue [7 x i32] %16, i32 %.unpack234, 2
  %.unpack235 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %18 = insertvalue [7 x i32] %17, i32 %.unpack235, 3
  %.unpack236 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %19 = insertvalue [7 x i32] %18, i32 %.unpack236, 4
  %.unpack237 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %20 = insertvalue [7 x i32] %19, i32 %.unpack237, 5
  %.unpack238 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %21 = insertvalue [7 x i32] %20, i32 %.unpack238, 6
  %node.i = getelementptr %struct.test_obj, ptr %14, i32 %i.0259, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %for.body
  %enomem_retries.0.i = phi i32 [ 0, %for.body ], [ %enomem_retries.1.i, %do.cond.i.do.body.i_crit_edge ]
  %retries.0.i = phi i32 [ -1, %for.body ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %inc.i = add i32 %retries.0.i, 1
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 122, i32 noundef 0) #19
  %call.i.i241 = call i32 @__cond_resched() #19
  %call.i3.i = call fastcc ptr @__rhashtable_insert_fast(ptr noundef nonnull @ht, ptr noundef null, ptr noundef %node.i, [7 x i32] %21, i1 noundef zeroext false) #19
  %cmp.i.i.i = icmp ugt ptr %call.i3.i, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call.i3.i to i32
  %cmp.i.i242 = icmp eq ptr %call.i3.i, null
  %cond.i.i = select i1 %cmp.i.i242, i32 0, i32 -17
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 %22, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, -12
  br i1 %cmp.i, label %land.lhs.true.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %23 = load i8, ptr @enomem_retry, align 1, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %inc2.i = add i32 %enomem_retries.0.i, 1
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.do.cond.i_crit_edge

land.lhs.true.i.do.cond.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.cond.i:                                        ; preds = %land.lhs.true.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %enomem_retries.1.i = phi i32 [ %enomem_retries.0.i, %do.body.i.do.cond.i_crit_edge ], [ %inc2.i, %land.lhs.true.i.do.cond.i_crit_edge ]
  %err.0.i = phi i32 [ %retval.0.i.i, %do.body.i.do.cond.i_crit_edge ], [ -16, %land.lhs.true.i.do.cond.i_crit_edge ]
  %cmp3.i = icmp eq i32 %err.0.i, -16
  br i1 %cmp3.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.do.end.i_crit_edge

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  %err.08.i = phi i32 [ %err.0.i, %do.cond.i.do.end.i_crit_edge ], [ -12, %land.lhs.true.i.do.end.i_crit_edge ]
  %enomem_retries.17.i = phi i32 [ %enomem_retries.1.i, %do.cond.i.do.end.i_crit_edge ], [ %enomem_retries.0.i, %land.lhs.true.i.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enomem_retries.17.i)
  %tobool4.not.i = icmp eq i32 %enomem_retries.17.i, 0
  br i1 %tobool4.not.i, label %do.end.i.insert_retry.exit_crit_edge, label %do.end8.i

do.end.i.insert_retry.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %insert_retry.exit

do.end8.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %enomem_retries.17.i) #21
  br label %insert_retry.exit

insert_retry.exit:                                ; preds = %do.end8.i, %do.end.i.insert_retry.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.08.i)
  %tobool12.not.i = icmp eq i32 %err.08.i, 0
  %spec.select2.i = select i1 %tobool12.not.i, i32 %inc.i, i32 %err.08.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select2.i)
  %cmp34 = icmp sgt i32 %spec.select2.i, 0
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %insert_retry.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add = add i32 %spec.select2.i, %insert_retries.0258
  br label %for.inc

if.else:                                          ; preds = %insert_retry.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select2.i)
  %tobool36.not = icmp eq i32 %spec.select2.i, 0
  br i1 %tobool36.not, label %if.else.for.inc_crit_edge, label %if.else.out.sink.split_crit_edge

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then35
  %insert_retries.1 = phi i32 [ %add, %if.then35 ], [ %insert_retries.0258, %if.else.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0259, 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %cmp25 = icmp ult i32 %inc, %25
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.end46

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end46:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %insert_retries.1)
  %tobool47.not = icmp eq i32 %insert_retries.1, 0
  br i1 %tobool47.not, label %for.end46.if.end55_crit_edge, label %do.end51

for.end46.if.end55_crit_edge:                     ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

do.end51:                                         ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #18
  %id53 = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %id53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id53, align 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %27, i32 noundef %insert_retries.1) #21
  br label %if.end55

if.end55:                                         ; preds = %do.end51, %for.end46.if.end55_crit_edge, %for.cond24.preheader.if.end55_crit_edge
  %call56 = call fastcc i32 @thread_lookup_test(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.cond66.preheader, label %do.end61

for.cond66.preheader:                             ; preds = %if.end55
  %objs73 = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 3
  br label %for.cond69.preheader

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  %id63 = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 1
  br label %out.sink.split

for.cond66:                                       ; preds = %for.end100
  %dec = add nsw i32 %step.0263, -1
  %cmp67.not = icmp eq i32 %dec, 0
  br i1 %cmp67.not, label %for.cond66.out_crit_edge, label %for.cond66.for.cond69.preheader_crit_edge

for.cond66.for.cond69.preheader_crit_edge:        ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond69.preheader

for.cond66.out_crit_edge:                         ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.cond69.preheader:                             ; preds = %for.cond66.for.cond69.preheader_crit_edge, %for.cond66.preheader
  %step.0263 = phi i32 [ 10, %for.cond66.preheader ], [ %dec, %for.cond66.for.cond69.preheader_crit_edge ]
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp71260.not = icmp eq i32 %29, 0
  br i1 %cmp71260.not, label %for.cond69.preheader.for.end100_crit_edge, label %for.cond69.preheader.for.body72_crit_edge

for.cond69.preheader.for.body72_crit_edge:        ; preds = %for.cond69.preheader
  br label %for.body72

for.cond69.preheader.for.end100_crit_edge:        ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end100

for.body72:                                       ; preds = %for.inc98.for.body72_crit_edge, %for.cond69.preheader.for.body72_crit_edge
  %i.1261 = phi i32 [ %add99, %for.inc98.for.body72_crit_edge ], [ 0, %for.cond69.preheader.for.body72_crit_edge ]
  %30 = ptrtoint ptr %objs73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %objs73, align 4
  %arrayidx74 = getelementptr %struct.test_obj, ptr %31, i32 %i.1261
  %32 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %33)
  %cmp77 = icmp eq i32 %33, 2147483647
  br i1 %cmp77, label %for.body72.for.inc98_crit_edge, label %if.end79

for.body72.for.inc98_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc98

if.end79:                                         ; preds = %for.body72
  %node = getelementptr %struct.test_obj, ptr %31, i32 %i.1261, i32 1
  %.unpack = load i32, ptr @test_rht_params, align 4
  %34 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.unpack226 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %35 = insertvalue [7 x i32] %34, i32 %.unpack226, 1
  %.unpack227 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %36 = insertvalue [7 x i32] %35, i32 %.unpack227, 2
  %.unpack228 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %37 = insertvalue [7 x i32] %36, i32 %.unpack228, 3
  %.unpack229 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %38 = insertvalue [7 x i32] %37, i32 %.unpack229, 4
  %.unpack230 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %39 = insertvalue [7 x i32] %38, i32 %.unpack230, 5
  %.unpack231 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %40 = insertvalue [7 x i32] %39, i32 %.unpack231, 6
  %call.i = call fastcc i32 @__rhashtable_remove_fast(ptr noundef nonnull @ht, ptr noundef %node, [7 x i32] %40, i1 noundef zeroext false) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool83.not = icmp eq i32 %call.i, 0
  br i1 %tobool83.not, label %if.end91, label %do.end87

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %id89 = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 1
  br label %out.sink.split

if.end91:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %objs73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %objs73, align 4
  %arrayidx93 = getelementptr %struct.test_obj, ptr %42, i32 %i.1261
  %43 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2147483647, ptr %arrayidx93, align 4
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 680, i32 noundef 0) #19
  %call.i243 = call i32 @__cond_resched() #19
  br label %for.inc98

for.inc98:                                        ; preds = %if.end91, %for.body72.for.inc98_crit_edge
  %add99 = add i32 %i.1261, %step.0263
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data, align 4
  %cmp71 = icmp ult i32 %add99, %45
  br i1 %cmp71, label %for.inc98.for.body72_crit_edge, label %for.inc98.for.end100_crit_edge

for.inc98.for.end100_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end100

for.inc98.for.body72_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body72

for.end100:                                       ; preds = %for.inc98.for.end100_crit_edge, %for.cond69.preheader.for.end100_crit_edge
  %call101 = call fastcc i32 @thread_lookup_test(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %for.cond66, label %do.end106

do.end106:                                        ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #18
  %id108 = getelementptr inbounds %struct.thread_data, ptr %data, i32 0, i32 1
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.end106, %do.end87, %do.end61, %if.else.out.sink.split_crit_edge, %do.end20
  %id108.sink = phi ptr [ %id108, %do.end106 ], [ %id89, %do.end87 ], [ %id63, %do.end61 ], [ %id, %do.end20 ], [ %id27, %if.else.out.sink.split_crit_edge ]
  %.str.121.sink = phi ptr [ @.str.121, %do.end106 ], [ @.str.118, %do.end87 ], [ @.str.115, %do.end61 ], [ @.str.106, %do.end20 ], [ @.str.109, %if.else.out.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %call101, %do.end106 ], [ %call.i, %do.end87 ], [ %call56, %do.end61 ], [ 0, %do.end20 ], [ %spec.select2.i, %if.else.out.sink.split_crit_edge ]
  %46 = ptrtoint ptr %id108.sink to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id108.sink, align 4
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.121.sink, i32 noundef %47) #21
  br label %out

out:                                              ; preds = %out.sink.split, %for.cond66.out_crit_edge
  %err.1 = phi i32 [ %err.1.ph, %out.sink.split ], [ 0, %for.cond66.out_crit_edge ]
  %call113265 = call zeroext i1 @kthread_should_stop() #19
  br i1 %call113265, label %out.while.end_crit_edge, label %out.__here_crit_edge

out.__here_crit_edge:                             ; preds = %out
  br label %__here

out.while.end_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

__here:                                           ; preds = %__here.__here_crit_edge, %out.__here_crit_edge
  %48 = call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 212
  %52 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 ptrtoint (ptr blockaddress(@threadfunc, %__here) to i32), ptr %task_state_change, align 4
  %53 = load ptr, ptr %task, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 1, ptr %53, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !360
  call void @schedule() #19
  %call113 = call zeroext i1 @kthread_should_stop() #19
  br i1 %call113, label %__here.while.end_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %__here.while.end_crit_edge, %out.while.end_crit_edge
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_rhltable(i32 noundef %entries) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %key = alloca %struct.test_obj_val, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp = icmp eq i32 %entries, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %entries
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select, i32 16) #19
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %retval.0.i = select i1 %1, i32 -1, i32 %2
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #20
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup718_crit_edge, label %if.end3

entry.cleanup718_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup718

if.end3:                                          ; preds = %entry
  %sub = add i32 %spec.store.select, 31
  %3 = lshr i32 %sub, 3
  %4 = and i32 %3, 536870908
  %call5 = tail call noalias ptr @vzalloc(i32 noundef %4) #20
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.out_free_crit_edge, label %if.end8

if.end3.out_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @rhltable_init(ptr noundef nonnull @rhlt, ptr noundef nonnull @test_rht_params) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.preheader, label %do.end, !prof !350

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 291, i32 noundef 9, ptr noundef null) #19
  br label %out_free

for.body.preheader:                               ; preds = %if.end8
  %call35 = tail call i32 @prandom_u32() #19
  br label %for.body

for.body:                                         ; preds = %if.end72.critedge.for.body_crit_edge, %for.body.preheader
  %i.01030 = phi i32 [ %inc, %if.end72.critedge.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %i.01030
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call35, ptr %arrayidx, align 4
  %list_node = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %i.01030, i32 1
  %.unpack920 = load i32, ptr @test_rht_params, align 4
  %6 = insertvalue [7 x i32] undef, i32 %.unpack920, 0
  %.unpack921 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %7 = insertvalue [7 x i32] %6, i32 %.unpack921, 1
  %.unpack922 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %8 = insertvalue [7 x i32] %7, i32 %.unpack922, 2
  %.unpack923 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %9 = insertvalue [7 x i32] %8, i32 %.unpack923, 3
  %.unpack924 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %10 = insertvalue [7 x i32] %9, i32 %.unpack924, 4
  %.unpack925 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %11 = insertvalue [7 x i32] %10, i32 %.unpack925, 5
  %.unpack926 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %12 = insertvalue [7 x i32] %11, i32 %.unpack926, 6
  %params.sroa.2.4.extract.shift.i = lshr i32 %.unpack921, 16
  %13 = load i16, ptr getelementptr inbounds (%struct.rhltable, ptr @rhlt, i32 0, i32 0, i32 3, i32 3), align 2
  %conv.i.i = zext i16 %13 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %list_node, i32 %idx.neg.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %params.sroa.2.4.extract.shift.i
  %call.i.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef nonnull @rhlt, ptr noundef %add.ptr.i, ptr noundef %list_node, [7 x i32] %12, i1 noundef zeroext true) #19
  %tobool40.not = icmp eq ptr %call.i.i, null
  br i1 %tobool40.not, label %if.end72.critedge, label %do.end56, !prof !350

do.end56:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 300, i32 noundef 9, ptr noundef nonnull @.str.132, i32 noundef %14, i32 noundef %i.01030) #19
  br label %for.body86.lr.ph

if.end72.critedge:                                ; preds = %for.body
  tail call void @_set_bit(i32 noundef %i.01030, ptr noundef nonnull %call5) #19
  %inc = add nuw i32 %i.01030, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %if.end72.critedge.for.body86.lr.ph_crit_edge, label %if.end72.critedge.for.body_crit_edge

if.end72.critedge.for.body_crit_edge:             ; preds = %if.end72.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end72.critedge.for.body86.lr.ph_crit_edge:     ; preds = %if.end72.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body86.lr.ph

for.body86.lr.ph:                                 ; preds = %if.end72.critedge.for.body86.lr.ph_crit_edge, %do.end56
  %err.1 = phi i32 [ %14, %do.end56 ], [ 0, %if.end72.critedge.for.body86.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool76.not = icmp eq i32 %err.1, 0
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %spec.store.select) #21
  %15 = getelementptr inbounds %struct.test_obj_val, ptr %key, i32 0, i32 1
  br label %for.body86

for.body86:                                       ; preds = %for.inc278.for.body86_crit_edge, %for.body86.lr.ph
  %i.11040 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc279, %for.inc278.for.body86_crit_edge ]
  %err.21039 = phi i32 [ %err.1, %for.body86.lr.ph ], [ %call.i985, %for.inc278.for.body86_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #19
  %16 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call35, ptr %key, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %15, align 4
  %18 = call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !353
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %for.body86.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body86.rcu_read_lock.exit_crit_edge:          ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body86
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 696, ptr noundef nonnull @.str.68) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body86.rcu_read_lock.exit_crit_edge
  %.unpack906 = load i32, ptr @test_rht_params, align 4
  %22 = insertvalue [7 x i32] undef, i32 %.unpack906, 0
  %.unpack907 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %23 = insertvalue [7 x i32] %22, i32 %.unpack907, 1
  %.unpack908 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %24 = insertvalue [7 x i32] %23, i32 %.unpack908, 2
  %.unpack909 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %25 = insertvalue [7 x i32] %24, i32 %.unpack909, 3
  %.unpack910 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %26 = insertvalue [7 x i32] %25, i32 %.unpack910, 4
  %.unpack911 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %27 = insertvalue [7 x i32] %26, i32 %.unpack911, 5
  %.unpack912 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %28 = insertvalue [7 x i32] %27, i32 %.unpack912, 6
  %call.i953 = call fastcc ptr @__rhashtable_lookup(ptr noundef nonnull @rhlt, ptr noundef nonnull %key, [7 x i32] %28) #19
  %tobool90.not = icmp eq ptr %call.i953, null
  br i1 %tobool90.not, label %do.end108, label %if.end124, !prof !355

do.end108:                                        ; preds = %rcu_read_lock.exit
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 320, i32 noundef 9, ptr noundef nonnull @.str.135, i32 noundef %i.11040, i32 noundef %spec.store.select) #19
  %call.i954 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i954, label %do.end108.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i957

do.end108.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i957:                               ; preds = %do.end108
  %call1.i955 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i955)
  %tobool.not.i956 = icmp eq i32 %call1.i955, 0
  br i1 %tobool.not.i956, label %land.lhs.true.i957.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i959

land.lhs.true.i957.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i957
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i959:                              ; preds = %land.lhs.true.i957
  %.b4.i958 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i958, label %land.lhs.true2.i959.rcu_read_unlock.exit_crit_edge, label %if.then.i960

land.lhs.true2.i959.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i959
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i960:                                     ; preds = %land.lhs.true2.i959
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i960, %land.lhs.true2.i959.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i957.rcu_read_unlock.exit_crit_edge, %do.end108.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %29 = call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i961 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i961 to ptr
  %preempt_count.i.i.i.i962 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i962 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i962, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i962, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  br label %cleanup

if.end124:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.11040)
  %tobool125.not = icmp eq i32 %i.11040, 0
  br i1 %tobool125.not, label %if.end124.if.end177_crit_edge, label %if.then126

if.end124.if.end177_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end177

if.then126:                                       ; preds = %if.end124
  %sub127 = add i32 %i.11040, -1
  %list_node136 = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %sub127, i32 1
  br label %for.body133

for.body133:                                      ; preds = %for.inc170.critedge.for.body133_crit_edge, %if.then126
  %pos.01032 = phi ptr [ %call.i953, %if.then126 ], [ %34, %for.inc170.critedge.for.body133_crit_edge ]
  %cmp137 = icmp eq ptr %pos.01032, %list_node136
  br i1 %cmp137, label %do.end153, label %for.inc170.critedge, !prof !355

do.end153:                                        ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 328, i32 noundef 9, ptr noundef nonnull @.str.136) #19
  br label %if.end177

for.inc170.critedge:                              ; preds = %for.body133
  %next = getelementptr inbounds %struct.rhlist_head, ptr %pos.01032, i32 0, i32 1
  %33 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %next, align 4
  %tobool129.not = icmp eq ptr %34, null
  br i1 %tobool129.not, label %for.inc170.critedge.if.end177_crit_edge, label %for.inc170.critedge.for.body133_crit_edge

for.inc170.critedge.for.body133_crit_edge:        ; preds = %for.inc170.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body133

for.inc170.critedge.if.end177_crit_edge:          ; preds = %for.inc170.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end177

if.end177:                                        ; preds = %for.inc170.critedge.if.end177_crit_edge, %do.end153, %if.end124.if.end177_crit_edge
  call fastcc void @cond_resched_rcu()
  %list_node189 = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %i.11040, i32 1
  br label %for.body187

for.body187:                                      ; preds = %for.inc193.for.body187_crit_edge, %if.end177
  %pos.11034 = phi ptr [ %call.i953, %if.end177 ], [ %36, %for.inc193.for.body187_crit_edge ]
  %cmp190 = icmp eq ptr %pos.11034, %list_node189
  br i1 %cmp190, label %if.end226.critedge, label %for.inc193

for.inc193:                                       ; preds = %for.body187
  %next198 = getelementptr inbounds %struct.rhlist_head, ptr %pos.11034, i32 0, i32 1
  %35 = ptrtoint ptr %next198 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %next198, align 4
  %tobool179.not = icmp eq ptr %36, null
  br i1 %tobool179.not, label %do.end220.critedge, label %for.inc193.for.body187_crit_edge

for.inc193.for.body187_crit_edge:                 ; preds = %for.inc193
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body187

do.end220.critedge:                               ; preds = %for.inc193
  %call.i963 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i963, label %do.end220.critedge.rcu_read_unlock.exit973_crit_edge, label %land.lhs.true.i966

do.end220.critedge.rcu_read_unlock.exit973_crit_edge: ; preds = %do.end220.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit973

land.lhs.true.i966:                               ; preds = %do.end220.critedge
  %call1.i964 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i964)
  %tobool.not.i965 = icmp eq i32 %call1.i964, 0
  br i1 %tobool.not.i965, label %land.lhs.true.i966.rcu_read_unlock.exit973_crit_edge, label %land.lhs.true2.i968

land.lhs.true.i966.rcu_read_unlock.exit973_crit_edge: ; preds = %land.lhs.true.i966
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit973

land.lhs.true2.i968:                              ; preds = %land.lhs.true.i966
  %.b4.i967 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i967, label %land.lhs.true2.i968.rcu_read_unlock.exit973_crit_edge, label %if.then.i969

land.lhs.true2.i968.rcu_read_unlock.exit973_crit_edge: ; preds = %land.lhs.true2.i968
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit973

if.then.i969:                                     ; preds = %land.lhs.true2.i968
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit973

rcu_read_unlock.exit973:                          ; preds = %if.then.i969, %land.lhs.true2.i968.rcu_read_unlock.exit973_crit_edge, %land.lhs.true.i966.rcu_read_unlock.exit973_crit_edge, %do.end220.critedge.rcu_read_unlock.exit973_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %37 = call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i970 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i970 to ptr
  %preempt_count.i.i.i.i971 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i971 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i971, align 4
  %sub.i.i.i972 = add i32 %40, -1
  store volatile i32 %sub.i.i.i972, ptr %preempt_count.i.i.i.i971, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef 9, ptr noundef nonnull @.str.137, i32 noundef %i.11040) #19
  br label %cleanup

if.end226.critedge:                               ; preds = %for.body187
  %call.i974 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i974, label %if.end226.critedge.rcu_read_unlock.exit984_crit_edge, label %land.lhs.true.i977

if.end226.critedge.rcu_read_unlock.exit984_crit_edge: ; preds = %if.end226.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit984

land.lhs.true.i977:                               ; preds = %if.end226.critedge
  %call1.i975 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i975)
  %tobool.not.i976 = icmp eq i32 %call1.i975, 0
  br i1 %tobool.not.i976, label %land.lhs.true.i977.rcu_read_unlock.exit984_crit_edge, label %land.lhs.true2.i979

land.lhs.true.i977.rcu_read_unlock.exit984_crit_edge: ; preds = %land.lhs.true.i977
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit984

land.lhs.true2.i979:                              ; preds = %land.lhs.true.i977
  %.b4.i978 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i978, label %land.lhs.true2.i979.rcu_read_unlock.exit984_crit_edge, label %if.then.i980

land.lhs.true2.i979.rcu_read_unlock.exit984_crit_edge: ; preds = %land.lhs.true2.i979
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit984

if.then.i980:                                     ; preds = %land.lhs.true2.i979
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit984

rcu_read_unlock.exit984:                          ; preds = %if.then.i980, %land.lhs.true2.i979.rcu_read_unlock.exit984_crit_edge, %land.lhs.true.i977.rcu_read_unlock.exit984_crit_edge, %if.end226.critedge.rcu_read_unlock.exit984_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %41 = call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i981 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i981 to ptr
  %preempt_count.i.i.i.i982 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i982 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i982, align 4
  %sub.i.i.i983 = add i32 %44, -1
  store volatile i32 %sub.i.i.i983, ptr %preempt_count.i.i.i.i982, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  %.unpack913 = load i32, ptr @test_rht_params, align 4
  %45 = insertvalue [7 x i32] undef, i32 %.unpack913, 0
  %.unpack914 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %46 = insertvalue [7 x i32] %45, i32 %.unpack914, 1
  %.unpack915 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %47 = insertvalue [7 x i32] %46, i32 %.unpack915, 2
  %.unpack916 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %48 = insertvalue [7 x i32] %47, i32 %.unpack916, 3
  %.unpack917 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %49 = insertvalue [7 x i32] %48, i32 %.unpack917, 4
  %.unpack918 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %50 = insertvalue [7 x i32] %49, i32 %.unpack918, 5
  %.unpack919 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %51 = insertvalue [7 x i32] %50, i32 %.unpack919, 6
  %call.i985 = call fastcc i32 @__rhashtable_remove_fast(ptr noundef nonnull @rhlt, ptr noundef %list_node189, [7 x i32] %51, i1 noundef zeroext true) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i985)
  %cond = icmp eq i32 %call.i985, 0
  br i1 %cond, label %if.then272, label %do.end257, !prof !350

do.end257:                                        ; preds = %rcu_read_unlock.exit984
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef nonnull @.str.138, i32 noundef %call.i985, i32 noundef %i.11040) #19
  br label %for.inc278

if.then272:                                       ; preds = %rcu_read_unlock.exit984
  call void @__sanitizer_cov_trace_pc() #18
  call void @_clear_bit(i32 noundef %i.11040, ptr noundef nonnull %call5) #19
  br label %for.inc278

cleanup:                                          ; preds = %rcu_read_unlock.exit973, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #19
  br label %for.body287.preheader

for.inc278:                                       ; preds = %if.then272, %do.end257
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #19
  %inc279 = add nuw i32 %i.11040, 1
  %exitcond1058.not = icmp eq i32 %inc279, %spec.store.select
  br i1 %exitcond1058.not, label %for.inc278.for.body287.preheader_crit_edge, label %for.inc278.for.body86_crit_edge

for.inc278.for.body86_crit_edge:                  ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body86

for.inc278.for.body287.preheader_crit_edge:       ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body287.preheader

for.body287.preheader:                            ; preds = %for.inc278.for.body287.preheader_crit_edge, %cleanup
  %err.21026 = phi i32 [ %err.21039, %cleanup ], [ %call.i985, %for.inc278.for.body287.preheader_crit_edge ]
  %ret.1 = select i1 %tobool76.not, i32 %err.21026, i32 %err.1
  br label %for.body287

for.body287:                                      ; preds = %if.end356.critedge.for.body287_crit_edge, %for.body287.preheader
  %i.21043 = phi i32 [ %inc361, %if.end356.critedge.for.body287_crit_edge ], [ 0, %for.body287.preheader ]
  %div3.i = lshr i32 %i.21043, 5
  %arrayidx.i = getelementptr i32, ptr %call5, i32 %div3.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.21043, 31
  %54 = shl nuw i32 1, %and.i
  %55 = and i32 %53, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool290.not = icmp eq i32 %55, 0
  br i1 %tobool290.not, label %for.body287.if.end312_crit_edge, label %do.end306, !prof !350

for.body287.if.end312_crit_edge:                  ; preds = %for.body287
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end312

do.end306:                                        ; preds = %for.body287
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 359, i32 noundef 9, ptr noundef nonnull @.str.139, i32 noundef %i.21043) #19
  br label %if.end312

if.end312:                                        ; preds = %do.end306, %for.body287.if.end312_crit_edge
  %list_node321 = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %i.21043, i32 1
  %.unpack899 = load i32, ptr @test_rht_params, align 4
  %56 = insertvalue [7 x i32] undef, i32 %.unpack899, 0
  %.unpack900 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %57 = insertvalue [7 x i32] %56, i32 %.unpack900, 1
  %.unpack901 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %58 = insertvalue [7 x i32] %57, i32 %.unpack901, 2
  %.unpack902 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %59 = insertvalue [7 x i32] %58, i32 %.unpack902, 3
  %.unpack903 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %60 = insertvalue [7 x i32] %59, i32 %.unpack903, 4
  %.unpack904 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %61 = insertvalue [7 x i32] %60, i32 %.unpack904, 5
  %.unpack905 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %62 = insertvalue [7 x i32] %61, i32 %.unpack905, 6
  %params.sroa.2.4.extract.shift.i986 = lshr i32 %.unpack900, 16
  %63 = load i16, ptr getelementptr inbounds (%struct.rhltable, ptr @rhlt, i32 0, i32 0, i32 3, i32 3), align 2
  %conv.i.i987 = zext i16 %63 to i32
  %idx.neg.i.i988 = sub nsw i32 0, %conv.i.i987
  %add.ptr.i.i989 = getelementptr i8, ptr %list_node321, i32 %idx.neg.i.i988
  %add.ptr.i990 = getelementptr i8, ptr %add.ptr.i.i989, i32 %params.sroa.2.4.extract.shift.i986
  %call.i.i991 = call fastcc ptr @__rhashtable_insert_fast(ptr noundef nonnull @rhlt, ptr noundef %add.ptr.i990, ptr noundef %list_node321, [7 x i32] %62, i1 noundef zeroext true) #19
  %tobool324.not = icmp eq ptr %call.i.i991, null
  br i1 %tobool324.not, label %if.end356.critedge, label %do.end340, !prof !350

do.end340:                                        ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %call.i.i991 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.132, i32 noundef %64, i32 noundef %i.21043) #19
  br label %for.body370.lr.ph

if.end356.critedge:                               ; preds = %if.end312
  call void @_set_bit(i32 noundef %i.21043, ptr noundef nonnull %call5) #19
  %inc361 = add nuw i32 %i.21043, 1
  %exitcond1059.not = icmp eq i32 %inc361, %spec.store.select
  br i1 %exitcond1059.not, label %if.end356.critedge.for.body370.lr.ph_crit_edge, label %if.end356.critedge.for.body287_crit_edge

if.end356.critedge.for.body287_crit_edge:         ; preds = %if.end356.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body287

if.end356.critedge.for.body370.lr.ph_crit_edge:   ; preds = %if.end356.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body370.lr.ph

for.body370.lr.ph:                                ; preds = %if.end356.critedge.for.body370.lr.ph_crit_edge, %do.end340
  %call367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %spec.store.select) #21
  %conv1.i = zext i32 %spec.store.select to i64
  br label %for.body370

for.body370:                                      ; preds = %cleanup627.for.body370_crit_edge, %for.body370.lr.ph
  %j.01045 = phi i32 [ 0, %for.body370.lr.ph ], [ %inc632, %cleanup627.for.body370_crit_edge ]
  %call.i992 = call i32 @prandom_u32() #19
  %conv.i = zext i32 %call.i992 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i993 = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i993 to i32
  %call373 = call i32 @prandom_u32() #19
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 374, i32 noundef 0) #19
  %call.i994 = call i32 @__cond_resched() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %cmp376 = icmp eq i32 %call373, 0
  br i1 %cmp376, label %if.then377, label %for.body370.if.end379_crit_edge

for.body370.if.end379_crit_edge:                  ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end379

if.then377:                                       ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #18
  %call378 = call i32 @prandom_u32() #19
  br label %if.end379

if.end379:                                        ; preds = %if.then377, %for.body370.if.end379_crit_edge
  %prand.0 = phi i32 [ %call378, %if.then377 ], [ %call373, %for.body370.if.end379_crit_edge ]
  %and = and i32 %prand.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool380.not = icmp eq i32 %and, 0
  br i1 %tobool380.not, label %if.end382, label %if.end379.cleanup627_crit_edge

if.end379.cleanup627_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup627

if.end382:                                        ; preds = %if.end379
  %list_node384 = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %conv2.i, i32 1
  %.unpack871 = load i32, ptr @test_rht_params, align 4
  %65 = insertvalue [7 x i32] undef, i32 %.unpack871, 0
  %.unpack872 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %66 = insertvalue [7 x i32] %65, i32 %.unpack872, 1
  %.unpack873 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %67 = insertvalue [7 x i32] %66, i32 %.unpack873, 2
  %.unpack874 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %68 = insertvalue [7 x i32] %67, i32 %.unpack874, 3
  %.unpack875 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %69 = insertvalue [7 x i32] %68, i32 %.unpack875, 4
  %.unpack876 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %70 = insertvalue [7 x i32] %69, i32 %.unpack876, 5
  %.unpack877 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %71 = insertvalue [7 x i32] %70, i32 %.unpack877, 6
  %call.i995 = call fastcc i32 @__rhashtable_remove_fast(ptr noundef nonnull @rhlt, ptr noundef %list_node384, [7 x i32] %71, i1 noundef zeroext true) #19
  %div3.i932 = lshr i32 %conv2.i, 5
  %arrayidx.i933 = getelementptr i32, ptr %call5, i32 %div3.i932
  %72 = ptrtoint ptr %arrayidx.i933 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %arrayidx.i933, align 4
  %and.i934 = and i32 %conv2.i, 31
  %74 = shl nuw i32 1, %and.i934
  %75 = and i32 %73, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool387.not = icmp eq i32 %75, 0
  br i1 %tobool387.not, label %if.else, label %if.then388

if.then388:                                       ; preds = %if.end382
  call void @_clear_bit(i32 noundef %conv2.i, ptr noundef nonnull %call5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i995)
  %tobool390.not = icmp eq i32 %call.i995, 0
  br i1 %tobool390.not, label %if.then388.if.end462_crit_edge, label %do.end406, !prof !350

if.then388.if.end462_crit_edge:                   ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end462

do.end406:                                        ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 387, i32 noundef 9, ptr noundef nonnull @.str.143, i32 noundef %conv2.i) #19
  br label %cleanup627

if.else:                                          ; preds = %if.end382
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i995)
  %cmp424.not = icmp eq i32 %call.i995, -2
  br i1 %cmp424.not, label %if.else.if.end462_crit_edge, label %do.end440, !prof !350

if.else.if.end462_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end462

do.end440:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 391, i32 noundef 9, ptr noundef nonnull @.str.144, i32 noundef %conv2.i, i32 noundef %call.i995, i32 noundef -2) #19
  br label %cleanup627

if.end462:                                        ; preds = %if.else.if.end462_crit_edge, %if.then388.if.end462_crit_edge
  %.unpack878 = load i32, ptr @test_rht_params, align 4
  %76 = insertvalue [7 x i32] undef, i32 %.unpack878, 0
  %.unpack879 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %77 = insertvalue [7 x i32] %76, i32 %.unpack879, 1
  %.unpack880 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %78 = insertvalue [7 x i32] %77, i32 %.unpack880, 2
  %.unpack881 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %79 = insertvalue [7 x i32] %78, i32 %.unpack881, 3
  %.unpack882 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %80 = insertvalue [7 x i32] %79, i32 %.unpack882, 4
  %.unpack883 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %81 = insertvalue [7 x i32] %80, i32 %.unpack883, 5
  %.unpack884 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %82 = insertvalue [7 x i32] %81, i32 %.unpack884, 6
  %params.sroa.2.4.extract.shift.i996 = lshr i32 %.unpack879, 16
  %83 = load i16, ptr getelementptr inbounds (%struct.rhltable, ptr @rhlt, i32 0, i32 0, i32 3, i32 3), align 2
  %conv.i.i997 = zext i16 %83 to i32
  %idx.neg.i.i998 = sub nsw i32 0, %conv.i.i997
  %add.ptr.i.i999 = getelementptr i8, ptr %list_node384, i32 %idx.neg.i.i998
  %add.ptr.i1000 = getelementptr i8, ptr %add.ptr.i.i999, i32 %params.sroa.2.4.extract.shift.i996
  %call.i.i1001 = call fastcc ptr @__rhashtable_insert_fast(ptr noundef nonnull @rhlt, ptr noundef %add.ptr.i1000, ptr noundef %list_node384, [7 x i32] %82, i1 noundef zeroext true) #19
  %cmp466 = icmp eq ptr %call.i.i1001, null
  br i1 %cmp466, label %if.then467, label %if.else503

if.then467:                                       ; preds = %if.end462
  %call469 = call i32 @_test_and_set_bit(i32 noundef %conv2.i, ptr noundef nonnull %call5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call469)
  %tobool470.not = icmp eq i32 %call469, 0
  br i1 %tobool470.not, label %if.then467.if.end546_crit_edge, label %do.end486, !prof !350

if.then467.if.end546_crit_edge:                   ; preds = %if.then467
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end546

do.end486:                                        ; preds = %if.then467
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 402, i32 noundef 9, ptr noundef nonnull @.str.145, i32 noundef %conv2.i) #19
  br label %cleanup627

if.else503:                                       ; preds = %if.end462
  %84 = ptrtoint ptr %arrayidx.i933 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %arrayidx.i933, align 4
  %86 = and i32 %85, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool506.not = icmp eq i32 %86, 0
  br i1 %tobool506.not, label %do.end524, label %if.else503.if.end546_crit_edge, !prof !355

if.else503.if.end546_crit_edge:                   ; preds = %if.else503
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end546

do.end524:                                        ; preds = %if.else503
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 405, i32 noundef 9, ptr noundef nonnull @.str.146, i32 noundef %conv2.i) #19
  br label %cleanup627

if.end546:                                        ; preds = %if.else503.if.end546_crit_edge, %if.then467.if.end546_crit_edge
  %call.i1002 = call i32 @prandom_u32() #19
  %conv.i1003 = zext i32 %call.i1002 to i64
  %mul.i1005 = mul nuw i64 %conv.i1003, %conv1.i
  %shr.i1006 = lshr i64 %mul.i1005, 32
  %conv2.i1007 = trunc i64 %shr.i1006 to i32
  %div3.i942 = lshr i32 %conv2.i1007, 5
  %arrayidx.i943 = getelementptr i32, ptr %call5, i32 %div3.i942
  %87 = ptrtoint ptr %arrayidx.i943 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i943, align 4
  %and.i944 = and i32 %conv2.i1007, 31
  %89 = shl nuw i32 1, %and.i944
  %90 = and i32 %89, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool549.not = icmp eq i32 %90, 0
  %list_node590 = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %conv2.i1007, i32 1
  %.unpack885 = load i32, ptr @test_rht_params, align 4
  %91 = insertvalue [7 x i32] undef, i32 %.unpack885, 0
  %.unpack886 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %92 = insertvalue [7 x i32] %91, i32 %.unpack886, 1
  %.unpack887 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %93 = insertvalue [7 x i32] %92, i32 %.unpack887, 2
  %.unpack888 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %94 = insertvalue [7 x i32] %93, i32 %.unpack888, 3
  %.unpack889 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %95 = insertvalue [7 x i32] %94, i32 %.unpack889, 4
  %.unpack890 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %96 = insertvalue [7 x i32] %95, i32 %.unpack890, 5
  %.unpack891 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %97 = insertvalue [7 x i32] %96, i32 %.unpack891, 6
  br i1 %tobool549.not, label %if.else588, label %if.then550

if.then550:                                       ; preds = %if.end546
  %call.i1008 = call fastcc i32 @__rhashtable_remove_fast(ptr noundef nonnull @rhlt, ptr noundef %list_node590, [7 x i32] %97, i1 noundef zeroext true) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1008)
  %cond930 = icmp eq i32 %call.i1008, 0
  br i1 %cond930, label %if.then586, label %do.end571, !prof !350

do.end571:                                        ; preds = %if.then550
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 417, i32 noundef 9, ptr noundef nonnull @.str.143, i32 noundef %conv2.i1007) #19
  br label %cleanup627

if.then586:                                       ; preds = %if.then550
  call void @__sanitizer_cov_trace_pc() #18
  call void @_clear_bit(i32 noundef %conv2.i1007, ptr noundef nonnull %call5) #19
  br label %cleanup627

if.else588:                                       ; preds = %if.end546
  %params.sroa.2.4.extract.shift.i1009 = lshr i32 %.unpack886, 16
  %98 = load i16, ptr getelementptr inbounds (%struct.rhltable, ptr @rhlt, i32 0, i32 0, i32 3, i32 3), align 2
  %conv.i.i1010 = zext i16 %98 to i32
  %idx.neg.i.i1011 = sub nsw i32 0, %conv.i.i1010
  %add.ptr.i.i1012 = getelementptr i8, ptr %list_node590, i32 %idx.neg.i.i1011
  %add.ptr.i1013 = getelementptr i8, ptr %add.ptr.i.i1012, i32 %params.sroa.2.4.extract.shift.i1009
  %call.i.i1014 = call fastcc ptr @__rhashtable_insert_fast(ptr noundef nonnull @rhlt, ptr noundef %add.ptr.i1013, ptr noundef %list_node590, [7 x i32] %97, i1 noundef zeroext true) #19
  %cond931 = icmp eq ptr %call.i.i1014, null
  br i1 %cond931, label %if.then624, label %do.end609, !prof !350

do.end609:                                        ; preds = %if.else588
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef nonnull @.str.146, i32 noundef %conv2.i1007) #19
  br label %cleanup627

if.then624:                                       ; preds = %if.else588
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef %conv2.i1007, ptr noundef nonnull %call5) #19
  br label %cleanup627

cleanup627:                                       ; preds = %if.then624, %do.end609, %if.then586, %do.end571, %do.end524, %do.end486, %do.end440, %do.end406, %if.end379.cleanup627_crit_edge
  %inc632 = add nuw i32 %j.01045, 1
  %exitcond1060.not = icmp eq i32 %inc632, %spec.store.select
  br i1 %exitcond1060.not, label %cleanup627.for.body636_crit_edge, label %cleanup627.for.body370_crit_edge

cleanup627.for.body370_crit_edge:                 ; preds = %cleanup627
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body370

cleanup627.for.body636_crit_edge:                 ; preds = %cleanup627
  br label %for.body636

for.body636:                                      ; preds = %for.inc715.for.body636_crit_edge, %cleanup627.for.body636_crit_edge
  %i.31047 = phi i32 [ %inc716, %for.inc715.for.body636_crit_edge ], [ 0, %cleanup627.for.body636_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 429, i32 noundef 0) #19
  %call.i1015 = call i32 @__cond_resched() #19
  %list_node640 = getelementptr %struct.test_obj_rhl, ptr %call1, i32 %i.31047, i32 1
  %.unpack = load i32, ptr @test_rht_params, align 4
  %99 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.unpack865 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %100 = insertvalue [7 x i32] %99, i32 %.unpack865, 1
  %.unpack866 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %101 = insertvalue [7 x i32] %100, i32 %.unpack866, 2
  %.unpack867 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %102 = insertvalue [7 x i32] %101, i32 %.unpack867, 3
  %.unpack868 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %103 = insertvalue [7 x i32] %102, i32 %.unpack868, 4
  %.unpack869 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %104 = insertvalue [7 x i32] %103, i32 %.unpack869, 5
  %.unpack870 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %105 = insertvalue [7 x i32] %104, i32 %.unpack870, 6
  %call.i1016 = call fastcc i32 @__rhashtable_remove_fast(ptr noundef nonnull @rhlt, ptr noundef %list_node640, [7 x i32] %105, i1 noundef zeroext true) #19
  %div3.i947 = lshr i32 %i.31047, 5
  %arrayidx.i948 = getelementptr i32, ptr %call5, i32 %div3.i947
  %106 = ptrtoint ptr %arrayidx.i948 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %arrayidx.i948, align 4
  %and.i949 = and i32 %i.31047, 31
  %108 = shl nuw i32 1, %and.i949
  %109 = and i32 %107, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool643.not = icmp eq i32 %109, 0
  br i1 %tobool643.not, label %if.else679, label %if.then644

if.then644:                                       ; preds = %for.body636
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1016)
  %tobool646.not = icmp eq i32 %call.i1016, 0
  br i1 %tobool646.not, label %if.then644.for.inc715_crit_edge, label %do.end662, !prof !350

if.then644.for.inc715_crit_edge:                  ; preds = %if.then644
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc715

do.end662:                                        ; preds = %if.then644
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 432, i32 noundef 9, ptr noundef nonnull @.str.143, i32 noundef %i.31047) #19
  br label %for.inc715

if.else679:                                       ; preds = %for.body636
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i1016)
  %cmp681.not = icmp eq i32 %call.i1016, -2
  br i1 %cmp681.not, label %if.else679.for.inc715_crit_edge, label %do.end697, !prof !350

if.else679.for.inc715_crit_edge:                  ; preds = %if.else679
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc715

do.end697:                                        ; preds = %if.else679
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 436, i32 noundef 9, ptr noundef nonnull @.str.147, i32 noundef %call.i1016, i32 noundef -2) #19
  br label %for.inc715

for.inc715:                                       ; preds = %do.end697, %if.else679.for.inc715_crit_edge, %do.end662, %if.then644.for.inc715_crit_edge
  %inc716 = add nuw i32 %i.31047, 1
  %exitcond1061.not = icmp eq i32 %inc716, %spec.store.select
  br i1 %exitcond1061.not, label %for.end717, label %for.inc715.for.body636_crit_edge

for.inc715.for.body636_crit_edge:                 ; preds = %for.inc715
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body636

for.end717:                                       ; preds = %for.inc715
  call void @__sanitizer_cov_trace_pc() #18
  call void @rhashtable_free_and_destroy(ptr noundef nonnull @rhlt, ptr noundef null, ptr noundef null) #19
  br label %out_free

out_free:                                         ; preds = %for.end717, %do.end, %if.end3.out_free_crit_edge
  %ret.2 = phi i32 [ %ret.1, %for.end717 ], [ -12, %if.end3.out_free_crit_edge ], [ -12, %do.end ]
  call void @vfree(ptr noundef nonnull %call1) #19
  call void @vfree(ptr noundef %call5) #19
  br label %cleanup718

cleanup718:                                       ; preds = %out_free, %entry.cleanup718_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free ], [ -12, %entry.cleanup718_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp213 = icmp ugt i32 %length, 12
  br i1 %cmp213, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.0218 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.0217 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %b.0216 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %a.0215 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %length.addr.0214 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0218 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218, align 1
  %add2 = add i32 %1, %a.0215
  %add.ptr = getelementptr i8, ptr %k.0218, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.0216
  %add.ptr5 = getelementptr i8, ptr %k.0218, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.0217
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #19
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i201 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #19
  %xor12 = xor i32 %sub10, %or.i201
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i202 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #19
  %xor16 = xor i32 %sub14, %or.i202
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i203 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #19
  %xor20 = xor i32 %sub18, %or.i203
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i204 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #19
  %xor24 = xor i32 %sub22, %or.i204
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i205 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #19
  %xor28 = xor i32 %sub26, %or.i205
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0214, -12
  %add.ptr31 = getelementptr i8, ptr %k.0218, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i206 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #19
  %sub87 = sub i32 %xor85, %or.i206
  %xor88 = xor i32 %add84, %sub87
  %or.i207 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #19
  %sub90 = sub i32 %xor88, %or.i207
  %xor91 = xor i32 %sub90, %b.7
  %or.i208 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #19
  %sub93 = sub i32 %xor91, %or.i208
  %xor94 = xor i32 %sub93, %sub87
  %or.i209 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #19
  %sub96 = sub i32 %xor94, %or.i209
  %xor97 = xor i32 %sub96, %sub90
  %or.i210 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #19
  %sub99 = sub i32 %xor97, %or.i210
  %xor100 = xor i32 %sub99, %sub93
  %or.i211 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #19
  %sub102 = sub i32 %xor100, %or.i211
  %xor103 = xor i32 %sub102, %sub96
  %or.i212 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #19
  %sub105 = sub i32 %xor103, %or.i212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_retry(ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %node = getelementptr inbounds %struct.test_obj, ptr %obj, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %enomem_retries.0 = phi i32 [ 0, %entry ], [ %enomem_retries.1, %do.cond.do.body_crit_edge ]
  %retries.0 = phi i32 [ -1, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %inc = add i32 %retries.0, 1
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 122, i32 noundef 0) #19
  %call.i = tail call i32 @__cond_resched() #19
  %call.i3 = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef nonnull @ht, ptr noundef null, ptr noundef %node, [7 x i32] %params.coerce, i1 noundef zeroext false) #19
  %cmp.i.i = icmp ugt ptr %call.i3, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call.i3 to i32
  %cmp.i = icmp eq ptr %call.i3, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %0, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -12
  br i1 %cmp, label %land.lhs.true, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

land.lhs.true:                                    ; preds = %do.body
  %1 = load i8, ptr @enomem_retry, align 1, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %inc2 = add i32 %enomem_retries.0, 1
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.do.cond_crit_edge

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.cond:                                          ; preds = %land.lhs.true.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %enomem_retries.1 = phi i32 [ %enomem_retries.0, %do.body.do.cond_crit_edge ], [ %inc2, %land.lhs.true.do.cond_crit_edge ]
  %err.0 = phi i32 [ %retval.0.i, %do.body.do.cond_crit_edge ], [ -16, %land.lhs.true.do.cond_crit_edge ]
  %cmp3 = icmp eq i32 %err.0, -16
  br i1 %cmp3, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %err.08 = phi i32 [ %err.0, %do.cond.do.end_crit_edge ], [ -12, %land.lhs.true.do.end_crit_edge ]
  %enomem_retries.17 = phi i32 [ %enomem_retries.1, %do.cond.do.end_crit_edge ], [ %enomem_retries.0, %land.lhs.true.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enomem_retries.17)
  %tobool4.not = icmp eq i32 %enomem_retries.17, 0
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %do.end8

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %enomem_retries.17) #21
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %do.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.08)
  %tobool12.not = icmp eq i32 %err.08, 0
  %spec.select2 = select i1 %tobool12.not, i32 %inc, i32 %err.08
  ret i32 %spec.select2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_bucket_stats(i32 noundef %entries) unnamed_addr #6 align 64 {
entry:
  %hti = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hti) #19
  %0 = call ptr @memset(ptr %hti, i32 255, i32 36)
  call void @rhashtable_walk_enter(ptr noundef nonnull @ht, ptr noundef nonnull %hti) #19
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %hti) #19
  %call815 = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #19
  %tobool.not916 = icmp eq ptr %call815, null
  br i1 %tobool.not916, label %entry.while.end_crit_edge, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  br label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %call819 = phi ptr [ %call8, %do.end.while.body.lr.ph_crit_edge ], [ %call815, %entry.while.body.lr.ph_crit_edge ]
  %total.0.ph18 = phi i32 [ %total.010, %do.end.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  %chain_len.0.ph17 = phi i32 [ %inc, %do.end.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %call11 = phi ptr [ %call819, %while.body.lr.ph ], [ %call, %if.end11.while.body_crit_edge ]
  %total.010 = phi i32 [ %total.0.ph18, %while.body.lr.ph ], [ %inc12, %if.end11.while.body_crit_edge ]
  %cmp = icmp eq ptr %call11, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %while.body
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #21
  %inc = add i32 %chain_len.0.ph17, 1
  %call8 = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #19
  %tobool.not9 = icmp eq ptr %call8, null
  br i1 %tobool.not9, label %do.end.while.end_crit_edge, label %do.end.while.body.lr.ph_crit_edge

do.end.while.body.lr.ph_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.else:                                          ; preds = %while.body
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call11 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %1) #21
  br label %while.end

if.end11:                                         ; preds = %if.else
  %inc12 = add i32 %total.010, 1
  %call = call ptr @rhashtable_walk_next(ptr noundef nonnull %hti) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %do.end7, %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %chain_len.0.ph7 = phi i32 [ %chain_len.0.ph17, %do.end7 ], [ 0, %entry.while.end_crit_edge ], [ %chain_len.0.ph17, %if.end11.while.end_crit_edge ], [ %inc, %do.end.while.end_crit_edge ]
  %total.04 = phi i32 [ %total.010, %do.end7 ], [ 0, %entry.while.end_crit_edge ], [ %inc12, %if.end11.while.end_crit_edge ], [ %total.010, %do.end.while.end_crit_edge ]
  call void @rhashtable_walk_stop(ptr noundef nonnull %hti) #19
  call void @rhashtable_walk_exit(ptr noundef nonnull %hti) #19
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 8), i32 noundef 4) #19
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 8), align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %total.04, i32 noundef %2, i32 noundef %entries, i32 noundef %chain_len.0.ph7) #21
  %call.i.i1 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 8), i32 noundef 4) #19
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %total.04, i32 %3)
  %cmp21.not = icmp eq i32 %total.04, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %total.04, i32 %entries)
  %cmp22.not = icmp eq i32 %total.04, %entries
  %or.cond = and i1 %cmp22.not, %cmp21.not
  br i1 %or.cond, label %while.end.if.end29_crit_edge, label %do.end26

while.end.if.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

do.end26:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #21
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %while.end.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hti) #19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_rht_lookup(ptr nocapture noundef readonly %array, i32 noundef %entries) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %key = alloca %struct.test_obj_val, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp13.not = icmp eq i32 %entries, 0
  br i1 %cmp13.not, label %entry.cleanup40_crit_edge, label %for.body.lr.ph

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.test_obj_val, ptr %key, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end37.for.body_crit_edge ]
  %1 = and i32 %i.014, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %.not = icmp eq i32 %1, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #19
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i.014, ptr %key, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %0, align 4
  %div1 = lshr i32 %i.014, 1
  %arrayidx = getelementptr %struct.test_obj, ptr %array, i32 %div1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %5)
  %cmp2 = icmp ne i32 %5, 2147483647
  %spec.select = select i1 %cmp2, i1 %.not, i1 false
  %.unpack = load i32, ptr @test_rht_params, align 4
  %6 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.unpack2 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %7 = insertvalue [7 x i32] %6, i32 %.unpack2, 1
  %.unpack3 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %8 = insertvalue [7 x i32] %7, i32 %.unpack3, 2
  %.unpack4 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %9 = insertvalue [7 x i32] %8, i32 %.unpack4, 3
  %.unpack5 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %10 = insertvalue [7 x i32] %9, i32 %.unpack5, 4
  %.unpack6 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %11 = insertvalue [7 x i32] %10, i32 %.unpack6, 5
  %.unpack7 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %12 = insertvalue [7 x i32] %11, i32 %.unpack7, 6
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %key, [7 x i32] %12)
  %tobool4.not = icmp eq ptr %call, null
  %or.cond = select i1 %spec.select, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %do.end, label %if.else

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %14) #21
  br label %cleanup

if.else:                                          ; preds = %for.body
  %or.cond8 = select i1 %spec.select, i1 true, i1 %tobool4.not
  br i1 %or.cond8, label %if.else18, label %do.end14

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key, align 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %16) #21
  br label %cleanup

if.else18:                                        ; preds = %if.else
  %spec.select.not = xor i1 %spec.select, true
  %or.cond9 = select i1 %spec.select.not, i1 true, i1 %tobool4.not
  br i1 %or.cond9, label %if.else18.if.end37_crit_edge, label %if.then22

if.else18.if.end37_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then22:                                        ; preds = %if.else18
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %i.014)
  %cmp25.not = icmp eq i32 %18, %i.014
  br i1 %cmp25.not, label %if.then22.if.end37_crit_edge, label %do.end29

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %18, i32 noundef %i.014) #21
  br label %cleanup

if.end37:                                         ; preds = %if.then22.if.end37_crit_edge, %if.else18.if.end37_crit_edge
  call fastcc void @cond_resched_rcu()
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #19
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %entries
  br i1 %exitcond.not, label %if.end37.cleanup40_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end37.cleanup40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup40

cleanup:                                          ; preds = %do.end29, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #19
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup, %if.end37.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !353
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 696, ptr noundef nonnull @.str.68) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i1 = tail call fastcc ptr @__rhashtable_lookup(ptr noundef nonnull @ht, ptr noundef %key, [7 x i32] %params.coerce) #19
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %rcu_read_lock.exit.rhashtable_lookup.exit_crit_edge, label %cond.true.i

rcu_read_lock.exit.rhashtable_lookup.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %4 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @ht, i32 0, i32 3, i32 3), align 2
  %conv.i.i = zext i16 %4 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i1, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %rcu_read_lock.exit.rhashtable_lookup.exit_crit_edge
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %rcu_read_lock.exit.rhashtable_lookup.exit_crit_edge ]
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i3, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %rhashtable_lookup.exit
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %5 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i10 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce, i1 noundef zeroext %rhlist) unnamed_addr #9 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #19
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !353
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 696, ptr noundef nonnull @.str.68) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b285 = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b285, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 715, ptr noundef nonnull @.str.52) #19
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %params.coerce.fca.5.extract.i = extractvalue [7 x i32] %params.coerce, 5
  %10 = inttoptr i32 %params.coerce.fca.5.extract.i to ptr
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i)
  %tobool.not.i286 = icmp eq i32 %params.coerce.fca.5.extract.i, 0
  br i1 %tobool.not.i286, label %if.then.i.i.i, label %cond.true.i, !prof !355

cond.true.i:                                      ; preds = %do.end12
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i = and i32 %params.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %key_len6.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %key_len6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len6.i, align 2
  %conv7.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv7.i, %cond.false.i ], [ %conv.i, %cond.true.i.cond.end.i_crit_edge ]
  %hash_rnd.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i, align 8
  %call8.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef %16) #19
  br label %rht_head_hashfn.exit

if.then.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #18
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i, align 8
  %params.coerce.fca.1.extract.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i = lshr i32 %params.coerce.fca.1.extract.i, 16
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %params.sroa.3.4.extract.shift.i
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hashfn.i.i.i, align 4
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %21 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef %18) #19
  br label %rht_head_hashfn.exit

rht_head_hashfn.exit:                             ; preds = %if.then.i.i.i, %cond.end.i
  %hash.2.i.i.sink.i = phi i32 [ %call8.i, %cond.end.i ], [ %call.i.i.i, %if.then.i.i.i ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  %sub.i.i.i = add i32 %24, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %hash.2.i.i.sink.i
  %nest.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %nest.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i287 = icmp eq i32 %26, 0
  br i1 %tobool.not.i287, label %cond.false.i290, label %cond.true.i289, !prof !350

cond.true.i289:                                   ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i288 = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %9, i32 noundef %and.i3.i.i) #19
  br label %rht_bucket_insert.exit

cond.false.i290:                                  ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %cond.false.i290, %cond.true.i289
  %cond.i291 = phi ptr [ %call.i288, %cond.true.i289 ], [ %arrayidx.i, %cond.false.i290 ]
  %tobool17.not = icmp eq ptr %cond.i291, null
  br i1 %tobool17.not, label %rht_bucket_insert.exit.out_crit_edge, label %if.end19

rht_bucket_insert.exit.out_crit_edge:             ; preds = %rht_bucket_insert.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end19:                                         ; preds = %rht_bucket_insert.exit
  tail call fastcc void @rht_lock(ptr noundef %9, ptr noundef nonnull %cond.i291)
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end30, label %if.end19.slow_path_crit_edge, !prof !350

if.end19.slow_path_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path

slow_path:                                        ; preds = %rht_grow_above_100.exit.slow_path_crit_edge, %for.end.slow_path_crit_edge, %if.end19.slow_path_crit_edge
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i291)
  %call.i293 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i293, label %slow_path.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i296

slow_path.rcu_read_unlock.exit_crit_edge:         ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i296:                               ; preds = %slow_path
  %call1.i294 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i294)
  %tobool.not.i295 = icmp eq i32 %call1.i294, 0
  br i1 %tobool.not.i295, label %land.lhs.true.i296.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i298

land.lhs.true.i296.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i296
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i298:                              ; preds = %land.lhs.true.i296
  %.b4.i297 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i297, label %land.lhs.true2.i298.rcu_read_unlock.exit_crit_edge, label %if.then.i299

land.lhs.true2.i298.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i298
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i299:                                     ; preds = %land.lhs.true2.i298
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i299, %land.lhs.true2.i298.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i296.rcu_read_unlock.exit_crit_edge, %slow_path.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %29 = call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i300 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i300 to ptr
  %preempt_count.i.i.i.i301 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i301, align 4
  %sub.i.i.i302 = add i32 %32, -1
  store volatile i32 %sub.i.i.i302, ptr %preempt_count.i.i.i.i301, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  %call29 = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #19
  br label %cleanup210

if.end30:                                         ; preds = %if.end19
  %call.i303 = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool.not.i304 = icmp eq i32 %call.i303, 0
  br i1 %tobool.not.i304, label %land.lhs.true.i306, label %if.end30.rht_ptr.exit_crit_edge

if.end30.rht_ptr.exit_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit

land.lhs.true.i306:                               ; preds = %if.end30
  %call1.i305 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i305)
  %tobool2.not.i = icmp eq i32 %call1.i305, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i306.rht_ptr.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i306.rht_ptr.exit_crit_edge:        ; preds = %land.lhs.true.i306
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i306
  %.b7.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.rht_ptr.exit_crit_edge, label %if.then.i307

land.lhs.true3.i.rht_ptr.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit

if.then.i307:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 377, ptr noundef nonnull @.str.54) #19
  br label %rht_ptr.exit

rht_ptr.exit:                                     ; preds = %if.then.i307, %land.lhs.true3.i.rht_ptr.exit_crit_edge, %land.lhs.true.i306.rht_ptr.exit_crit_edge, %if.end30.rht_ptr.exit_crit_edge
  %33 = ptrtoint ptr %cond.i291 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cond.i291, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %36 = ptrtoint ptr %cond.i291 to i32
  %or.i.i = or i32 %36, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and.i.i
  %and.i375 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i375)
  %tobool.i.not376 = icmp eq i32 %and.i375, 0
  br i1 %tobool.i.not376, label %for.body.lr.ph, label %rht_ptr.exit.if.end152_crit_edge

rht_ptr.exit.if.end152_crit_edge:                 ; preds = %rht_ptr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152

for.body.lr.ph:                                   ; preds = %rht_ptr.exit
  %37 = inttoptr i32 %cond.i.i to ptr
  %tobool35.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract)
  %tobool37.not = icmp eq i32 %params.coerce.fca.6.extract, 0
  br label %for.body

for.body:                                         ; preds = %do.end147.for.body_crit_edge, %for.body.lr.ph
  %pprev.0379 = phi ptr [ null, %for.body.lr.ph ], [ %head.0378, %do.end147.for.body_crit_edge ]
  %head.0378 = phi ptr [ %37, %for.body.lr.ph ], [ %56, %do.end147.for.body_crit_edge ]
  %elasticity.0377 = phi i32 [ 16, %for.body.lr.ph ], [ %dec, %do.end147.for.body_crit_edge ]
  %dec = add i32 %elasticity.0377, -1
  br i1 %tobool35.not, label %for.body.do.body136_crit_edge, label %lor.lhs.false36

for.body.do.body136_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136

lor.lhs.false36:                                  ; preds = %for.body
  %38 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %head_offset.i.i, align 2
  %conv.i311 = zext i16 %39 to i32
  %idx.neg.i312 = sub nsw i32 0, %conv.i311
  %add.ptr.i313 = getelementptr i8, ptr %head.0378, i32 %idx.neg.i312
  br i1 %tobool37.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false36
  %call40 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i313) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.true.if.end46_crit_edge, label %cond.true.do.body136_crit_edge

cond.true.do.body136_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136

cond.true.if.end46_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

cond.false:                                       ; preds = %lor.lhs.false36
  %40 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arg, align 4
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_offset.i, align 4
  %conv.i314 = zext i16 %43 to i32
  %add.ptr.i315 = getelementptr i8, ptr %add.ptr.i313, i32 %conv.i314
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %key_len.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %key_len.i, align 2
  %conv3.i = zext i16 %47 to i32
  %bcmp = call i32 @bcmp(ptr %add.ptr.i315, ptr %45, i32 %conv3.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cond.false.if.end46_crit_edge, label %cond.false.do.body136_crit_edge

cond.false.do.body136_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136

cond.false.if.end46_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.end46:                                         ; preds = %cond.false.if.end46_crit_edge, %cond.true.if.end46_crit_edge
  %48 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head_offset.i.i, align 2
  %conv.i318 = zext i16 %49 to i32
  %idx.neg.i319 = sub nsw i32 0, %conv.i318
  %add.ptr.i320 = getelementptr i8, ptr %head.0378, i32 %idx.neg.i319
  br i1 %rhlist, label %if.end50, label %if.end46.out_unlock_crit_edge

if.end46.out_unlock_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end50:                                         ; preds = %if.end46
  %next61 = getelementptr inbounds %struct.rhlist_head, ptr %obj, i32 0, i32 1
  %50 = ptrtoint ptr %next61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %head.0378, ptr %next61, align 4
  %call69 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true71, label %if.end50.do.end79_crit_edge

if.end50.do.end79_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79

land.lhs.true71:                                  ; preds = %if.end50
  %call72 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.do.end79_crit_edge, label %land.lhs.true74

land.lhs.true71.do.end79_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %.b281284 = load i1, ptr @__rhashtable_insert_fast.__warned.53, align 1
  br i1 %.b281284, label %land.lhs.true74.do.end79_crit_edge, label %if.then76

land.lhs.true74.do.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79

if.then76:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned.53, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 755, ptr noundef nonnull @.str.54) #19
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.lhs.true74.do.end79_crit_edge, %land.lhs.true71.do.end79_crit_edge, %if.end50.do.end79_crit_edge
  %51 = ptrtoint ptr %head.0378 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.0378, align 4
  %53 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %52, ptr %obj, align 4
  %tobool95.not = icmp eq ptr %pprev.0379, null
  br i1 %tobool95.not, label %if.else133, label %do.body97

do.body97:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !361
  %54 = ptrtoint ptr %pprev.0379 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %obj, ptr %pprev.0379, align 4
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i291)
  br label %out

if.else133:                                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i291, ptr noundef %obj)
  br label %out

do.body136:                                       ; preds = %cond.false.do.body136_crit_edge, %cond.true.do.body136_crit_edge, %for.body.do.body136_crit_edge
  %call137 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.body136.do.end147_crit_edge

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.body136
  %call140 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b282283 = load i1, ptr @__rhashtable_insert_fast.__warned.55, align 1
  br i1 %.b282283, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned.55, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 732, ptr noundef nonnull @.str.54) #19
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %land.lhs.true142.do.end147_crit_edge, %land.lhs.true139.do.end147_crit_edge, %do.body136.do.end147_crit_edge
  %55 = ptrtoint ptr %head.0378 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.0378, align 4
  %57 = ptrtoint ptr %56 to i32
  %and.i = and i32 %57, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end147.for.body_crit_edge, label %for.end

do.end147.for.body_crit_edge:                     ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %for.end.slow_path_crit_edge, label %for.end.if.end152_crit_edge

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152

for.end.slow_path_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path

if.end152:                                        ; preds = %for.end.if.end152_crit_edge, %rht_ptr.exit.if.end152_crit_edge
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i321 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #19
  %58 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %nelems.i, align 4
  %max_elems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %60 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_elems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp.i.not = icmp ult i32 %59, %61
  br i1 %cmp.i.not, label %if.end162, label %if.end152.out_unlock_crit_edge, !prof !350

if.end152.out_unlock_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end162:                                        ; preds = %if.end152
  %call.i.i.i323 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #19
  %62 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %nelems.i, align 4
  %64 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp.i324 = icmp ugt i32 %63, %65
  br i1 %cmp.i324, label %rht_grow_above_100.exit, label %if.end162.if.end171_crit_edge

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171

rht_grow_above_100.exit:                          ; preds = %if.end162
  %max_size.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %66 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i325 = icmp eq i32 %67, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp4.i = icmp ult i32 %65, %67
  %spec.select.i = select i1 %tobool.not.i325, i1 true, i1 %cmp4.i
  br i1 %spec.select.i, label %rht_grow_above_100.exit.slow_path_crit_edge, label %rht_grow_above_100.exit.if.end171_crit_edge, !prof !355

rht_grow_above_100.exit.if.end171_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171

rht_grow_above_100.exit.slow_path_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path

if.end171:                                        ; preds = %rht_grow_above_100.exit.if.end171_crit_edge, %if.end162.if.end171_crit_edge
  %call.i326 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool.not.i327 = icmp eq i32 %call.i326, 0
  br i1 %tobool.not.i327, label %land.lhs.true.i330, label %if.end171.rht_ptr.exit338_crit_edge

if.end171.rht_ptr.exit338_crit_edge:              ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit338

land.lhs.true.i330:                               ; preds = %if.end171
  %call1.i328 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i328)
  %tobool2.not.i329 = icmp eq i32 %call1.i328, 0
  br i1 %tobool2.not.i329, label %land.lhs.true.i330.rht_ptr.exit338_crit_edge, label %land.lhs.true3.i332

land.lhs.true.i330.rht_ptr.exit338_crit_edge:     ; preds = %land.lhs.true.i330
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit338

land.lhs.true3.i332:                              ; preds = %land.lhs.true.i330
  %.b7.i331 = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i331, label %land.lhs.true3.i332.rht_ptr.exit338_crit_edge, label %if.then.i333

land.lhs.true3.i332.rht_ptr.exit338_crit_edge:    ; preds = %land.lhs.true3.i332
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit338

if.then.i333:                                     ; preds = %land.lhs.true3.i332
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 377, ptr noundef nonnull @.str.54) #19
  br label %rht_ptr.exit338

rht_ptr.exit338:                                  ; preds = %if.then.i333, %land.lhs.true3.i332.rht_ptr.exit338_crit_edge, %land.lhs.true.i330.rht_ptr.exit338_crit_edge, %if.end171.rht_ptr.exit338_crit_edge
  %68 = ptrtoint ptr %cond.i291 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cond.i291, align 4
  %70 = ptrtoint ptr %69 to i32
  %and.i.i334 = and i32 %70, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i334)
  %tobool.not.i.i335 = icmp eq i32 %and.i.i334, 0
  %cond.i.i337 = select i1 %tobool.not.i.i335, i32 %or.i.i, i32 %and.i.i334
  %71 = inttoptr i32 %cond.i.i337 to ptr
  %72 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %71, ptr %obj, align 4
  br i1 %rhlist, label %if.then187, label %rht_ptr.exit338.if.end205_crit_edge

rht_ptr.exit338.if.end205_crit_edge:              ; preds = %rht_ptr.exit338
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end205

if.then187:                                       ; preds = %rht_ptr.exit338
  call void @__sanitizer_cov_trace_pc() #18
  %next198 = getelementptr inbounds %struct.rhlist_head, ptr %obj, i32 0, i32 1
  %73 = ptrtoint ptr %next198 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr null, ptr %next198, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then187, %rht_ptr.exit338.if.end205_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #19
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #19, !srcloc !362
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i291, ptr noundef %obj)
  %call.i.i.i340 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #19
  %75 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %nelems.i, align 4
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %9, align 128
  %div8.i = lshr i32 %78, 2
  %mul.i = mul nuw i32 %div8.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %mul.i)
  %cmp.i341 = icmp ugt i32 %76, %mul.i
  br i1 %cmp.i341, label %rht_grow_above_75.exit, label %if.end205.out_crit_edge

if.end205.out_crit_edge:                          ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

rht_grow_above_75.exit:                           ; preds = %if.end205
  %max_size.i342 = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %79 = ptrtoint ptr %max_size.i342 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_size.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i343 = icmp eq i32 %80, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp4.i344 = icmp ult i32 %78, %80
  %spec.select.i345 = select i1 %tobool.not.i343, i1 true, i1 %cmp4.i344
  br i1 %spec.select.i345, label %if.then207, label %rht_grow_above_75.exit.out_crit_edge

rht_grow_above_75.exit.out_crit_edge:             ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then207:                                       ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #18
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i347 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %run_work) #19
  br label %out

out:                                              ; preds = %out_unlock, %if.then207, %rht_grow_above_75.exit.out_crit_edge, %if.end205.out_crit_edge, %if.else133, %do.body97, %rht_bucket_insert.exit.out_crit_edge
  %data.2 = phi ptr [ %data.3, %out_unlock ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.out_crit_edge ], [ null, %if.then207 ], [ null, %rht_grow_above_75.exit.out_crit_edge ], [ null, %if.else133 ], [ null, %do.body97 ], [ null, %if.end205.out_crit_edge ]
  %call.i348 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i348, label %out.rcu_read_unlock.exit358_crit_edge, label %land.lhs.true.i351

out.rcu_read_unlock.exit358_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit358

land.lhs.true.i351:                               ; preds = %out
  %call1.i349 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i349)
  %tobool.not.i350 = icmp eq i32 %call1.i349, 0
  br i1 %tobool.not.i350, label %land.lhs.true.i351.rcu_read_unlock.exit358_crit_edge, label %land.lhs.true2.i353

land.lhs.true.i351.rcu_read_unlock.exit358_crit_edge: ; preds = %land.lhs.true.i351
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit358

land.lhs.true2.i353:                              ; preds = %land.lhs.true.i351
  %.b4.i352 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i352, label %land.lhs.true2.i353.rcu_read_unlock.exit358_crit_edge, label %if.then.i354

land.lhs.true2.i353.rcu_read_unlock.exit358_crit_edge: ; preds = %land.lhs.true2.i353
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit358

if.then.i354:                                     ; preds = %land.lhs.true2.i353
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit358

rcu_read_unlock.exit358:                          ; preds = %if.then.i354, %land.lhs.true2.i353.rcu_read_unlock.exit358_crit_edge, %land.lhs.true.i351.rcu_read_unlock.exit358_crit_edge, %out.rcu_read_unlock.exit358_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %82 = call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i355 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i355 to ptr
  %preempt_count.i.i.i.i356 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i356, align 4
  %sub.i.i.i357 = add i32 %85, -1
  store volatile i32 %sub.i.i.i357, ptr %preempt_count.i.i.i.i356, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  br label %cleanup210

out_unlock:                                       ; preds = %if.end152.out_unlock_crit_edge, %if.end46.out_unlock_crit_edge
  %data.3 = phi ptr [ inttoptr (i32 -7 to ptr), %if.end152.out_unlock_crit_edge ], [ %add.ptr.i320, %if.end46.out_unlock_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i291)
  br label %out

cleanup210:                                       ; preds = %rcu_read_unlock.exit358, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %call29, %rcu_read_unlock.exit ], [ %data.2, %rcu_read_unlock.exit358 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #19
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !363
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #19
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !364

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #19
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #19, !srcloc !365
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !366
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !350

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !367
  %7 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !368
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !369
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !370
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #19
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #19
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !355

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #19, !srcloc !371
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !372
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #19
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #19, !srcloc !373
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !374
  %3 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !375
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !376
  %2 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cond_resched_rcu() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i1, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %entry
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i8 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  tail call void @__might_resched(ptr noundef nonnull @.str.77, i32 noundef 2089, i32 noundef 0) #19
  %call.i10 = tail call i32 @__cond_resched() #19
  %4 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !353
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %rcu_read_unlock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 696, ptr noundef nonnull @.str.68) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_lookup(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #9 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #19
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b92 = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 594, ptr noundef nonnull @.str.52) #19
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %entry.do.end12_crit_edge
  %hashfn.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract)
  %tobool19.not = icmp eq i32 %params.coerce.fca.6.extract, 0
  %head_offset.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end60.if.then.i.i_crit_edge, %do.end12
  %tbl.0 = phi ptr [ %5, %do.end12 ], [ %36, %do.end60.if.then.i.i_crit_edge ]
  %hash_rnd.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 2
  %6 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_rnd.i, align 8
  %8 = ptrtoint ptr %hashfn.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hashfn.i.i, align 4
  %10 = ptrtoint ptr %key_len1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len1.i.i, align 4
  %call.i.i = call i32 %9(ptr noundef %key, i32 noundef %11, i32 noundef %7) #19
  %12 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbl.0, align 128
  %sub.i.i = add i32 %13, -1
  %and.i3.i = and i32 %sub.i.i, %call.i.i
  %nest.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i, !prof !350

cond.true.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0, i32 noundef %and.i3.i) #19
  br label %rht_bucket.exit

cond.false.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %tbl.0, i32 0, i32 8, i32 %and.i3.i
  br label %rht_bucket.exit

rht_bucket.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ %arrayidx.i, %cond.false.i ]
  %16 = ptrtoint ptr %cond.i to i32
  %or.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i to ptr
  br label %do.body16

do.body16:                                        ; preds = %do.cond34.do.body16_crit_edge, %rht_bucket.exit
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !377
  %18 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cond.i, align 4
  %call.i93 = call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %land.lhs.true.i, label %do.body16.rht_ptr_rcu.exit_crit_edge

do.body16.rht_ptr_rcu.exit_crit_edge:             ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit

land.lhs.true.i:                                  ; preds = %do.body16
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.rht_ptr_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.rht_ptr_rcu.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true4.i.rht_ptr_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.rht_ptr_rcu.exit_crit_edge:      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 369, ptr noundef nonnull @.str.52) #19
  br label %rht_ptr_rcu.exit

rht_ptr_rcu.exit:                                 ; preds = %if.then.i, %land.lhs.true4.i.rht_ptr_rcu.exit_crit_edge, %land.lhs.true.i.rht_ptr_rcu.exit_crit_edge, %do.body16.rht_ptr_rcu.exit_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i95 = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %tobool.not.i.i96 = icmp eq i32 %and.i.i95, 0
  %cond.i.i = select i1 %tobool.not.i.i96, i32 %or.i.i, i32 %and.i.i95
  %21 = inttoptr i32 %cond.i.i to ptr
  %and.i106 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.i.not107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.i.not107, label %rht_ptr_rcu.exit.for.body_crit_edge, label %rht_ptr_rcu.exit.do.cond34_crit_edge

rht_ptr_rcu.exit.do.cond34_crit_edge:             ; preds = %rht_ptr_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond34

rht_ptr_rcu.exit.for.body_crit_edge:              ; preds = %rht_ptr_rcu.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rht_ptr_rcu.exit.for.body_crit_edge
  %he.0108 = phi ptr [ %33, %for.inc.for.body_crit_edge ], [ %21, %rht_ptr_rcu.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i, align 2
  %conv.i98 = zext i16 %23 to i32
  %idx.neg.i99 = sub nsw i32 0, %conv.i98
  %add.ptr.i100 = getelementptr i8, ptr %he.0108, i32 %idx.neg.i99
  br i1 %tobool19.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  %call22 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i100) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cond.true.cleanup_crit_edge, label %cond.true.for.inc_crit_edge

cond.true.for.inc_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false:                                       ; preds = %for.body
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg, align 4
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i, align 4
  %conv.i101 = zext i16 %27 to i32
  %add.ptr.i102 = getelementptr i8, ptr %add.ptr.i100, i32 %conv.i101
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %key_len.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_len.i, align 2
  %conv3.i = zext i16 %31 to i32
  %bcmp = call i32 @bcmp(ptr %add.ptr.i102, ptr %29, i32 %conv3.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %cond.false.cleanup_crit_edge, label %cond.false.for.inc_crit_edge

cond.false.for.inc_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc:                                          ; preds = %cond.false.for.inc_crit_edge, %cond.true.for.inc_crit_edge
  %32 = ptrtoint ptr %he.0108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %he.0108, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i = and i32 %34, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.inc.for.body_crit_edge, label %for.inc.do.cond34_crit_edge

for.inc.do.cond34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond34

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.cond34:                                        ; preds = %for.inc.do.cond34_crit_edge, %rht_ptr_rcu.exit.do.cond34_crit_edge
  %he.0.lcssa = phi ptr [ %21, %rht_ptr_rcu.exit.do.cond34_crit_edge ], [ %33, %for.inc.do.cond34_crit_edge ]
  %cmp.not = icmp eq ptr %he.0.lcssa, %17
  br i1 %cmp.not, label %do.end39, label %do.cond34.do.body16_crit_edge

do.cond34.do.body16_crit_edge:                    ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16

do.end39:                                         ; preds = %do.cond34
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !378
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 5
  %35 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %future_tbl, align 4
  %call47 = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %do.end39.do.end60_crit_edge

do.end39.do.end60_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60

lor.lhs.false49:                                  ; preds = %do.end39
  %call50 = call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %lor.lhs.false49.do.end60_crit_edge

lor.lhs.false49.do.end60_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60

land.lhs.true52:                                  ; preds = %lor.lhs.false49
  %call53 = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b9091 = load i1, ptr @__rhashtable_lookup.__warned.79, align 1
  br i1 %.b9091, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_lookup.__warned.79, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 614, ptr noundef nonnull @.str.52) #19
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true52.do.end60_crit_edge, %lor.lhs.false49.do.end60_crit_edge, %do.end39.do.end60_crit_edge
  %tobool62.not = icmp eq ptr %36, null
  br i1 %tobool62.not, label %do.end60.cleanup_crit_edge, label %do.end60.if.then.i.i_crit_edge, !prof !350

do.end60.if.then.i.i_crit_edge:                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %do.end60.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %he.0108, %cond.false.cleanup_crit_edge ], [ %he.0108, %cond.true.cleanup_crit_edge ], [ null, %do.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #19
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce, i1 noundef zeroext %rhlist) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !353
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 696, ptr noundef nonnull @.str.68) #19
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b42, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1076, ptr noundef nonnull @.str.52) #19
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %do.end33.while.cond_crit_edge, %do.end10
  %tbl.0 = phi ptr [ %5, %do.end10 ], [ %53, %do.end33.while.cond_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  br i1 %tobool.not.i.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !355

cond.true.i.i:                                    ; preds = %while.cond
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #19
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #19
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i237.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i237.i, label %cond.false.i239.i, label %cond.true.i238.i, !prof !350

cond.true.i238.i:                                 ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0, i32 noundef %and.i3.i.i.i) #19
  br label %rht_bucket_var.exit.i

cond.false.i239.i:                                ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_var.exit.i

rht_bucket_var.exit.i:                            ; preds = %cond.false.i239.i, %cond.true.i238.i
  %cond.i240.i = phi ptr [ %call.i.i, %cond.true.i238.i ], [ %arrayidx.i.i, %cond.false.i239.i ]
  %tobool.not.i43 = icmp eq ptr %cond.i240.i, null
  br i1 %tobool.not.i43, label %rht_bucket_var.exit.i.land.rhs_crit_edge, label %if.end.i

rht_bucket_var.exit.i.land.rhs_crit_edge:         ; preds = %rht_bucket_var.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

if.end.i:                                         ; preds = %rht_bucket_var.exit.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i240.i) #19
  %call.i242.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242.i)
  %tobool.not.i243.i = icmp eq i32 %call.i242.i, 0
  br i1 %tobool.not.i243.i, label %land.lhs.true.i.i, label %if.end.i.rht_ptr.exit.i_crit_edge

if.end.i.rht_ptr.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rht_ptr.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 377, ptr noundef nonnull @.str.54) #19
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr.exit.i_crit_edge, %if.end.i.rht_ptr.exit.i_crit_edge
  %23 = ptrtoint ptr %cond.i240.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i240.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %26 = ptrtoint ptr %cond.i240.i to i32
  %or.i.i.i = or i32 %26, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i266.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266.i)
  %tobool.i.not267.i = icmp eq i32 %and.i266.i, 0
  br i1 %tobool.i.not267.i, label %for.body.preheader.i, label %rht_ptr.exit.i.__rhashtable_remove_fast_one.exit.thread63_crit_edge

rht_ptr.exit.i.__rhashtable_remove_fast_one.exit.thread63_crit_edge: ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit.thread63

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %27 = inttoptr i32 %cond.i.i.i to ptr
  %cmp.not.i76 = icmp eq ptr %27, %obj
  br i1 %cmp.not.i76, label %for.body.preheader.i.do.body54.i_crit_edge, label %for.body.preheader.i.if.then4.i_crit_edge

for.body.preheader.i.if.then4.i_crit_edge:        ; preds = %for.body.preheader.i
  br label %if.then4.i

for.body.preheader.i.do.body54.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54.i

for.body.i:                                       ; preds = %do.end156.i
  %cmp.not.i = icmp eq ptr %37, %obj
  br i1 %cmp.not.i, label %for.body.i.do.body54.i_crit_edge, label %for.body.i.if.then4.i_crit_edge

for.body.i.if.then4.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i

for.body.i.do.body54.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54.i

if.then4.i:                                       ; preds = %for.body.i.if.then4.i_crit_edge, %for.body.preheader.i.if.then4.i_crit_edge
  %he.0268.i77 = phi ptr [ %37, %for.body.i.if.then4.i_crit_edge ], [ %27, %for.body.preheader.i.if.then4.i_crit_edge ]
  br i1 %rhlist, label %if.then4.i.do.body.i_crit_edge, label %if.then4.i.do.body145.i_crit_edge

if.then4.i.do.body145.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body145.i

if.then4.i.do.body.i_crit_edge:                   ; preds = %if.then4.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.then4.i.do.body.i_crit_edge
  %list.0.i = phi ptr [ %29, %do.end.i.do.body.i_crit_edge ], [ %he.0268.i77, %if.then4.i.do.body.i_crit_edge ]
  %next8.i = getelementptr inbounds %struct.rhlist_head, ptr %list.0.i, i32 0, i32 1
  %call10.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i44, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i44:                                ; preds = %do.body.i
  %call12.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i44.do.end.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i44.do.end.i_crit_edge:             ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i44
  %.b236.i = load i1, ptr @__rhashtable_remove_fast_one.__warned, align 1
  br i1 %.b236.i, label %land.lhs.true14.i.do.end.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end.i_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1020, ptr noundef nonnull @.str.54) #19
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %land.lhs.true14.i.do.end.i_crit_edge, %land.lhs.true.i44.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %28 = ptrtoint ptr %next8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next8.i, align 4
  %tobool21.not.i = icmp eq ptr %29, null
  %cmp22.not.i = icmp eq ptr %29, %obj
  %or.cond.i = or i1 %tobool21.not.i, %cmp22.not.i
  br i1 %or.cond.i, label %do.end23.i, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.end23.i:                                       ; preds = %do.end.i
  br i1 %tobool21.not.i, label %do.end23.i.do.body145.i_crit_edge, label %do.body27.i

do.end23.i.do.body145.i_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body145.i

do.body27.i:                                      ; preds = %do.end23.i
  %call28.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true30.i, label %do.body27.i.__rhashtable_remove_fast_one.exit_crit_edge

do.body27.i.__rhashtable_remove_fast_one.exit_crit_edge: ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit

land.lhs.true30.i:                                ; preds = %do.body27.i
  %call31.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true30.i.__rhashtable_remove_fast_one.exit_crit_edge, label %land.lhs.true33.i

land.lhs.true30.i.__rhashtable_remove_fast_one.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit

land.lhs.true33.i:                                ; preds = %land.lhs.true30.i
  %.b228235.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.81, align 1
  br i1 %.b228235.i, label %land.lhs.true33.i.__rhashtable_remove_fast_one.exit_crit_edge, label %if.then35.i

land.lhs.true33.i.__rhashtable_remove_fast_one.exit_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.81, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1026, ptr noundef nonnull @.str.54) #19
  br label %__rhashtable_remove_fast_one.exit

do.body54.i:                                      ; preds = %for.body.i.do.body54.i_crit_edge, %for.body.preheader.i.do.body54.i_crit_edge
  %pprev.0269.i.lcssa = phi ptr [ %he.0268.i77, %for.body.i.do.body54.i_crit_edge ], [ null, %for.body.preheader.i.do.body54.i_crit_edge ]
  %call55.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %land.lhs.true57.i, label %do.body54.i.do.end65.i_crit_edge

do.body54.i.do.end65.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i

land.lhs.true57.i:                                ; preds = %do.body54.i
  %call58.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true57.i.do.end65.i_crit_edge, label %land.lhs.true60.i

land.lhs.true57.i.do.end65.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i

land.lhs.true60.i:                                ; preds = %land.lhs.true57.i
  %.b229234.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.82, align 1
  br i1 %.b229234.i, label %land.lhs.true60.i.do.end65.i_crit_edge, label %if.then62.i

land.lhs.true60.i.do.end65.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i

if.then62.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.82, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1032, ptr noundef nonnull @.str.54) #19
  br label %do.end65.i

do.end65.i:                                       ; preds = %if.then62.i, %land.lhs.true60.i.do.end65.i_crit_edge, %land.lhs.true57.i.do.end65.i_crit_edge, %do.body54.i.do.end65.i_crit_edge
  %30 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %obj, align 4
  br i1 %rhlist, label %do.body70.i, label %do.end65.i.if.end102.i_crit_edge

do.end65.i.if.end102.i_crit_edge:                 ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102.i

do.body70.i:                                      ; preds = %do.end65.i
  %call71.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %land.lhs.true73.i, label %do.body70.i.do.end81.i_crit_edge

do.body70.i.do.end81.i_crit_edge:                 ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81.i

land.lhs.true73.i:                                ; preds = %do.body70.i
  %call74.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %land.lhs.true73.i.do.end81.i_crit_edge, label %land.lhs.true76.i

land.lhs.true73.i.do.end81.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81.i

land.lhs.true76.i:                                ; preds = %land.lhs.true73.i
  %.b230233.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.83, align 1
  br i1 %.b230233.i, label %land.lhs.true76.i.do.end81.i_crit_edge, label %if.then78.i

land.lhs.true76.i.do.end81.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81.i

if.then78.i:                                      ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.83, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1036, ptr noundef nonnull @.str.54) #19
  br label %do.end81.i

do.end81.i:                                       ; preds = %if.then78.i, %land.lhs.true76.i.do.end81.i_crit_edge, %land.lhs.true73.i.do.end81.i_crit_edge, %do.body70.i.do.end81.i_crit_edge
  %next83.i = getelementptr inbounds %struct.rhlist_head, ptr %obj, i32 0, i32 1
  %32 = ptrtoint ptr %next83.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next83.i, align 4
  %tobool84.not.i = icmp eq ptr %33, null
  br i1 %tobool84.not.i, label %do.end81.i.if.end102.i_crit_edge, label %do.body91.i

do.end81.i.if.end102.i_crit_edge:                 ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102.i

do.body91.i:                                      ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %31, ptr %33, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %do.body91.i, %do.end81.i.if.end102.i_crit_edge, %do.end65.i.if.end102.i_crit_edge
  %cmp159.i = phi i1 [ true, %do.end81.i.if.end102.i_crit_edge ], [ false, %do.body91.i ], [ true, %do.end65.i.if.end102.i_crit_edge ]
  %obj.addr.1.i = phi ptr [ %31, %do.end81.i.if.end102.i_crit_edge ], [ %33, %do.body91.i ], [ %31, %do.end65.i.if.end102.i_crit_edge ]
  %tobool103.not.i = icmp eq ptr %pprev.0269.i.lcssa, null
  br i1 %tobool103.not.i, label %if.else142.i, label %do.body105.i

do.body105.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !379
  %35 = ptrtoint ptr %pprev.0269.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %obj.addr.1.i, ptr %pprev.0269.i.lcssa, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i240.i) #19
  br label %unlocked.i

if.else142.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i240.i, ptr noundef %obj.addr.1.i) #19
  br label %unlocked.i

do.body145.i:                                     ; preds = %do.end23.i.do.body145.i_crit_edge, %if.then4.i.do.body145.i_crit_edge
  %call146.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %land.lhs.true148.i, label %do.body145.i.do.end156.i_crit_edge

do.body145.i.do.end156.i_crit_edge:               ; preds = %do.body145.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i

land.lhs.true148.i:                               ; preds = %do.body145.i
  %call149.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  br i1 %tobool150.not.i, label %land.lhs.true148.i.do.end156.i_crit_edge, label %land.lhs.true151.i

land.lhs.true148.i.do.end156.i_crit_edge:         ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i

land.lhs.true151.i:                               ; preds = %land.lhs.true148.i
  %.b231232.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.84, align 1
  br i1 %.b231232.i, label %land.lhs.true151.i.do.end156.i_crit_edge, label %if.then153.i

land.lhs.true151.i.do.end156.i_crit_edge:         ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i

if.then153.i:                                     ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.84, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1004, ptr noundef nonnull @.str.54) #19
  br label %do.end156.i

do.end156.i:                                      ; preds = %if.then153.i, %land.lhs.true151.i.do.end156.i_crit_edge, %land.lhs.true148.i.do.end156.i_crit_edge, %do.body145.i.do.end156.i_crit_edge
  %36 = ptrtoint ptr %he.0268.i77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %he.0268.i77, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i, label %do.end156.i.__rhashtable_remove_fast_one.exit.thread63_crit_edge

do.end156.i.__rhashtable_remove_fast_one.exit.thread63_crit_edge: ; preds = %do.end156.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit.thread63

unlocked.i:                                       ; preds = %if.else142.i, %do.body105.i
  br i1 %cmp159.i, label %if.then160.i, label %unlocked.i.while.end_crit_edge

unlocked.i.while.end_crit_edge:                   ; preds = %unlocked.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.then160.i:                                     ; preds = %unlocked.i
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #19
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #19, !srcloc !352
  %automatic_shrinking.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %automatic_shrinking.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %automatic_shrinking.i, align 2, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool161.not.i = icmp eq i8 %41, 0
  br i1 %tobool161.not.i, label %if.then160.i.while.end_crit_edge, label %land.rhs162.i

if.then160.i.while.end_crit_edge:                 ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

land.rhs162.i:                                    ; preds = %if.then160.i
  %call.i.i.i244.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #19
  %42 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %nelems.i, align 4
  %44 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tbl.0, align 128
  %mul.i.i = mul i32 %45, 3
  %div.i.i = udiv i32 %mul.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %div.i.i)
  %cmp.i.i = icmp ult i32 %43, %div.i.i
  br i1 %cmp.i.i, label %rht_shrink_below_30.exit.i, label %land.rhs162.i.while.end_crit_edge

land.rhs162.i.while.end_crit_edge:                ; preds = %land.rhs162.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

rht_shrink_below_30.exit.i:                       ; preds = %land.rhs162.i
  %min_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %46 = ptrtoint ptr %min_size.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %min_size.i.i, align 4
  %conv.i245.i = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i245.i)
  %cmp2.i.i = icmp ugt i32 %45, %conv.i245.i
  br i1 %cmp2.i.i, label %if.then168.i, label %rht_shrink_below_30.exit.i.while.end_crit_edge, !prof !355

rht_shrink_below_30.exit.i.while.end_crit_edge:   ; preds = %rht_shrink_below_30.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.then168.i:                                     ; preds = %rht_shrink_below_30.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i246.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %run_work.i) #19
  br label %while.end

__rhashtable_remove_fast_one.exit.thread63:       ; preds = %do.end156.i.__rhashtable_remove_fast_one.exit.thread63_crit_edge, %rht_ptr.exit.i.__rhashtable_remove_fast_one.exit.thread63_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i240.i) #19
  br label %land.rhs

__rhashtable_remove_fast_one.exit:                ; preds = %if.then35.i, %land.lhs.true33.i.__rhashtable_remove_fast_one.exit_crit_edge, %land.lhs.true30.i.__rhashtable_remove_fast_one.exit_crit_edge, %do.body27.i.__rhashtable_remove_fast_one.exit_crit_edge
  %next40.i = getelementptr inbounds %struct.rhlist_head, ptr %29, i32 0, i32 1
  %49 = ptrtoint ptr %next40.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next40.i, align 4
  %51 = ptrtoint ptr %next8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %next8.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i240.i) #19
  br label %while.end

land.rhs:                                         ; preds = %__rhashtable_remove_fast_one.exit.thread63, %rht_bucket_var.exit.i.land.rhs_crit_edge
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 5
  %52 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %future_tbl, align 4
  %call20 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %land.rhs.do.end33_crit_edge

land.rhs.do.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33

lor.lhs.false22:                                  ; preds = %land.rhs
  %call23 = tail call i32 @rcu_read_lock_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %lor.lhs.false22.do.end33_crit_edge

lor.lhs.false22.do.end33_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33

land.lhs.true25:                                  ; preds = %lor.lhs.false22
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b4041 = load i1, ptr @__rhashtable_remove_fast.__warned.80, align 1
  br i1 %.b4041, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast.__warned.80, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1085, ptr noundef nonnull @.str.52) #19
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %lor.lhs.false22.do.end33_crit_edge, %land.rhs.do.end33_crit_edge
  %tobool35.not = icmp eq ptr %53, null
  br i1 %tobool35.not, label %do.end33.while.end_crit_edge, label %do.end33.while.cond_crit_edge

do.end33.while.cond_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

do.end33.while.end_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %do.end33.while.end_crit_edge, %__rhashtable_remove_fast_one.exit, %if.then168.i, %rht_shrink_below_30.exit.i.while.end_crit_edge, %land.rhs162.i.while.end_crit_edge, %if.then160.i.while.end_crit_edge, %unlocked.i.while.end_crit_edge
  %retval.0.i57 = phi i32 [ 0, %__rhashtable_remove_fast_one.exit ], [ 0, %unlocked.i.while.end_crit_edge ], [ 0, %if.then160.i.while.end_crit_edge ], [ 0, %if.then168.i ], [ 0, %rht_shrink_below_30.exit.i.while.end_crit_edge ], [ 0, %land.rhs162.i.while.end_crit_edge ], [ -2, %do.end33.while.end_crit_edge ]
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i45, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %while.end
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 724, ptr noundef nonnull @.str.78) #19
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !354
  %54 = tail call i32 @llvm.read_register.i32(metadata !339) #19
  %and.i.i.i.i.i52 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #19
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  ret i32 %retval.0.i57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_insert_dup(ptr noundef %rhl_test_objects, i32 noundef %cnt, i1 noundef zeroext %slow) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 228) #25
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !355

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 543, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call24 = tail call i32 @rhltable_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @test_rht_params_dup) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %for.cond.preheader, label %do.end42, !prof !350

for.cond.preheader:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp11.not = icmp eq i32 %cnt, 0
  br i1 %cmp11.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %head_offset.i = getelementptr inbounds %struct.rhashtable, ptr %call7.i, i32 0, i32 3, i32 3
  br label %for.body

do.end42:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 547, i32 noundef 9, ptr noundef null) #19
  tail call void @kfree(ptr noundef nonnull %call7.i) #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %tid = getelementptr %struct.test_obj_rhl, ptr %rhl_test_objects, i32 %i.012, i32 0, i32 1
  %1 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.012, ptr %tid, align 4
  %list_node = getelementptr %struct.test_obj_rhl, ptr %rhl_test_objects, i32 %i.012, i32 1
  %2 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %head_offset.i, align 2
  %conv.i = zext i16 %3 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %list_node, i32 %idx.neg.i
  br i1 %slow, label %if.then62, label %if.else

if.then62:                                        ; preds = %for.body
  %4 = load i16, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params_dup, i32 0, i32 2), align 4
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv
  %call67 = tail call ptr @rhashtable_insert_slow(ptr noundef nonnull %call7.i, ptr noundef %add.ptr, ptr noundef %list_node) #19
  %cmp69 = icmp eq ptr %call67, inttoptr (i32 -11 to ptr)
  br i1 %cmp69, label %if.then62.for.inc.critedge_crit_edge, label %if.then62.if.end76_crit_edge

if.then62.if.end76_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

if.then62.for.inc.critedge_crit_edge:             ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.critedge

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %.unpack = load i32, ptr @test_rht_params_dup, align 4
  %5 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.unpack1 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params_dup, i32 0, i32 2), align 4
  %6 = insertvalue [7 x i32] %5, i32 %.unpack1, 1
  %.unpack2 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params_dup, i32 0, i32 4), align 4
  %7 = insertvalue [7 x i32] %6, i32 %.unpack2, 2
  %.unpack3 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params_dup, i32 0, i32 5), align 4
  %8 = insertvalue [7 x i32] %7, i32 %.unpack3, 3
  %.unpack4 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params_dup, i32 0, i32 7), align 4
  %9 = insertvalue [7 x i32] %8, i32 %.unpack4, 4
  %.unpack5 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params_dup, i32 0, i32 8), align 4
  %10 = insertvalue [7 x i32] %9, i32 %.unpack5, 5
  %.unpack6 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params_dup, i32 0, i32 9), align 4
  %11 = insertvalue [7 x i32] %10, i32 %.unpack6, 6
  %params.sroa.2.4.extract.shift.i = lshr i32 %.unpack1, 16
  %add.ptr.i7 = getelementptr i8, ptr %add.ptr.i, i32 %params.sroa.2.4.extract.shift.i
  %call.i.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef nonnull %call7.i, ptr noundef %add.ptr.i7, ptr noundef %list_node, [7 x i32] %11, i1 noundef zeroext true) #19
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then62.if.end76_crit_edge
  %err.0.in = phi ptr [ %call67, %if.then62.if.end76_crit_edge ], [ %call.i.i, %if.else ]
  %tobool78.not = icmp eq ptr %err.0.in, null
  br i1 %tobool78.not, label %if.end76.for.inc.critedge_crit_edge, label %do.end94, !prof !350

if.end76.for.inc.critedge_crit_edge:              ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.critedge

do.end94:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %err.0 = ptrtoint ptr %err.0.in to i32
  %cond = select i1 %slow, ptr @.str.90, ptr @.str.91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 566, i32 noundef 9, ptr noundef nonnull @.str.89, i32 noundef %err.0, i32 noundef %i.012, i32 noundef %cnt, ptr noundef nonnull %cond) #19
  br label %skip_print

for.inc.critedge:                                 ; preds = %if.end76.for.inc.critedge_crit_edge, %if.then62.for.inc.critedge_crit_edge
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %for.inc.critedge.for.end_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.critedge.for.end_crit_edge:               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.critedge.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call113 = tail call fastcc i32 @print_ht(ptr noundef nonnull %call7.i) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call113, i32 %cnt)
  %cmp115.not = icmp eq i32 %call113, %cnt
  br i1 %cmp115.not, label %for.end.skip_print_crit_edge, label %do.end132, !prof !350

for.end.skip_print_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %skip_print

do.end132:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %cond135 = select i1 %slow, ptr @.str.90, ptr @.str.91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 571, i32 noundef 9, ptr noundef nonnull @.str.92, i32 noundef %call113, i32 noundef %cnt, ptr noundef nonnull %cond135) #19
  br label %skip_print

skip_print:                                       ; preds = %do.end132, %for.end.skip_print_crit_edge, %do.end94
  tail call void @rhashtable_free_and_destroy(ptr noundef nonnull %call7.i, ptr noundef null, ptr noundef null) #19
  tail call void @kfree(ptr noundef nonnull %call7.i) #19
  br label %cleanup

cleanup:                                          ; preds = %skip_print, %do.end42, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhltable_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @print_ht(ptr noundef %rhlt) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %buff = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buff) #19
  %0 = call ptr @memset(ptr %buff, i32 0, i32 512)
  %mutex = getelementptr inbounds %struct.rhashtable, ptr %rhlt, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #19
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhlt) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b133 = load i1, ptr @print_ht.__warned, align 1
  br i1 %.b133, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @print_ht.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 496, ptr noundef nonnull @.str.54) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %1 = ptrtoint ptr %rhlt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rhlt, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp151.not = icmp eq i32 %4, 0
  br i1 %cmp151.not, label %do.end.do.end91_crit_edge, label %for.body.lr.ph

do.end.do.end91_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end91

for.body.lr.ph:                                   ; preds = %do.end
  %buckets = getelementptr inbounds %struct.bucket_table, ptr %2, i32 0, i32 8
  %head_offset.i = getelementptr inbounds %struct.rhashtable, ptr %rhlt, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %offset.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.2.lcssa, %while.end.for.body_crit_edge ]
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc88, %while.end.for.body_crit_edge ]
  %cnt.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %cnt.1.lcssa, %while.end.for.body_crit_edge ]
  %add.ptr = getelementptr ptr, ptr %buckets, i32 %i.0153
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %8 = ptrtoint ptr %add.ptr to i32
  %or.i.i = or i32 %8, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and.i.i
  %9 = inttoptr i32 %cond.i.i to ptr
  %and.i = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body9, label %for.body.while.end_crit_edge

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

do.body9:                                         ; preds = %for.body
  %call10 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhlt) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %do.body9.while.body.preheader_crit_edge

do.body9.while.body.preheader_crit_edge:          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

land.lhs.true12:                                  ; preds = %do.body9
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true12.while.body.preheader_crit_edge, label %land.lhs.true15

land.lhs.true12.while.body.preheader_crit_edge:   ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %.b127132 = load i1, ptr @print_ht.__warned.93, align 1
  br i1 %.b127132, label %land.lhs.true15.while.body.preheader_crit_edge, label %if.then17

land.lhs.true15.while.body.preheader_crit_edge:   ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.preheader

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @print_ht.__warned.93, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 502, ptr noundef nonnull @.str.54) #19
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then17, %land.lhs.true15.while.body.preheader_crit_edge, %land.lhs.true12.while.body.preheader_crit_edge, %do.body9.while.body.preheader_crit_edge
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr26 = getelementptr i8, ptr %buff, i32 %offset.0154
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr26, ptr noundef nonnull @.str.94, i32 noundef %i.0153)
  %add = add i32 %call27, %offset.0154
  br label %while.body

while.body:                                       ; preds = %cond.end79, %while.body.preheader
  %offset.2149 = phi i32 [ %add87, %cond.end79 ], [ %add, %while.body.preheader ]
  %cnt.1148 = phi i32 [ %inc, %cond.end79 ], [ %cnt.0152, %while.body.preheader ]
  %pos.0147 = phi ptr [ %next.0146, %cond.end79 ], [ %9, %while.body.preheader ]
  %next.0146 = phi ptr [ %23, %cond.end79 ], [ %11, %while.body.preheader ]
  %add.ptr33 = getelementptr i8, ptr %buff, i32 %offset.2149
  %12 = call ptr @memcpy(ptr %add.ptr33, ptr @.str.95, i32 3)
  %add35 = add i32 %offset.2149, 2
  br label %do.body36

do.body36:                                        ; preds = %do.end48.do.body36_crit_edge, %while.body
  %list.0 = phi ptr [ %pos.0147, %while.body ], [ %14, %do.end48.do.body36_crit_edge ]
  %cnt.2 = phi i32 [ %cnt.1148, %while.body ], [ %inc, %do.end48.do.body36_crit_edge ]
  %offset.3 = phi i32 [ %add35, %while.body ], [ %add58, %do.end48.do.body36_crit_edge ]
  %call38 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhlt) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %do.body36.do.end48_crit_edge

do.body36.do.end48_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

land.lhs.true40:                                  ; preds = %do.body36
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b128131 = load i1, ptr @print_ht.__warned.96, align 1
  br i1 %.b128131, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @print_ht.__warned.96, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 513, ptr noundef nonnull @.str.54) #19
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %do.body36.do.end48_crit_edge
  %next50 = getelementptr inbounds %struct.rhlist_head, ptr %list.0, i32 0, i32 1
  %13 = ptrtoint ptr %next50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next50, align 4
  %15 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %head_offset.i, align 2
  %conv.i = zext i16 %16 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %list.0, i32 %idx.neg.i
  %add.ptr53 = getelementptr i8, ptr %buff, i32 %offset.3
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %tid = getelementptr inbounds %struct.test_obj_val, ptr %add.ptr.i, i32 0, i32 1
  %19 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tid, align 4
  %tobool55.not = icmp eq ptr %14, null
  %cond56 = select i1 %tobool55.not, ptr @.str.99, ptr @.str.98
  %call57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr53, ptr noundef nonnull @.str.97, i32 noundef %18, i32 noundef %20, ptr noundef nonnull %cond56)
  %add58 = add i32 %call57, %offset.3
  %inc = add i32 %cnt.2, 1
  br i1 %tobool55.not, label %do.end61, label %do.end48.do.body36_crit_edge

do.end48.do.body36_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body36

do.end61:                                         ; preds = %do.end48
  %21 = ptrtoint ptr %next.0146 to i32
  %and.i138 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.i139.not = icmp eq i32 %and.i138, 0
  br i1 %tobool.i139.not, label %do.body64, label %while.end.loopexit

do.body64:                                        ; preds = %do.end61
  %call65 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhlt) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %do.body64.cond.end79_crit_edge

do.body64.cond.end79_crit_edge:                   ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end79

land.lhs.true67:                                  ; preds = %do.body64
  %call68 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.cond.end79_crit_edge, label %land.lhs.true70

land.lhs.true67.cond.end79_crit_edge:             ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end79

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %.b129130 = load i1, ptr @print_ht.__warned.100, align 1
  br i1 %.b129130, label %land.lhs.true70.cond.end79_crit_edge, label %if.then72

land.lhs.true70.cond.end79_crit_edge:             ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end79

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @print_ht.__warned.100, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 523, ptr noundef nonnull @.str.54) #19
  br label %cond.end79

cond.end79:                                       ; preds = %if.then72, %land.lhs.true70.cond.end79_crit_edge, %land.lhs.true67.cond.end79_crit_edge, %do.body64.cond.end79_crit_edge
  %22 = ptrtoint ptr %next.0146 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next.0146, align 4
  %add.ptr82 = getelementptr i8, ptr %buff, i32 %add58
  %call86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr82, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102)
  %add87 = add i32 %call86, %add58
  br label %while.body

while.end.loopexit:                               ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr82162 = getelementptr i8, ptr %buff, i32 %add58
  %call86163 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr82162, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.103)
  %add87164 = add i32 %call86163, %add58
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body.while.end_crit_edge
  %cnt.1.lcssa = phi i32 [ %inc, %while.end.loopexit ], [ %cnt.0152, %for.body.while.end_crit_edge ]
  %offset.2.lcssa = phi i32 [ %add87164, %while.end.loopexit ], [ %offset.0154, %for.body.while.end_crit_edge ]
  %inc88 = add nuw i32 %i.0153, 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 128
  %cmp = icmp ult i32 %inc88, %25
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.do.end91_crit_edge

while.end.do.end91_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end91

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end91:                                         ; preds = %while.end.do.end91_crit_edge, %do.end.do.end91_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %do.end.do.end91_crit_edge ], [ %cnt.1.lcssa, %while.end.do.end91_crit_edge ]
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull %buff) #21
  call void @mutex_unlock(ptr noundef %mutex) #19
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buff) #19
  ret i32 %cnt.0.lcssa
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @my_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %rem = srem i32 %1, 10
  ret i32 %rem
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @my_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %obj) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub = sub i32 %3, %5
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @thread_lookup_test(ptr nocapture noundef readonly %tdata) unnamed_addr #6 align 64 {
entry:
  %key = alloca %struct.test_obj_val, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %tdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp69.not = icmp eq i32 %1, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.test_obj_val, ptr %key, i32 0, i32 1
  %id2 = getelementptr inbounds %struct.thread_data, ptr %tdata, i32 0, i32 1
  %objs = getelementptr inbounds %struct.thread_data, ptr %tdata, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %if.end44.for.body_crit_edge ]
  %err.070 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %if.end44.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #19
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.071, ptr %key, align 4
  %4 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id2, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %2, align 4
  %.unpack = load i32, ptr @test_rht_params, align 4
  %7 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.unpack63 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 2), align 4
  %8 = insertvalue [7 x i32] %7, i32 %.unpack63, 1
  %.unpack64 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 4), align 4
  %9 = insertvalue [7 x i32] %8, i32 %.unpack64, 2
  %.unpack65 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 5), align 4
  %10 = insertvalue [7 x i32] %9, i32 %.unpack65, 3
  %.unpack66 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 7), align 4
  %11 = insertvalue [7 x i32] %10, i32 %.unpack66, 4
  %.unpack67 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 8), align 4
  %12 = insertvalue [7 x i32] %11, i32 %.unpack67, 5
  %.unpack68 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @test_rht_params, i32 0, i32 9), align 4
  %13 = insertvalue [7 x i32] %12, i32 %.unpack68, 6
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %key, [7 x i32] %13)
  %tobool.not = icmp eq ptr %call, null
  %14 = ptrtoint ptr %objs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %objs, align 4
  %arrayidx11 = getelementptr %struct.test_obj, ptr %15, i32 %i.071
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %17)
  %cmp14.not = icmp eq i32 %17, 2147483647
  br i1 %tobool.not, label %land.lhs.true9.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  br i1 %cmp14.not, label %do.end, label %land.lhs.true26.critedge

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %19, i32 noundef %21) #21
  %inc = add i32 %err.070, 1
  br label %if.end44

land.lhs.true9.critedge:                          ; preds = %for.body
  br i1 %cmp14.not, label %land.lhs.true9.critedge.if.end44_crit_edge, label %do.end18

land.lhs.true9.critedge.if.end44_crit_edge:       ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

do.end18:                                         ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %23, i32 noundef %25) #21
  %inc23 = add i32 %err.070, 1
  br label %if.end44

land.lhs.true26.critedge:                         ; preds = %land.lhs.true
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %call, ptr noundef nonnull dereferenceable(8) %key, i32 8) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool29.not = icmp eq i32 %bcmp, 0
  br i1 %tobool29.not, label %land.lhs.true26.critedge.if.end44_crit_edge, label %do.end33

land.lhs.true26.critedge.if.end44_crit_edge:      ; preds = %land.lhs.true26.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

do.end33:                                         ; preds = %land.lhs.true26.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %tid36 = getelementptr inbounds %struct.test_obj_val, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %tid36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tid36, align 4
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  %32 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key, align 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #21
  %inc42 = add i32 %err.070, 1
  br label %if.end44

if.end44:                                         ; preds = %do.end33, %land.lhs.true26.critedge.if.end44_crit_edge, %do.end18, %land.lhs.true9.critedge.if.end44_crit_edge, %do.end
  %err.1 = phi i32 [ %inc, %do.end ], [ %inc42, %do.end33 ], [ %err.070, %land.lhs.true26.critedge.if.end44_crit_edge ], [ %inc23, %do.end18 ], [ %err.070, %land.lhs.true9.critedge.if.end44_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 627, i32 noundef 0) #19
  %call.i = call i32 @__cond_resched() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #19
  %inc47 = add nuw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc47, %1
  br i1 %exitcond.not, label %if.end44.for.end_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %err.1, %if.end44.for.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind uwtable(sync) }
attributes #18 = { nomerge }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind readnone }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258, !259, !261, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !308, !310, !311, !312, !313, !315, !317, !319, !321, !323, !325, !326, !327, !329, !331, !333, !335, !337}
!llvm.named.register.sp = !{!339}
!llvm.module.flags = !{!340, !341, !342, !343, !344, !345, !346}
!llvm.ident = !{!347}

!0 = !{ptr @__param_parm_entries, !1, !"__param_parm_entries", i1 false, i1 false}
!1 = !{!"../lib/test_rhashtable.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_parm_entriestype224, !1, !"__UNIQUE_ID_parm_entriestype224", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_parm_entries225, !4, !"__UNIQUE_ID_parm_entries225", i1 false, i1 false}
!4 = !{!"../lib/test_rhashtable.c", i32 31, i32 1}
!5 = !{ptr @__param_runs, !6, !"__param_runs", i1 false, i1 false}
!6 = !{!"../lib/test_rhashtable.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_runstype226, !6, !"__UNIQUE_ID_runstype226", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_runs227, !9, !"__UNIQUE_ID_runs227", i1 false, i1 false}
!9 = !{!"../lib/test_rhashtable.c", i32 35, i32 1}
!10 = !{ptr @__param_max_size, !11, !"__param_max_size", i1 false, i1 false}
!11 = !{!"../lib/test_rhashtable.c", i32 38, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_sizetype228, !11, !"__UNIQUE_ID_max_sizetype228", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_max_size229, !14, !"__UNIQUE_ID_max_size229", i1 false, i1 false}
!14 = !{!"../lib/test_rhashtable.c", i32 39, i32 1}
!15 = !{ptr @__param_shrinking, !16, !"__param_shrinking", i1 false, i1 false}
!16 = !{!"../lib/test_rhashtable.c", i32 42, i32 1}
!17 = !{ptr @__UNIQUE_ID_shrinkingtype230, !16, !"__UNIQUE_ID_shrinkingtype230", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_shrinking231, !19, !"__UNIQUE_ID_shrinking231", i1 false, i1 false}
!19 = !{!"../lib/test_rhashtable.c", i32 43, i32 1}
!20 = !{ptr @__param_size, !21, !"__param_size", i1 false, i1 false}
!21 = !{!"../lib/test_rhashtable.c", i32 46, i32 1}
!22 = !{ptr @__UNIQUE_ID_sizetype232, !21, !"__UNIQUE_ID_sizetype232", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_size233, !24, !"__UNIQUE_ID_size233", i1 false, i1 false}
!24 = !{!"../lib/test_rhashtable.c", i32 47, i32 1}
!25 = !{ptr @__param_tcount, !26, !"__param_tcount", i1 false, i1 false}
!26 = !{!"../lib/test_rhashtable.c", i32 50, i32 1}
!27 = !{ptr @__UNIQUE_ID_tcounttype234, !26, !"__UNIQUE_ID_tcounttype234", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_tcount235, !29, !"__UNIQUE_ID_tcount235", i1 false, i1 false}
!29 = !{!"../lib/test_rhashtable.c", i32 51, i32 1}
!30 = !{ptr @__param_enomem_retry, !31, !"__param_enomem_retry", i1 false, i1 false}
!31 = !{!"../lib/test_rhashtable.c", i32 54, i32 1}
!32 = !{ptr @__UNIQUE_ID_enomem_retrytype236, !31, !"__UNIQUE_ID_enomem_retrytype236", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_enomem_retry237, !34, !"__UNIQUE_ID_enomem_retry237", i1 false, i1 false}
!34 = !{!"../lib/test_rhashtable.c", i32 55, i32 1}
!35 = !{ptr @__initcall__kmod_test_rhashtable__245_826_test_rht_init6, !36, !"__initcall__kmod_test_rhashtable__245_826_test_rht_init6", i1 false, i1 false}
!36 = !{!"../lib/test_rhashtable.c", i32 826, i32 1}
!37 = !{ptr @__exitcall_test_rht_exit, !38, !"__exitcall_test_rht_exit", i1 false, i1 false}
!38 = !{!"../lib/test_rhashtable.c", i32 827, i32 1}
!39 = !{ptr @__UNIQUE_ID_file246, !40, !"__UNIQUE_ID_file246", i1 false, i1 false}
!40 = !{!"../lib/test_rhashtable.c", i32 829, i32 1}
!41 = !{ptr @__UNIQUE_ID_license247, !40, !"__UNIQUE_ID_license247", i1 false, i1 false}
!42 = !{ptr @__param_str_parm_entries, !1, !"__param_str_parm_entries", i1 false, i1 false}
!43 = !{ptr @parm_entries, !44, !"parm_entries", i1 false, i1 false}
!44 = !{!"../lib/test_rhashtable.c", i32 29, i32 12}
!45 = !{ptr @__param_str_runs, !6, !"__param_str_runs", i1 false, i1 false}
!46 = !{ptr @runs, !47, !"runs", i1 false, i1 false}
!47 = !{!"../lib/test_rhashtable.c", i32 33, i32 12}
!48 = !{ptr @__param_str_max_size, !11, !"__param_str_max_size", i1 false, i1 false}
!49 = !{ptr @max_size, !50, !"max_size", i1 false, i1 false}
!50 = !{!"../lib/test_rhashtable.c", i32 37, i32 12}
!51 = !{ptr @__param_str_shrinking, !16, !"__param_str_shrinking", i1 false, i1 false}
!52 = !{ptr @shrinking, !53, !"shrinking", i1 false, i1 false}
!53 = !{!"../lib/test_rhashtable.c", i32 41, i32 13}
!54 = !{ptr @__param_str_size, !21, !"__param_str_size", i1 false, i1 false}
!55 = !{ptr @size, !56, !"size", i1 false, i1 false}
!56 = !{!"../lib/test_rhashtable.c", i32 45, i32 12}
!57 = !{ptr @__param_str_tcount, !26, !"__param_str_tcount", i1 false, i1 false}
!58 = !{ptr @tcount, !59, !"tcount", i1 false, i1 false}
!59 = !{!"../lib/test_rhashtable.c", i32 49, i32 12}
!60 = !{ptr @__param_str_enomem_retry, !31, !"__param_str_enomem_retry", i1 false, i1 false}
!61 = !{ptr @enomem_retry, !62, !"enomem_retry", i1 false, i1 false}
!62 = !{!"../lib/test_rhashtable.c", i32 53, i32 13}
!63 = !{ptr @.str, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test_rhashtable.c", i32 719, i32 2}
!65 = !{ptr @.str.1, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.2, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @test_rht_init._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @test_rht_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../lib/test_rhashtable.c", i32 725, i32 3}
!71 = !{ptr @test_rht_init._entry.3, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @test_rht_init._entry_ptr.5, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.7, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/test_rhashtable.c", i32 730, i32 4}
!75 = !{ptr @test_rht_init._entry.6, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @test_rht_init._entry_ptr.8, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.10, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test_rhashtable.c", i32 739, i32 4}
!79 = !{ptr @test_rht_init._entry.9, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @test_rht_init._entry_ptr.11, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../lib/test_rhashtable.c", i32 746, i32 2}
!83 = !{ptr @test_rht_init._entry.12, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @test_rht_init._entry_ptr.14, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.15, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/test_rhashtable.c", i32 752, i32 2}
!89 = !{ptr @test_rht_init._entry.17, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @test_rht_init._entry_ptr.19, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/test_rhashtable.c", i32 759, i32 2}
!93 = !{ptr @test_rht_init._entry.20, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @test_rht_init._entry_ptr.22, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @test_rht_init._entry.23, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../lib/test_rhashtable.c", i32 775, i32 3}
!97 = !{ptr @test_rht_init._entry_ptr.24, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../lib/test_rhashtable.c", i32 785, i32 19}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../lib/test_rhashtable.c", i32 788, i32 4}
!102 = !{ptr @test_rht_init._entry.26, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @test_rht_init._entry_ptr.28, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/test_rhashtable.c", i32 795, i32 3}
!106 = !{ptr @test_rht_init._entry.29, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @test_rht_init._entry_ptr.31, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../lib/test_rhashtable.c", i32 803, i32 4}
!110 = !{ptr @test_rht_init._entry.32, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @test_rht_init._entry_ptr.34, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/test_rhashtable.c", i32 817, i32 2}
!114 = !{ptr @test_rht_init._entry.35, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @test_rht_init._entry_ptr.37, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @test_rht_params, !117, !"test_rht_params", i1 false, i1 false}
!117 = !{!"../lib/test_rhashtable.c", i32 94, i32 33}
!118 = !{ptr @ht, !119, !"ht", i1 false, i1 false}
!119 = !{!"../lib/test_rhashtable.c", i32 266, i32 26}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../lib/test_rhashtable.c", i32 220, i32 2}
!122 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @test_rhashtable._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @test_rhashtable._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/test_rhashtable.c", i32 234, i32 3}
!127 = !{ptr @test_rhashtable._entry.40, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @test_rhashtable._entry_ptr.42, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/test_rhashtable.c", i32 244, i32 2}
!131 = !{ptr @test_rhashtable._entry.43, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @test_rhashtable._entry_ptr.45, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/test_rhashtable.c", i32 261, i32 2}
!135 = !{ptr @test_rhashtable._entry.46, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @test_rhashtable._entry_ptr.48, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../lib/test_rhashtable.c", i32 131, i32 3}
!139 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @insert_retry._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @insert_retry._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!144 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!148 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!150 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../lib/test_rhashtable.c", i32 186, i32 4}
!155 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @test_bucket_stats._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @test_bucket_stats._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../lib/test_rhashtable.c", i32 190, i32 4}
!160 = !{ptr @test_bucket_stats._entry.58, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @test_bucket_stats._entry_ptr.60, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../lib/test_rhashtable.c", i32 201, i32 2}
!164 = !{ptr @test_bucket_stats._entry.61, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @test_bucket_stats._entry_ptr.63, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../lib/test_rhashtable.c", i32 205, i32 3}
!168 = !{ptr @test_bucket_stats._entry.64, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @test_bucket_stats._entry_ptr.66, !167, !"_entry_ptr", i1 false, i1 false}
!170 = distinct !{null, !171, !"__warned", i1 false, i1 false}
!171 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!172 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../lib/test_rhashtable.c", i32 155, i32 4}
!176 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @test_rht_lookup._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @test_rht_lookup._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.72, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../lib/test_rhashtable.c", i32 158, i32 4}
!181 = !{ptr @test_rht_lookup._entry.71, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @test_rht_lookup._entry_ptr.73, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../lib/test_rhashtable.c", i32 163, i32 5}
!185 = !{ptr @test_rht_lookup._entry.74, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @test_rht_lookup._entry_ptr.76, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!189 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!190 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!191 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!196 = distinct !{null, !197, !"__warned", i1 false, i1 false}
!197 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!198 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!199 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!200 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!201 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!202 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!203 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!204 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!205 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!206 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!207 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!208 = distinct !{null, !209, !"__warned", i1 false, i1 false}
!209 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!210 = distinct !{null, !211, !"__warned", i1 false, i1 false}
!211 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!212 = !{ptr @.str.85, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../lib/test_rhashtable.c", i32 474, i32 3}
!214 = !{ptr @.str.86, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @test_rhashtable_max._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @test_rhashtable_max._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.87, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../lib/test_rhashtable.c", i32 584, i32 2}
!219 = !{ptr @.str.88, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @test_insert_duplicates_run._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @test_insert_duplicates_run._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.89, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../lib/test_rhashtable.c", i32 566, i32 7}
!224 = !{ptr @.str.90, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.91, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../lib/test_rhashtable.c", i32 571, i32 2}
!228 = !{ptr @test_rht_params_dup, !229, !"test_rht_params_dup", i1 false, i1 false}
!229 = !{!"../lib/test_rhashtable.c", i32 101, i32 33}
!230 = distinct !{null, !231, !"__warned", i1 false, i1 false}
!231 = !{!"../lib/test_rhashtable.c", i32 496, i32 8}
!232 = distinct !{null, !233, !"__warned", i1 false, i1 false}
!233 = !{!"../lib/test_rhashtable.c", i32 502, i32 33}
!234 = !{ptr @.str.94, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../lib/test_rhashtable.c", i32 505, i32 37}
!236 = !{ptr @.str.95, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../lib/test_rhashtable.c", i32 510, i32 37}
!238 = distinct !{null, !239, !"__warned", i1 false, i1 false}
!239 = !{!"../lib/test_rhashtable.c", i32 513, i32 12}
!240 = !{ptr @.str.97, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../lib/test_rhashtable.c", i32 516, i32 38}
!242 = !{ptr @.str.98, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../lib/test_rhashtable.c", i32 517, i32 12}
!244 = !{ptr @.str.99, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../lib/test_rhashtable.c", i32 517, i32 19}
!246 = distinct !{null, !247, !"__warned", i1 false, i1 false}
!247 = !{!"../lib/test_rhashtable.c", i32 523, i32 5}
!248 = !{ptr @.str.101, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../lib/test_rhashtable.c", i32 525, i32 37}
!250 = !{ptr @.str.102, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../lib/test_rhashtable.c", i32 525, i32 68}
!252 = !{ptr @.str.103, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../lib/test_rhashtable.c", i32 525, i32 77}
!254 = !{ptr @.str.104, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../lib/test_rhashtable.c", i32 528, i32 2}
!256 = !{ptr @.str.105, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @print_ht._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @print_ht._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = distinct !{null, !260, !"__warned", i1 false, i1 false}
!260 = !{!"../include/linux/rhashtable.h", i32 383, i32 19}
!261 = !{ptr @startup_count, !262, !"startup_count", i1 false, i1 false}
!262 = !{!"../lib/test_rhashtable.c", i32 112, i32 17}
!263 = !{ptr @.str.106, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../lib/test_rhashtable.c", i32 640, i32 3}
!265 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @threadfunc._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @threadfunc._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.109, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../lib/test_rhashtable.c", i32 651, i32 4}
!270 = !{ptr @threadfunc._entry.108, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @threadfunc._entry_ptr.110, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.112, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../lib/test_rhashtable.c", i32 657, i32 3}
!274 = !{ptr @threadfunc._entry.111, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @threadfunc._entry_ptr.113, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.115, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../lib/test_rhashtable.c", i32 662, i32 3}
!278 = !{ptr @threadfunc._entry.114, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @threadfunc._entry_ptr.116, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.118, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../lib/test_rhashtable.c", i32 674, i32 5}
!282 = !{ptr @threadfunc._entry.117, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @threadfunc._entry_ptr.119, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.121, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../lib/test_rhashtable.c", i32 684, i32 4}
!286 = !{ptr @threadfunc._entry.120, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @threadfunc._entry_ptr.122, !285, !"_entry_ptr", i1 false, i1 false}
!288 = distinct !{null, !289, !"__already_done", i1 false, i1 false}
!289 = !{!"../lib/test_rhashtable.c", i32 691, i32 3}
!290 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../lib/test_rhashtable.c", i32 616, i32 4}
!292 = !{ptr @.str.124, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @thread_lookup_test._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @thread_lookup_test._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.126, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../lib/test_rhashtable.c", i32 619, i32 4}
!297 = !{ptr @thread_lookup_test._entry.125, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @thread_lookup_test._entry_ptr.127, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.129, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../lib/test_rhashtable.c", i32 622, i32 4}
!301 = !{ptr @thread_lookup_test._entry.128, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @thread_lookup_test._entry_ptr.130, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../lib/test_rhashtable.c", i32 113, i32 8}
!305 = !{ptr @startup_wait, !304, !"startup_wait", i1 false, i1 false}
!306 = !{ptr @.str.132, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../lib/test_rhashtable.c", i32 300, i32 7}
!308 = !{ptr @.str.133, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../lib/test_rhashtable.c", i32 309, i32 2}
!310 = !{ptr @.str.134, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @test_rhltable._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @test_rhltable._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.135, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../lib/test_rhashtable.c", i32 320, i32 7}
!315 = !{ptr @.str.136, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../lib/test_rhashtable.c", i32 328, i32 9}
!317 = !{ptr @.str.137, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../lib/test_rhashtable.c", i32 346, i32 7}
!319 = !{ptr @.str.138, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../lib/test_rhashtable.c", i32 350, i32 3}
!321 = !{ptr @.str.139, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../lib/test_rhashtable.c", i32 359, i32 3}
!323 = !{ptr @.str.141, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../lib/test_rhashtable.c", i32 369, i32 2}
!325 = !{ptr @test_rhltable._entry.140, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @test_rhltable._entry_ptr.142, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.143, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../lib/test_rhashtable.c", i32 387, i32 8}
!329 = !{ptr @.str.144, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../lib/test_rhashtable.c", i32 390, i32 8}
!331 = !{ptr @.str.145, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../lib/test_rhashtable.c", i32 402, i32 8}
!333 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../lib/test_rhashtable.c", i32 405, i32 8}
!335 = !{ptr @.str.147, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../lib/test_rhashtable.c", i32 435, i32 8}
!337 = !{ptr @rhlt, !338, !"rhlt", i1 false, i1 false}
!338 = !{!"../lib/test_rhashtable.c", i32 267, i32 24}
!339 = !{!"sp"}
!340 = !{i32 1, !"wchar_size", i32 2}
!341 = !{i32 1, !"min_enum_size", i32 4}
!342 = !{i32 8, !"branch-target-enforcement", i32 0}
!343 = !{i32 8, !"sign-return-address", i32 0}
!344 = !{i32 8, !"sign-return-address-all", i32 0}
!345 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!346 = !{i32 7, !"uwtable", i32 1}
!347 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!348 = !{i8 0, i8 2}
!349 = !{i32 0, i32 33}
!350 = !{!"branch_weights", i32 2000, i32 1}
!351 = !{i64 2148641126, i64 2148641406, i64 2148641740, i64 2148642074}
!352 = !{i64 2148200745, i64 2148200771, i64 2148200800, i64 2148200834, i64 2148200865, i64 2148200888}
!353 = !{i64 2149283183}
!354 = !{i64 2149283449}
!355 = !{!"branch_weights", i32 1, i32 2000}
!356 = !{i64 2152742634, i64 2152743120, i64 2152742671, i64 2152742727, i64 2152742761, i64 2152742785, i64 2152742826, i64 2152742847, i64 2152742875, i64 2152742909}
!357 = !{i64 2148286732}
!358 = !{i64 2148201465, i64 2148201497, i64 2148201526, i64 2148201560, i64 2148201591, i64 2148201614}
!359 = !{i64 2148286961}
!360 = !{i64 2152802946}
!361 = !{i64 2152172837}
!362 = !{i64 2148198280, i64 2148198306, i64 2148198335, i64 2148198369, i64 2148198400, i64 2148198423}
!363 = !{i64 2152102356}
!364 = !{!"branch_weights", i32 2146410443, i32 1073205}
!365 = !{i64 2148207138, i64 2148207170, i64 2148207199, i64 2148207233, i64 2148207264, i64 2148207287}
!366 = !{i64 2148296219}
!367 = !{i64 2152102516}
!368 = !{i64 2152102793}
!369 = !{i64 2152102635}
!370 = !{i64 2152102998}
!371 = !{i64 2152104061, i64 2152104553, i64 2152104098, i64 2152104154, i64 2152104188, i64 2152104212, i64 2152104253, i64 2152104274, i64 2152104302, i64 2152104336}
!372 = !{i64 2148295106}
!373 = !{i64 2148205525, i64 2148205557, i64 2148205586, i64 2148205620, i64 2148205651, i64 2148205674}
!374 = !{i64 2152105456}
!375 = !{i64 2152133630}
!376 = !{i64 2152135929}
!377 = !{i64 2152140557}
!378 = !{i64 2152143991}
!379 = !{i64 2152203872}
