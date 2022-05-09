; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/speakup_dtlk.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/speakup_dtlk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.list_head = type { ptr, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.synth_settings = type { i16, [24 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
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

@__param_str_port = internal constant [18 x i8] c"speakup_dtlk.port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@port_forced = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 2, %union.anon.68 { ptr @port_forced } }, section "__param", align 4
@__UNIQUE_ID_porttype234 = internal constant [31 x i8] c"speakup_dtlk.parmtype=port:int\00", section ".modinfo", align 1
@__param_str_start = internal constant [19 x i8] c"speakup_dtlk.start\00", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@synth_dtlk = internal global { %struct.spk_synth, [40 x i8] } { %struct.spk_synth { %struct.list_head zeroinitializer, ptr @.str.3, ptr @.str.2, ptr @.str.4, ptr @.str.5, i8 0, i8 24, i32 500, i32 30, i32 50, i32 1000, i32 0, i32 0, ptr null, i16 0, i16 0, i32 20030716, ptr @vars, ptr null, ptr null, ptr @spk_serial_io_ops, ptr @synth_probe, ptr @dtlk_release, ptr @synth_immediate, ptr @do_catch_up, ptr @synth_flush, ptr @spk_synth_is_alive_nop, ptr null, ptr null, ptr @spk_synth_get_index, %struct.synth_indexing { ptr @.str.6, i8 1, i8 5, i8 1 }, i32 0, %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @synth_attrs, ptr null }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_start = internal constant %struct.kernel_param { ptr @__param_str_start, ptr null, ptr @param_ops_short, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_dtlk, i64 58) } }, section "__param", align 4
@__UNIQUE_ID_starttype235 = internal constant [34 x i8] c"speakup_dtlk.parmtype=start:short\00", section ".modinfo", align 1
@__UNIQUE_ID_port236 = internal constant [76 x i8] c"speakup_dtlk.parm=port:Set the port for the synthesizer (override probing).\00", section ".modinfo", align 1
@__UNIQUE_ID_start237 = internal constant [65 x i8] c"speakup_dtlk.parm=start:Start the synthesizer once it is loaded.\00", section ".modinfo", align 1
@__initcall__kmod_speakup_dtlk__238_383_synth_dtlk_init6 = internal global ptr @synth_dtlk_init, section ".initcall6.init", align 4
@__exitcall_synth_dtlk_exit = internal global ptr @synth_dtlk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [54 x i8] c"speakup_dtlk.author=Kirk Reiser <kirk@braille.uwo.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [35 x i8] c"speakup_dtlk.author=David Borowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [72 x i8] c"speakup_dtlk.description=Speakup support for DoubleTalk PC synthesizers\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [61 x i8] c"speakup_dtlk.file=drivers/accessibility/speakup/speakup_dtlk\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [25 x i8] c"speakup_dtlk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version244 = internal constant [26 x i8] c"speakup_dtlk.version=2.10\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speakup_dtlk\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.10\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dtlk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DoubleTalk PC\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01@\011y\00", [26 x i8] zeroinitializer }, align 32
@spk_serial_io_ops = external dso_local global %struct.spk_io_ops, align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%di\00", [27 x i8] zeroinitializer }, align 32
@synth_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @freq_attribute, ptr @pitch_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01+35p\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01-35p\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%ds\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dp\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dv\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dx\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%db\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%do\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%df\00", [27 x i8] zeroinitializer }, align 32
@vars = internal global { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }>, [64 x i8] } { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }> <{ { i32, { %struct.string_var_t, [24 x i8] } } { i32 38, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.7 }, [24 x i8] undef } }, { i32, { %struct.string_var_t, [24 x i8] } } { i32 39, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.8 }, [24 x i8] undef } }, %struct.var_t { i32 28, %union.anon.74 { %struct.num_var_t { ptr @.str.9, i32 8, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 29, %union.anon.74 { %struct.num_var_t { ptr @.str.10, i32 50, i32 0, i32 99, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 30, %union.anon.74 { %struct.num_var_t { ptr @.str.11, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 31, %union.anon.74 { %struct.num_var_t { ptr @.str.12, i32 1, i32 0, i32 2, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 32, %union.anon.74 { %struct.num_var_t { ptr @.str.13, i32 7, i32 0, i32 15, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 33, %union.anon.74 { %struct.num_var_t { ptr @.str.14, i32 0, i32 0, i32 7, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 34, %union.anon.74 { %struct.num_var_t { ptr @.str.15, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 36, %union.anon.74 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.74 zeroinitializer } }>, [64 x i8] zeroinitializer }, align 32
@synth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Probing for DoubleTalk.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synth_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/accessibility/speakup/speakup_dtlk.c\00", [51 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr = internal global ptr @synth_probe._entry, section ".printk_index", align 4
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@synth_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.19, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016probe forced to %x by kernel command line\0A\00", [51 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.22 = internal global ptr @synth_probe._entry.20, section ".printk_index", align 4
@synth_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.19, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016warning: port base should probably end with f\0A\00", [47 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.25 = internal global ptr @synth_probe._entry.23, section ".printk_index", align 4
@synth_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.19, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014sorry, port already reserved\0A\00", [32 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.28 = internal global ptr @synth_probe._entry.26, section ".printk_index", align 4
@synth_lpc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@synth_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.19, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016DoubleTalk PC: not found\0A\00", [36 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.31 = internal global ptr @synth_probe._entry.29, section ".printk_index", align 4
@synth_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.19, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: %03x-%03x, ROM ver %s, s/n %u, driver: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.34 = internal global ptr @synth_probe._entry.32, section ".printk_index", align 4
@synth_interrogate.buf = internal global { [43 x i8], [53 x i8] } zeroinitializer, align 32
@synth_interrogate.status = internal global { %struct.synth_settings, [54 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@caps_start_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@caps_stop_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@freq_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@pitch_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@punct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@rate_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@tone_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@voice_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@vol_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@delay_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@full_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@jiffy_delta_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@trigger_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"punct\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tone\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"voice\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"port_forced\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 33, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"synth_dtlk\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 109, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 389, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 110, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 112, i32 15 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 113, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 134, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"synth_attrs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 91, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 41, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 42, i32 23 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 43, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 44, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 45, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 46, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 47, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 48, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 49, i32 23 }
@___asan_gen_.108 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 40, i32 21 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 322, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 325, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 328, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 331, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [10 x i8] c"synth_lpc\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 32, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 353, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 361, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 276, i32 14 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 278, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"caps_start_attribute\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 57, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"caps_stop_attribute\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 59, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant [15 x i8] c"freq_attribute\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 61, i32 30 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"pitch_attribute\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 63, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"punct_attribute\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 65, i32 30 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"rate_attribute\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 67, i32 30 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"tone_attribute\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 69, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"voice_attribute\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 71, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"vol_attribute\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 73, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"delay_time_attribute\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 76, i32 30 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"direct_attribute\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 78, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"full_time_attribute\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 80, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"jiffy_delta_attribute\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 82, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"trigger_time_attribute\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 84, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 58, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 60, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 62, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 64, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 66, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 68, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 70, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 72, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 74, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 77, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 79, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 81, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 83, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [48 x i8] c"../drivers/accessibility/speakup/speakup_dtlk.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 85, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_port236, ptr @__UNIQUE_ID_porttype234, ptr @__UNIQUE_ID_start237, ptr @__UNIQUE_ID_starttype235, ptr @__UNIQUE_ID_version244, ptr @__exitcall_synth_dtlk_exit, ptr @__initcall__kmod_speakup_dtlk__238_383_synth_dtlk_init6, ptr @__modver_attr, ptr @__param_port, ptr @__param_start, ptr @synth_dtlk_exit, ptr @synth_probe._entry, ptr @synth_probe._entry.20, ptr @synth_probe._entry.23, ptr @synth_probe._entry.26, ptr @synth_probe._entry.29, ptr @synth_probe._entry.32, ptr @synth_probe._entry_ptr, ptr @synth_probe._entry_ptr.22, ptr @synth_probe._entry_ptr.25, ptr @synth_probe._entry_ptr.28, ptr @synth_probe._entry_ptr.31, ptr @synth_probe._entry_ptr.34, ptr @port_forced, ptr @synth_dtlk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @synth_attrs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @vars, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @synth_lpc, ptr @.str.30, ptr @.str.33, ptr @synth_interrogate.buf, ptr @synth_interrogate.status, ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @freq_attribute, ptr @pitch_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_forced to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_dtlk to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vars to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_lpc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_interrogate.buf to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_interrogate.status to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_stop_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitch_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tone_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffy_delta_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_dtlk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @synth_add(ptr noundef nonnull @synth_dtlk) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synth_dtlk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @synth_remove(ptr noundef nonnull @synth_dtlk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_probe(ptr nocapture noundef %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  %0 = load i32, ptr @port_forced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %entry
  %call29 = tail call i32 @synth_request_region(i32 noundef 606, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  store i32 %0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %0) #9
  %1 = load i32, ptr @port_forced, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp.not = icmp eq i32 %and, 15
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %if.end

if.end:                                           ; preds = %do.end9, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %sub = add i32 %2, -1
  %call12 = tail call i32 @synth_request_region(i32 noundef %sub, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %sub21 = add i32 %3, 1048575
  %and22 = and i32 %sub21, 1048575
  %add = or i32 %and22, -18874368
  %4 = inttoptr i32 %add to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #6, !srcloc !172
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  %conv = zext i16 %6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %sub26 = add i32 %7, -1
  store i32 %sub26, ptr @synth_lpc, align 4
  br label %if.end50

if.end32:                                         ; preds = %for.body.preheader
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873762 to ptr)) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %9 = and i16 %8, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32528, i16 %9)
  %cmp42 = icmp eq i16 %9, 32528
  br i1 %cmp42, label %if.end32.if.end50.thread_crit_edge, label %if.end47

if.end32.if.end50.thread_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread

if.end50.thread:                                  ; preds = %if.end32.5.if.end50.thread_crit_edge, %if.end32.4.if.end50.thread_crit_edge, %if.end32.3.if.end50.thread_crit_edge, %if.end32.2.if.end50.thread_crit_edge, %if.end32.1.if.end50.thread_crit_edge, %if.end32.if.end50.thread_crit_edge
  %.lcssa110 = phi i32 [ 606, %if.end32.if.end50.thread_crit_edge ], [ 670, %if.end32.1.if.end50.thread_crit_edge ], [ 734, %if.end32.2.if.end50.thread_crit_edge ], [ 798, %if.end32.3.if.end50.thread_crit_edge ], [ 862, %if.end32.4.if.end50.thread_crit_edge ], [ 926, %if.end32.5.if.end50.thread_crit_edge ]
  store i32 %.lcssa110, ptr @synth_lpc, align 4
  %add46 = or i32 %.lcssa110, 1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  store i32 %add46, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  br label %while.cond.preheader

if.end47:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %and41 = zext i16 %10 to i32
  %call49 = tail call i32 @synth_release_region(i32 noundef 606, i32 noundef 2) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end47, %for.body.preheader.for.inc_crit_edge
  %port_val.1 = phi i32 [ 0, %for.body.preheader.for.inc_crit_edge ], [ %and41, %if.end47 ]
  %call29.1 = tail call i32 @synth_request_region(i32 noundef 670, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %tobool30.not.1 = icmp eq i32 %call29.1, 0
  br i1 %tobool30.not.1, label %if.end32.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end32.1:                                       ; preds = %for.inc
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873698 to ptr)) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %12 = and i16 %11, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32528, i16 %12)
  %cmp42.1 = icmp eq i16 %12, 32528
  br i1 %cmp42.1, label %if.end32.1.if.end50.thread_crit_edge, label %if.end47.1

if.end32.1.if.end50.thread_crit_edge:             ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread

if.end47.1:                                       ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %and41.1 = zext i16 %13 to i32
  %call49.1 = tail call i32 @synth_release_region(i32 noundef 670, i32 noundef 2) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end47.1, %for.inc.for.inc.1_crit_edge
  %port_val.1.1 = phi i32 [ %port_val.1, %for.inc.for.inc.1_crit_edge ], [ %and41.1, %if.end47.1 ]
  %call29.2 = tail call i32 @synth_request_region(i32 noundef 734, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2)
  %tobool30.not.2 = icmp eq i32 %call29.2, 0
  br i1 %tobool30.not.2, label %if.end32.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end32.2:                                       ; preds = %for.inc.1
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873634 to ptr)) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %15 = and i16 %14, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32528, i16 %15)
  %cmp42.2 = icmp eq i16 %15, 32528
  br i1 %cmp42.2, label %if.end32.2.if.end50.thread_crit_edge, label %if.end47.2

if.end32.2.if.end50.thread_crit_edge:             ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread

if.end47.2:                                       ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %and41.2 = zext i16 %16 to i32
  %call49.2 = tail call i32 @synth_release_region(i32 noundef 734, i32 noundef 2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end47.2, %for.inc.1.for.inc.2_crit_edge
  %port_val.1.2 = phi i32 [ %port_val.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %and41.2, %if.end47.2 ]
  %call29.3 = tail call i32 @synth_request_region(i32 noundef 798, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.3)
  %tobool30.not.3 = icmp eq i32 %call29.3, 0
  br i1 %tobool30.not.3, label %if.end32.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end32.3:                                       ; preds = %for.inc.2
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873570 to ptr)) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %18 = and i16 %17, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32528, i16 %18)
  %cmp42.3 = icmp eq i16 %18, 32528
  br i1 %cmp42.3, label %if.end32.3.if.end50.thread_crit_edge, label %if.end47.3

if.end32.3.if.end50.thread_crit_edge:             ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread

if.end47.3:                                       ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %and41.3 = zext i16 %19 to i32
  %call49.3 = tail call i32 @synth_release_region(i32 noundef 798, i32 noundef 2) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end47.3, %for.inc.2.for.inc.3_crit_edge
  %port_val.1.3 = phi i32 [ %port_val.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %and41.3, %if.end47.3 ]
  %call29.4 = tail call i32 @synth_request_region(i32 noundef 862, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.4)
  %tobool30.not.4 = icmp eq i32 %call29.4, 0
  br i1 %tobool30.not.4, label %if.end32.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end32.4:                                       ; preds = %for.inc.3
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873506 to ptr)) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %21 = and i16 %20, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32528, i16 %21)
  %cmp42.4 = icmp eq i16 %21, 32528
  br i1 %cmp42.4, label %if.end32.4.if.end50.thread_crit_edge, label %if.end47.4

if.end32.4.if.end50.thread_crit_edge:             ; preds = %if.end32.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread

if.end47.4:                                       ; preds = %if.end32.4
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %and41.4 = zext i16 %22 to i32
  %call49.4 = tail call i32 @synth_release_region(i32 noundef 862, i32 noundef 2) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end47.4, %for.inc.3.for.inc.4_crit_edge
  %port_val.1.4 = phi i32 [ %port_val.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %and41.4, %if.end47.4 ]
  %call29.5 = tail call i32 @synth_request_region(i32 noundef 926, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.5)
  %tobool30.not.5 = icmp eq i32 %call29.5, 0
  br i1 %tobool30.not.5, label %if.end32.5, label %for.inc.4.if.end50_crit_edge

for.inc.4.if.end50_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end32.5:                                       ; preds = %for.inc.4
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873442 to ptr)) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %24 = and i16 %23, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32528, i16 %24)
  %cmp42.5 = icmp eq i16 %24, 32528
  br i1 %cmp42.5, label %if.end32.5.if.end50.thread_crit_edge, label %if.end47.5

if.end32.5.if.end50.thread_crit_edge:             ; preds = %if.end32.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.thread

if.end47.5:                                       ; preds = %if.end32.5
  call void @__sanitizer_cov_trace_pc() #8
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %and41.5 = zext i16 %25 to i32
  %call49.5 = tail call i32 @synth_release_region(i32 noundef 926, i32 noundef 2) #6
  br label %if.end50

if.end50:                                         ; preds = %if.end47.5, %for.inc.4.if.end50_crit_edge, %if.end20
  %port_val.2 = phi i32 [ %conv, %if.end20 ], [ %port_val.1.4, %for.inc.4.if.end50_crit_edge ], [ %and41.5, %if.end47.5 ]
  %and51 = and i32 %port_val.2, 64511
  call void @__sanitizer_cov_trace_const_cmp4(i32 4223, i32 %and51)
  %cmp52.not = icmp eq i32 %and51, 4223
  br i1 %cmp52.not, label %if.end50.while.cond.preheader_crit_edge, label %do.end57

if.end50.while.cond.preheader_crit_edge:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end50.while.cond.preheader_crit_edge, %if.end50.thread
  %26 = load i32, ptr @synth_lpc, align 4
  %and.i107 = and i32 %26, 1048575
  %add.i108 = or i32 %and.i107, -18874368
  %27 = inttoptr i32 %add.i108 to ptr
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %27) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp2(i16 32532, i16 %28)
  %cmp67.not109 = icmp eq i16 %28, 32532
  br i1 %cmp67.not109, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.do.end73_crit_edge

