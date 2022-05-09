; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/speakup_dectlk.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/speakup_dectlk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.list_head = type { ptr, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spk_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.string_var_t = type { ptr }
%struct.var_t = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.num_var_t }
%struct.num_var_t = type { ptr, i32, i32, i32, i16, i16, ptr, i32 }
%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_ser = internal constant [19 x i8] c"speakup_dectlk.ser\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@synth_dectlk = internal global { %struct.spk_synth, [40 x i8] } { %struct.spk_synth { %struct.list_head zeroinitializer, ptr @.str.3, ptr @.str.2, ptr @.str.4, ptr @.str.5, i8 11, i8 3, i32 500, i32 50, i32 50, i32 40000, i32 4000, i32 0, ptr @.str.6, i16 0, i16 0, i32 20030716, ptr @vars, ptr @ap_defaults, ptr @g5_defaults, ptr @spk_ttyio_ops, ptr @spk_ttyio_synth_probe, ptr @spk_ttyio_release, ptr @spk_ttyio_synth_immediate, ptr @do_catch_up, ptr @synth_flush, ptr @spk_synth_is_alive_restart, ptr null, ptr @read_buff_add, ptr @get_index, %struct.synth_indexing { ptr @.str.7, i8 1, i8 8, i8 1 }, i32 0, %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @synth_attrs, ptr null }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_ser = internal constant %struct.kernel_param { ptr @__param_str_ser, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_dectlk, i64 48) } }, section "__param", align 4
@__UNIQUE_ID_sertype229 = internal constant [32 x i8] c"speakup_dectlk.parmtype=ser:int\00", section ".modinfo", align 1
@__param_str_dev = internal constant [19 x i8] c"speakup_dectlk.dev\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dev = internal constant %struct.kernel_param { ptr @__param_str_dev, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_dectlk, i64 52) } }, section "__param", align 4
@__UNIQUE_ID_devtype230 = internal constant [34 x i8] c"speakup_dectlk.parmtype=dev:charp\00", section ".modinfo", align 1
@__param_str_start = internal constant [21 x i8] c"speakup_dectlk.start\00", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@__param_start = internal constant %struct.kernel_param { ptr @__param_str_start, ptr null, ptr @param_ops_short, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_dectlk, i64 58) } }, section "__param", align 4
@__UNIQUE_ID_starttype231 = internal constant [36 x i8] c"speakup_dectlk.parmtype=start:short\00", section ".modinfo", align 1
@__UNIQUE_ID_ser232 = internal constant [75 x i8] c"speakup_dectlk.parm=ser:Set the serial port for the synthesizer (0-based).\00", section ".modinfo", align 1
@__UNIQUE_ID_dev233 = internal constant [74 x i8] c"speakup_dectlk.parm=dev:Set the device e.g. ttyUSB0, for the synthesizer.\00", section ".modinfo", align 1
@__UNIQUE_ID_start234 = internal constant [67 x i8] c"speakup_dectlk.parm=start:Start the synthesizer once it is loaded.\00", section ".modinfo", align 1
@__initcall__kmod_speakup_dectlk__235_314_synth_dectlk_init6 = internal global ptr @synth_dectlk_init, section ".initcall6.init", align 4
@__exitcall_synth_dectlk_exit = internal global ptr @synth_dectlk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [56 x i8] c"speakup_dectlk.author=Kirk Reiser <kirk@braille.uwo.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [37 x i8] c"speakup_dectlk.author=David Borowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [76 x i8] c"speakup_dectlk.description=Speakup support for DECtalk Express synthesizers\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [65 x i8] c"speakup_dectlk.file=drivers/accessibility/speakup/speakup_dectlk\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"speakup_dectlk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version241 = internal constant [28 x i8] c"speakup_dectlk.version=2.20\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"speakup_dectlk\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.20\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dectlk\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Dectalk Express\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[:error sp :name paul :rate 180 :tsr off] \00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyS0\00", [26 x i8] zeroinitializer }, align 32
@ap_defaults = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 122, i32 89, i32 155, i32 110, i32 208, i32 240, i32 200, i32 106, i32 306], [60 x i8] zeroinitializer }, align 32
@g5_defaults = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 86, i32 81, i32 86, i32 84, i32 81, i32 80, i32 83, i32 83, i32 73], [60 x i8] zeroinitializer }, align 32
@spk_ttyio_ops = external dso_local global %struct.spk_io_ops, align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[:in re %d ] \00", [18 x i8] zeroinitializer }, align 32
@synth_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @inflection_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @flush_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[:dv ap 160] \00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[:dv ap 100 ] \00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[:ra %d] \00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[:dv ap %d] \00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[:dv pr %d] \00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[:dv g5 %d] \00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[:pu %c] \00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nsa\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[:n%c] \00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phfdburwkv\00", [21 x i8] zeroinitializer }, align 32
@vars = internal global { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }>, [64 x i8] } { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }> <{ { i32, { %struct.string_var_t, [24 x i8] } } { i32 38, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.8 }, [24 x i8] undef } }, { i32, { %struct.string_var_t, [24 x i8] } } { i32 39, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.9 }, [24 x i8] undef } }, %struct.var_t { i32 28, %union.anon.74 { %struct.num_var_t { ptr @.str.10, i32 180, i32 75, i32 650, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 29, %union.anon.74 { %struct.num_var_t { ptr @.str.11, i32 122, i32 50, i32 350, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 41, %union.anon.74 { %struct.num_var_t { ptr @.str.12, i32 100, i32 0, i32 10000, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 30, %union.anon.74 { %struct.num_var_t { ptr @.str.13, i32 86, i32 60, i32 86, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 32, %union.anon.74 { %struct.num_var_t { ptr @.str.14, i32 0, i32 0, i32 2, i16 0, i16 0, ptr @.str.15, i32 0 } } }, %struct.var_t { i32 33, %union.anon.74 { %struct.num_var_t { ptr @.str.16, i32 0, i32 0, i32 9, i16 0, i16 0, ptr @.str.17, i32 0 } } }, %struct.var_t { i32 36, %union.anon.74 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.74 zeroinitializer } }>, [64 x i8] zeroinitializer }, align 32
@do_catch_up.ch = internal global { i8, [31 x i8] } zeroinitializer, align 32
@do_catch_up.last = internal global { i8, [31 x i8] } zeroinitializer, align 32
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@flush_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@is_flushing = internal global { i1, [31 x i8] } zeroinitializer, align 32
@flush = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @flush, i64 44), ptr getelementptr (i8, ptr @flush, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@in_escape = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",.!?;:\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flush_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flush.lock\00", [21 x i8] zeroinitializer }, align 32
@xoff = internal global { i1, [31 x i8] } zeroinitializer, align 32
@read_buff_add.ind = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@lastind = internal global { i8, [31 x i8] } zeroinitializer, align 32
@caps_start_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@caps_stop_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@pitch_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@inflection_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@punct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@rate_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@voice_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@vol_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@delay_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@full_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@flush_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@jiffy_delta_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@trigger_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inflection\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"punct\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"voice\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flush_time\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 91, i64 93]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 17, i64 19]
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"synth_dectlk\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 114, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 320, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 115, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 117, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 118, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 126, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"ap_defaults\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 111, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"g5_defaults\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 112, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 143, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"synth_attrs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 93, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 44, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 45, i32 23 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 46, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 47, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 48, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 49, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 50, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 50, i32 47 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 51, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 51, i32 45 }
@___asan_gen_.105 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 43, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 204, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 205, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"flush_lock\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"is_flushing\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [10 x i8] c"in_escape\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 272, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 40, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 41, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant [5 x i8] c"xoff\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"ind\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 176, i32 13 }
@___asan_gen_.135 = private unnamed_addr constant [8 x i8] c"lastind\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 163, i32 15 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"caps_start_attribute\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 59, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"caps_stop_attribute\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 61, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"pitch_attribute\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 63, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"inflection_attribute\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 65, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"punct_attribute\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 67, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"rate_attribute\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 69, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"voice_attribute\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 71, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"vol_attribute\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 73, i32 30 }
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"delay_time_attribute\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 76, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"direct_attribute\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 78, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"full_time_attribute\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 80, i32 30 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"flush_time_attribute\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 82, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"jiffy_delta_attribute\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 84, i32 30 }
@___asan_gen_.177 = private unnamed_addr constant [23 x i8] c"trigger_time_attribute\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 86, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 60, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 62, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 64, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 66, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 68, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 70, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 72, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 74, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 77, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 79, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 81, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 83, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 85, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [50 x i8] c"../drivers/accessibility/speakup/speakup_dectlk.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 87, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_dev233, ptr @__UNIQUE_ID_devtype230, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__UNIQUE_ID_ser232, ptr @__UNIQUE_ID_sertype229, ptr @__UNIQUE_ID_start234, ptr @__UNIQUE_ID_starttype231, ptr @__UNIQUE_ID_version241, ptr @__exitcall_synth_dectlk_exit, ptr @__initcall__kmod_speakup_dectlk__235_314_synth_dectlk_init6, ptr @__modver_attr, ptr @__param_dev, ptr @__param_ser, ptr @__param_start, ptr @synth_dectlk_exit, ptr @synth_dectlk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ap_defaults, ptr @g5_defaults, ptr @.str.7, ptr @synth_attrs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @vars, ptr @do_catch_up.ch, ptr @do_catch_up.last, ptr @flush_lock, ptr @is_flushing, ptr @flush, ptr @in_escape, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @xoff, ptr @read_buff_add.ind, ptr @lastind, ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @inflection_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @flush_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_dectlk to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_defaults to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g5_defaults to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vars to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_catch_up.ch to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_catch_up.last to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_flushing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_escape to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xoff to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_buff_add.ind to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastind to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_stop_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitch_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inflection_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffy_delta_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_dectlk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @synth_add(ptr noundef nonnull @synth_dectlk) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synth_dectlk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @synth_remove(ptr noundef nonnull @synth_dectlk) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_ttyio_synth_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_ttyio_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_ttyio_synth_immediate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_catch_up(ptr noundef %synth) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !159) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %call5 = call ptr @spk_get_var(i32 noundef 14) #7
  %call6 = call ptr @spk_get_var(i32 noundef 12) #7
  %call7 = call ptr @spk_get_var(i32 noundef 42) #7
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #7
  %value = getelementptr inbounds %struct.var_t, ptr %call5, i32 0, i32 1, i32 0, i32 7
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %value14 = getelementptr inbounds %struct.var_t, ptr %call7, i32 0, i32 1, i32 0, i32 7
  %15 = ptrtoint ptr %value14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call10) #7
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %16) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %call16365 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call16365, label %entry.while.end305_crit_edge, label %do.body18.lr.ph

