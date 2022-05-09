; ModuleID = '/llk/IR_all_yes/kernel/scftorture.c_pt.bc'
source_filename = "../kernel/scftorture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.torture_random_state = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.scf_selector = type { i32, i32, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scf_statistics = type { ptr, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scf_check = type { i8, i8, i32, i8, i8, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@__UNIQUE_ID_file238 = internal constant [34 x i8] c"scftorture.file=kernel/scftorture\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [23 x i8] c"scftorture.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [56 x i8] c"scftorture.author=Paul E. McKenney <paulmck@kernel.org>\00", section ".modinfo", align 1
@__param_str_holdoff = internal constant [19 x i8] c"scftorture.holdoff\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@holdoff = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_holdoff = internal constant %struct.kernel_param { ptr @__param_str_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @holdoff } }, section "__param", align 4
@__UNIQUE_ID_holdofftype241 = internal constant [32 x i8] c"scftorture.parmtype=holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_holdoff242 = internal constant [59 x i8] c"scftorture.parm=holdoff:Holdoff time before test start (s)\00", section ".modinfo", align 1
@__param_str_longwait = internal constant [20 x i8] c"scftorture.longwait\00", align 1
@longwait = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_longwait = internal constant %struct.kernel_param { ptr @__param_str_longwait, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @longwait } }, section "__param", align 4
@__UNIQUE_ID_longwaittype243 = internal constant [33 x i8] c"scftorture.parmtype=longwait:int\00", section ".modinfo", align 1
@__UNIQUE_ID_longwait244 = internal constant [68 x i8] c"scftorture.parm=longwait:Include ridiculously long waits? (seconds)\00", section ".modinfo", align 1
@__param_str_nthreads = internal constant [20 x i8] c"scftorture.nthreads\00", align 1
@nthreads = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_nthreads = internal constant %struct.kernel_param { ptr @__param_str_nthreads, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nthreads } }, section "__param", align 4
@__UNIQUE_ID_nthreadstype245 = internal constant [33 x i8] c"scftorture.parmtype=nthreads:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nthreads246 = internal constant [65 x i8] c"scftorture.parm=nthreads:# threads, defaults to -1 for all CPUs.\00", section ".modinfo", align 1
@__param_str_onoff_holdoff = internal constant [25 x i8] c"scftorture.onoff_holdoff\00", align 1
@onoff_holdoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_onoff_holdoff = internal constant %struct.kernel_param { ptr @__param_str_onoff_holdoff, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @onoff_holdoff } }, section "__param", align 4
@__UNIQUE_ID_onoff_holdofftype247 = internal constant [38 x i8] c"scftorture.parmtype=onoff_holdoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_onoff_holdoff248 = internal constant [70 x i8] c"scftorture.parm=onoff_holdoff:Time after boot before CPU hotplugs (s)\00", section ".modinfo", align 1
@__param_str_onoff_interval = internal constant [26 x i8] c"scftorture.onoff_interval\00", align 1
@onoff_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_onoff_interval = internal constant %struct.kernel_param { ptr @__param_str_onoff_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @onoff_interval } }, section "__param", align 4
@__UNIQUE_ID_onoff_intervaltype249 = internal constant [39 x i8] c"scftorture.parmtype=onoff_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_onoff_interval250 = internal constant [72 x i8] c"scftorture.parm=onoff_interval:Time between CPU hotplugs (s), 0=disable\00", section ".modinfo", align 1
@__param_str_shutdown_secs = internal constant [25 x i8] c"scftorture.shutdown_secs\00", align 1
@shutdown_secs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_shutdown_secs = internal constant %struct.kernel_param { ptr @__param_str_shutdown_secs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @shutdown_secs } }, section "__param", align 4
@__UNIQUE_ID_shutdown_secstype251 = internal constant [38 x i8] c"scftorture.parmtype=shutdown_secs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_shutdown_secs252 = internal constant [70 x i8] c"scftorture.parm=shutdown_secs:Shutdown time (ms), <= zero to disable.\00", section ".modinfo", align 1
@__param_str_stat_interval = internal constant [25 x i8] c"scftorture.stat_interval\00", align 1
@stat_interval = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_stat_interval = internal constant %struct.kernel_param { ptr @__param_str_stat_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stat_interval } }, section "__param", align 4
@__UNIQUE_ID_stat_intervaltype253 = internal constant [38 x i8] c"scftorture.parmtype=stat_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stat_interval254 = internal constant [73 x i8] c"scftorture.parm=stat_interval:Number of seconds between stats printk()s.\00", section ".modinfo", align 1
@__param_str_stutter = internal constant [19 x i8] c"scftorture.stutter\00", align 1
@stutter = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_stutter = internal constant %struct.kernel_param { ptr @__param_str_stutter, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @stutter } }, section "__param", align 4
@__UNIQUE_ID_stuttertype255 = internal constant [32 x i8] c"scftorture.parmtype=stutter:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stutter256 = internal constant [70 x i8] c"scftorture.parm=stutter:Number of jiffies to run/halt test, 0=disable\00", section ".modinfo", align 1
@__param_str_use_cpus_read_lock = internal constant [30 x i8] c"scftorture.use_cpus_read_lock\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_cpus_read_lock = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_cpus_read_lock = internal constant %struct.kernel_param { ptr @__param_str_use_cpus_read_lock, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_cpus_read_lock } }, section "__param", align 4
@__UNIQUE_ID_use_cpus_read_locktype257 = internal constant [44 x i8] c"scftorture.parmtype=use_cpus_read_lock:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_cpus_read_lock258 = internal constant [80 x i8] c"scftorture.parm=use_cpus_read_lock:Use cpus_read_lock() to exclude CPU hotplug.\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [19 x i8] c"scftorture.verbose\00", align 1
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype259 = internal constant [32 x i8] c"scftorture.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose260 = internal constant [59 x i8] c"scftorture.parm=verbose:Enable verbose debugging printk()s\00", section ".modinfo", align 1
@__param_str_weight_resched = internal constant [26 x i8] c"scftorture.weight_resched\00", align 1
@weight_resched = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_resched = internal constant %struct.kernel_param { ptr @__param_str_weight_resched, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_resched } }, section "__param", align 4
@__UNIQUE_ID_weight_reschedtype261 = internal constant [39 x i8] c"scftorture.parmtype=weight_resched:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_resched262 = internal constant [76 x i8] c"scftorture.parm=weight_resched:Testing weight for resched_cpu() operations.\00", section ".modinfo", align 1
@__param_str_weight_single = internal constant [25 x i8] c"scftorture.weight_single\00", align 1
@weight_single = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_single = internal constant %struct.kernel_param { ptr @__param_str_weight_single, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_single } }, section "__param", align 4
@__UNIQUE_ID_weight_singletype263 = internal constant [38 x i8] c"scftorture.parmtype=weight_single:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_single264 = internal constant [80 x i8] c"scftorture.parm=weight_single:Testing weight for single-CPU no-wait operations.\00", section ".modinfo", align 1
@__param_str_weight_single_rpc = internal constant [29 x i8] c"scftorture.weight_single_rpc\00", align 1
@weight_single_rpc = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_single_rpc = internal constant %struct.kernel_param { ptr @__param_str_weight_single_rpc, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_single_rpc } }, section "__param", align 4
@__UNIQUE_ID_weight_single_rpctype265 = internal constant [42 x i8] c"scftorture.parmtype=weight_single_rpc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_single_rpc266 = internal constant [80 x i8] c"scftorture.parm=weight_single_rpc:Testing weight for single-CPU RPC operations.\00", section ".modinfo", align 1
@__param_str_weight_single_wait = internal constant [30 x i8] c"scftorture.weight_single_wait\00", align 1
@weight_single_wait = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_single_wait = internal constant %struct.kernel_param { ptr @__param_str_weight_single_wait, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_single_wait } }, section "__param", align 4
@__UNIQUE_ID_weight_single_waittype267 = internal constant [43 x i8] c"scftorture.parmtype=weight_single_wait:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_single_wait268 = internal constant [77 x i8] c"scftorture.parm=weight_single_wait:Testing weight for single-CPU operations.\00", section ".modinfo", align 1
@__param_str_weight_many = internal constant [23 x i8] c"scftorture.weight_many\00", align 1
@weight_many = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_many = internal constant %struct.kernel_param { ptr @__param_str_weight_many, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_many } }, section "__param", align 4
@__UNIQUE_ID_weight_manytype269 = internal constant [36 x i8] c"scftorture.parmtype=weight_many:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_many270 = internal constant [77 x i8] c"scftorture.parm=weight_many:Testing weight for multi-CPU no-wait operations.\00", section ".modinfo", align 1
@__param_str_weight_many_wait = internal constant [28 x i8] c"scftorture.weight_many_wait\00", align 1
@weight_many_wait = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_many_wait = internal constant %struct.kernel_param { ptr @__param_str_weight_many_wait, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_many_wait } }, section "__param", align 4
@__UNIQUE_ID_weight_many_waittype271 = internal constant [41 x i8] c"scftorture.parmtype=weight_many_wait:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_many_wait272 = internal constant [74 x i8] c"scftorture.parm=weight_many_wait:Testing weight for multi-CPU operations.\00", section ".modinfo", align 1
@__param_str_weight_all = internal constant [22 x i8] c"scftorture.weight_all\00", align 1
@weight_all = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_all = internal constant %struct.kernel_param { ptr @__param_str_weight_all, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_all } }, section "__param", align 4
@__UNIQUE_ID_weight_alltype273 = internal constant [35 x i8] c"scftorture.parmtype=weight_all:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_all274 = internal constant [74 x i8] c"scftorture.parm=weight_all:Testing weight for all-CPU no-wait operations.\00", section ".modinfo", align 1
@__param_str_weight_all_wait = internal constant [27 x i8] c"scftorture.weight_all_wait\00", align 1
@weight_all_wait = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_weight_all_wait = internal constant %struct.kernel_param { ptr @__param_str_weight_all_wait, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @weight_all_wait } }, section "__param", align 4
@__UNIQUE_ID_weight_all_waittype275 = internal constant [40 x i8] c"scftorture.parmtype=weight_all_wait:int\00", section ".modinfo", align 1
@__UNIQUE_ID_weight_all_wait276 = internal constant [71 x i8] c"scftorture.parm=weight_all_wait:Testing weight for all-CPU operations.\00", section ".modinfo", align 1
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@torture_type = dso_local global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_str_shutdown = internal constant [20 x i8] c"scftorture.shutdown\00", align 1
@shutdown = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_shutdown = internal constant %struct.kernel_param { ptr @__param_str_shutdown, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @shutdown } }, section "__param", align 4
@__UNIQUE_ID_shutdowntype277 = internal constant [34 x i8] c"scftorture.parmtype=shutdown:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_shutdown278 = internal constant [58 x i8] c"scftorture.parm=shutdown:Shutdown at end of torture test.\00", section ".modinfo", align 1
@__initcall__kmod_scftorture__284_658_scf_torture_init6 = internal global ptr @scf_torture_init, section ".initcall6.init", align 4
@__exitcall_scf_torture_cleanup = internal global ptr @scf_torture_cleanup, section ".exitcall.exit", align 4
@__pcpu_unique_scf_invoked_count = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@scf_invoked_count = weak dso_local global i64 0, section ".data..percpu", align 8
@__pcpu_unique_scf_torture_rand = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@scf_torture_rand = weak dso_local global %struct.torture_random_state zeroinitializer, section ".data..percpu", align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scftorture\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Start of test\00", [18 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@scf_torture_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\011scftorture: !!! all zero weights makes no sense\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scf_torture_init\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/scftorture.c\00", [44 x i8] zeroinitializer }, align 32
@scf_torture_init._entry_ptr = internal global ptr @scf_torture_init._entry, section ".printk_index", align 4
@scf_torture_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Torture-test initialization failed with error code %d\0A\00", [41 x i8] zeroinitializer }, align 32
@scf_torture_init.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@scf_torture_init.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@scf_stats_p = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scf_torture_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011scftorture: !!! out of memory\0A\00", [63 x i8] zeroinitializer }, align 32
@scf_torture_init._entry_ptr.11 = internal global ptr @scf_torture_init._entry.9, section ".printk_index", align 4
@scf_torture_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\011scftorture: Starting %d smp_call_function() threads\0A\00", [41 x i8] zeroinitializer }, align 32
@scf_torture_init._entry_ptr.14 = internal global ptr @scf_torture_init._entry.12, section ".printk_index", align 4
@n_started = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scftorture_invoker\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Creating scftorture_invoker task\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create scftorture_invoker\00", [60 x i8] zeroinitializer }, align 32
@scf_torture_init.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scf_torture_stats\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Creating scf_torture_stats task\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create scf_torture_stats\00", [61 x i8] zeroinitializer }, align 32
@scf_torture_stats_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scf_torture_init.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@scftorture_print_module_parms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [326 x i8], [90 x i8] } { [326 x i8] c"\011scftorture: --- %s:  verbose=%d holdoff=%d longwait=%d nthreads=%d onoff_holdoff=%d onoff_interval=%d shutdown_secs=%d stat_interval=%d stutter=%d use_cpus_read_lock=%d, weight_resched=%d, weight_single=%d, weight_single_rpc=%d, weight_single_wait=%d, weight_many=%d, weight_many_wait=%d, weight_all=%d, weight_all_wait=%d\0A\00", [90 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scftorture_print_module_parms\00", [34 x i8] zeroinitializer }, align 32
@scftorture_print_module_parms._entry_ptr = internal global ptr @scftorture_print_module_parms._entry, section ".printk_index", align 4
@scf_sel_array = internal global { [8 x %struct.scf_selector], [32 x i8] } zeroinitializer, align 32
@scf_sel_array_len = internal global { i32, [28 x i8] } zeroinitializer, align 32
@scf_sel_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scf_sel_add.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@scf_sel_totweight = internal global { i32, [28 x i8] } zeroinitializer, align 32
@scf_sel_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: %3lu.%03lu %s(%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scf_sel_dump\00", [19 x i8] zeroinitializer }, align 32
@scf_sel_dump._entry_ptr = internal global ptr @scf_sel_dump._entry, section ".printk_index", align 4
@scf_prim_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wait\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nowait\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"resched_cpu\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smp_call_function_single\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smp_call_function_single_rpc\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smp_call_function_many\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smp_call_function\00", [46 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@scftorture_invoker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.15, ptr @.str.5, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\011scftorture: scftorture_invoker %d: task started\0A\00", [45 x i8] zeroinitializer }, align 32
@scftorture_invoker._entry_ptr = internal global ptr @scftorture_invoker._entry, section ".printk_index", align 4
@scftorture_invoker.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scftorture_invoker._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.15, ptr @.str.5, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\011scftorture: scftorture_invoker %d: Waiting for all SCF torturers from cpu %d\0A\00", [48 x i8] zeroinitializer }, align 32
@scftorture_invoker._entry_ptr.39 = internal global ptr @scftorture_invoker._entry.37, section ".printk_index", align 4
@scftorture_invoker.__already_done.40 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Wanted CPU %d, running on %d, nr_cpu_ids = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@scftorture_invoker._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.15, ptr @.str.5, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\011scftorture: scftorture_invoker %d ended before starting\0A\00", [37 x i8] zeroinitializer }, align 32
@scftorture_invoker._entry_ptr.44 = internal global ptr @scftorture_invoker._entry.42, section ".printk_index", align 4
@scftorture_invoker._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.15, ptr @.str.5, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011scftorture: scftorture_invoker %d started\0A\00", [51 x i8] zeroinitializer }, align 32
@scftorture_invoker._entry_ptr.47 = internal global ptr @scftorture_invoker._entry.45, section ".printk_index", align 4
@scftorture_invoker._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.15, ptr @.str.5, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011scftorture: scftorture_invoker %d ended\0A\00", [53 x i8] zeroinitializer }, align 32
@scftorture_invoker._entry_ptr.50 = internal global ptr @scftorture_invoker._entry.48, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@scftorture_invoke_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@n_alloc_errs = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@scftorture_invoke_one.__already_done.51 = internal unnamed_addr global i1 false, section ".data.once", align 1
@scftorture_invoke_one.__already_done.52 = internal unnamed_addr global i1 false, section ".data.once", align 1
@scftorture_invoke_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Memory-ordering failure, scfs_prim: %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scftorture_invoke_one\00", [42 x i8] zeroinitializer }, align 32
@scftorture_invoke_one._entry_ptr = internal global ptr @scftorture_invoke_one._entry, section ".printk_index", align 4
@n_mb_out_errs = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@scf_sel_rand.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scf_handler_1.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Wanted CPU %d got CPU %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.scf_handler_1 = private unnamed_addr constant [14 x i8] c"scf_handler_1\00", align 1
@n_errs = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@scf_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@n_mb_in_errs = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@scf_torture_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.19, ptr @.str.5, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\011%s-torture: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@scf_torture_stats._entry_ptr = internal global ptr @scf_torture_stats._entry, section ".printk_index", align 4
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scf_torture_stats task started\00", [33 x i8] zeroinitializer }, align 32
@scfdone = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!!! \00", [27 x i8] zeroinitializer }, align 32
@bangstr = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@scf_torture_stats_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [158 x i8], [34 x i8] } { [158 x i8] c"\011%s %sscf_invoked_count %s: %lld resched: %lld single: %lld/%lld single_ofl: %lld/%lld single_rpc: %lld single_rpc_ofl: %lld many: %lld/%lld all: %lld/%lld \00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scf_torture_stats_print\00", [40 x i8] zeroinitializer }, align 32
@scf_torture_stats_print._entry_ptr = internal global ptr @scf_torture_stats_print._entry, section ".printk_index", align 4
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scftorture: \00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VER\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ver\00", [28 x i8] zeroinitializer }, align 32
@scf_torture_stats_print._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\01cste: %d stnmie: %d stnmoe: %d staf: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@scf_torture_stats_print._entry_ptr.68 = internal global ptr @scf_torture_stats_print._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Stopping \22scftorture_invoker\22 task\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stopping scf_torture_stats task\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"End of test: FAILURE\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"End of test: LOCK_HOTPLUG\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"End of test: SUCCESS\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.74 = private unnamed_addr constant [8 x i8] c"holdoff\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 50, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"longwait\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 52, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"nthreads\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 53, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"onoff_holdoff\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 54, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"onoff_interval\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 55, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"shutdown_secs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 56, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"stat_interval\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 57, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [8 x i8] c"stutter\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 58, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"use_cpus_read_lock\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 59, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 60, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"weight_resched\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 61, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"weight_single\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 62, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"weight_single_rpc\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 63, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"weight_single_wait\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 64, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"weight_many\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 65, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"weight_many_wait\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 66, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"weight_all\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 67, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"weight_all_wait\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 68, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 70, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"torture_type\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 70, i32 7 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 78, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 548, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 551, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 586, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 605, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"scf_stats_p\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 96, i32 31 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 624, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 629, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"n_started\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 138, i32 17 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 634, i32 14 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 640, i32 14 }
@___asan_gen_.194 = private unnamed_addr constant [23 x i8] c"scf_torture_stats_task\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 97, i32 28 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 496, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [14 x i8] c"scf_sel_array\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 123, i32 28 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"scf_sel_array_len\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 124, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"scf_sel_totweight\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 125, i32 22 }
@___asan_gen_.224 = private unnamed_addr constant [14 x i8] c"scf_prim_name\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 110, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 233, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 111, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 112, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 113, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 114, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 115, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 447, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 454, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 458, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 465, i32 5 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 471, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 487, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [13 x i8] c"n_alloc_errs\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 142, i32 17 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 422, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [14 x i8] c"n_mb_out_errs\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 141, i32 17 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 305, i32 23 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"n_errs\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 139, i32 17 }
@___asan_gen_.302 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 87, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [13 x i8] c"n_mb_in_errs\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 140, i32 17 }
@___asan_gen_.312 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 108, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 192, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [8 x i8] c"scfdone\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 143, i32 13 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 175, i32 13 }
@___asan_gen_.329 = private unnamed_addr constant [8 x i8] c"bangstr\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 144, i32 14 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 176, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 182, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 515, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 519, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 525, i32 33 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 527, i32 33 }
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.369 = private constant [23 x i8] c"../kernel/scftorture.c\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 529, i32 33 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_holdoff242, ptr @__UNIQUE_ID_holdofftype241, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_longwait244, ptr @__UNIQUE_ID_longwaittype243, ptr @__UNIQUE_ID_nthreads246, ptr @__UNIQUE_ID_nthreadstype245, ptr @__UNIQUE_ID_onoff_holdoff248, ptr @__UNIQUE_ID_onoff_holdofftype247, ptr @__UNIQUE_ID_onoff_interval250, ptr @__UNIQUE_ID_onoff_intervaltype249, ptr @__UNIQUE_ID_shutdown278, ptr @__UNIQUE_ID_shutdown_secs252, ptr @__UNIQUE_ID_shutdown_secstype251, ptr @__UNIQUE_ID_shutdowntype277, ptr @__UNIQUE_ID_stat_interval254, ptr @__UNIQUE_ID_stat_intervaltype253, ptr @__UNIQUE_ID_stutter256, ptr @__UNIQUE_ID_stuttertype255, ptr @__UNIQUE_ID_use_cpus_read_lock258, ptr @__UNIQUE_ID_use_cpus_read_locktype257, ptr @__UNIQUE_ID_verbose260, ptr @__UNIQUE_ID_verbosetype259, ptr @__UNIQUE_ID_weight_all274, ptr @__UNIQUE_ID_weight_all_wait276, ptr @__UNIQUE_ID_weight_all_waittype275, ptr @__UNIQUE_ID_weight_alltype273, ptr @__UNIQUE_ID_weight_many270, ptr @__UNIQUE_ID_weight_many_wait272, ptr @__UNIQUE_ID_weight_many_waittype271, ptr @__UNIQUE_ID_weight_manytype269, ptr @__UNIQUE_ID_weight_resched262, ptr @__UNIQUE_ID_weight_reschedtype261, ptr @__UNIQUE_ID_weight_single264, ptr @__UNIQUE_ID_weight_single_rpc266, ptr @__UNIQUE_ID_weight_single_rpctype265, ptr @__UNIQUE_ID_weight_single_wait268, ptr @__UNIQUE_ID_weight_single_waittype267, ptr @__UNIQUE_ID_weight_singletype263, ptr @__exitcall_scf_torture_cleanup, ptr @__initcall__kmod_scftorture__284_658_scf_torture_init6, ptr @__param_holdoff, ptr @__param_longwait, ptr @__param_nthreads, ptr @__param_onoff_holdoff, ptr @__param_onoff_interval, ptr @__param_shutdown, ptr @__param_shutdown_secs, ptr @__param_stat_interval, ptr @__param_stutter, ptr @__param_use_cpus_read_lock, ptr @__param_verbose, ptr @__param_weight_all, ptr @__param_weight_all_wait, ptr @__param_weight_many, ptr @__param_weight_many_wait, ptr @__param_weight_resched, ptr @__param_weight_single, ptr @__param_weight_single_rpc, ptr @__param_weight_single_wait, ptr @scf_sel_dump._entry, ptr @scf_sel_dump._entry_ptr, ptr @scf_torture_init._entry, ptr @scf_torture_init._entry.12, ptr @scf_torture_init._entry.9, ptr @scf_torture_init._entry_ptr, ptr @scf_torture_init._entry_ptr.11, ptr @scf_torture_init._entry_ptr.14, ptr @scf_torture_stats._entry, ptr @scf_torture_stats._entry_ptr, ptr @scf_torture_stats_print._entry, ptr @scf_torture_stats_print._entry.66, ptr @scf_torture_stats_print._entry_ptr, ptr @scf_torture_stats_print._entry_ptr.68, ptr @scftorture_invoke_one._entry, ptr @scftorture_invoke_one._entry_ptr, ptr @scftorture_invoker._entry, ptr @scftorture_invoker._entry.37, ptr @scftorture_invoker._entry.42, ptr @scftorture_invoker._entry.45, ptr @scftorture_invoker._entry.48, ptr @scftorture_invoker._entry_ptr, ptr @scftorture_invoker._entry_ptr.39, ptr @scftorture_invoker._entry_ptr.44, ptr @scftorture_invoker._entry_ptr.47, ptr @scftorture_invoker._entry_ptr.50, ptr @scftorture_print_module_parms._entry, ptr @scftorture_print_module_parms._entry_ptr, ptr @holdoff, ptr @longwait, ptr @nthreads, ptr @onoff_holdoff, ptr @onoff_interval, ptr @shutdown_secs, ptr @stat_interval, ptr @stutter, ptr @use_cpus_read_lock, ptr @verbose, ptr @weight_resched, ptr @weight_single, ptr @weight_single_rpc, ptr @weight_single_wait, ptr @weight_many, ptr @weight_many_wait, ptr @weight_all, ptr @weight_all_wait, ptr @.str, ptr @torture_type, ptr @shutdown, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @scf_stats_p, ptr @.str.10, ptr @.str.13, ptr @n_started, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @scf_torture_stats_task, ptr @.str.23, ptr @.str.24, ptr @scf_sel_array, ptr @scf_sel_array_len, ptr @scf_sel_totweight, ptr @.str.27, ptr @.str.28, ptr @scf_prim_name, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @n_alloc_errs, ptr @.str.53, ptr @.str.54, ptr @n_mb_out_errs, ptr @.str.55, ptr @n_errs, ptr @init_completion.__key, ptr @.str.56, ptr @n_mb_in_errs, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @scfdone, ptr @.str.60, ptr @bangstr, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @longwait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nthreads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_secs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stutter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_cpus_read_lock to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_resched to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_single to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_single_rpc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_single_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_many to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_many_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_all to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weight_all_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_torture_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_stats_p to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_torture_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_torture_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_started to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_torture_stats_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scftorture_print_module_parms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 326, i32 416, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_sel_array to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_sel_array_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_sel_totweight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_sel_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_prim_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scftorture_invoker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scftorture_invoker._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scftorture_invoker._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scftorture_invoker._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scftorture_invoker._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_alloc_errs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scftorture_invoke_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_mb_out_errs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_errs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_mb_in_errs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_torture_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scfdone to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bangstr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_torture_stats_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scf_torture_stats_print._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scf_torture_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @weight_resched, align 4
  %1 = load i32, ptr @weight_single, align 4
  %2 = load i32, ptr @weight_single_rpc, align 4
  %3 = load i32, ptr @weight_single_wait, align 4
  %4 = load i32, ptr @weight_many, align 4
  %5 = load i32, ptr @weight_many_wait, align 4
  %6 = load i32, ptr @weight_all, align 4
  %7 = load i32, ptr @weight_all_wait, align 4
  %8 = load i32, ptr @verbose, align 4
  %call = tail call zeroext i1 @torture_init_begin(ptr noundef nonnull @.str.1, i32 noundef %8) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @scftorture_print_module_parms(ptr noundef nonnull @.str.2)
  %9 = load i32, ptr @weight_resched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, ptr @weight_single, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1 = icmp slt i32 %10, 1
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %11 = load i32, ptr @weight_single_rpc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3 = icmp slt i32 %11, 1
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %12 = load i32, ptr @weight_single_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp5 = icmp slt i32 %12, 1
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %13 = load i32, ptr @weight_many, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp7 = icmp slt i32 %13, 1
  br i1 %cmp7, label %land.lhs.true8, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %14 = load i32, ptr @weight_many_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp9 = icmp slt i32 %14, 1
  br i1 %cmp9, label %land.lhs.true10, label %land.lhs.true8.if.else_crit_edge

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %15 = load i32, ptr @weight_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp11 = icmp slt i32 %15, 1
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true10.if.else_crit_edge

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %16 = load i32, ptr @weight_all_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp13 = icmp slt i32 %16, 1
  br i1 %cmp13, label %if.then14, label %land.lhs.true12.if.else_crit_edge

land.lhs.true12.if.else_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15 = icmp eq i32 %9, 0
  br i1 %cmp15, label %if.then14.cond.end_crit_edge, label %cond.false

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %mul = shl i32 %17, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then14.cond.end_crit_edge
  %cond = phi i32 [ %mul, %cond.false ], [ 0, %if.then14.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16 = icmp eq i32 %10, 0
  br i1 %cmp16, label %cond.end.cond.end20_crit_edge, label %cond.false18

cond.end.cond.end20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end20

cond.false18:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %mul19 = shl i32 %18, 1
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %cond.end.cond.end20_crit_edge
  %cond21 = phi i32 [ %mul19, %cond.false18 ], [ 0, %cond.end.cond.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22 = icmp eq i32 %11, 0
  br i1 %cmp22, label %cond.end20.cond.end26_crit_edge, label %cond.false24

cond.end20.cond.end26_crit_edge:                  ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end26

cond.false24:                                     ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %mul25 = shl i32 %19, 1
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false24, %cond.end20.cond.end26_crit_edge
  %cond27 = phi i32 [ %mul25, %cond.false24 ], [ 0, %cond.end20.cond.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp28 = icmp eq i32 %12, 0
  br i1 %cmp28, label %cond.end26.cond.end32_crit_edge, label %cond.false30

cond.end26.cond.end32_crit_edge:                  ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end32

cond.false30:                                     ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %mul31 = shl i32 %20, 1
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false30, %cond.end26.cond.end32_crit_edge
  %cond33 = phi i32 [ %mul31, %cond.false30 ], [ 0, %cond.end26.cond.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34 = icmp eq i32 %13, 0
  %cond35 = select i1 %cmp34, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp36 = icmp eq i32 %14, 0
  %cond37 = select i1 %cmp36, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp38 = icmp ne i32 %15, 0
  %cond39 = zext i1 %cmp38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp40 = icmp ne i32 %16, 0
  %cond41 = zext i1 %cmp40 to i32
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true12.if.else_crit_edge, %land.lhs.true10.if.else_crit_edge, %land.lhs.true8.if.else_crit_edge, %land.lhs.true6.if.else_crit_edge, %land.lhs.true4.if.else_crit_edge, %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp42 = icmp eq i32 %9, -1
  %spec.select = select i1 %cmp42, i32 0, i32 %0
  %21 = load i32, ptr @weight_single, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp45 = icmp eq i32 %21, -1
  %weight_single1.0 = select i1 %cmp45, i32 0, i32 %1
  %22 = load i32, ptr @weight_single_rpc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp48 = icmp eq i32 %22, -1
  %weight_single_rpc1.0 = select i1 %cmp48, i32 0, i32 %2
  %23 = load i32, ptr @weight_single_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp51 = icmp eq i32 %23, -1
  %weight_single_wait1.0 = select i1 %cmp51, i32 0, i32 %3
  %24 = load i32, ptr @weight_many, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp54 = icmp eq i32 %24, -1
  %weight_many1.0 = select i1 %cmp54, i32 0, i32 %4
  %25 = load i32, ptr @weight_many_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp57 = icmp eq i32 %25, -1
  %weight_many_wait1.0 = select i1 %cmp57, i32 0, i32 %5
  %26 = load i32, ptr @weight_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp60 = icmp eq i32 %26, -1
  %weight_all1.0 = select i1 %cmp60, i32 0, i32 %6
  %27 = load i32, ptr @weight_all_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp63 = icmp eq i32 %27, -1
  %spec.select537 = select i1 %cmp63, i32 0, i32 %7
  br label %if.end66

if.end66:                                         ; preds = %if.else, %cond.end32
  %weight_all_wait1.0 = phi i32 [ %cond41, %cond.end32 ], [ %spec.select537, %if.else ]
  %weight_all1.1 = phi i32 [ %cond39, %cond.end32 ], [ %weight_all1.0, %if.else ]
  %weight_many_wait1.1 = phi i32 [ %cond37, %cond.end32 ], [ %weight_many_wait1.0, %if.else ]
  %weight_many1.1 = phi i32 [ %cond35, %cond.end32 ], [ %weight_many1.0, %if.else ]
  %weight_single_wait1.1 = phi i32 [ %cond33, %cond.end32 ], [ %weight_single_wait1.0, %if.else ]
  %weight_single_rpc1.1 = phi i32 [ %cond27, %cond.end32 ], [ %weight_single_rpc1.0, %if.else ]
  %weight_single1.1 = phi i32 [ %cond21, %cond.end32 ], [ %weight_single1.0, %if.else ]
  %weight_resched1.1 = phi i32 [ %cond, %cond.end32 ], [ %spec.select, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_resched1.1)
  %cmp67 = icmp eq i32 %weight_resched1.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_single1.1)
  %cmp69 = icmp eq i32 %weight_single1.1, 0
  %or.cond = select i1 %cmp67, i1 %cmp69, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_single_rpc1.1)
  %cmp71 = icmp eq i32 %weight_single_rpc1.1, 0
  %or.cond522 = select i1 %or.cond, i1 %cmp71, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_single_wait1.1)
  %cmp73 = icmp eq i32 %weight_single_wait1.1, 0
  %or.cond523 = select i1 %or.cond522, i1 %cmp73, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_many1.1)
  %cmp75 = icmp eq i32 %weight_many1.1, 0
  %or.cond524 = select i1 %or.cond523, i1 %cmp75, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_many_wait1.1)
  %cmp77 = icmp eq i32 %weight_many_wait1.1, 0
  %or.cond525 = select i1 %or.cond524, i1 %cmp77, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_all1.1)
  %cmp79 = icmp eq i32 %weight_all1.1, 0
  %or.cond526 = select i1 %or.cond525, i1 %cmp79, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight_all_wait1.0)
  %cmp81 = icmp eq i32 %weight_all_wait1.0, 0
  %or.cond527 = select i1 %or.cond526, i1 %cmp81, i1 false
  br i1 %or.cond527, label %do.end, label %if.end84