while.cond.preheader.do.end73_crit_edge:          ; preds = %while.cond.preheader
  br label %do.end73

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end57:                                         ; preds = %if.end50
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  %29 = load i32, ptr @synth_lpc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool60.not = icmp eq i32 %29, 0
  br i1 %tobool60.not, label %do.end57.cleanup_crit_edge, label %if.then61

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then61:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call62 = tail call i32 @synth_release_region(i32 noundef %29, i32 noundef 2) #6
  br label %cleanup

do.end73:                                         ; preds = %do.end73.do.end73_crit_edge, %while.cond.preheader.do.end73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !177
  %30 = load i32, ptr @synth_lpc, align 4
  %and.i = and i32 %30, 1048575
  %add.i = or i32 %and.i, -18874368
  %31 = inttoptr i32 %add.i to ptr
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %31) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  %cmp67.not = icmp eq i16 %32, 32532
  br i1 %cmp67.not, label %do.end73.while.end_crit_edge, label %do.end73.do.end73_crit_edge

do.end73.do.end73_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73

do.end73.while.end_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end73.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %33 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i.i = and i32 %33, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %34 = inttoptr i32 %add.i.i.i.i to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %36 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i.not.i.i = icmp eq i8 %36, 0
  br i1 %cmp.i.not.i.i, label %if.end.i.i, label %while.end.for.body.i.preheader_crit_edge