entry.while.end305_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end305

do.body18.lr.ph:                                  ; preds = %entry
  %add = add i32 %17, %14
  %flush = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 25
  %value140 = getelementptr inbounds %struct.var_t, ptr %call6, i32 0, i32 1, i32 0, i32 7
  %io_ops = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 20
  br label %do.body18

do.body18:                                        ; preds = %while.cond.backedge.do.body18_crit_edge, %do.body18.lr.ph
  %jiff_max.0367 = phi i32 [ %add, %do.body18.lr.ph ], [ %jiff_max.0.be, %while.cond.backedge.do.body18_crit_edge ]
  %timeout.0366 = phi i32 [ %call2.i, %do.body18.lr.ph ], [ %timeout.1.lcssa, %while.cond.backedge.do.body18_crit_edge ]
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @flush_lock) #7
  %.b358 = load i1, ptr @is_flushing, align 4
  %.b.not359 = xor i1 %.b358, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0366)
  %tobool31.not360 = icmp eq i32 %timeout.0366, 0
  %or.cond361 = select i1 %.b.not359, i1 true, i1 %tobool31.not360
  br i1 %or.cond361, label %do.body18.while.end_crit_edge, label %do.body18.while.body32_crit_edge

do.body18.while.body32_crit_edge:                 ; preds = %do.body18
  br label %while.body32