do.end:                                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %unwind

if.end84:                                         ; preds = %if.end66
  tail call fastcc void @scf_sel_add(i32 noundef %weight_resched1.1, i32 noundef 0, i1 noundef zeroext false)
  tail call fastcc void @scf_sel_add(i32 noundef %weight_single1.1, i32 noundef 1, i1 noundef zeroext false)
  tail call fastcc void @scf_sel_add(i32 noundef %weight_single_rpc1.1, i32 noundef 2, i1 noundef zeroext true)
  tail call fastcc void @scf_sel_add(i32 noundef %weight_single_wait1.1, i32 noundef 1, i1 noundef zeroext true)
  tail call fastcc void @scf_sel_add(i32 noundef %weight_many1.1, i32 noundef 3, i1 noundef zeroext false)
  tail call fastcc void @scf_sel_add(i32 noundef %weight_many_wait1.1, i32 noundef 3, i1 noundef zeroext true)
  tail call fastcc void @scf_sel_add(i32 noundef %weight_all1.1, i32 noundef 4, i1 noundef zeroext false)
  tail call fastcc void @scf_sel_add(i32 noundef %weight_all_wait1.0, i32 noundef 4, i1 noundef zeroext true)
  %28 = load i32, ptr @scf_sel_array_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.i = icmp sgt i32 %28, 0
  br i1 %cmp10.i, label %if.end84.for.body.i_crit_edge, label %if.end84.scf_sel_dump.exit_crit_edge