while.end.for.body.i.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.end.i.i:                                       ; preds = %while.end
  tail call fastcc void @spk_out(i8 noundef zeroext 24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %37 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i.1.i = and i32 %37, 1048575
  %add.i.i.i.1.i = or i32 %and.i.i.i.1.i, -18874368
  %38 = inttoptr i32 %add.i.i.i.1.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %40 = and i8 %39, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp.i.not.i.1.i = icmp eq i8 %40, 0
  br i1 %cmp.i.not.i.1.i, label %if.end.i.1.i, label %if.end.i.i.for.body.i.preheader_crit_edge

if.end.i.i.for.body.i.preheader_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.end.i.1.i:                                     ; preds = %if.end.i.i
  tail call fastcc void @spk_out(i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %41 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i.2.i = and i32 %41, 1048575
  %add.i.i.i.2.i = or i32 %and.i.i.i.2.i, -18874368
  %42 = inttoptr i32 %add.i.i.i.2.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %44 = and i8 %43, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp.i.not.i.2.i = icmp eq i8 %44, 0
  br i1 %cmp.i.not.i.2.i, label %if.end.i.2.i, label %if.end.i.1.i.for.body.i.preheader_crit_edge

if.end.i.1.i.for.body.i.preheader_crit_edge:      ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.end.i.2.i:                                     ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @spk_out(i8 noundef zeroext 63) #6
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end.i.2.i, %if.end.i.1.i.for.body.i.preheader_crit_edge, %if.end.i.i.for.body.i.preheader_crit_edge, %while.end.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.05.i = phi i32 [ %inc10.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %total.04.i = phi i32 [ %spec.select.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i25.i.i = and i32 %45, 1048575
  %add.i.i26.i.i = or i32 %and.i.i25.i.i, -18874368
  %46 = inttoptr i32 %add.i.i26.i.i to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i27.i.i = icmp slt i8 %47, 0
  br i1 %cmp.i27.i.i, label %for.body.i.while.end.i.i_crit_edge, label %for.body.i.do.end.i.i_crit_edge

for.body.i.do.end.i.i_crit_edge:                  ; preds = %for.body.i
  br label %do.end.i.i

for.body.i.while.end.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %for.body.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %48 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i2.i = and i32 %48, 1048575
  %add.i.i.i3.i = or i32 %and.i.i.i2.i, -18874368
  %49 = inttoptr i32 %add.i.i.i3.i to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %cmp.i.i.i = icmp slt i8 %50, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %for.body.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i8 [ %47, %for.body.i.while.end.i.i_crit_edge ], [ %50, %do.end.i.i.while.end.i.i_crit_edge ]
  %51 = and i8 %.lcssa.i.i, 127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %52 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %and.i.i.i = and i32 %52, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %53 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %51) #6, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %54 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i2228.i.i = and i32 %54, 1048575
  %add.i.i2329.i.i = or i32 %and.i.i2228.i.i, -18874368
  %55 = inttoptr i32 %add.i.i2329.i.i to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp.i2430.i.i = icmp slt i8 %56, 0
  br i1 %cmp.i2430.i.i, label %while.end.i.i.do.end15.i.i_crit_edge, label %while.end.i.i.synth_read_tts.exit.i_crit_edge

while.end.i.i.synth_read_tts.exit.i_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %synth_read_tts.exit.i

while.end.i.i.do.end15.i.i_crit_edge:             ; preds = %while.end.i.i
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %do.end15.i.i.do.end15.i.i_crit_edge, %while.end.i.i.do.end15.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %57 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i22.i.i = and i32 %57, 1048575
  %add.i.i23.i.i = or i32 %and.i.i22.i.i, -18874368
  %58 = inttoptr i32 %add.i.i23.i.i to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %cmp.i24.i.i = icmp slt i8 %59, 0
  br i1 %cmp.i24.i.i, label %do.end15.i.i.do.end15.i.i_crit_edge, label %do.end15.i.i.synth_read_tts.exit.i_crit_edge

do.end15.i.i.synth_read_tts.exit.i_crit_edge:     ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %synth_read_tts.exit.i

do.end15.i.i.do.end15.i.i_crit_edge:              ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15.i.i

synth_read_tts.exit.i:                            ; preds = %do.end15.i.i.synth_read_tts.exit.i_crit_edge, %while.end.i.i.synth_read_tts.exit.i_crit_edge
  %arrayidx.i = getelementptr [43 x i8], ptr @synth_interrogate.buf, i32 0, i32 %total.04.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %51, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %total.04.i)
  %cmp2.i = icmp sgt i32 %total.04.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %51)
  %cmp4.i = icmp eq i8 %51, 127
  %or.cond.i = select i1 %cmp2.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %synth_read_tts.exit.i.for.end.i_crit_edge, label %if.end.i

synth_read_tts.exit.i.for.end.i_crit_edge:        ; preds = %synth_read_tts.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.i:                                         ; preds = %synth_read_tts.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %total.04.i)
  %cmp6.i = icmp ult i32 %total.04.i, 42
  %inc.i = zext i1 %cmp6.i to i32
  %spec.select.i = add i32 %total.04.i, %inc.i
  %inc10.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, 50
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %synth_read_tts.exit.i.for.end.i_crit_edge
  %61 = load i8, ptr @synth_interrogate.buf, align 1
  %conv12.i = zext i8 %61 to i16
  %62 = load i8, ptr getelementptr inbounds ([43 x i8], ptr @synth_interrogate.buf, i32 0, i32 1), align 1
  %conv14.i = zext i8 %62 to i16
  %mul.i = shl nuw i16 %conv14.i, 8
  %add.i102 = or i16 %mul.i, %conv12.i
  store i16 %add.i102, ptr @synth_interrogate.status, align 2
  %63 = load i8, ptr getelementptr inbounds ([43 x i8], ptr @synth_interrogate.buf, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %63)
  %cmp18.not6.i = icmp eq i8 %63, 13
  br i1 %cmp18.not6.i, label %for.end.i.synth_interrogate.exit_crit_edge, label %for.end.i.for.body20.i_crit_edge