do.body18.while.end_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body32:                                     ; preds = %while.body32.while.body32_crit_edge, %do.body18.while.body32_crit_edge
  %flags.0363 = phi i32 [ %call42, %while.body32.while.body32_crit_edge ], [ %call25, %do.body18.while.body32_crit_edge ]
  %timeout.1362 = phi i32 [ %call33, %while.body32.while.body32_crit_edge ], [ %timeout.0366, %do.body18.while.body32_crit_edge ]
  call void @prepare_to_wait(ptr noundef nonnull @flush, ptr noundef nonnull %wait, i32 noundef 1) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @flush_lock, i32 noundef %flags.0363) #7
  %call33 = call i32 @schedule_timeout(i32 noundef %timeout.1362) #7
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @flush_lock) #7
  %.b = load i1, ptr @is_flushing, align 4
  %.b.not = xor i1 %.b, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool31.not = icmp eq i32 %call33, 0
  %or.cond = select i1 %.b.not, i1 true, i1 %tobool31.not
  br i1 %or.cond, label %while.body32.while.end_crit_edge, label %while.body32.while.body32_crit_edge

while.body32.while.body32_crit_edge:              ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body32

while.body32.while.end_crit_edge:                 ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body32.while.end_crit_edge, %do.body18.while.end_crit_edge
  %timeout.1.lcssa = phi i32 [ %timeout.0366, %do.body18.while.end_crit_edge ], [ %call33, %while.body32.while.end_crit_edge ]
  %flags.0.lcssa = phi i32 [ %call25, %do.body18.while.end_crit_edge ], [ %call42, %while.body32.while.end_crit_edge ]
  call void @finish_wait(ptr noundef nonnull @flush, ptr noundef nonnull %wait) #7
  store i1 false, ptr @is_flushing, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @flush_lock, i32 noundef %flags.0.lcssa) #7
  %call55 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool60.not = icmp eq i32 %18, 0
  br i1 %tobool60.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call55) #7
  %19 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flush, align 4
  call void %20(ptr noundef %synth) #7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end304, %if.else.i346, %if.then
  %jiff_max.0.be = phi i32 [ %jiff_max.0367, %if.then ], [ %jiff_max.0367, %if.else.i346 ], [ %jiff_max.1, %if.end304 ]
  %call16 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call16, label %while.cond.backedge.while.end305_crit_edge, label %while.cond.backedge.do.body18_crit_edge