if.end84.scf_sel_dump.exit_crit_edge:             ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %scf_sel_dump.exit

if.end84.for.body.i_crit_edge:                    ; preds = %if.end84
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end84.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end84.for.body.i_crit_edge ]
  %oldw.011.i = phi i32 [ %40, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end84.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.scf_selector], ptr @scf_sel_array, i32 0, i32 %i.012.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %30, %oldw.011.i
  %mul.i = mul i32 %sub.i, 100000
  %31 = load i32, ptr @scf_sel_totweight, align 4
  %div.i = udiv i32 %mul.i, %31
  %div.i.frozen = freeze i32 %div.i
  %div1.i = udiv i32 %div.i.frozen, 1000
  %32 = mul i32 %div1.i, 1000
  %rem.i.decomposed = sub i32 %div.i.frozen, %32
  %scfs_prim.i = getelementptr [8 x %struct.scf_selector], ptr @scf_sel_array, i32 0, i32 %i.012.i, i32 1
  %33 = ptrtoint ptr %scfs_prim.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scfs_prim.i, align 4
  %arrayidx2.i = getelementptr [5 x ptr], ptr @scf_prim_name, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx2.i, align 4
  %scfs_wait.i = getelementptr [8 x %struct.scf_selector], ptr @scf_sel_array, i32 0, i32 %i.012.i, i32 2
  %37 = ptrtoint ptr %scfs_wait.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %scfs_wait.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.30, ptr @.str.29
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %div1.i, i32 noundef %rem.i.decomposed, ptr noundef %36, ptr noundef nonnull %cond.i) #15
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %41 = load i32, ptr @scf_sel_array_len, align 4
  %cmp.i = icmp slt i32 %inc.i, %41
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.scf_sel_dump.exit_crit_edge

for.body.i.scf_sel_dump.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %scf_sel_dump.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

scf_sel_dump.exit:                                ; preds = %for.body.i.scf_sel_dump.exit_crit_edge, %if.end84.scf_sel_dump.exit_crit_edge
  %42 = load i32, ptr @onoff_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp85 = icmp sgt i32 %42, 0
  br i1 %cmp85, label %if.then86, label %scf_sel_dump.exit.if.end135_crit_edge

scf_sel_dump.exit.if.end135_crit_edge:            ; preds = %scf_sel_dump.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then86:                                        ; preds = %scf_sel_dump.exit
  %43 = load i32, ptr @onoff_holdoff, align 4
  %mul87 = mul i32 %43, 100
  %call88 = tail call i32 @torture_onoff_init(i32 noundef %mul87, i32 noundef %42, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %land.rhs, label %if.then86.if.end135_crit_edge

if.then86.if.end135_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

land.rhs:                                         ; preds = %if.then86
  %.b521 = load i1, ptr @scf_torture_init.__already_done, align 1
  br i1 %.b521, label %land.rhs.unwind_crit_edge, label %if.then96, !prof !314

land.rhs.unwind_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %unwind

if.then96:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_torture_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 605, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %call88) #12
  br label %unwind

if.end135:                                        ; preds = %if.then86.if.end135_crit_edge, %scf_sel_dump.exit.if.end135_crit_edge
  %44 = load i32, ptr @shutdown_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp136 = icmp sgt i32 %44, 0
  br i1 %cmp136, label %if.then138, label %if.end135.if.end203_crit_edge

if.end135.if.end203_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.then138:                                       ; preds = %if.end135
  %call139 = tail call i32 @torture_shutdown_init(i32 noundef %44, ptr noundef nonnull @scf_torture_cleanup) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp142 = icmp slt i32 %call139, 0
  br i1 %cmp142, label %land.rhs151, label %if.then138.if.end203_crit_edge

if.then138.if.end203_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

land.rhs151:                                      ; preds = %if.then138
  %.b513520 = load i1, ptr @scf_torture_init.__already_done.7, align 1
  br i1 %.b513520, label %land.rhs151.unwind_crit_edge, label %if.then162, !prof !314

land.rhs151.unwind_crit_edge:                     ; preds = %land.rhs151
  call void @__sanitizer_cov_trace_pc() #14
  br label %unwind

if.then162:                                       ; preds = %land.rhs151
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_torture_init.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 610, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %call139) #12
  br label %unwind

if.end203:                                        ; preds = %if.then138.if.end203_crit_edge, %if.end135.if.end203_crit_edge
  %45 = load i32, ptr @stutter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp204 = icmp sgt i32 %45, 0
  br i1 %cmp204, label %if.then206, label %if.end203.if.end271_crit_edge

if.end203.if.end271_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271

if.then206:                                       ; preds = %if.end203
  %call207 = tail call i32 @torture_stutter_init(i32 noundef %45, i32 noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp210 = icmp slt i32 %call207, 0
  br i1 %cmp210, label %land.rhs219, label %if.then206.if.end271_crit_edge

if.then206.if.end271_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271

land.rhs219:                                      ; preds = %if.then206
  %.b514519 = load i1, ptr @scf_torture_init.__already_done.8, align 1
  br i1 %.b514519, label %land.rhs219.unwind_crit_edge, label %if.then230, !prof !314

land.rhs219.unwind_crit_edge:                     ; preds = %land.rhs219
  call void @__sanitizer_cov_trace_pc() #14
  br label %unwind

if.then230:                                       ; preds = %land.rhs219
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_torture_init.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 615, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %call207) #12
  br label %unwind

if.end271:                                        ; preds = %if.then206.if.end271_crit_edge, %if.end203.if.end271_crit_edge
  %46 = load i32, ptr @nthreads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp272 = icmp slt i32 %46, 0
  br i1 %cmp272, label %if.then274, label %if.end271.if.end276_crit_edge

if.end271.if.end276_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.then274:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %47 = load volatile i32, ptr @__num_online_cpus, align 4
  store i32 %47, ptr @nthreads, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then274, %if.end271.if.end276_crit_edge
  %48 = load i32, ptr @nthreads, align 4
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 96) #12
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !315

kcalloc.exit.thread:                              ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @scf_stats_p, align 4
  br label %do.end282

if.end7.i.i:                                      ; preds = %if.end276
  %51 = extractvalue { i32, i1 } %49, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #16
  store ptr %call8.i.i, ptr @scf_stats_p, align 4
  %tobool278.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool278.not, label %if.end7.i.i.do.end282_crit_edge, label %do.body286

if.end7.i.i.do.end282_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end282

do.end282:                                        ; preds = %if.end7.i.i.do.end282_crit_edge, %kcalloc.exit.thread
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %unwind

do.body286:                                       ; preds = %if.end7.i.i
  %52 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool287.not = icmp eq i32 %52, 0
  br i1 %tobool287.not, label %do.body286.do.end296_crit_edge, label %do.end291

do.body286.do.end296_crit_edge:                   ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end296

do.end291:                                        ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #14
  %53 = load i32, ptr @nthreads, align 4
  %call293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %53) #15
  br label %do.end296

do.end296:                                        ; preds = %do.end291, %do.body286.do.end296_crit_edge
  %54 = load i32, ptr @nthreads, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_started, i32 noundef 4) #12
  store volatile i32 %54, ptr @n_started, align 4
  %55 = load i32, ptr @nthreads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp297543 = icmp sgt i32 %55, 0
  br i1 %cmp297543, label %do.end296.for.body_crit_edge, label %do.end296.for.end_crit_edge

do.end296.for.end_crit_edge:                      ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end296.for.body_crit_edge:                     ; preds = %do.end296
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0544, 1
  %56 = load i32, ptr @nthreads, align 4
  %cmp297 = icmp slt i32 %inc, %56
  br i1 %cmp297, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end296.for.body_crit_edge
  %i.0544 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.end296.for.body_crit_edge ]
  %57 = load ptr, ptr @scf_stats_p, align 4
  %cpu = getelementptr %struct.scf_statistics, ptr %57, i32 %i.0544, i32 1
  %58 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %i.0544, ptr %cpu, align 4
  %arrayidx299 = getelementptr %struct.scf_statistics, ptr %57, i32 %i.0544
  %call301 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @scftorture_invoker, ptr noundef %arrayidx299, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %arrayidx299) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %cmp304 = icmp slt i32 %call301, 0
  br i1 %cmp304, label %land.rhs313, label %for.cond

land.rhs313:                                      ; preds = %for.body
  %.b515518 = load i1, ptr @scf_torture_init.__already_done.18, align 1
  br i1 %.b515518, label %land.rhs313.unwind_crit_edge, label %if.then324, !prof !314

land.rhs313.unwind_crit_edge:                     ; preds = %land.rhs313
  call void @__sanitizer_cov_trace_pc() #14
  br label %unwind

if.then324:                                       ; preds = %land.rhs313
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_torture_init.__already_done.18, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 636, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %call301) #12
  br label %unwind

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.end296.for.end_crit_edge
  %59 = load i32, ptr @stat_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp365 = icmp sgt i32 %59, 0
  br i1 %cmp365, label %if.then367, label %for.end.if.end432_crit_edge

for.end.if.end432_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end432

if.then367:                                       ; preds = %for.end
  %call368 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @scf_torture_stats, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @scf_torture_stats_task) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368)
  %cmp371 = icmp slt i32 %call368, 0
  br i1 %cmp371, label %land.rhs380, label %if.then367.if.end432_crit_edge

if.then367.if.end432_crit_edge:                   ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end432

land.rhs380:                                      ; preds = %if.then367
  %.b516517 = load i1, ptr @scf_torture_init.__already_done.22, align 1
  br i1 %.b516517, label %land.rhs380.unwind_crit_edge, label %if.then391, !prof !314

land.rhs380.unwind_crit_edge:                     ; preds = %land.rhs380
  call void @__sanitizer_cov_trace_pc() #14
  br label %unwind

if.then391:                                       ; preds = %land.rhs380
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_torture_init.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 641, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %call368) #12
  br label %unwind

if.end432:                                        ; preds = %if.then367.if.end432_crit_edge, %for.end.if.end432_crit_edge
  tail call void @torture_init_end() #12
  br label %cleanup

unwind:                                           ; preds = %if.then391, %land.rhs380.unwind_crit_edge, %if.then324, %land.rhs313.unwind_crit_edge, %do.end282, %if.then230, %land.rhs219.unwind_crit_edge, %if.then162, %land.rhs151.unwind_crit_edge, %if.then96, %land.rhs.unwind_crit_edge, %do.end
  %firsterr.0 = phi i32 [ -22, %do.end ], [ -12, %do.end282 ], [ %call88, %if.then96 ], [ %call139, %if.then162 ], [ %call207, %if.then230 ], [ %call301, %if.then324 ], [ %call368, %if.then391 ], [ %call88, %land.rhs.unwind_crit_edge ], [ %call139, %land.rhs151.unwind_crit_edge ], [ %call207, %land.rhs219.unwind_crit_edge ], [ %call301, %land.rhs313.unwind_crit_edge ], [ %call368, %land.rhs380.unwind_crit_edge ]
  tail call void @torture_init_end() #12
  tail call void @scf_torture_cleanup()
  %60 = load i32, ptr @shutdown_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool433.not = icmp eq i32 %60, 0
  br i1 %tobool433.not, label %unwind.cleanup_crit_edge, label %do.end447