for.end.i.for.body20.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body20.i

for.end.i.synth_interrogate.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %synth_interrogate.exit

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %for.end.i.for.body20.i_crit_edge
  %64 = phi i8 [ %67, %for.body20.i.for.body20.i_crit_edge ], [ %63, %for.end.i.for.body20.i_crit_edge ]
  %i.18.i = phi i32 [ %spec.select1.i, %for.body20.i.for.body20.i_crit_edge ], [ 0, %for.end.i.for.body20.i_crit_edge ]
  %t.07.i = phi ptr [ %incdec.ptr.i, %for.body20.i.for.body20.i_crit_edge ], [ getelementptr inbounds ([43 x i8], ptr @synth_interrogate.buf, i32 0, i32 2), %for.end.i.for.body20.i_crit_edge ]
  %arrayidx21.i = getelementptr %struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 1, i32 %i.18.i
  %65 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %i.18.i)
  %cmp22.i = icmp ult i32 %i.18.i, 23
  %inc25.i = zext i1 %cmp22.i to i32
  %spec.select1.i = add i32 %i.18.i, %inc25.i
  %incdec.ptr.i = getelementptr i8, ptr %t.07.i, i32 1
  %66 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr.i, align 1
  %cmp18.not.i = icmp eq i8 %67, 13
  br i1 %cmp18.not.i, label %for.body20.i.synth_interrogate.exit_crit_edge, label %for.body20.i.for.body20.i_crit_edge

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20.i