while.cond.backedge.do.body18_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

while.cond.backedge.while.end305_crit_edge:       ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end305

if.end:                                           ; preds = %while.end
  call void @synth_buffer_skip_nonlatin1() #7
  %call61 = call i32 @synth_buffer_empty() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call55) #7
  br label %while.end305

if.end64:                                         ; preds = %if.end
  %call65 = call zeroext i16 @synth_buffer_peek() #7
  %conv66 = trunc i16 %call65 to i8
  store i8 %conv66, ptr @do_catch_up.ch, align 1
  br label %__here

__here:                                           ; preds = %if.end64
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@do_catch_up, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %24, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !169
  %26 = ptrtoint ptr %value140 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value140, align 4
  %.b.i = load i1, ptr @xoff, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call55) #7
  %28 = load i8, ptr @do_catch_up.ch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp143 = icmp eq i8 %28, 10
  br i1 %cmp143, label %if.then145, label %__here.if.end146_crit_edge

__here.if.end146_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then145:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  store i8 13, ptr @do_catch_up.ch, align 1
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %__here.if.end146_crit_edge
  br i1 %.b.i, label %if.end146.if.else.i346_crit_edge, label %lor.lhs.false

if.end146.if.else.i346_crit_edge:                 ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i346

lor.lhs.false:                                    ; preds = %if.end146
  %29 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = load i8, ptr @do_catch_up.ch, align 1
  %call148 = call i32 %32(ptr noundef %synth, i8 noundef zeroext %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %lor.lhs.false.if.else.i346_crit_edge, label %__here205

lor.lhs.false.if.else.i346_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i346

if.else.i346:                                     ; preds = %lor.lhs.false.if.else.i346_crit_edge, %if.end146.if.else.i346_crit_edge
  %call2.i345 = call i32 @__msecs_to_jiffies(i32 noundef %27) #7
  %call152 = call i32 @schedule_timeout(i32 noundef %call2.i345) #7
  br label %while.cond.backedge

__here205:                                        ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %task_state_change209 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 212
  %36 = ptrtoint ptr %task_state_change209 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 ptrtoint (ptr blockaddress(@do_catch_up, %__here205) to i32), ptr %task_state_change209, align 4
  %37 = load ptr, ptr %task, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %37, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !170
  %call244 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #7
  %call249 = call zeroext i16 @synth_buffer_getc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call244) #7
  %39 = load i8, ptr @do_catch_up.ch, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %39, label %if.else258 [
    i8 91, label %if.then253
    i8 93, label %if.then257
  ]