unwind.cleanup_crit_edge:                         ; preds = %unwind
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end447:                                        ; preds = %unwind
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 652, i32 noundef 9, ptr noundef null) #12
  tail call void @kernel_power_off() #12
  br label %cleanup

cleanup:                                          ; preds = %do.end447, %unwind.cleanup_crit_edge, %if.end432, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end432 ], [ -16, %entry.cleanup_crit_edge ], [ %firsterr.0, %do.end447 ], [ %firsterr.0, %unwind.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scf_torture_cleanup() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @torture_cleanup_begin() #12
  br i1 %call, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body2:                                         ; preds = %entry
  store volatile i8 1, ptr @scfdone, align 1
  %0 = load i32, ptr @nthreads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body2.end_crit_edge, label %land.lhs.true

do.body2.end_crit_edge:                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

land.lhs.true:                                    ; preds = %do.body2
  %1 = load ptr, ptr @scf_stats_p, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %land.lhs.true.end_crit_edge, label %for.cond.preheader

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

for.cond.preheader:                               ; preds = %land.lhs.true
  %2 = load i32, ptr @nthreads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp28 = icmp sgt i32 %2, 0
  br i1 %cmp28, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end9_crit_edge

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %3 = load ptr, ptr @scf_stats_p, align 4
  %arrayidx = getelementptr %struct.scf_statistics, ptr %3, i32 %i.029
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.69, ptr noundef %arrayidx) #12
  %inc = add nuw nsw i32 %i.029, 1
  %4 = load i32, ptr @nthreads, align 4
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge
  tail call void @smp_call_function(ptr noundef nonnull @scf_cleanup_handler, ptr noundef null, i32 noundef 0) #12
  tail call void @_torture_stop_kthread(ptr noundef nonnull @.str.70, ptr noundef nonnull @scf_torture_stats_task) #12
  tail call fastcc void @scf_torture_stats_print()
  %5 = load ptr, ptr @scf_stats_p, align 4
  tail call void @kfree(ptr noundef %5) #12
  store ptr null, ptr @scf_stats_p, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_errs, i32 noundef 4) #12
  %6 = load volatile i32, ptr @n_errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end9.if.then17_crit_edge

if.end9.if.then17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end9
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_mb_in_errs, i32 noundef 4) #12
  %7 = load volatile i32, ptr @n_mb_in_errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_mb_out_errs, i32 noundef 4) #12
  %8 = load volatile i32, ptr @n_mb_out_errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.else18, label %lor.lhs.false14.if.then17_crit_edge

lor.lhs.false14.if.then17_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false14.if.then17_crit_edge, %lor.lhs.false.if.then17_crit_edge, %if.end9.if.then17_crit_edge
  %9 = load i32, ptr @verbose, align 4
  %10 = load i32, ptr @holdoff, align 4
  %11 = load i32, ptr @longwait, align 4
  %12 = load i32, ptr @nthreads, align 4
  %13 = load i32, ptr @onoff_holdoff, align 4
  %14 = load i32, ptr @onoff_interval, align 4
  %15 = load i8, ptr @shutdown, align 1, !range !313
  %16 = zext i8 %15 to i32
  %17 = load i32, ptr @stat_interval, align 4
  %18 = load i32, ptr @stutter, align 4
  %19 = load i8, ptr @use_cpus_read_lock, align 1, !range !313
  %20 = zext i8 %19 to i32
  %21 = load i32, ptr @weight_resched, align 4
  %22 = load i32, ptr @weight_single, align 4
  %23 = load i32, ptr @weight_single_rpc, align 4
  %24 = load i32, ptr @weight_single_wait, align 4
  %25 = load i32, ptr @weight_many, align 4
  %26 = load i32, ptr @weight_many_wait, align 4
  %27 = load i32, ptr @weight_all, align 4
  %28 = load i32, ptr @weight_all_wait, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.71, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28) #15
  br label %end

if.else18:                                        ; preds = %lor.lhs.false14
  %call19 = tail call zeroext i1 @torture_onoff_failures() #12
  br i1 %call19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @scftorture_print_module_parms(ptr noundef nonnull @.str.72)
  br label %end

if.else21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @scftorture_print_module_parms(ptr noundef nonnull @.str.73)
  br label %end

end:                                              ; preds = %if.else21, %if.then20, %if.then17, %land.lhs.true.end_crit_edge, %do.body2.end_crit_edge
  tail call void @torture_cleanup_end() #12
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_init_begin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scftorture_print_module_parms(ptr noundef %tag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  %1 = load i32, ptr @holdoff, align 4
  %2 = load i32, ptr @longwait, align 4
  %3 = load i32, ptr @nthreads, align 4
  %4 = load i32, ptr @onoff_holdoff, align 4
  %5 = load i32, ptr @onoff_interval, align 4
  %6 = load i8, ptr @shutdown, align 1, !range !313
  %7 = zext i8 %6 to i32
  %8 = load i32, ptr @stat_interval, align 4
  %9 = load i32, ptr @stutter, align 4
  %10 = load i8, ptr @use_cpus_read_lock, align 1, !range !313
  %11 = zext i8 %10 to i32
  %12 = load i32, ptr @weight_resched, align 4
  %13 = load i32, ptr @weight_single, align 4
  %14 = load i32, ptr @weight_single_rpc, align 4
  %15 = load i32, ptr @weight_single_wait, align 4
  %16 = load i32, ptr @weight_many, align 4
  %17 = load i32, ptr @weight_many_wait, align 4
  %18 = load i32, ptr @weight_all, align 4
  %19 = load i32, ptr @weight_all_wait, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %tag, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scf_sel_add(i32 noundef %weight, i32 noundef %prim, i1 noundef zeroext %wait) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %wait to i8
  %0 = load i32, ptr @scf_sel_array_len, align 4
  %arrayidx = getelementptr [8 x %struct.scf_selector], ptr @scf_sel_array, i32 0, i32 %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight)
  %tobool.not = icmp eq i32 %weight, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %0)
  %cmp = icmp ugt i32 %0, 7
  br i1 %cmp, label %land.rhs, label %lor.lhs.false38.critedge

land.rhs:                                         ; preds = %lor.lhs.false
  %.b168 = load i1, ptr @scf_sel_add.__already_done, align 1
  br i1 %.b168, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !314

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_sel_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 211, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

lor.lhs.false38.critedge:                         ; preds = %lor.lhs.false
  %mul.neg = mul i32 %weight, -100000
  %1 = load i32, ptr @scf_sel_totweight, align 4
  %mul40 = mul i32 %1, 100000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.neg, i32 %mul40)
  %cmp41.not = icmp ugt i32 %mul.neg, %mul40
  br i1 %cmp41.not, label %lor.lhs.false95.critedge, label %land.rhs48

land.rhs48:                                       ; preds = %lor.lhs.false38.critedge
  %.b166167 = load i1, ptr @scf_sel_add.__already_done.25, align 1
  br i1 %.b166167, label %land.rhs48.cleanup_crit_edge, label %if.then59, !prof !314

land.rhs48.cleanup_crit_edge:                     ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_sel_add.__already_done.25, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 212, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

lor.lhs.false95.critedge:                         ; preds = %lor.lhs.false38.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %1, %weight
  store i32 %add, ptr @scf_sel_totweight, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %arrayidx, align 4
  %scfs_prim = getelementptr [8 x %struct.scf_selector], ptr @scf_sel_array, i32 0, i32 %0, i32 1
  %3 = ptrtoint ptr %scfs_prim to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %prim, ptr %scfs_prim, align 4
  %scfs_wait = getelementptr [8 x %struct.scf_selector], ptr @scf_sel_array, i32 0, i32 %0, i32 2
  %4 = ptrtoint ptr %scfs_wait to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %scfs_wait, align 4
  %inc = add nuw nsw i32 %0, 1
  store i32 %inc, ptr @scf_sel_array_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false95.critedge, %if.then59, %land.rhs48.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_onoff_init(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_shutdown_init(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_stutter_init(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_torture_create_kthread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scftorture_invoker(ptr nocapture noundef %arg) #1 align 64 {
entry:
  %rand = alloca %struct.torture_random_state, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #12
  %0 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rand, align 8
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cpu2 = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %3) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %cpu5 = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 1
  %4 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %rem = urem i32 %5, %6
  %7 = tail call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %rem.i = and i32 %rem, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %rem, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call8 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %10, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end4.if.end43_crit_edge, label %land.rhs

do.end4.if.end43_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.rhs:                                         ; preds = %do.end4
  %.b228 = load i1, ptr @scftorture_invoker.__already_done, align 1
  br i1 %.b228, label %land.rhs.if.end43_crit_edge, label %if.then17, !prof !314

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scftorture_invoker.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 449, i32 noundef 9, ptr noundef null) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then17, %land.rhs.if.end43_crit_edge, %do.end4.if.end43_crit_edge
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %12, i32 noundef 19) #12
  %13 = load i32, ptr @holdoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool53.not = icmp eq i32 %13, 0
  br i1 %tobool53.not, label %if.end43.do.body57_crit_edge, label %if.then54

if.end43.do.body57_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body57

if.then54:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %mul = mul i32 %13, 100
  %call55 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #12
  br label %do.body57

do.body57:                                        ; preds = %if.then54, %if.end43.do.body57_crit_edge
  %14 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool58.not = icmp eq i32 %14, 0
  br i1 %tobool58.not, label %do.body57.do.end70_crit_edge, label %do.end62

do.body57.do.end70_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70

do.end62:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu5, align 4
  %cpu66 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %cpu66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu66, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %16, i32 noundef %18) #15
  br label %do.end70

do.end70:                                         ; preds = %do.end62, %do.body57.do.end70_crit_edge
  %cpu72 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %cpu72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu72, align 4
  %21 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %rem75 = urem i32 %22, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %rem75)
  %cmp.not = icmp eq i32 %20, %rem75
  br i1 %cmp.not, label %do.end70.if.end121_crit_edge, label %land.rhs82

do.end70.if.end121_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

land.rhs82:                                       ; preds = %do.end70
  %.b224227 = load i1, ptr @scftorture_invoker.__already_done.40, align 1
  br i1 %.b224227, label %land.rhs82.if.end121_crit_edge, label %if.then93, !prof !314

land.rhs82.if.end121_crit_edge:                   ; preds = %land.rhs82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then93:                                        ; preds = %land.rhs82
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scftorture_invoker.__already_done.40, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 460, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.15, i32 noundef %22, i32 noundef %20, i32 noundef %23) #12
  br label %if.end121

if.end121:                                        ; preds = %if.then93, %land.rhs82.if.end121_crit_edge, %do.end70.if.end121_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_started, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !316
  tail call void @llvm.prefetch.p0(ptr nonnull @n_started, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_started, ptr nonnull @n_started, i32 1, ptr nonnull elementtype(i32) @n_started) #12, !srcloc !317
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool130.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool130.not, label %while.cond.preheader, label %if.end121.do.body151_crit_edge

if.end121.do.body151_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

while.cond.preheader:                             ; preds = %if.end121
  %call.i.i229243 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_started, i32 noundef 4) #12
  %25 = load volatile i32, ptr @n_started, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !319
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool133.not244 = icmp eq i32 %25, 0
  br i1 %tobool133.not244, label %while.cond.preheader.do.body151_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.body151_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

while.body:                                       ; preds = %if.end148.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call134 = tail call zeroext i1 @torture_must_stop() #12
  br i1 %call134, label %do.body136, label %if.end148

do.body136:                                       ; preds = %while.body
  %26 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool137.not = icmp eq i32 %26, 0
  br i1 %tobool137.not, label %do.body136.end_crit_edge, label %do.end141

do.body136.end_crit_edge:                         ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

do.end141:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu5, align 4
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %28) #15
  br label %end

if.end148:                                        ; preds = %while.body
  %call149 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  %call.i.i229 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_started, i32 noundef 4) #12
  %29 = load volatile i32, ptr @n_started, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !319
  %tobool133.not = icmp eq i32 %29, 0
  br i1 %tobool133.not, label %if.end148.do.body151_crit_edge, label %if.end148.while.body_crit_edge

if.end148.while.body_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end148.do.body151_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

do.body151:                                       ; preds = %if.end148.do.body151_crit_edge, %while.cond.preheader.do.body151_crit_edge, %if.end121.do.body151_crit_edge
  %30 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool152.not = icmp eq i32 %30, 0
  br i1 %tobool152.not, label %do.body151.do.end162_crit_edge, label %do.end156

do.body151.do.end162_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end162

do.end156:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu5, align 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %32) #15
  br label %do.end162

do.end162:                                        ; preds = %do.end156, %do.body151.do.end162_crit_edge
  %n_all.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 11
  %n_all_wait.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 12
  %n_many.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 9
  %n_many_wait.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 10
  %n_single_rpc.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 5
  %n_single_rpc_ofl.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 6
  %n_single.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 3
  %n_single_wait.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 7
  %n_single_ofl.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 4
  %n_single_wait_ofl.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 8
  %n_resched.i = getelementptr inbounds %struct.scf_statistics, ptr %arg, i32 0, i32 2
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i
  %33 = shl nuw i32 1, %rem.i
  br label %do.body163

do.body163:                                       ; preds = %if.end188.do.body163_crit_edge, %do.end162
  %call.i.i230 = call i32 @torture_random(ptr noundef nonnull %rand) #12
  %34 = load i32, ptr @scf_sel_totweight, align 4
  %add.i426.i = add i32 %34, 1
  %rem.i.i = urem i32 %call.i.i230, %add.i426.i
  %35 = load i32, ptr @scf_sel_array_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp44.i.i = icmp sgt i32 %35, 0
  br i1 %cmp44.i.i, label %do.body163.for.body.i.i_crit_edge, label %do.body163.land.end.i.i_crit_edge

do.body163.land.end.i.i_crit_edge:                ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i.i

do.body163.for.body.i.i_crit_edge:                ; preds = %do.body163
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %35
  br i1 %exitcond.not.i.i, label %for.cond.i.i.land.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.land.end.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %do.body163.for.body.i.i_crit_edge
  %i.045.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %do.body163.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.scf_selector], ptr @scf_sel_array, i32 0, i32 %i.045.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %rem.i.i)
  %cmp1.not.i.i = icmp ult i32 %37, %rem.i.i
  br i1 %cmp1.not.i.i, label %for.cond.i.i, label %for.body.i.i.scf_sel_rand.exit.i_crit_edge

for.body.i.i.scf_sel_rand.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %scf_sel_rand.exit.i

land.end.i.i:                                     ; preds = %for.cond.i.i.land.end.i.i_crit_edge, %do.body163.land.end.i.i_crit_edge
  %.b43.i.i = load i1, ptr @scf_sel_rand.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.scf_sel_rand.exit.i_crit_edge, label %if.then7.i.i, !prof !314

land.end.i.i.scf_sel_rand.exit.i_crit_edge:       ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %scf_sel_rand.exit.i

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_sel_rand.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 9, ptr noundef null) #12
  br label %scf_sel_rand.exit.i

scf_sel_rand.exit.i:                              ; preds = %if.then7.i.i, %land.end.i.i.scf_sel_rand.exit.i_crit_edge, %for.body.i.i.scf_sel_rand.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @scf_sel_array, %if.then7.i.i ], [ @scf_sel_array, %land.end.i.i.scf_sel_rand.exit.i_crit_edge ], [ %arrayidx.i.i, %for.body.i.i.scf_sel_rand.exit.i_crit_edge ]
  %38 = load i8, ptr @use_cpus_read_lock, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %scf_sel_rand.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @cpus_read_lock() #12
  br label %if.end.i