for.body20.i.synth_interrogate.exit_crit_edge:    ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %synth_interrogate.exit

synth_interrogate.exit:                           ; preds = %for.body20.i.synth_interrogate.exit_crit_edge, %for.end.i.synth_interrogate.exit_crit_edge
  %t.0.lcssa.i = phi ptr [ getelementptr inbounds ([43 x i8], ptr @synth_interrogate.buf, i32 0, i32 2), %for.end.i.synth_interrogate.exit_crit_edge ], [ %incdec.ptr.i, %for.body20.i.synth_interrogate.exit_crit_edge ]
  %i.1.lcssa.i = phi i32 [ 0, %for.end.i.synth_interrogate.exit_crit_edge ], [ %spec.select1.i, %for.body20.i.synth_interrogate.exit_crit_edge ]
  %arrayidx29.i = getelementptr %struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 1, i32 %i.1.lcssa.i
  %68 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx29.i, align 1
  %incdec.ptr30.i = getelementptr i8, ptr %t.0.lcssa.i, i32 1
  %incdec.ptr31.i = getelementptr i8, ptr %t.0.lcssa.i, i32 2
  %69 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr30.i, align 1
  store i8 %70, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 2), align 2
  %incdec.ptr32.i = getelementptr i8, ptr %t.0.lcssa.i, i32 3
  %71 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr31.i, align 1
  store i8 %72, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 3), align 1
  %incdec.ptr33.i = getelementptr i8, ptr %t.0.lcssa.i, i32 4
  %73 = ptrtoint ptr %incdec.ptr32.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr32.i, align 1
  store i8 %74, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 4), align 2
  %incdec.ptr34.i = getelementptr i8, ptr %t.0.lcssa.i, i32 5
  %75 = ptrtoint ptr %incdec.ptr33.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %incdec.ptr33.i, align 1
  store i8 %76, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 5), align 1
  %incdec.ptr35.i = getelementptr i8, ptr %t.0.lcssa.i, i32 6
  %77 = ptrtoint ptr %incdec.ptr34.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %incdec.ptr34.i, align 1
  store i8 %78, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 6), align 2
  %incdec.ptr36.i = getelementptr i8, ptr %t.0.lcssa.i, i32 7
  %79 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %incdec.ptr35.i, align 1
  store i8 %80, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 7), align 1
  %incdec.ptr37.i = getelementptr i8, ptr %t.0.lcssa.i, i32 8
  %81 = ptrtoint ptr %incdec.ptr36.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr36.i, align 1
  store i8 %82, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 8), align 2
  %incdec.ptr38.i = getelementptr i8, ptr %t.0.lcssa.i, i32 9
  %83 = ptrtoint ptr %incdec.ptr37.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr37.i, align 1
  store i8 %84, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 9), align 1
  %incdec.ptr39.i = getelementptr i8, ptr %t.0.lcssa.i, i32 10
  %85 = ptrtoint ptr %incdec.ptr38.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %incdec.ptr38.i, align 1
  store i8 %86, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 10), align 2
  %incdec.ptr40.i = getelementptr i8, ptr %t.0.lcssa.i, i32 11
  %87 = ptrtoint ptr %incdec.ptr39.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %incdec.ptr39.i, align 1
  store i8 %88, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 11), align 1
  %incdec.ptr41.i = getelementptr i8, ptr %t.0.lcssa.i, i32 12
  %89 = ptrtoint ptr %incdec.ptr40.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %incdec.ptr40.i, align 1
  store i8 %90, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 12), align 2
  %incdec.ptr42.i = getelementptr i8, ptr %t.0.lcssa.i, i32 13
  %91 = ptrtoint ptr %incdec.ptr41.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %incdec.ptr41.i, align 1
  store i8 %92, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 13), align 1
  %incdec.ptr43.i = getelementptr i8, ptr %t.0.lcssa.i, i32 14
  %93 = ptrtoint ptr %incdec.ptr42.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %incdec.ptr42.i, align 1
  store i8 %94, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 14), align 2
  %95 = ptrtoint ptr %incdec.ptr43.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %incdec.ptr43.i, align 1
  store i8 %96, ptr getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 15), align 1
  %long_name = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 3
  %97 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %long_name, align 4
  %99 = load i32, ptr @synth_lpc, align 4
  %sub84 = add i32 %99, 1
  %100 = load i16, ptr @synth_interrogate.status, align 2
  %conv85 = zext i16 %100 to i32
  %version = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 2
  %101 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %version, align 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %98, i32 noundef %99, i32 noundef %sub84, ptr noundef getelementptr inbounds (%struct.synth_settings, ptr @synth_interrogate.status, i32 0, i32 1), i32 noundef %conv85, ptr noundef %102) #9
  %alive = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 31
  %103 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %alive, align 4
  br label %cleanup