if.then253:                                       ; preds = %__here205
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @in_escape, align 4
  br label %if.end304

if.then257:                                       ; preds = %__here205
  call void @__sanitizer_cov_trace_pc() #9
  store i1 false, ptr @in_escape, align 4
  br label %if.end304

if.else258:                                       ; preds = %__here205
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %39)
  %cmp260 = icmp ult i8 %39, 33
  br i1 %cmp260, label %if.then262, label %if.else258.if.end304_crit_edge

if.else258.if.end304_crit_edge:                   ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end304

if.then262:                                       ; preds = %if.else258
  %.b339 = load i1, ptr @in_escape, align 4
  br i1 %.b339, label %if.then262.if.end271_crit_edge, label %land.lhs.true

if.then262.if.end271_crit_edge:                   ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

land.lhs.true:                                    ; preds = %if.then262
  %41 = load i8, ptr @do_catch_up.last, align 1
  %conv264 = zext i8 %41 to i32
  %memchr = call ptr @memchr(ptr noundef nonnull @.str.21, i32 %conv264, i32 7) #10
  %tobool266.not = icmp eq ptr %memchr, null
  br i1 %tobool266.not, label %land.lhs.true.if.end271_crit_edge, label %if.then267

land.lhs.true.if.end271_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end271

if.then267:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_ops, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call270 = call i32 %45(ptr noundef %synth, i8 noundef zeroext 11) #7
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %land.lhs.true.if.end271_crit_edge, %if.then262.if.end271_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %46, %jiff_max.0367
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp272 = icmp sgt i32 %sub, -1
  br i1 %cmp272, label %if.then274, label %if.end271.if.end304_crit_edge

if.end271.if.end304_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end304

if.then274:                                       ; preds = %if.end271
  %.b338 = load i1, ptr @in_escape, align 4
  br i1 %.b338, label %if.then274.do.body282_crit_edge, label %if.then276

if.then274.do.body282_crit_edge:                  ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body282

if.then276:                                       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_ops, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call279 = call i32 %50(ptr noundef %synth, i8 noundef zeroext 11) #7
  br label %do.body282

do.body282:                                       ; preds = %if.then276, %if.then274.do.body282_crit_edge
  %call289 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #7
  %51 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %value, align 4
  %53 = ptrtoint ptr %value140 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value140, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call289) #7
  %call2.i354 = call i32 @__msecs_to_jiffies(i32 noundef %54) #7
  %call299 = call i32 @schedule_timeout(i32 noundef %call2.i354) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add300 = add i32 %55, %52
  br label %if.end304