do.body.i:                                        ; preds = %scf_sel_rand.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %42, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !320
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.then.i
  %scfs_prim.i = getelementptr inbounds %struct.scf_selector, ptr %retval.0.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %scfs_prim.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scfs_prim.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i = icmp eq i32 %44, 1
  br i1 %cmp.i, label %if.end.i.if.then2.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %scfs_wait.i = getelementptr inbounds %struct.scf_selector, ptr %retval.0.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %scfs_wait.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %scfs_wait.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not.i = icmp eq i8 %46, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end53.i_crit_edge, label %lor.lhs.false.i.if.then2.i_crit_edge

lor.lhs.false.i.if.then2.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

lor.lhs.false.i.if.end53.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.then2.i:                                       ; preds = %lor.lhs.false.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 2592, i32 noundef 68) #17
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %land.rhs.i, label %if.else48.i

land.rhs.i:                                       ; preds = %if.then2.i
  %.b414.i = load i1, ptr @scftorture_invoke_one.__already_done, align 1
  br i1 %.b414.i, label %land.rhs.i.if.then47.i_crit_edge, label %if.then13.i, !prof !314

land.rhs.i.if.then47.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47.i

if.then13.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scftorture_invoke_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 325, i32 noundef 9, ptr noundef null) #12
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.then13.i, %land.rhs.i.if.then47.i_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_alloc_errs, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @n_alloc_errs, i32 1, i32 3, i32 1) #12
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_alloc_errs, ptr nonnull @n_alloc_errs, i32 1, ptr nonnull elementtype(i32) @n_alloc_errs) #12, !srcloc !321
  br label %if.end53.i

if.else48.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %scfc_cpu.i = getelementptr inbounds %struct.scf_check, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %scfc_cpu.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %scfc_cpu.i, align 4
  %scfs_wait49.i = getelementptr inbounds %struct.scf_selector, ptr %retval.0.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %scfs_wait49.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %scfs_wait49.i, align 4, !range !313
  %scfc_wait.i = getelementptr inbounds %struct.scf_check, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %scfc_wait.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %scfc_wait.i, align 8
  %scfc_out.i = getelementptr inbounds %struct.scf_check, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %scfc_out.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %scfc_out.i, align 1
  %scfc_rpc.i = getelementptr inbounds %struct.scf_check, ptr %call7.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %scfc_rpc.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %scfc_rpc.i, align 1
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else48.i, %if.then47.i, %lor.lhs.false.i.if.end53.i_crit_edge
  %scfcp.0.i = phi ptr [ null, %if.then47.i ], [ %call7.i.i, %if.else48.i ], [ null, %lor.lhs.false.i.if.end53.i_crit_edge ]
  %55 = ptrtoint ptr %scfs_prim.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %scfs_prim.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %land.end202.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb106.i
    i32 2, label %sw.bb134.i
    i32 3, label %sw.bb166.i
    i32 4, label %sw.bb180.i
  ]

sw.bb.i:                                          ; preds = %if.end53.i
  %call55.i = call i32 @torture_random(ptr noundef nonnull %rand) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i231 = urem i32 %call55.i, %58
  %59 = ptrtoint ptr %n_resched.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %n_resched.i, align 8
  %inc.i = add i64 %60, 1
  store i64 %inc.i, ptr %n_resched.i, align 8
  call void @resched_cpu(i32 noundef %rem.i231) #12
  %61 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !322
  %62 = call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i to ptr
  %cpu75.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu75.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu75.i, align 4
  %arrayidx.i232 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i232, align 4
  %add.i233 = add i32 %67, ptrtoint (ptr @scf_invoked_count to i32)
  %68 = inttoptr i32 %add.i233 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %68, align 8
  %add76.i = add i64 %70, 1
  store i64 %add76.i, ptr %68, align 8
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !323
  %and.i.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool87.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool87.not.i, label %if.then96.i, label %sw.bb.i.do.end99.i_crit_edge, !prof !315

sw.bb.i.do.end99.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end99.i

if.then96.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end99.i

do.end99.i:                                       ; preds = %if.then96.i, %sw.bb.i.do.end99.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #12, !srcloc !324
  br label %sw.epilog.i

sw.bb106.i:                                       ; preds = %if.end53.i
  %call107.i = call i32 @torture_random(ptr noundef nonnull %rand) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %72 = load i32, ptr @nr_cpu_ids, align 4
  %rem108.i = urem i32 %call107.i, %72
  %scfs_wait109.i = getelementptr inbounds %struct.scf_selector, ptr %retval.0.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %scfs_wait109.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %scfs_wait109.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool110.not.i = icmp eq i8 %74, 0
  %n_single.sink437.i = select i1 %tobool110.not.i, ptr %n_single.i, ptr %n_single_wait.i
  %75 = ptrtoint ptr %n_single.sink437.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %n_single.sink437.i, align 8
  %inc114.i = add i64 %76, 1
  store i64 %inc114.i, ptr %n_single.sink437.i, align 8
  %tobool116.not.i = icmp eq ptr %scfcp.0.i, null
  br i1 %tobool116.not.i, label %sw.bb106.i.if.end119.i_crit_edge, label %if.then117.i

sw.bb106.i.if.end119.i_crit_edge:                 ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119.i

if.then117.i:                                     ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #14
  %scfc_cpu118.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 2
  %77 = ptrtoint ptr %scfc_cpu118.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %rem108.i, ptr %scfc_cpu118.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !325
  %78 = ptrtoint ptr %scfcp.0.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %scfcp.0.i, align 8
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then117.i, %sw.bb106.i.if.end119.i_crit_edge
  %79 = ptrtoint ptr %scfs_wait109.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %scfs_wait109.i, align 4, !range !313
  %81 = zext i8 %80 to i32
  %call123.i = call i32 @smp_call_function_single(i32 noundef %rem108.i, ptr noundef nonnull @scf_handler_1, ptr noundef %scfcp.0.i, i32 noundef %81) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end119.i.sw.epilog.i_crit_edge, label %if.then125.i

if.end119.i.sw.epilog.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then125.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %scfs_wait109.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %scfs_wait109.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool127.not.i = icmp eq i8 %83, 0
  %n_single_ofl.sink438.i = select i1 %tobool127.not.i, ptr %n_single_ofl.i, ptr %n_single_wait_ofl.i
  %84 = ptrtoint ptr %n_single_ofl.sink438.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %n_single_ofl.sink438.i, align 8
  %inc131.i = add i64 %85, 1
  store i64 %inc131.i, ptr %n_single_ofl.sink438.i, align 8
  call void @kfree(ptr noundef %scfcp.0.i) #12
  br label %if.end330.i

sw.bb134.i:                                       ; preds = %if.end53.i
  %tobool135.not.i = icmp eq ptr %scfcp.0.i, null
  br i1 %tobool135.not.i, label %sw.bb134.i.if.end330.i_crit_edge, label %if.end137.i

sw.bb134.i.if.end330.i_crit_edge:                 ; preds = %sw.bb134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end330.i

if.end137.i:                                      ; preds = %sw.bb134.i
  %call138.i = call i32 @torture_random(ptr noundef nonnull %rand) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %86 = load i32, ptr @nr_cpu_ids, align 4
  %rem139.i = urem i32 %call138.i, %86
  %87 = ptrtoint ptr %n_single_rpc.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %n_single_rpc.i, align 8
  %inc140.i = add i64 %88, 1
  store i64 %inc140.i, ptr %n_single_rpc.i, align 8
  %scfc_cpu141.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 2
  %89 = ptrtoint ptr %scfc_cpu141.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %rem139.i, ptr %scfc_cpu141.i, align 4
  %scfc_wait142.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 3
  %90 = ptrtoint ptr %scfc_wait142.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %scfc_wait142.i, align 8
  %scfc_completion.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 5
  %91 = ptrtoint ptr %scfc_completion.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %scfc_completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_completion.__key) #12
  %scfc_rpc143.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 4
  %92 = ptrtoint ptr %scfc_rpc143.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %scfc_rpc143.i, align 1
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !326
  %93 = ptrtoint ptr %scfcp.0.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %scfcp.0.i, align 8
  %call145.i = call i32 @smp_call_function_single(i32 noundef %rem139.i, ptr noundef nonnull @scf_handler_1, ptr noundef nonnull %scfcp.0.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %tobool146.not.i = icmp eq i32 %call145.i, 0
  br i1 %tobool146.not.i, label %if.then147.i, label %if.else163.i

if.then147.i:                                     ; preds = %if.end137.i
  %94 = load i8, ptr @use_cpus_read_lock, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool148.not.i = icmp eq i8 %94, 0
  br i1 %tobool148.not.i, label %do.body151.i, label %if.then149.i

if.then149.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @cpus_read_unlock() #12
  br label %if.end154.i

do.body151.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !327
  %95 = call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i.i417.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i417.i to ptr
  %preempt_count.i.i418.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i418.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i418.i, align 4
  %sub.i.i = add i32 %98, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i418.i, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %do.body151.i, %if.then149.i
  call void @wait_for_completion(ptr noundef %scfc_completion.i) #12
  %99 = load i8, ptr @use_cpus_read_lock, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool156.not.i = icmp eq i8 %99, 0
  br i1 %tobool156.not.i, label %do.body159.i, label %if.then157.i

if.then157.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @cpus_read_lock() #12
  br label %land.lhs.true.i

do.body159.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i.i419.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i419.i to ptr
  %preempt_count.i.i420.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i420.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i420.i, align 4
  %add.i421.i = add i32 %103, 1
  store volatile i32 %add.i421.i, ptr %preempt_count.i.i420.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !328
  br label %land.lhs.true.i

if.else163.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %n_single_rpc_ofl.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %n_single_rpc_ofl.i, align 8
  %inc164.i = add i64 %105, 1
  store i64 %inc164.i, ptr %n_single_rpc_ofl.i, align 8
  call void @kfree(ptr noundef nonnull %scfcp.0.i) #12
  br label %if.end330.i

sw.bb166.i:                                       ; preds = %if.end53.i
  %scfs_wait167.i = getelementptr inbounds %struct.scf_selector, ptr %retval.0.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %scfs_wait167.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %scfs_wait167.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool168.not.i = icmp eq i8 %107, 0
  %n_many.sink439.i = select i1 %tobool168.not.i, ptr %n_many.i, ptr %n_many_wait.i
  %108 = ptrtoint ptr %n_many.sink439.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %n_many.sink439.i, align 8
  %inc172.i = add i64 %109, 1
  store i64 %inc172.i, ptr %n_many.sink439.i, align 8
  %tobool174.not.i = icmp eq ptr %scfcp.0.i, null
  br i1 %tobool174.not.i, label %sw.bb166.i.if.end177.i_crit_edge, label %if.then175.i

sw.bb166.i.if.end177.i_crit_edge:                 ; preds = %sw.bb166.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177.i

if.then175.i:                                     ; preds = %sw.bb166.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !329
  %110 = ptrtoint ptr %scfcp.0.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %scfcp.0.i, align 8
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then175.i, %sw.bb166.i.if.end177.i_crit_edge
  %111 = ptrtoint ptr %scfs_wait167.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %scfs_wait167.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool179.i = icmp ne i8 %112, 0
  call void @smp_call_function_many(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @scf_handler, ptr noundef %scfcp.0.i, i1 noundef zeroext %tobool179.i) #12
  br label %sw.epilog.i

sw.bb180.i:                                       ; preds = %if.end53.i
  %scfs_wait181.i = getelementptr inbounds %struct.scf_selector, ptr %retval.0.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %scfs_wait181.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %scfs_wait181.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool182.not.i = icmp eq i8 %114, 0
  %n_all.sink440.i = select i1 %tobool182.not.i, ptr %n_all.i, ptr %n_all_wait.i
  %115 = ptrtoint ptr %n_all.sink440.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %n_all.sink440.i, align 8
  %inc186.i = add i64 %116, 1
  store i64 %inc186.i, ptr %n_all.sink440.i, align 8
  %tobool188.not.i = icmp eq ptr %scfcp.0.i, null
  br i1 %tobool188.not.i, label %sw.bb180.i.if.end191.i_crit_edge, label %if.then189.i

sw.bb180.i.if.end191.i_crit_edge:                 ; preds = %sw.bb180.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191.i

if.then189.i:                                     ; preds = %sw.bb180.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !330
  %117 = ptrtoint ptr %scfcp.0.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %scfcp.0.i, align 8
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.then189.i, %sw.bb180.i.if.end191.i_crit_edge
  %118 = ptrtoint ptr %scfs_wait181.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %scfs_wait181.i, align 4, !range !313
  %120 = zext i8 %119 to i32
  call void @smp_call_function(ptr noundef nonnull @scf_handler, ptr noundef %scfcp.0.i, i32 noundef %120) #12
  br label %sw.epilog.i

land.end202.i:                                    ; preds = %if.end53.i
  %.b410413.i = load i1, ptr @scftorture_invoke_one.__already_done.51, align 1
  br i1 %.b410413.i, label %land.end202.i.if.end236.i_crit_edge, label %if.then209.i, !prof !314

land.end202.i.if.end236.i_crit_edge:              ; preds = %land.end202.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236.i

if.then209.i:                                     ; preds = %land.end202.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scftorture_invoke_one.__already_done.51, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 415, i32 noundef 9, ptr noundef null) #12
  br label %if.end236.i

if.end236.i:                                      ; preds = %if.then209.i, %land.end202.i.if.end236.i_crit_edge
  %tobool244.not.i = icmp eq ptr %scfcp.0.i, null
  br i1 %tobool244.not.i, label %if.end236.i.if.end330.i_crit_edge, label %if.then245.i

if.end236.i.if.end330.i_crit_edge:                ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end330.i

if.then245.i:                                     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #14
  %scfc_out246.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 1
  %121 = ptrtoint ptr %scfc_out246.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %scfc_out246.i, align 1
  br label %land.lhs.true.i

sw.epilog.i:                                      ; preds = %if.end191.i, %if.end177.i, %if.end119.i.sw.epilog.i_crit_edge, %do.end99.i
  %tobool248.not.i = icmp eq ptr %scfcp.0.i, null
  br i1 %tobool248.not.i, label %sw.epilog.i.if.end330.i_crit_edge, label %sw.epilog.i.land.lhs.true.i_crit_edge

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

sw.epilog.i.if.end330.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end330.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i.land.lhs.true.i_crit_edge, %if.then245.i, %do.body159.i, %if.then157.i
  %scfs_wait249.i = getelementptr inbounds %struct.scf_selector, ptr %retval.0.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %scfs_wait249.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %scfs_wait249.i, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool250.not.i = icmp eq i8 %123, 0
  br i1 %tobool250.not.i, label %land.lhs.true.i.if.end330.i_crit_edge, label %if.then252.i

land.lhs.true.i.if.end330.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end330.i

if.then252.i:                                     ; preds = %land.lhs.true.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %124 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp255.i = icmp ugt i32 %124, 1
  br i1 %cmp255.i, label %if.then252.i.land.rhs261.i_crit_edge, label %lor.lhs.false257.i

if.then252.i.land.rhs261.i_crit_edge:             ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs261.i

lor.lhs.false257.i:                               ; preds = %if.then252.i
  %125 = ptrtoint ptr %scfs_prim.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %scfs_prim.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp259.i = icmp eq i32 %126, 1
  br i1 %cmp259.i, label %lor.lhs.false257.i.land.rhs261.i_crit_edge, label %lor.lhs.false257.i.if.else328.i_crit_edge