cleanup:                                          ; preds = %synth_interrogate.exit, %if.then61, %do.end57.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -16, %do.end17 ], [ 0, %synth_interrogate.exit ], [ -19, %if.then61 ], [ -19, %do.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtlk_release(ptr nocapture noundef readnone %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @spk_stop_serial_interrupt() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %0, -1
  %call = tail call i32 @synth_release_region(i32 noundef %sub, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @synth_immediate(ptr nocapture noundef readnone %synth, ptr noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not7 = icmp eq i8 %1, 0
  br i1 %tobool.not7, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %8, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %buf.addr.08 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i = and i32 %3, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i.not = icmp eq i8 %6, 0
  br i1 %cmp.i.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp = icmp eq i8 %2, 10
  %spec.store.select = select i1 %cmp, i8 0, i8 %2
  tail call fastcc void @spk_out(i8 noundef zeroext %spec.store.select)
  %incdec.ptr = getelementptr i8, ptr %buf.addr.08, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %buf.addr.08, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_catch_up(ptr noundef %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spk_get_var(i32 noundef 14) #6
  %call1 = tail call ptr @spk_get_var(i32 noundef 12) #6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #6
  %value = getelementptr inbounds %struct.var_t, ptr %call, i32 0, i32 1, i32 0, i32 7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call7255 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call7255, label %entry.while.end_crit_edge, label %do.body9.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body9.lr.ph:                                   ; preds = %entry
  %add = add i32 %2, %1
  %flush = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 25
  %value95 = getelementptr inbounds %struct.var_t, ptr %call1, i32 0, i32 1, i32 0, i32 7
  br label %do.body9

do.body9:                                         ; preds = %while.cond.backedge.do.body9_crit_edge, %do.body9.lr.ph
  %jiff_max.0256 = phi i32 [ %add, %do.body9.lr.ph ], [ %jiff_max.0.be, %while.cond.backedge.do.body9_crit_edge ]
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call16) #6
  %4 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush, align 4
  tail call void %5(ptr noundef %synth) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then207, %__here152.while.cond.backedge_crit_edge, %if.else.i, %if.then
  %jiff_max.0.be = phi i32 [ %jiff_max.0256, %if.then ], [ %jiff_max.0256, %if.else.i ], [ %add227, %if.then207 ], [ %jiff_max.0256, %__here152.while.cond.backedge_crit_edge ]
  %call7 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call7, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.do.body9_crit_edge

while.cond.backedge.do.body9_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %do.body9
  tail call void @synth_buffer_skip_nonlatin1() #6
  %call21 = tail call i32 @synth_buffer_empty() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %__here, label %if.then23

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call16) #6
  br label %while.end

__here:                                           ; preds = %if.end
  %6 = tail call i32 @llvm.read_register.i32(metadata !162) #6
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 212
  %10 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 ptrtoint (ptr blockaddress(@do_catch_up, %__here) to i32), ptr %task_state_change, align 4
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %11, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !186
  %13 = ptrtoint ptr %value95 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value95, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call16) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i = and i32 %15, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i254.not = icmp eq i8 %18, 0
  br i1 %cmp.i254.not, label %__here152, label %if.else.i

if.else.i:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #6
  %call99 = tail call i32 @schedule_timeout(i32 noundef %call2.i) #6
  br label %while.cond.backedge

__here152:                                        ; preds = %__here
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %task_state_change156 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change156 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@do_catch_up, %__here152) to i32), ptr %task_state_change156, align 4
  %22 = load ptr, ptr %task, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %22, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !187
  %call190 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #6
  %call195 = tail call zeroext i16 @synth_buffer_getc() #6
  %conv196 = trunc i16 %call195 to i8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call190) #6
  %conv196.mask = and i16 %call195, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv196.mask)
  %cmp198 = icmp eq i16 %conv196.mask, 10
  %spec.store.select = select i1 %cmp198, i8 0, i8 %conv196
  tail call fastcc void @spk_out(i8 noundef zeroext %spec.store.select)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %24, %jiff_max.0256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp202 = icmp sgt i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %spec.store.select)
  %cmp205 = icmp eq i8 %spec.store.select, 32
  %or.cond = and i1 %cmp205, %cmp202
  br i1 %or.cond, label %if.then207, label %__here152.while.cond.backedge_crit_edge