if.end304:                                        ; preds = %do.body282, %if.end271.if.end304_crit_edge, %if.else258.if.end304_crit_edge, %if.then257, %if.then253
  %jiff_max.1 = phi i32 [ %jiff_max.0367, %if.then253 ], [ %jiff_max.0367, %if.then257 ], [ %add300, %do.body282 ], [ %jiff_max.0367, %if.end271.if.end304_crit_edge ], [ %jiff_max.0367, %if.else258.if.end304_crit_edge ]
  %56 = load i8, ptr @do_catch_up.ch, align 1
  store i8 %56, ptr @do_catch_up.last, align 1
  br label %while.cond.backedge

while.end305:                                     ; preds = %if.then63, %while.cond.backedge.while.end305_crit_edge, %entry.while.end305_crit_edge
  %.b337 = load i1, ptr @in_escape, align 4
  br i1 %.b337, label %while.end305.if.end311_crit_edge, label %if.then307

while.end305.if.end311_crit_edge:                 ; preds = %while.end305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end311

if.then307:                                       ; preds = %while.end305
  call void @__sanitizer_cov_trace_pc() #9
  %io_ops308 = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 20
  %57 = ptrtoint ptr %io_ops308 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_ops308, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call310 = call i32 %60(ptr noundef %synth, i8 noundef zeroext 11) #7
  br label %if.end311