lor.lhs.false257.i.if.else328.i_crit_edge:        ; preds = %lor.lhs.false257.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else328.i

lor.lhs.false257.i.land.rhs261.i_crit_edge:       ; preds = %lor.lhs.false257.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs261.i

land.rhs261.i:                                    ; preds = %lor.lhs.false257.i.land.rhs261.i_crit_edge, %if.then252.i.land.rhs261.i_crit_edge
  %scfc_out262.i = getelementptr inbounds %struct.scf_check, ptr %scfcp.0.i, i32 0, i32 1
  %127 = ptrtoint ptr %scfc_out262.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %scfc_out262.i, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool263.not.i = icmp eq i8 %128, 0
  br i1 %tobool263.not.i, label %land.rhs274.i, label %land.rhs261.i.if.else328.i_crit_edge

land.rhs261.i.if.else328.i_crit_edge:             ; preds = %land.rhs261.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else328.i

land.rhs274.i:                                    ; preds = %land.rhs261.i
  %.b411412.i = load i1, ptr @scftorture_invoke_one.__already_done.52, align 1
  br i1 %.b411412.i, label %land.rhs274.i.do.end324.i_crit_edge, label %if.then285.i, !prof !314

land.rhs274.i.do.end324.i_crit_edge:              ; preds = %land.rhs274.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end324.i

if.then285.i:                                     ; preds = %land.rhs274.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scftorture_invoke_one.__already_done.52, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 421, i32 noundef 9, ptr noundef null) #12
  br label %do.end324.i

do.end324.i:                                      ; preds = %if.then285.i, %land.rhs274.i.do.end324.i_crit_edge
  %129 = ptrtoint ptr %scfs_prim.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %scfs_prim.i, align 4
  %call327.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %130) #15
  %call.i.i422.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_mb_out_errs, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @n_mb_out_errs, i32 1, i32 3, i32 1) #12
  %131 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_mb_out_errs, ptr nonnull @n_mb_out_errs, i32 1, ptr nonnull elementtype(i32) @n_mb_out_errs) #12, !srcloc !321
  br label %if.end329.i

if.else328.i:                                     ; preds = %land.rhs261.i.if.else328.i_crit_edge, %lor.lhs.false257.i.if.else328.i_crit_edge
  call void @kfree(ptr noundef nonnull %scfcp.0.i) #12
  br label %if.end329.i

if.end329.i:                                      ; preds = %if.else328.i, %do.end324.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !331
  br label %if.end330.i

if.end330.i:                                      ; preds = %if.end329.i, %land.lhs.true.i.if.end330.i_crit_edge, %sw.epilog.i.if.end330.i_crit_edge, %if.end236.i.if.end330.i_crit_edge, %if.else163.i, %sw.bb134.i.if.end330.i_crit_edge, %if.then125.i
  %132 = load i8, ptr @use_cpus_read_lock, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool331.not.i = icmp eq i8 %132, 0
  br i1 %tobool331.not.i, label %do.body334.i, label %if.then332.i

if.then332.i:                                     ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @cpus_read_unlock() #12
  br label %if.end337.i

do.body334.i:                                     ; preds = %if.end330.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  %133 = call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i.i423.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i423.i to ptr
  %preempt_count.i.i424.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i424.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i424.i, align 4
  %sub.i425.i = add i32 %136, -1
  store volatile i32 %sub.i425.i, ptr %preempt_count.i.i424.i, align 4
  br label %if.end337.i

if.end337.i:                                      ; preds = %do.body334.i, %if.then332.i
  %call338.i = call i32 @torture_random(ptr noundef nonnull %rand) #12
  %and.i234 = and i32 %call338.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool339.not.i = icmp eq i32 %and.i234, 0
  br i1 %tobool339.not.i, label %if.then340.i, label %if.end337.i.while.cond164.preheader_crit_edge

if.end337.i.while.cond164.preheader_crit_edge:    ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond164.preheader

if.then340.i:                                     ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #14
  %call341.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  br label %while.cond164.preheader

while.cond164.preheader:                          ; preds = %if.then340.i, %if.end337.i.while.cond164.preheader_crit_edge
  br label %while.cond164

while.cond164:                                    ; preds = %while.body179, %while.cond164.preheader
  %was_offline.1.off0 = phi i1 [ true, %while.body179 ], [ false, %while.cond164.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %137 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %rem)
  %cmp.not.i.i.i.i = icmp ugt i32 %137, %rem
  br i1 %cmp.not.i.i.i.i, label %while.cond164.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

while.cond164.cpu_online.exit_crit_edge:          ; preds = %while.cond164
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %while.cond164
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !314

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %while.cond164.cpu_online.exit_crit_edge
  %138 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %140 = and i32 %139, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.i.not = icmp eq i32 %140, 0
  br i1 %tobool.i.not, label %land.rhs174, label %cpu_online.exit.while.end181_crit_edge, !prof !315

cpu_online.exit.while.end181_crit_edge:           ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end181

land.rhs174:                                      ; preds = %cpu_online.exit
  %call175 = call zeroext i1 @torture_must_stop() #12
  br i1 %call175, label %land.rhs174.while.end181_crit_edge, label %while.body179

land.rhs174.while.end181_crit_edge:               ; preds = %land.rhs174
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end181

while.body179:                                    ; preds = %land.rhs174
  call void @__sanitizer_cov_trace_pc() #14
  %call180 = call i32 @schedule_timeout_interruptible(i32 noundef 20) #12
  br label %while.cond164

while.end181:                                     ; preds = %land.rhs174.while.end181_crit_edge, %cpu_online.exit.while.end181_crit_edge
  br i1 %was_offline.1.off0, label %if.then183, label %while.end181.if.end188_crit_edge

while.end181.if.end188_crit_edge:                 ; preds = %while.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then183:                                       ; preds = %while.end181
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %task, align 8
  %call187 = call i32 @set_cpus_allowed_ptr(ptr noundef %142, ptr noundef %add.ptr.i) #12
  br label %if.end188

if.end188:                                        ; preds = %if.then183, %while.end181.if.end188_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 483, i32 noundef 0) #12
  %call.i = call i32 @__cond_resched() #12
  %call191 = call zeroext i1 @stutter_wait(ptr noundef nonnull @.str.15) #12
  %call193 = call zeroext i1 @torture_must_stop() #12
  br i1 %call193, label %do.body197, label %if.end188.do.body163_crit_edge

if.end188.do.body163_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body163

do.body197:                                       ; preds = %if.end188
  %143 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool198.not = icmp eq i32 %143, 0
  br i1 %tobool198.not, label %do.body197.end_crit_edge, label %do.end202

do.body197.end_crit_edge:                         ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

do.end202:                                        ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cpu5, align 4
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %145) #15
  br label %end

end:                                              ; preds = %do.end202, %do.body197.end_crit_edge, %do.end141, %do.body136.end_crit_edge
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scf_torture_stats(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body3.preheader_crit_edge, label %if.then

entry.do.body3.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @verbose_torout_sleep() #12
  %1 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %1, ptr noundef nonnull @.str.59) #15
  br label %do.body3.preheader

do.body3.preheader:                               ; preds = %if.then, %entry.do.body3.preheader_crit_edge
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %do.body3.preheader
  %2 = load i32, ptr @stat_interval, align 4
  %mul = mul i32 %2, 100
  %call4 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #12
  tail call fastcc void @scf_torture_stats_print()
  tail call void @torture_shutdown_absorb(ptr noundef nonnull @.str.19) #12
  %call5 = tail call zeroext i1 @torture_must_stop() #12
  br i1 %call5, label %do.end6, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

do.end6:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.19) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_init_end() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_must_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stutter_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_kthread_stopping(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @torture_random(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_cpu(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scf_handler_1(ptr noundef %scfc_in) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %scfc_in, null
  br i1 %tobool.not, label %entry.if.end50_crit_edge, label %land.lhs.true, !prof !315

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

land.lhs.true:                                    ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %scfc_cpu = getelementptr inbounds %struct.scf_check, ptr %scfc_in, i32 0, i32 2
  %4 = ptrtoint ptr %scfc_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scfc_cpu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %land.lhs.true.if.end50_crit_edge, label %land.rhs

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

land.rhs:                                         ; preds = %land.lhs.true
  %.b56 = load i1, ptr @scf_handler_1.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.then49_crit_edge, label %if.then, !prof !314

land.rhs.if.then49_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_handler_1.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.scf_handler_1, i32 noundef %5, i32 noundef %3) #12
  br label %if.then49

if.then49:                                        ; preds = %if.then, %land.rhs.if.then49_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_errs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @n_errs, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_errs, ptr nonnull @n_errs, i32 1, ptr nonnull elementtype(i32) @n_errs) #12, !srcloc !321
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true.if.end50_crit_edge, %entry.if.end50_crit_edge
  tail call void @scf_handler(ptr noundef %scfc_in)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scf_handler(ptr noundef %scfc_in) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @scf_torture_rand to i32)
  %6 = inttoptr i32 %add to ptr
  %call2 = tail call i32 @torture_random(ptr noundef %6) #12
  %tobool.not = icmp eq ptr %scfc_in, null
  br i1 %tobool.not, label %entry.do.body82_crit_edge, label %do.body9, !prof !315

entry.do.body82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

do.body9:                                         ; preds = %entry
  %scfc_out = getelementptr inbounds %struct.scf_check, ptr %scfc_in, i32 0, i32 1
  %7 = ptrtoint ptr %scfc_out to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 0, ptr %scfc_out, align 1
  %8 = ptrtoint ptr %scfc_in to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %scfc_in, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool19.not = icmp eq i8 %9, 0
  br i1 %tobool19.not, label %land.rhs, label %do.body9.do.body82_crit_edge

do.body9.do.body82_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

land.rhs:                                         ; preds = %do.body9
  %.b248 = load i1, ptr @scf_handler.__already_done, align 1
  br i1 %.b248, label %land.rhs.if.then78_crit_edge, label %if.then44, !prof !314

land.rhs.if.then78_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.then44:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @scf_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 265, i32 noundef 9, ptr noundef null) #12
  br label %if.then78

if.then78:                                        ; preds = %if.then44, %land.rhs.if.then78_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @n_mb_in_errs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @n_mb_in_errs, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @n_mb_in_errs, ptr nonnull @n_mb_in_errs, i32 1, ptr nonnull elementtype(i32) @n_mb_in_errs) #12, !srcloc !321
  br label %do.body82

do.body82:                                        ; preds = %if.then78, %do.body9.do.body82_crit_edge, %entry.do.body82_crit_edge
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !322
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx102 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx102, align 4
  %add103 = add i32 %15, ptrtoint (ptr @scf_invoked_count to i32)
  %16 = inttoptr i32 %add103 to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %add104 = add i64 %18, 1
  store i64 %add104, ptr %16, align 8
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !323
  %and.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool115.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool115.not, label %if.then124, label %do.body82.do.end127_crit_edge, !prof !315

do.body82.do.end127_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end127

if.then124:                                       ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end127

do.end127:                                        ; preds = %if.then124, %do.body82.do.end127_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #12, !srcloc !324
  %20 = load i32, ptr @longwait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp134 = icmp slt i32 %20, 1
  br i1 %cmp134, label %if.then136, label %if.end149

if.then136:                                       ; preds = %do.end127
  %and = and i32 %call2, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool137.not = icmp eq i32 %and, 0
  br i1 %tobool137.not, label %cond.false145, label %if.then136.out_crit_edge

if.then136.out_crit_edge:                         ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cond.false145:                                    ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  %and139 = and i32 %call2, 63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %and139) #12
  br label %out

if.end149:                                        ; preds = %do.end127
  %and150 = and i32 %call2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end174, label %if.end149.out_crit_edge

if.end149.out_crit_edge:                          ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end174:                                        ; preds = %if.end149
  %shr = lshr i32 %call2, 12
  %rem = urem i32 %shr, %20
  br label %for.cond178.preheader

for.cond178.preheader:                            ; preds = %for.inc191.for.cond178.preheader_crit_edge, %if.end174
  %i.0251 = phi i32 [ 0, %if.end174 ], [ %inc192, %for.inc191.for.cond178.preheader_crit_edge ]
  br label %for.body181

for.body181:                                      ; preds = %for.body181.for.body181_crit_edge, %for.cond178.preheader
  %j.0250 = phi i32 [ 0, %for.cond178.preheader ], [ %inc, %for.body181.for.body181_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !334
  %inc = add nuw nsw i32 %j.0250, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc191, label %for.body181.for.body181_crit_edge

for.body181.for.body181_crit_edge:                ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body181

for.inc191:                                       ; preds = %for.body181
  %inc192 = add i32 %i.0251, 1
  %cmp176.not = icmp ugt i32 %inc192, %rem
  br i1 %cmp176.not, label %for.inc191.out_crit_edge, label %for.inc191.for.cond178.preheader_crit_edge

for.inc191.for.cond178.preheader_crit_edge:       ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond178.preheader

for.inc191.out_crit_edge:                         ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.inc191.out_crit_edge, %if.end149.out_crit_edge, %cond.false145, %if.then136.out_crit_edge
  br i1 %tobool.not, label %out.cleanup_crit_edge, label %if.end204, !prof !315

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end204:                                        ; preds = %out
  %scfc_wait = getelementptr inbounds %struct.scf_check, ptr %scfc_in, i32 0, i32 3
  %23 = ptrtoint ptr %scfc_wait to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scfc_wait, align 4, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool205.not = icmp eq i8 %24, 0
  br i1 %tobool205.not, label %if.else, label %do.body211

do.body211:                                       ; preds = %if.end204
  %scfc_out212 = getelementptr inbounds %struct.scf_check, ptr %scfc_in, i32 0, i32 1
  %25 = ptrtoint ptr %scfc_out212 to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 1, ptr %scfc_out212, align 1
  %scfc_rpc = getelementptr inbounds %struct.scf_check, ptr %scfc_in, i32 0, i32 4
  %26 = ptrtoint ptr %scfc_rpc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %scfc_rpc, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool217.not = icmp eq i8 %27, 0
  br i1 %tobool217.not, label %do.body211.cleanup_crit_edge, label %if.then218

do.body211.cleanup_crit_edge:                     ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then218:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #14
  %scfc_completion = getelementptr inbounds %struct.scf_check, ptr %scfc_in, i32 0, i32 5
  tail call void @complete(ptr noundef %scfc_completion) #12
  br label %cleanup

if.else:                                          ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %scfc_in) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then218, %do.body211.cleanup_crit_edge, %out.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @verbose_torout_sleep() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scf_torture_stats_print() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i8, ptr @scfdone, align 1, !range !313
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call120 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call120, i32 %1)
  %cmp121 = icmp ult i32 %call120, %1
  br i1 %cmp121, label %entry.for.body_crit_edge, label %entry.for.cond11.preheader_crit_edge

entry.for.cond11.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond11.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond11.preheader:                             ; preds = %for.body.for.cond11.preheader_crit_edge, %entry.for.cond11.preheader_crit_edge
  %invoked_count.0.lcssa = phi i64 [ 0, %entry.for.cond11.preheader_crit_edge ], [ %add10, %for.body.for.cond11.preheader_crit_edge ]
  %2 = load i32, ptr @nthreads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12124 = icmp sgt i32 %2, 0
  br i1 %cmp12124, label %for.body13.lr.ph, label %for.cond11.preheader.for.end44_crit_edge