__here152.while.cond.backedge_crit_edge:          ; preds = %__here152
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then207:                                       ; preds = %__here152
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @spk_out(i8 noundef zeroext 0)
  %call216 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #6
  %25 = ptrtoint ptr %value95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value95, align 4
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call216) #6
  %call2.i250 = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #6
  %call226 = tail call i32 @schedule_timeout(i32 noundef %call2.i250) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add227 = add i32 %29, %28
  br label %while.cond.backedge

while.end:                                        ; preds = %if.then23, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @spk_out(i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synth_flush(ptr nocapture noundef readnone %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %0, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 24) #6, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i5 = and i32 %2, 1048575
  %add.i.i6 = or i32 %and.i.i5, -18874368
  %3 = inttoptr i32 %add.i.i6 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.not7 = icmp eq i8 %5, 0
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i = and i32 %6, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %9 = and i8 %8, 16
  %cmp.i.not = icmp eq i8 %9, 0
  br i1 %cmp.i.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_synth_is_alive_nop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spk_synth_get_index(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_request_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_release_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_stop_serial_interrupt() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spk_out(i8 noundef zeroext %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i13 = and i32 %0, 1048575
  %add.i.i14 = or i32 %and.i.i13, -18874368
  %1 = inttoptr i32 %add.i.i14 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %3 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.not15 = icmp eq i8 %3, 0
  br i1 %cmp.i.not15, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.016 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 100000, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.016, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i = and i32 %5, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add.i.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %8 = and i8 %7, 16
  %cmp.i.not = icmp eq i8 %8, 0
  br i1 %cmp.i.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %9, 1048575
  %add.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %ch) #6, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i1017 = and i32 %11, 1048575
  %add.i.i1118 = or i32 %and.i.i1017, -18874368
  %12 = inttoptr i32 %add.i.i1118 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i12.not19 = icmp eq i8 %14, 0
  br i1 %cmp.i12.not19, label %while.end.while.end8_crit_edge, label %while.end.while.body3_crit_edge

while.end.while.body3_crit_edge:                  ; preds = %while.end
  br label %while.body3

while.end.while.end8_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end8

while.body3:                                      ; preds = %if.end7.while.body3_crit_edge, %while.end.while.body3_crit_edge
  %timeout.120 = phi i32 [ %dec4, %if.end7.while.body3_crit_edge ], [ 100000, %while.end.while.body3_crit_edge ]
  %dec4 = add nsw i32 %timeout.120, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec4)
  %tobool5.not = icmp eq i32 %dec4, 0
  br i1 %tobool5.not, label %while.body3.while.end8_crit_edge, label %if.end7

while.body3.while.end8_crit_edge:                 ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end8

if.end7:                                          ; preds = %while.body3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %16 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i10 = and i32 %16, 1048575
  %add.i.i11 = or i32 %and.i.i10, -18874368
  %17 = inttoptr i32 %add.i.i11 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %19 = and i8 %18, 16
  %cmp.i12.not = icmp eq i8 %19, 0
  br i1 %cmp.i12.not, label %if.end7.while.end8_crit_edge, label %if.end7.while.body3_crit_edge

if.end7.while.body3_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body3

if.end7.while.end8_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end8

while.end8:                                       ; preds = %if.end7.while.end8_crit_edge, %while.body3.while.end8_crit_edge, %while.end.while.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_get_var(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_buffer_skip_nonlatin1() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_buffer_empty() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @synth_buffer_getc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__param_port, !1, !"__param_port", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 377, i32 1}
!2 = !{ptr @__UNIQUE_ID_porttype234, !1, !"__UNIQUE_ID_porttype234", i1 false, i1 false}
!3 = !{ptr @__param_start, !4, !"__param_start", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 378, i32 1}
!5 = !{ptr @__UNIQUE_ID_starttype235, !4, !"__UNIQUE_ID_starttype235", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_port236, !7, !"__UNIQUE_ID_port236", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 380, i32 1}
!8 = !{ptr @__UNIQUE_ID_start237, !9, !"__UNIQUE_ID_start237", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 381, i32 1}
!10 = !{ptr @__initcall__kmod_speakup_dtlk__238_383_synth_dtlk_init6, !11, !"__initcall__kmod_speakup_dtlk__238_383_synth_dtlk_init6", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 383, i32 1}
!12 = !{ptr @__exitcall_synth_dtlk_exit, !11, !"__exitcall_synth_dtlk_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author239, !14, !"__UNIQUE_ID_author239", i1 false, i1 false}
!14 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 385, i32 1}
!15 = !{ptr @__UNIQUE_ID_author240, !16, !"__UNIQUE_ID_author240", i1 false, i1 false}
!16 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 386, i32 1}
!17 = !{ptr @__UNIQUE_ID_description241, !18, !"__UNIQUE_ID_description241", i1 false, i1 false}
!18 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 387, i32 1}
!19 = !{ptr @__UNIQUE_ID_file242, !20, !"__UNIQUE_ID_file242", i1 false, i1 false}
!20 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 388, i32 1}
!21 = !{ptr @__UNIQUE_ID_license243, !20, !"__UNIQUE_ID_license243", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_version244, !23, !"__UNIQUE_ID_version244", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 389, i32 1}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__modver_attr, !23, !"__modver_attr", i1 false, i1 false}
!28 = !{ptr @port_forced, !29, !"port_forced", i1 false, i1 false}
!29 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 33, i32 12}
!30 = !{ptr @__param_str_port, !1, !"__param_str_port", i1 false, i1 false}
!31 = !{ptr @__param_str_start, !4, !"__param_str_start", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 110, i32 10}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 112, i32 15}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 113, i32 10}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 134, i32 14}
!40 = !{ptr @synth_dtlk, !41, !"synth_dtlk", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 109, i32 25}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 41, i32 24}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 42, i32 23}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 43, i32 18}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 44, i32 19}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 45, i32 17}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 46, i32 18}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 47, i32 19}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 48, i32 19}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 49, i32 23}
!60 = !{ptr @vars, !61, !"vars", i1 false, i1 false}
!61 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 40, i32 21}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 322, i32 2}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @synth_probe._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @synth_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 325, i32 3}
!70 = !{ptr @synth_probe._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @synth_probe._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 328, i32 4}
!74 = !{ptr @synth_probe._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @synth_probe._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 331, i32 4}
!78 = !{ptr @synth_probe._entry.26, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @synth_probe._entry_ptr.28, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 353, i32 3}
!82 = !{ptr @synth_probe._entry.29, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @synth_probe._entry_ptr.31, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 361, i32 2}
!86 = !{ptr @synth_probe._entry.32, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @synth_probe._entry_ptr.34, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @synth_lpc, !89, !"synth_lpc", i1 false, i1 false}
!89 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 32, i32 12}
!90 = distinct !{null, !91, !"synth_portlist", i1 false, i1 false}
!91 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 34, i32 21}
!92 = !{ptr @synth_interrogate.buf, !93, !"buf", i1 false, i1 false}
!93 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 276, i32 14}
!94 = !{ptr @synth_interrogate.status, !95, !"status", i1 false, i1 false}
!95 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 278, i32 31}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 280, i32 25}
!98 = distinct !{null, !99, !"synth_status", i1 false, i1 false}
!99 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 38, i32 15}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 210, i32 3}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 217, i32 3}
!104 = !{ptr @synth_attrs, !105, !"synth_attrs", i1 false, i1 false}
!105 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 91, i32 26}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 58, i32 2}
!108 = !{ptr @caps_start_attribute, !109, !"caps_start_attribute", i1 false, i1 false}
!109 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 57, i32 30}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 60, i32 2}
!112 = !{ptr @caps_stop_attribute, !113, !"caps_stop_attribute", i1 false, i1 false}
!113 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 59, i32 30}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 62, i32 2}
!116 = !{ptr @freq_attribute, !117, !"freq_attribute", i1 false, i1 false}
!117 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 61, i32 30}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 64, i32 2}
!120 = !{ptr @pitch_attribute, !121, !"pitch_attribute", i1 false, i1 false}
!121 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 63, i32 30}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 66, i32 2}
!124 = !{ptr @punct_attribute, !125, !"punct_attribute", i1 false, i1 false}
!125 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 65, i32 30}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 68, i32 2}
!128 = !{ptr @rate_attribute, !129, !"rate_attribute", i1 false, i1 false}
!129 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 67, i32 30}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 70, i32 2}
!132 = !{ptr @tone_attribute, !133, !"tone_attribute", i1 false, i1 false}
!133 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 69, i32 30}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 72, i32 2}
!136 = !{ptr @voice_attribute, !137, !"voice_attribute", i1 false, i1 false}
!137 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 71, i32 30}
!138 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 74, i32 2}
!140 = !{ptr @vol_attribute, !141, !"vol_attribute", i1 false, i1 false}
!141 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 73, i32 30}
!142 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 77, i32 2}
!144 = !{ptr @delay_time_attribute, !145, !"delay_time_attribute", i1 false, i1 false}
!145 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 76, i32 30}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 79, i32 2}
!148 = !{ptr @direct_attribute, !149, !"direct_attribute", i1 false, i1 false}
!149 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 78, i32 30}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 81, i32 2}
!152 = !{ptr @full_time_attribute, !153, !"full_time_attribute", i1 false, i1 false}
!153 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 80, i32 30}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 83, i32 2}
!156 = !{ptr @jiffy_delta_attribute, !157, !"jiffy_delta_attribute", i1 false, i1 false}
!157 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 82, i32 30}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 85, i32 2}
!160 = !{ptr @trigger_time_attribute, !161, !"trigger_time_attribute", i1 false, i1 false}
!161 = !{!"../drivers/accessibility/speakup/speakup_dtlk.c", i32 84, i32 30}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 6464618}
!173 = !{i64 2154410185}
!174 = !{i64 2154410868}
!175 = !{i64 2153999713}
!176 = !{i64 2154412710}
!177 = !{i64 2154412552}
!178 = !{i64 6465236}
!179 = !{i64 2153998912}
!180 = !{i64 2154402596}
!181 = !{i64 2154402438}
!182 = !{i64 2154000897}
!183 = !{i64 6464841}
!184 = !{i64 2154402878}
!185 = !{i64 2154402720}
!186 = !{i64 2154396146}
!187 = !{i64 2154400895}
!188 = !{i64 2154402321}
!189 = !{i64 2154402163}