if.end311:                                        ; preds = %if.then307, %while.end305.if.end311_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synth_flush(ptr noundef %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @in_escape, align 4
  br i1 %.b, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_ops = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 20
  %0 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %synth, i8 noundef zeroext 93) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i1 false, ptr @in_escape, align 4
  store i1 true, ptr @is_flushing, align 4
  %io_ops1 = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 20
  %4 = ptrtoint ptr %io_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_ops1, align 4
  %flush_buffer = getelementptr inbounds %struct.spk_io_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flush_buffer, align 4
  tail call void %7(ptr noundef %synth) #7
  %8 = ptrtoint ptr %io_ops1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_ops1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call4 = tail call i32 %11(ptr noundef %synth, i8 noundef zeroext 3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_synth_is_alive_restart(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_buff_add(i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %c to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %c, label %if.else17 [
    i8 1, label %if.then
    i8 19, label %if.then11
    i8 17, label %if.then16
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @flush_lock) #7
  store i1 false, ptr @is_flushing, align 4
  tail call void @__wake_up(ptr noundef nonnull @flush, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @flush_lock, i32 noundef %call5) #7
  br label %if.end43

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xoff, align 4
  br label %if.end43

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 false, ptr @xoff, align 4
  br label %if.end43

if.else17:                                        ; preds = %entry
  %1 = add i8 %c, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %2 = icmp ult i8 %1, 10
  br i1 %2, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.else17
  %3 = load i32, ptr @read_buff_add.ind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp20 = icmp eq i32 %3, -1
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %conv23 = zext i8 %1 to i32
  store i32 %conv23, ptr @read_buff_add.ind, align 4
  br label %if.end43

if.else24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %3, 10
  %conv25 = zext i8 %1 to i32
  %add = add i32 %mul, %conv25
  store i32 %add, ptr @read_buff_add.ind, align 4
  br label %if.end43

if.else26:                                        ; preds = %if.else17
  %4 = add i8 %c, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %4)
  %5 = icmp ult i8 %4, 95
  br i1 %5, label %if.then33, label %if.else26.if.end43_crit_edge

if.else26.if.end43_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then33:                                        ; preds = %if.else26
  %6 = load i32, ptr @read_buff_add.ind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp34.not = icmp eq i32 %6, -1
  br i1 %cmp34.not, label %if.then33.if.end38_crit_edge, label %if.then36

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %conv37 = trunc i32 %6 to i8
  store i8 %conv37, ptr @lastind, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then33.if.end38_crit_edge
  store i32 -1, ptr @read_buff_add.ind, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %if.else26.if.end43_crit_edge, %if.else24, %if.then22, %if.then16, %if.then11, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @get_index(ptr nocapture noundef readnone %synth) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @lastind, align 1
  store i8 0, ptr @lastind, align 1
  ret i8 %0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_get_var(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_buffer_skip_nonlatin1() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_buffer_empty() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @synth_buffer_peek() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @synth_buffer_getc() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158}
!llvm.named.register.sp = !{!159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__param_ser, !1, !"__param_ser", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 306, i32 1}
!2 = !{ptr @__UNIQUE_ID_sertype229, !1, !"__UNIQUE_ID_sertype229", i1 false, i1 false}
!3 = !{ptr @__param_dev, !4, !"__param_dev", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 307, i32 1}
!5 = !{ptr @__UNIQUE_ID_devtype230, !4, !"__UNIQUE_ID_devtype230", i1 false, i1 false}
!6 = !{ptr @__param_start, !7, !"__param_start", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 308, i32 1}
!8 = !{ptr @__UNIQUE_ID_starttype231, !7, !"__UNIQUE_ID_starttype231", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_ser232, !10, !"__UNIQUE_ID_ser232", i1 false, i1 false}
!10 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 310, i32 1}
!11 = !{ptr @__UNIQUE_ID_dev233, !12, !"__UNIQUE_ID_dev233", i1 false, i1 false}
!12 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 311, i32 1}
!13 = !{ptr @__UNIQUE_ID_start234, !14, !"__UNIQUE_ID_start234", i1 false, i1 false}
!14 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 312, i32 1}
!15 = !{ptr @__initcall__kmod_speakup_dectlk__235_314_synth_dectlk_init6, !16, !"__initcall__kmod_speakup_dectlk__235_314_synth_dectlk_init6", i1 false, i1 false}
!16 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 314, i32 1}
!17 = !{ptr @__exitcall_synth_dectlk_exit, !16, !"__exitcall_synth_dectlk_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author236, !19, !"__UNIQUE_ID_author236", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 316, i32 1}
!20 = !{ptr @__UNIQUE_ID_author237, !21, !"__UNIQUE_ID_author237", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 317, i32 1}
!22 = !{ptr @__UNIQUE_ID_description238, !23, !"__UNIQUE_ID_description238", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 318, i32 1}
!24 = !{ptr @__UNIQUE_ID_file239, !25, !"__UNIQUE_ID_file239", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 319, i32 1}
!26 = !{ptr @__UNIQUE_ID_license240, !25, !"__UNIQUE_ID_license240", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_version241, !28, !"__UNIQUE_ID_version241", i1 false, i1 false}
!28 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 320, i32 1}
!29 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__modver_attr, !28, !"__modver_attr", i1 false, i1 false}
!33 = !{ptr @__param_str_ser, !1, !"__param_str_ser", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 115, i32 10}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 117, i32 15}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 118, i32 10}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 126, i32 14}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 143, i32 14}
!44 = !{ptr @synth_dectlk, !45, !"synth_dectlk", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 114, i32 25}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 44, i32 24}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 45, i32 23}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 46, i32 18}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 47, i32 19}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 48, i32 24}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 49, i32 17}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 50, i32 19}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 50, i32 47}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 51, i32 19}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 51, i32 45}
!66 = !{ptr @vars, !67, !"vars", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 43, i32 21}
!68 = !{ptr @ap_defaults, !69, !"ap_defaults", i1 false, i1 false}
!69 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 111, i32 12}
!70 = !{ptr @g5_defaults, !71, !"g5_defaults", i1 false, i1 false}
!71 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 112, i32 12}
!72 = !{ptr @do_catch_up.ch, !73, !"ch", i1 false, i1 false}
!73 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 204, i32 16}
!74 = !{ptr @do_catch_up.last, !75, !"last", i1 false, i1 false}
!75 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 205, i32 16}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 253, i32 3}
!78 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 263, i32 3}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 272, i32 29}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 40, i32 8}
!85 = !{ptr @flush_lock, !84, !"flush_lock", i1 false, i1 false}
!86 = distinct !{null, !87, !"is_flushing", i1 false, i1 false}
!87 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 38, i32 12}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 41, i32 8}
!90 = !{ptr @flush, !89, !"flush", i1 false, i1 false}
!91 = distinct !{null, !92, !"xoff", i1 false, i1 false}
!92 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 25, i32 12}
!93 = distinct !{null, !94, !"in_escape", i1 false, i1 false}
!94 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 37, i32 12}
!95 = !{ptr @read_buff_add.ind, !96, !"ind", i1 false, i1 false}
!96 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 176, i32 13}
!97 = !{ptr @lastind, !98, !"lastind", i1 false, i1 false}
!98 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 163, i32 15}
!99 = !{ptr @synth_attrs, !100, !"synth_attrs", i1 false, i1 false}
!100 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 93, i32 26}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 60, i32 2}
!103 = !{ptr @caps_start_attribute, !104, !"caps_start_attribute", i1 false, i1 false}
!104 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 59, i32 30}
!105 = !{ptr @.str.25, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 62, i32 2}
!107 = !{ptr @caps_stop_attribute, !108, !"caps_stop_attribute", i1 false, i1 false}
!108 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 61, i32 30}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 64, i32 2}
!111 = !{ptr @pitch_attribute, !112, !"pitch_attribute", i1 false, i1 false}
!112 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 63, i32 30}
!113 = !{ptr @.str.27, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 66, i32 2}
!115 = !{ptr @inflection_attribute, !116, !"inflection_attribute", i1 false, i1 false}
!116 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 65, i32 30}
!117 = !{ptr @.str.28, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 68, i32 2}
!119 = !{ptr @punct_attribute, !120, !"punct_attribute", i1 false, i1 false}
!120 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 67, i32 30}
!121 = !{ptr @.str.29, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 70, i32 2}
!123 = !{ptr @rate_attribute, !124, !"rate_attribute", i1 false, i1 false}
!124 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 69, i32 30}
!125 = !{ptr @.str.30, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 72, i32 2}
!127 = !{ptr @voice_attribute, !128, !"voice_attribute", i1 false, i1 false}
!128 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 71, i32 30}
!129 = !{ptr @.str.31, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 74, i32 2}
!131 = !{ptr @vol_attribute, !132, !"vol_attribute", i1 false, i1 false}
!132 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 73, i32 30}
!133 = !{ptr @.str.32, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 77, i32 2}
!135 = !{ptr @delay_time_attribute, !136, !"delay_time_attribute", i1 false, i1 false}
!136 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 76, i32 30}
!137 = !{ptr @.str.33, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 79, i32 2}
!139 = !{ptr @direct_attribute, !140, !"direct_attribute", i1 false, i1 false}
!140 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 78, i32 30}
!141 = !{ptr @.str.34, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 81, i32 2}
!143 = !{ptr @full_time_attribute, !144, !"full_time_attribute", i1 false, i1 false}
!144 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 80, i32 30}
!145 = !{ptr @.str.35, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 83, i32 2}
!147 = !{ptr @flush_time_attribute, !148, !"flush_time_attribute", i1 false, i1 false}
!148 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 82, i32 30}
!149 = !{ptr @.str.36, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 85, i32 2}
!151 = !{ptr @jiffy_delta_attribute, !152, !"jiffy_delta_attribute", i1 false, i1 false}
!152 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 84, i32 30}
!153 = !{ptr @.str.37, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 87, i32 2}
!155 = !{ptr @trigger_time_attribute, !156, !"trigger_time_attribute", i1 false, i1 false}
!156 = !{!"../drivers/accessibility/speakup/speakup_dectlk.c", i32 86, i32 30}
!157 = !{ptr @__param_str_dev, !4, !"__param_str_dev", i1 false, i1 false}
!158 = !{ptr @__param_str_start, !7, !"__param_str_start", i1 false, i1 false}
!159 = !{!"sp"}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i64 2154071678}
!170 = !{i64 2154076429}