for.cond11.preheader.for.end44_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %3 = load ptr, ptr @scf_stats_p, align 4
  br label %for.body13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call123 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call120, %entry.for.body_crit_edge ]
  %invoked_count.0122 = phi i64 [ %add10, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call123
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @scf_invoked_count to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %add10 = add i64 %8, %invoked_count.0122
  %call = tail call i32 @cpumask_next(i32 noundef %call123, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond11.preheader_crit_edge

for.body.for.cond11.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond11.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.0135 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.3.0134 = phi i64 [ 0, %for.body13.lr.ph ], [ %add16, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.6.0133 = phi i64 [ 0, %for.body13.lr.ph ], [ %add19, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.9.0132 = phi i64 [ 0, %for.body13.lr.ph ], [ %add22, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.12.0131 = phi i64 [ 0, %for.body13.lr.ph ], [ %add25, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.16.0130 = phi i64 [ 0, %for.body13.lr.ph ], [ %add28, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.31.0129 = phi i64 [ 0, %for.body13.lr.ph ], [ %add43, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.28.0128 = phi i64 [ 0, %for.body13.lr.ph ], [ %add40, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.25.0127 = phi i64 [ 0, %for.body13.lr.ph ], [ %add37, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.22.0126 = phi i64 [ 0, %for.body13.lr.ph ], [ %add34, %for.body13.for.body13_crit_edge ]
  %scfs.sroa.19.0125 = phi i64 [ 0, %for.body13.lr.ph ], [ %add31, %for.body13.for.body13_crit_edge ]
  %n_resched = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 2
  %9 = ptrtoint ptr %n_resched to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %n_resched, align 8
  %add16 = add i64 %10, %scfs.sroa.3.0134
  %n_single = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 3
  %11 = ptrtoint ptr %n_single to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %n_single, align 8
  %add19 = add i64 %12, %scfs.sroa.6.0133
  %n_single_ofl = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 4
  %13 = ptrtoint ptr %n_single_ofl to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %n_single_ofl, align 8
  %add22 = add i64 %14, %scfs.sroa.9.0132
  %n_single_rpc = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 5
  %15 = ptrtoint ptr %n_single_rpc to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %n_single_rpc, align 8
  %add25 = add i64 %16, %scfs.sroa.12.0131
  %n_single_wait = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 7
  %17 = ptrtoint ptr %n_single_wait to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %n_single_wait, align 8
  %add28 = add i64 %18, %scfs.sroa.16.0130
  %n_single_wait_ofl = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 8
  %19 = ptrtoint ptr %n_single_wait_ofl to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %n_single_wait_ofl, align 8
  %add31 = add i64 %20, %scfs.sroa.19.0125
  %n_many = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 9
  %21 = ptrtoint ptr %n_many to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %n_many, align 8
  %add34 = add i64 %22, %scfs.sroa.22.0126
  %n_many_wait = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 10
  %23 = ptrtoint ptr %n_many_wait to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %n_many_wait, align 8
  %add37 = add i64 %24, %scfs.sroa.25.0127
  %n_all = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 11
  %25 = ptrtoint ptr %n_all to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %n_all, align 8
  %add40 = add i64 %26, %scfs.sroa.28.0128
  %n_all_wait = getelementptr %struct.scf_statistics, ptr %3, i32 %i.0135, i32 12
  %27 = ptrtoint ptr %n_all_wait to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %n_all_wait, align 8
  %add43 = add i64 %28, %scfs.sroa.31.0129
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.body13.for.end44_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.body13.for.end44_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44

for.end44:                                        ; preds = %for.body13.for.end44_crit_edge, %for.cond11.preheader.for.end44_crit_edge
  %scfs.sroa.19.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add31, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.22.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add34, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.25.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add37, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.28.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add40, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.31.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add43, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.16.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add28, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.12.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add25, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.9.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add22, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.6.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add19, %for.body13.for.end44_crit_edge ]
  %scfs.sroa.3.0.lcssa = phi i64 [ 0, %for.cond11.preheader.for.end44_crit_edge ], [ %add16, %for.body13.for.end44_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_errs, i32 noundef 4) #12
  %29 = load volatile i32, ptr @n_errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool46.not = icmp eq i32 %29, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %for.end44.if.then_crit_edge

for.end44.if.then_crit_edge:                      ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %for.end44
  %call.i.i113 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_mb_in_errs, i32 noundef 4) #12
  %30 = load volatile i32, ptr @n_mb_in_errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool48.not = icmp eq i32 %30, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %call.i.i114 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_mb_out_errs, i32 noundef 4) #12
  %31 = load volatile i32, ptr @n_mb_out_errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool51.not = icmp eq i32 %31, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false49.if.then_crit_edge

lor.lhs.false49.if.then_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %call.i.i115 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_alloc_errs, i32 noundef 4) #12
  %32 = load volatile i32, ptr @n_alloc_errs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not = icmp eq i32 %32, 0
  br i1 %tobool54.not, label %lor.lhs.false52.do.end57_crit_edge, label %lor.lhs.false52.if.then_crit_edge

lor.lhs.false52.if.then_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false52.do.end57_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

if.then:                                          ; preds = %lor.lhs.false52.if.then_crit_edge, %lor.lhs.false49.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %for.end44.if.then_crit_edge
  store ptr @.str.60, ptr @bangstr, align 4
  br label %do.end57

do.end57:                                         ; preds = %if.then, %lor.lhs.false52.do.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %33 = load ptr, ptr @bangstr, align 4
  %cond = select i1 %tobool.not, ptr @.str.65, ptr @.str.64
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.63, ptr noundef %33, ptr noundef nonnull %cond, i64 noundef %invoked_count.0.lcssa, i64 noundef %scfs.sroa.3.0.lcssa, i64 noundef %scfs.sroa.6.0.lcssa, i64 noundef %scfs.sroa.16.0.lcssa, i64 noundef %scfs.sroa.9.0.lcssa, i64 noundef %scfs.sroa.19.0.lcssa, i64 noundef %scfs.sroa.12.0.lcssa, i64 noundef 0, i64 noundef %scfs.sroa.22.0.lcssa, i64 noundef %scfs.sroa.25.0.lcssa, i64 noundef %scfs.sroa.28.0.lcssa, i64 noundef %scfs.sroa.31.0.lcssa) #15
  tail call void @torture_onoff_stats() #12
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_errs, i32 noundef 4) #12
  %34 = load volatile i32, ptr @n_errs, align 4
  %call.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_mb_in_errs, i32 noundef 4) #12
  %35 = load volatile i32, ptr @n_mb_in_errs, align 4
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_mb_out_errs, i32 noundef 4) #12
  %36 = load volatile i32, ptr @n_mb_out_errs, align 4
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @n_alloc_errs, i32 noundef 4) #12
  %37 = load volatile i32, ptr @n_alloc_errs, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_shutdown_absorb(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_onoff_stats() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_cleanup_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_torture_stop_kthread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @scf_cleanup_handler(ptr nocapture noundef %unused) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @torture_onoff_failures() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @torture_cleanup_end() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !87, !89, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !135, !137, !139, !140, !141, !142, !143, !145, !146, !148, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !166, !167, !168, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !213, !214, !216, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !239, !241, !243, !244, !245, !246, !248, !250, !252, !253, !254, !256, !258, !259, !261, !263, !265, !267, !268, !270, !271, !272, !273, !275, !277, !278, !279, !280, !281, !282, !283, !285, !286, !287, !289, !291, !293, !295, !297, !299, !301}
!llvm.named.register.sp = !{!303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @__UNIQUE_ID_file238, !1, !"__UNIQUE_ID_file238", i1 false, i1 false}
!1 = !{!"../kernel/scftorture.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_license239, !1, !"__UNIQUE_ID_license239", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../kernel/scftorture.c", i32 47, i32 1}
!5 = !{ptr @__param_holdoff, !6, !"__param_holdoff", i1 false, i1 false}
!6 = !{!"../kernel/scftorture.c", i32 50, i32 1}
!7 = !{ptr @__UNIQUE_ID_holdofftype241, !6, !"__UNIQUE_ID_holdofftype241", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_holdoff242, !6, !"__UNIQUE_ID_holdoff242", i1 false, i1 false}
!9 = !{ptr @__param_longwait, !10, !"__param_longwait", i1 false, i1 false}
!10 = !{!"../kernel/scftorture.c", i32 52, i32 1}
!11 = !{ptr @__UNIQUE_ID_longwaittype243, !10, !"__UNIQUE_ID_longwaittype243", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_longwait244, !10, !"__UNIQUE_ID_longwait244", i1 false, i1 false}
!13 = !{ptr @__param_nthreads, !14, !"__param_nthreads", i1 false, i1 false}
!14 = !{!"../kernel/scftorture.c", i32 53, i32 1}
!15 = !{ptr @__UNIQUE_ID_nthreadstype245, !14, !"__UNIQUE_ID_nthreadstype245", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_nthreads246, !14, !"__UNIQUE_ID_nthreads246", i1 false, i1 false}
!17 = !{ptr @__param_onoff_holdoff, !18, !"__param_onoff_holdoff", i1 false, i1 false}
!18 = !{!"../kernel/scftorture.c", i32 54, i32 1}
!19 = !{ptr @__UNIQUE_ID_onoff_holdofftype247, !18, !"__UNIQUE_ID_onoff_holdofftype247", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_onoff_holdoff248, !18, !"__UNIQUE_ID_onoff_holdoff248", i1 false, i1 false}
!21 = !{ptr @__param_onoff_interval, !22, !"__param_onoff_interval", i1 false, i1 false}
!22 = !{!"../kernel/scftorture.c", i32 55, i32 1}
!23 = !{ptr @__UNIQUE_ID_onoff_intervaltype249, !22, !"__UNIQUE_ID_onoff_intervaltype249", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_onoff_interval250, !22, !"__UNIQUE_ID_onoff_interval250", i1 false, i1 false}
!25 = !{ptr @__param_shutdown_secs, !26, !"__param_shutdown_secs", i1 false, i1 false}
!26 = !{!"../kernel/scftorture.c", i32 56, i32 1}
!27 = !{ptr @__UNIQUE_ID_shutdown_secstype251, !26, !"__UNIQUE_ID_shutdown_secstype251", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_shutdown_secs252, !26, !"__UNIQUE_ID_shutdown_secs252", i1 false, i1 false}
!29 = !{ptr @__param_stat_interval, !30, !"__param_stat_interval", i1 false, i1 false}
!30 = !{!"../kernel/scftorture.c", i32 57, i32 1}
!31 = !{ptr @__UNIQUE_ID_stat_intervaltype253, !30, !"__UNIQUE_ID_stat_intervaltype253", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_stat_interval254, !30, !"__UNIQUE_ID_stat_interval254", i1 false, i1 false}
!33 = !{ptr @__param_stutter, !34, !"__param_stutter", i1 false, i1 false}
!34 = !{!"../kernel/scftorture.c", i32 58, i32 1}
!35 = !{ptr @__UNIQUE_ID_stuttertype255, !34, !"__UNIQUE_ID_stuttertype255", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_stutter256, !34, !"__UNIQUE_ID_stutter256", i1 false, i1 false}
!37 = !{ptr @__param_use_cpus_read_lock, !38, !"__param_use_cpus_read_lock", i1 false, i1 false}
!38 = !{!"../kernel/scftorture.c", i32 59, i32 1}
!39 = !{ptr @__UNIQUE_ID_use_cpus_read_locktype257, !38, !"__UNIQUE_ID_use_cpus_read_locktype257", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_use_cpus_read_lock258, !38, !"__UNIQUE_ID_use_cpus_read_lock258", i1 false, i1 false}
!41 = !{ptr @__param_verbose, !42, !"__param_verbose", i1 false, i1 false}
!42 = !{!"../kernel/scftorture.c", i32 60, i32 1}
!43 = !{ptr @__UNIQUE_ID_verbosetype259, !42, !"__UNIQUE_ID_verbosetype259", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_verbose260, !42, !"__UNIQUE_ID_verbose260", i1 false, i1 false}
!45 = !{ptr @__param_weight_resched, !46, !"__param_weight_resched", i1 false, i1 false}
!46 = !{!"../kernel/scftorture.c", i32 61, i32 1}
!47 = !{ptr @__UNIQUE_ID_weight_reschedtype261, !46, !"__UNIQUE_ID_weight_reschedtype261", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_weight_resched262, !46, !"__UNIQUE_ID_weight_resched262", i1 false, i1 false}
!49 = !{ptr @__param_weight_single, !50, !"__param_weight_single", i1 false, i1 false}
!50 = !{!"../kernel/scftorture.c", i32 62, i32 1}
!51 = !{ptr @__UNIQUE_ID_weight_singletype263, !50, !"__UNIQUE_ID_weight_singletype263", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_weight_single264, !50, !"__UNIQUE_ID_weight_single264", i1 false, i1 false}
!53 = !{ptr @__param_weight_single_rpc, !54, !"__param_weight_single_rpc", i1 false, i1 false}
!54 = !{!"../kernel/scftorture.c", i32 63, i32 1}
!55 = !{ptr @__UNIQUE_ID_weight_single_rpctype265, !54, !"__UNIQUE_ID_weight_single_rpctype265", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_weight_single_rpc266, !54, !"__UNIQUE_ID_weight_single_rpc266", i1 false, i1 false}
!57 = !{ptr @__param_weight_single_wait, !58, !"__param_weight_single_wait", i1 false, i1 false}
!58 = !{!"../kernel/scftorture.c", i32 64, i32 1}
!59 = !{ptr @__UNIQUE_ID_weight_single_waittype267, !58, !"__UNIQUE_ID_weight_single_waittype267", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_weight_single_wait268, !58, !"__UNIQUE_ID_weight_single_wait268", i1 false, i1 false}
!61 = !{ptr @__param_weight_many, !62, !"__param_weight_many", i1 false, i1 false}
!62 = !{!"../kernel/scftorture.c", i32 65, i32 1}
!63 = !{ptr @__UNIQUE_ID_weight_manytype269, !62, !"__UNIQUE_ID_weight_manytype269", i1 false, i1 false}
!64 = !{ptr @__UNIQUE_ID_weight_many270, !62, !"__UNIQUE_ID_weight_many270", i1 false, i1 false}
!65 = !{ptr @__param_weight_many_wait, !66, !"__param_weight_many_wait", i1 false, i1 false}
!66 = !{!"../kernel/scftorture.c", i32 66, i32 1}
!67 = !{ptr @__UNIQUE_ID_weight_many_waittype271, !66, !"__UNIQUE_ID_weight_many_waittype271", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_weight_many_wait272, !66, !"__UNIQUE_ID_weight_many_wait272", i1 false, i1 false}
!69 = !{ptr @__param_weight_all, !70, !"__param_weight_all", i1 false, i1 false}
!70 = !{!"../kernel/scftorture.c", i32 67, i32 1}
!71 = !{ptr @__UNIQUE_ID_weight_alltype273, !70, !"__UNIQUE_ID_weight_alltype273", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_weight_all274, !70, !"__UNIQUE_ID_weight_all274", i1 false, i1 false}
!73 = !{ptr @__param_weight_all_wait, !74, !"__param_weight_all_wait", i1 false, i1 false}
!74 = !{!"../kernel/scftorture.c", i32 68, i32 1}
!75 = !{ptr @__UNIQUE_ID_weight_all_waittype275, !74, !"__UNIQUE_ID_weight_all_waittype275", i1 false, i1 false}
!76 = !{ptr @__UNIQUE_ID_weight_all_wait276, !74, !"__UNIQUE_ID_weight_all_wait276", i1 false, i1 false}
!77 = !{ptr @.str, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/scftorture.c", i32 70, i32 22}
!79 = !{ptr @torture_type, !80, !"torture_type", i1 false, i1 false}
!80 = !{!"../kernel/scftorture.c", i32 70, i32 7}
!81 = !{ptr @__param_shutdown, !82, !"__param_shutdown", i1 false, i1 false}
!82 = !{!"../kernel/scftorture.c", i32 78, i32 1}
!83 = !{ptr @__UNIQUE_ID_shutdowntype277, !82, !"__UNIQUE_ID_shutdowntype277", i1 false, i1 false}
!84 = !{ptr @__UNIQUE_ID_shutdown278, !82, !"__UNIQUE_ID_shutdown278", i1 false, i1 false}
!85 = !{ptr @__initcall__kmod_scftorture__284_658_scf_torture_init6, !86, !"__initcall__kmod_scftorture__284_658_scf_torture_init6", i1 false, i1 false}
!86 = !{!"../kernel/scftorture.c", i32 658, i32 1}
!87 = !{ptr @__exitcall_scf_torture_cleanup, !88, !"__exitcall_scf_torture_cleanup", i1 false, i1 false}
!88 = !{!"../kernel/scftorture.c", i32 659, i32 1}
!89 = !{ptr @__pcpu_unique_scf_invoked_count, !90, !"__pcpu_unique_scf_invoked_count", i1 false, i1 false}
!90 = !{!"../kernel/scftorture.c", i32 98, i32 8}
!91 = !{ptr @scf_invoked_count, !90, !"scf_invoked_count", i1 false, i1 false}
!92 = !{ptr @__pcpu_unique_scf_torture_rand, !93, !"__pcpu_unique_scf_torture_rand", i1 false, i1 false}
!93 = !{!"../kernel/scftorture.c", i32 146, i32 8}
!94 = !{ptr @scf_torture_rand, !93, !"scf_torture_rand", i1 false, i1 false}
!95 = !{ptr @__param_str_holdoff, !6, !"__param_str_holdoff", i1 false, i1 false}
!96 = !{ptr @holdoff, !6, !"holdoff", i1 false, i1 false}
!97 = !{ptr @__param_str_longwait, !10, !"__param_str_longwait", i1 false, i1 false}
!98 = !{ptr @longwait, !10, !"longwait", i1 false, i1 false}
!99 = !{ptr @__param_str_nthreads, !14, !"__param_str_nthreads", i1 false, i1 false}
!100 = !{ptr @nthreads, !14, !"nthreads", i1 false, i1 false}
!101 = !{ptr @__param_str_onoff_holdoff, !18, !"__param_str_onoff_holdoff", i1 false, i1 false}
!102 = !{ptr @onoff_holdoff, !18, !"onoff_holdoff", i1 false, i1 false}
!103 = !{ptr @__param_str_onoff_interval, !22, !"__param_str_onoff_interval", i1 false, i1 false}
!104 = !{ptr @onoff_interval, !22, !"onoff_interval", i1 false, i1 false}
!105 = !{ptr @__param_str_shutdown_secs, !26, !"__param_str_shutdown_secs", i1 false, i1 false}
!106 = !{ptr @shutdown_secs, !26, !"shutdown_secs", i1 false, i1 false}
!107 = !{ptr @__param_str_stat_interval, !30, !"__param_str_stat_interval", i1 false, i1 false}
!108 = !{ptr @stat_interval, !30, !"stat_interval", i1 false, i1 false}
!109 = !{ptr @__param_str_stutter, !34, !"__param_str_stutter", i1 false, i1 false}
!110 = !{ptr @stutter, !34, !"stutter", i1 false, i1 false}
!111 = !{ptr @__param_str_use_cpus_read_lock, !38, !"__param_str_use_cpus_read_lock", i1 false, i1 false}
!112 = !{ptr @use_cpus_read_lock, !38, !"use_cpus_read_lock", i1 false, i1 false}
!113 = !{ptr @__param_str_verbose, !42, !"__param_str_verbose", i1 false, i1 false}
!114 = !{ptr @verbose, !42, !"verbose", i1 false, i1 false}
!115 = !{ptr @__param_str_weight_resched, !46, !"__param_str_weight_resched", i1 false, i1 false}
!116 = !{ptr @weight_resched, !46, !"weight_resched", i1 false, i1 false}
!117 = !{ptr @__param_str_weight_single, !50, !"__param_str_weight_single", i1 false, i1 false}
!118 = !{ptr @weight_single, !50, !"weight_single", i1 false, i1 false}
!119 = !{ptr @__param_str_weight_single_rpc, !54, !"__param_str_weight_single_rpc", i1 false, i1 false}
!120 = !{ptr @weight_single_rpc, !54, !"weight_single_rpc", i1 false, i1 false}
!121 = !{ptr @__param_str_weight_single_wait, !58, !"__param_str_weight_single_wait", i1 false, i1 false}
!122 = !{ptr @weight_single_wait, !58, !"weight_single_wait", i1 false, i1 false}
!123 = !{ptr @__param_str_weight_many, !62, !"__param_str_weight_many", i1 false, i1 false}
!124 = !{ptr @weight_many, !62, !"weight_many", i1 false, i1 false}
!125 = !{ptr @__param_str_weight_many_wait, !66, !"__param_str_weight_many_wait", i1 false, i1 false}
!126 = !{ptr @weight_many_wait, !66, !"weight_many_wait", i1 false, i1 false}
!127 = !{ptr @__param_str_weight_all, !70, !"__param_str_weight_all", i1 false, i1 false}
!128 = !{ptr @weight_all, !70, !"weight_all", i1 false, i1 false}
!129 = !{ptr @__param_str_weight_all_wait, !74, !"__param_str_weight_all_wait", i1 false, i1 false}
!130 = !{ptr @weight_all_wait, !74, !"weight_all_wait", i1 false, i1 false}
!131 = !{ptr @__param_str_shutdown, !82, !"__param_str_shutdown", i1 false, i1 false}
!132 = !{ptr @shutdown, !82, !"shutdown", i1 false, i1 false}
!133 = !{ptr @.str.1, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../kernel/scftorture.c", i32 548, i32 26}
!135 = !{ptr @.str.2, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../kernel/scftorture.c", i32 551, i32 32}
!137 = !{ptr @.str.3, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/scftorture.c", i32 586, i32 3}
!139 = !{ptr @.str.4, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.5, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @scf_torture_init._entry, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @scf_torture_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../kernel/scftorture.c", i32 605, i32 7}
!145 = !{ptr @.str.6, !144, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../kernel/scftorture.c", i32 610, i32 7}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../kernel/scftorture.c", i32 615, i32 7}
!150 = !{ptr @.str.10, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/scftorture.c", i32 624, i32 3}
!152 = !{ptr @scf_torture_init._entry.9, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @scf_torture_init._entry_ptr.11, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.13, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/scftorture.c", i32 629, i32 2}
!156 = !{ptr @scf_torture_init._entry.12, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @scf_torture_init._entry_ptr.14, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.15, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/scftorture.c", i32 634, i32 14}
!160 = !{ptr @.str.16, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.17, !159, !"<string literal>", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../kernel/scftorture.c", i32 636, i32 7}
!164 = !{ptr @.str.19, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/scftorture.c", i32 640, i32 14}
!166 = !{ptr @.str.20, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.21, !165, !"<string literal>", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../kernel/scftorture.c", i32 641, i32 7}
!170 = !{ptr @.str.23, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/scftorture.c", i32 496, i32 2}
!172 = !{ptr @.str.24, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @scftorture_print_module_parms._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @scftorture_print_module_parms._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../kernel/scftorture.c", i32 211, i32 6}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../kernel/scftorture.c", i32 212, i32 6}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../kernel/scftorture.c", i32 213, i32 6}
!181 = !{ptr @scf_sel_array, !182, !"scf_sel_array", i1 false, i1 false}
!182 = !{!"../kernel/scftorture.c", i32 123, i32 28}
!183 = !{ptr @scf_sel_array_len, !184, !"scf_sel_array_len", i1 false, i1 false}
!184 = !{!"../kernel/scftorture.c", i32 124, i32 12}
!185 = !{ptr @scf_sel_totweight, !186, !"scf_sel_totweight", i1 false, i1 false}
!186 = !{!"../kernel/scftorture.c", i32 125, i32 22}
!187 = !{ptr @.str.27, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../kernel/scftorture.c", i32 233, i32 3}
!189 = !{ptr @.str.28, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @scf_sel_dump._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @scf_sel_dump._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.29, !188, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.30, !188, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.31, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../kernel/scftorture.c", i32 111, i32 2}
!196 = !{ptr @.str.32, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../kernel/scftorture.c", i32 112, i32 2}
!198 = !{ptr @.str.33, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../kernel/scftorture.c", i32 113, i32 2}
!200 = !{ptr @.str.34, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../kernel/scftorture.c", i32 114, i32 2}
!202 = !{ptr @.str.35, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../kernel/scftorture.c", i32 115, i32 2}
!204 = !{ptr @scf_prim_name, !205, !"scf_prim_name", i1 false, i1 false}
!205 = !{!"../kernel/scftorture.c", i32 110, i32 14}
!206 = !{ptr @scf_stats_p, !207, !"scf_stats_p", i1 false, i1 false}
!207 = !{!"../kernel/scftorture.c", i32 96, i32 31}
!208 = !{ptr @n_started, !209, !"n_started", i1 false, i1 false}
!209 = !{!"../kernel/scftorture.c", i32 138, i32 17}
!210 = !{ptr @.str.36, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/scftorture.c", i32 447, i32 2}
!212 = !{ptr @scftorture_invoker._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @scftorture_invoker._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../kernel/scftorture.c", i32 449, i32 2}
!216 = !{ptr @.str.38, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../kernel/scftorture.c", i32 454, i32 2}
!218 = !{ptr @scftorture_invoker._entry.37, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @scftorture_invoker._entry_ptr.39, !217, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../kernel/scftorture.c", i32 458, i32 2}
!222 = !{ptr @.str.41, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.43, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../kernel/scftorture.c", i32 465, i32 5}
!225 = !{ptr @scftorture_invoker._entry.42, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @scftorture_invoker._entry_ptr.44, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.46, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../kernel/scftorture.c", i32 471, i32 2}
!229 = !{ptr @scftorture_invoker._entry.45, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @scftorture_invoker._entry_ptr.47, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.49, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../kernel/scftorture.c", i32 487, i32 2}
!233 = !{ptr @scftorture_invoker._entry.48, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @scftorture_invoker._entry_ptr.50, !232, !"_entry_ptr", i1 false, i1 false}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../kernel/scftorture.c", i32 325, i32 7}
!237 = distinct !{null, !238, !"__already_done", i1 false, i1 false}
!238 = !{!"../kernel/scftorture.c", i32 415, i32 3}
!239 = distinct !{null, !240, !"__already_done", i1 false, i1 false}
!240 = !{!"../kernel/scftorture.c", i32 420, i32 7}
!241 = !{ptr @.str.53, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../kernel/scftorture.c", i32 422, i32 4}
!243 = !{ptr @.str.54, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @scftorture_invoke_one._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @scftorture_invoke_one._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../kernel/scftorture.c", i32 249, i32 2}
!248 = !{ptr @n_alloc_errs, !249, !"n_alloc_errs", i1 false, i1 false}
!249 = !{!"../kernel/scftorture.c", i32 142, i32 17}
!250 = distinct !{null, !251, !"__already_done", i1 false, i1 false}
!251 = !{!"../kernel/scftorture.c", i32 305, i32 23}
!252 = !{ptr @.str.55, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @__func__.scf_handler_1, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @n_errs, !255, !"n_errs", i1 false, i1 false}
!255 = !{!"../kernel/scftorture.c", i32 139, i32 17}
!256 = !{ptr @init_completion.__key, !257, !"__key", i1 false, i1 false}
!257 = !{!"../include/linux/completion.h", i32 87, i32 2}
!258 = !{ptr @.str.56, !257, !"<string literal>", i1 false, i1 false}
!259 = distinct !{null, !260, !"__already_done", i1 false, i1 false}
!260 = !{!"../kernel/scftorture.c", i32 265, i32 7}
!261 = !{ptr @n_mb_in_errs, !262, !"n_mb_in_errs", i1 false, i1 false}
!262 = !{!"../kernel/scftorture.c", i32 140, i32 17}
!263 = !{ptr @n_mb_out_errs, !264, !"n_mb_out_errs", i1 false, i1 false}
!264 = !{!"../kernel/scftorture.c", i32 141, i32 17}
!265 = distinct !{null, !266, !"__already_done", i1 false, i1 false}
!266 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!267 = !{ptr @.str.57, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.58, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../kernel/scftorture.c", i32 192, i32 2}
!270 = !{ptr @scf_torture_stats._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @scf_torture_stats._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.59, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.60, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../kernel/scftorture.c", i32 175, i32 13}
!275 = !{ptr @.str.61, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../kernel/scftorture.c", i32 176, i32 2}
!277 = !{ptr @.str.62, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @scf_torture_stats_print._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @scf_torture_stats_print._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.63, !276, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.64, !276, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.65, !276, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.67, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../kernel/scftorture.c", i32 182, i32 2}
!285 = !{ptr @scf_torture_stats_print._entry.66, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @scf_torture_stats_print._entry_ptr.68, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @scfdone, !288, !"scfdone", i1 false, i1 false}
!288 = !{!"../kernel/scftorture.c", i32 143, i32 13}
!289 = !{ptr @bangstr, !290, !"bangstr", i1 false, i1 false}
!290 = !{!"../kernel/scftorture.c", i32 144, i32 14}
!291 = !{ptr @scf_torture_stats_task, !292, !"scf_torture_stats_task", i1 false, i1 false}
!292 = !{!"../kernel/scftorture.c", i32 97, i32 28}
!293 = !{ptr @.str.69, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../kernel/scftorture.c", i32 515, i32 4}
!295 = !{ptr @.str.70, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../kernel/scftorture.c", i32 519, i32 2}
!297 = !{ptr @.str.71, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../kernel/scftorture.c", i32 525, i32 33}
!299 = !{ptr @.str.72, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../kernel/scftorture.c", i32 527, i32 33}
!301 = !{ptr @.str.73, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../kernel/scftorture.c", i32 529, i32 33}
!303 = !{!"sp"}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{i8 0, i8 2}
!314 = !{!"branch_weights", i32 2000, i32 1}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{i64 2148225427}
!317 = !{i64 2148140160, i64 2148140192, i64 2148140221, i64 2148140255, i64 2148140286, i64 2148140309}
!318 = !{i64 2148225656}
!319 = !{i64 2148216670}
!320 = !{i64 2154257393}
!321 = !{i64 2148136975, i64 2148137001, i64 2148137030, i64 2148137064, i64 2148137095, i64 2148137118}
!322 = !{i64 590302, i64 590363}
!323 = !{i64 593034}
!324 = !{i64 593319}
!325 = !{i64 2154267497}
!326 = !{i64 2154267549}
!327 = !{i64 2154267646}
!328 = !{i64 2154267839}
!329 = !{i64 2154267891}
!330 = !{i64 2154267976}
!331 = !{i64 2154271861}
!332 = !{i64 2154271958}
!333 = !{i64 2154253416}
!334 = !{i64 2154253258}
