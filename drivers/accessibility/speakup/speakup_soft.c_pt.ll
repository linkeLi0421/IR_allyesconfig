; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/speakup_soft.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/speakup_soft.c"
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
%struct.string_var_t = type { ptr }
%struct.var_t = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.num_var_t }
%struct.num_var_t = type { ptr, i32, i32, i32, i16, i16, ptr, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_start = internal constant [19 x i8] c"speakup_soft.start\00", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@synth_soft = internal global { %struct.spk_synth, [40 x i8] } { %struct.spk_synth { %struct.list_head zeroinitializer, ptr @.str.3, ptr @.str.2, ptr @.str.4, ptr @.str.5, i8 13, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i16 0, i16 0, i32 20030716, ptr @vars, ptr null, ptr null, ptr null, ptr @softsynth_probe, ptr @softsynth_release, ptr null, ptr null, ptr null, ptr @softsynth_is_alive, ptr null, ptr null, ptr @get_index, %struct.synth_indexing { ptr @.str.6, i8 1, i8 5, i8 1 }, i32 0, %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @synth_attrs, ptr null }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_start = internal constant %struct.kernel_param { ptr @__param_str_start, ptr null, ptr @param_ops_short, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_soft, i64 58) } }, section "__param", align 4
@__UNIQUE_ID_starttype227 = internal constant [34 x i8] c"speakup_soft.parmtype=start:short\00", section ".modinfo", align 1
@__UNIQUE_ID_start228 = internal constant [65 x i8] c"speakup_soft.parm=start:Start the synthesizer once it is loaded.\00", section ".modinfo", align 1
@__initcall__kmod_speakup_soft__229_432_synth_soft_init6 = internal global ptr @synth_soft_init, section ".initcall6.init", align 4
@__exitcall_synth_soft_exit = internal global ptr @synth_soft_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [54 x i8] c"speakup_soft.author=Kirk Reiser <kirk@braille.uwo.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [72 x i8] c"speakup_soft.description=Speakup userspace software synthesizer support\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [61 x i8] c"speakup_soft.file=drivers/accessibility/speakup/speakup_soft\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [25 x i8] c"speakup_soft.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version234 = internal constant [25 x i8] c"speakup_soft.version=2.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speakup_soft\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.6\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"software synth\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01@\011y\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%di\00", [27 x i8] zeroinitializer }, align 32
@synth_attrs = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @freq_attribute, ptr @pitch_attribute, ptr @inflection_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01+3p\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01-3p\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01P\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%ds\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dp\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dr\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dv\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dx\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%db\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%do\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%df\00", [27 x i8] zeroinitializer }, align 32
@vars = internal global { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }>, [96 x i8] } { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }> <{ { i32, { %struct.string_var_t, [24 x i8] } } { i32 38, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.7 }, [24 x i8] undef } }, { i32, { %struct.string_var_t, [24 x i8] } } { i32 39, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.8 }, [24 x i8] undef } }, %struct.var_t { i32 37, %union.anon.74 { %struct.num_var_t { ptr @.str.9, i32 0, i32 0, i32 0, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 28, %union.anon.74 { %struct.num_var_t { ptr @.str.10, i32 2, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 29, %union.anon.74 { %struct.num_var_t { ptr @.str.11, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 41, %union.anon.74 { %struct.num_var_t { ptr @.str.12, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 30, %union.anon.74 { %struct.num_var_t { ptr @.str.13, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 31, %union.anon.74 { %struct.num_var_t { ptr @.str.14, i32 1, i32 0, i32 2, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 32, %union.anon.74 { %struct.num_var_t { ptr @.str.15, i32 0, i32 0, i32 2, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 33, %union.anon.74 { %struct.num_var_t { ptr @.str.16, i32 0, i32 0, i32 7, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 34, %union.anon.74 { %struct.num_var_t { ptr @.str.17, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 36, %union.anon.74 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.74 zeroinitializer } }>, [96 x i8] zeroinitializer }, align 32
@misc_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@synth_device = internal global { %struct.miscdevice, [56 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"softsynth\00", [22 x i8] zeroinitializer }, align 32
@softsynth_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @softsynth_read, ptr @softsynth_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @softsynth_poll, ptr null, ptr null, ptr null, i32 0, ptr @softsynth_open, ptr null, ptr @softsynth_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@softsynth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Couldn't initialize miscdevice /dev/softsynth.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"softsynth_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/accessibility/speakup/speakup_soft.c\00", [51 x i8] zeroinitializer }, align 32
@softsynth_probe._entry_ptr = internal global ptr @softsynth_probe._entry, section ".printk_index", align 4
@synthu_device = internal global { %struct.miscdevice, [56 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"softsynthu\00", [21 x i8] zeroinitializer }, align 32
@softsynthu_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @softsynthu_read, ptr @softsynth_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @softsynth_poll, ptr null, ptr null, ptr null, i32 0, ptr @softsynth_open, ptr null, ptr @softsynth_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@softsynth_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.22, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Couldn't initialize miscdevice /dev/softsynthu.\0A\00", [45 x i8] zeroinitializer }, align 32
@softsynth_probe._entry_ptr.26 = internal global ptr @softsynth_probe._entry.24, section ".printk_index", align 4
@softsynth_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.22, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016initialized device: /dev/softsynth, node (MAJOR 10, MINOR %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@softsynth_probe._entry_ptr.29 = internal global ptr @softsynth_probe._entry.27, section ".printk_index", align 4
@softsynth_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.22, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016initialized device: /dev/softsynthu, node (MAJOR 10, MINOR %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@softsynth_probe._entry_ptr.32 = internal global ptr @softsynth_probe._entry.30, section ".printk_index", align 4
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@speakup_event = external dso_local global %struct.wait_queue_head, align 4
@init_pos = internal global { i32, [28 x i8] } zeroinitializer, align 32
@get_initstring.buf = internal global { [40 x i8], [56 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@last_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@softsynth_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.22, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016unregistered /dev/softsynth\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"softsynth_release\00", [46 x i8] zeroinitializer }, align 32
@softsynth_release._entry_ptr = internal global ptr @softsynth_release._entry, section ".printk_index", align 4
@softsynth_release._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.22, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016unregistered /dev/softsynthu\0A\00", [32 x i8] zeroinitializer }, align 32
@softsynth_release._entry_ptr.41 = internal global ptr @softsynth_release._entry.39, section ".printk_index", align 4
@caps_start_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@caps_stop_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@freq_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@pitch_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@inflection_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@punct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@rate_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@tone_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@voice_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@vol_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@delay_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@full_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@jiffy_delta_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@trigger_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inflection\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"punct\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tone\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"voice\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 36, i64 37, i64 38, i64 39, i64 43]
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"synth_soft\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 116, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 437, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 117, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 119, i32 15 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 120, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 140, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"synth_attrs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 96, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 36, i32 24 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 37, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 38, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 39, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 40, i32 19 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 41, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 42, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 43, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 44, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 45, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 46, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 35, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"misc_registered\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"synth_device\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 31, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 388, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"softsynth_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 364, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 391, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"synthu_device\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 31, i32 40 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 397, i32 23 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"softsynthu_fops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 373, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 400, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 405, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 407, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"init_pos\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 32, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 153, i32 14 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 174, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 174, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [11 x i8] c"last_index\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 323, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 417, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 418, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [21 x i8] c"caps_start_attribute\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 53, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"caps_stop_attribute\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 55, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"freq_attribute\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 57, i32 30 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"pitch_attribute\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 59, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"inflection_attribute\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 61, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant [16 x i8] c"punct_attribute\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 63, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"rate_attribute\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 65, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"tone_attribute\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 67, i32 30 }
@___asan_gen_.223 = private unnamed_addr constant [16 x i8] c"voice_attribute\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 69, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant [14 x i8] c"vol_attribute\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 71, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant [21 x i8] c"delay_time_attribute\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 81, i32 30 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"direct_attribute\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 83, i32 30 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"full_time_attribute\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 85, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant [22 x i8] c"jiffy_delta_attribute\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 87, i32 30 }
@___asan_gen_.241 = private unnamed_addr constant [23 x i8] c"trigger_time_attribute\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 89, i32 30 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 54, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 56, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 58, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 60, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 62, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 64, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 66, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 68, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 70, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 72, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 82, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 84, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 86, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 88, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [48 x i8] c"../drivers/accessibility/speakup/speakup_soft.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 90, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__UNIQUE_ID_start228, ptr @__UNIQUE_ID_starttype227, ptr @__UNIQUE_ID_version234, ptr @__exitcall_synth_soft_exit, ptr @__initcall__kmod_speakup_soft__229_432_synth_soft_init6, ptr @__modver_attr, ptr @__param_start, ptr @softsynth_probe._entry, ptr @softsynth_probe._entry.24, ptr @softsynth_probe._entry.27, ptr @softsynth_probe._entry.30, ptr @softsynth_probe._entry_ptr, ptr @softsynth_probe._entry_ptr.26, ptr @softsynth_probe._entry_ptr.29, ptr @softsynth_probe._entry_ptr.32, ptr @softsynth_release._entry, ptr @softsynth_release._entry.39, ptr @softsynth_release._entry_ptr, ptr @softsynth_release._entry_ptr.41, ptr @synth_soft_exit, ptr @synth_soft, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @synth_attrs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @vars, ptr @misc_registered, ptr @synth_device, ptr @.str.19, ptr @softsynth_fops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @synthu_device, ptr @.str.23, ptr @softsynthu_fops, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @init_pos, ptr @get_initstring.buf, ptr @.str.33, ptr @.str.36, ptr @last_index, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @freq_attribute, ptr @pitch_attribute, ptr @inflection_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_soft to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attrs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vars to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynth_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synthu_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynthu_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynth_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynth_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynth_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pos to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_initstring.buf to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynth_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softsynth_release._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_stop_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitch_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inflection_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tone_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffy_delta_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_soft_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @synth_add(ptr noundef nonnull @synth_soft) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synth_soft_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @synth_remove(ptr noundef nonnull @synth_soft) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softsynth_probe(ptr nocapture noundef readnone %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @misc_registered, align 4
  br i1 %.b, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr getelementptr inbounds (%struct.miscdevice, ptr @synth_device, i32 0, i32 3, i32 0), i32 0, i32 28)
  store i32 255, ptr @synth_device, align 4
  store ptr @.str.19, ptr getelementptr inbounds (%struct.miscdevice, ptr @synth_device, i32 0, i32 1), align 4
  store ptr @softsynth_fops, ptr getelementptr inbounds (%struct.miscdevice, ptr @synth_device, i32 0, i32 2), align 4
  %call = tail call i32 @misc_register(ptr noundef nonnull @synth_device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %return

if.end3:                                          ; preds = %if.end
  %1 = call ptr @memset(ptr getelementptr inbounds (%struct.miscdevice, ptr @synthu_device, i32 0, i32 3, i32 0), i32 0, i32 28)
  store i32 255, ptr @synthu_device, align 4
  store ptr @.str.23, ptr getelementptr inbounds (%struct.miscdevice, ptr @synthu_device, i32 0, i32 1), align 4
  store ptr @softsynthu_fops, ptr getelementptr inbounds (%struct.miscdevice, ptr @synthu_device, i32 0, i32 2), align 4
  %call4 = tail call i32 @misc_register(ptr noundef nonnull @synthu_device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %return

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @misc_registered, align 4
  %2 = load i32, ptr @synth_device, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %2) #11
  %3 = load i32, ptr @synthu_device, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %3) #11
  br label %return

return:                                           ; preds = %if.end11, %do.end8, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end8 ], [ 0, %if.end11 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @softsynth_release(ptr nocapture noundef readnone %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @synth_device) #8
  tail call void @misc_deregister(ptr noundef nonnull @synthu_device) #8
  store i1 false, ptr @misc_registered, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @softsynth_is_alive(ptr nocapture noundef readnone %synth) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.spk_synth, ptr @synth_soft, i32 0, i32 31), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp ne i32 %0, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @get_index(ptr nocapture noundef readnone %synth) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @last_index, align 4
  store i32 0, ptr @last_index, align 4
  %conv = trunc i32 %0 to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softsynth_read(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @softsynthx_read(ptr noundef %fp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softsynth_write(ptr nocapture noundef readnone %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #2 align 64 {
entry:
  %supplied_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supplied_index) #8
  %0 = ptrtoint ptr %supplied_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supplied_index, align 4
  %call = call i32 @kstrtoul_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %supplied_index) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %supplied_index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %supplied_index, align 4
  store i32 %2, ptr @last_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supplied_index) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softsynth_poll(ptr noundef %fp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef %fp, ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #8
  %call5 = tail call ptr @synth_current() #8
  %cmp6 = icmp eq ptr %call5, @synth_soft
  br i1 %cmp6, label %land.lhs.true, label %poll_wait.exit.if.end_crit_edge

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %poll_wait.exit
  %call8 = tail call i32 @synth_buffer_empty() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %poll_wait.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 65, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ], [ 0, %poll_wait.exit.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softsynth_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #8
  %0 = load i32, ptr getelementptr inbounds (%struct.spk_synth, ptr @synth_soft, i32 0, i32 31), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr getelementptr inbounds (%struct.spk_synth, ptr @synth_soft, i32 0, i32 31), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softsynth_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #8
  store i32 0, ptr getelementptr inbounds (%struct.spk_synth, ptr @synth_soft, i32 0, i32 31), align 4
  store i32 0, ptr @init_pos, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #8
  tail call void @speakup_start_ttys() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @softsynthx_read(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %pos, i32 noundef %unicode) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %c = alloca i8, align 1
  %s = alloca [2 x i8], align 1
  %s113 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unicode)
  %tobool.not = icmp eq i32 %unicode, 0
  %cond = select i1 %tobool.not, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !174) #8
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
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %count)
  %cmp = icmp ugt i32 %cond, %count
  br i1 %cmp, label %entry.cleanup163_crit_edge, label %do.body5

entry.cleanup163_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup163

do.body5:                                         ; preds = %entry
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #8
  store i32 1, ptr getelementptr inbounds (%struct.spk_synth, ptr @synth_soft, i32 0, i32 31), align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %do.body5
  %flags.0 = phi i32 [ %call8, %do.body5 ], [ %call41, %if.end32 ]
  call void @prepare_to_wait(ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait, i32 noundef 1) #8
  %call11 = call ptr @synth_current() #8
  %cmp12 = icmp eq ptr %call11, @synth_soft
  br i1 %cmp12, label %if.then14, label %while.cond.if.end23_crit_edge

while.cond.if.end23_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then14:                                        ; preds = %while.cond
  br i1 %tobool.not, label %if.then16, label %if.then14.if.end17_crit_edge

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void @synth_buffer_skip_nonlatin1() #8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14.if.end17_crit_edge
  %call18 = call i32 @synth_buffer_empty() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.while.end_crit_edge, label %lor.lhs.false

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end23:                                         ; preds = %lor.lhs.false.if.end23_crit_edge, %while.cond.if.end23_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %flags.0) #8
  %14 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags, align 4
  %and = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait) #8
  br label %cleanup163

if.end26:                                         ; preds = %if.end23
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end26.if.then31_crit_edge, !prof !184

if.end26.if.then31_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

signal_pending.exit:                              ; preds = %if.end26
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  %tobool30.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool30.not, label %if.end32, label %signal_pending.exit.if.then31_crit_edge

signal_pending.exit.if.then31_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %signal_pending.exit.if.then31_crit_edge, %if.end26.if.then31_crit_edge
  call void @finish_wait(ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait) #8
  br label %cleanup163

if.end32:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  %call41 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #8
  br label %while.cond

while.end:                                        ; preds = %lor.lhs.false.while.end_crit_edge, %if.end17.while.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @speakup_event, ptr noundef nonnull %wait) #8
  %25 = call ptr @memset(ptr @get_initstring.buf, i32 0, i32 40)
  %26 = load ptr, ptr getelementptr inbounds (%struct.spk_synth, ptr @synth_soft, i32 0, i32 17), align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i235, %while.end
  %cp.0.i = phi ptr [ @get_initstring.buf, %while.end ], [ %cp.1.i, %if.end.i235 ]
  %var.0.i = phi ptr [ %26, %while.end ], [ %incdec.ptr.i, %if.end.i235 ]
  %len.0.i = phi i32 [ 40, %while.end ], [ %len.1.i, %if.end.i235 ]
  %27 = ptrtoint ptr %var.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %var.0.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %if.then.i [
    i32 43, label %get_initstring.exit
    i32 38, label %while.cond.i.if.end.i235_crit_edge
    i32 39, label %while.cond.i.if.end.i235_crit_edge284
    i32 37, label %while.cond.i.if.end.i235_crit_edge285
    i32 36, label %while.cond.i.if.end.i235_crit_edge286
  ]

while.cond.i.if.end.i235_crit_edge286:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i235

while.cond.i.if.end.i235_crit_edge285:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i235

while.cond.i.if.end.i235_crit_edge284:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i235

while.cond.i.if.end.i235_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i235

if.then.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %u.i = getelementptr inbounds %struct.var_t, ptr %var.0.i, i32 0, i32 1
  %30 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %u.i, align 4
  %value.i = getelementptr inbounds %struct.var_t, ptr %var.0.i, i32 0, i32 1, i32 0, i32 7
  %32 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %cp.0.i, i32 noundef %len.0.i, ptr noundef %31, i32 noundef %33) #8
  %add.ptr.i = getelementptr i8, ptr %cp.0.i, i32 %call.i
  %sub.i = sub i32 %len.0.i, %call.i
  br label %if.end.i235

if.end.i235:                                      ; preds = %if.then.i, %while.cond.i.if.end.i235_crit_edge, %while.cond.i.if.end.i235_crit_edge284, %while.cond.i.if.end.i235_crit_edge285, %while.cond.i.if.end.i235_crit_edge286
  %cp.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %cp.0.i, %while.cond.i.if.end.i235_crit_edge ], [ %cp.0.i, %while.cond.i.if.end.i235_crit_edge284 ], [ %cp.0.i, %while.cond.i.if.end.i235_crit_edge285 ], [ %cp.0.i, %while.cond.i.if.end.i235_crit_edge286 ]
  %len.1.i = phi i32 [ %sub.i, %if.then.i ], [ %len.0.i, %while.cond.i.if.end.i235_crit_edge ], [ %len.0.i, %while.cond.i.if.end.i235_crit_edge284 ], [ %len.0.i, %while.cond.i.if.end.i235_crit_edge285 ], [ %len.0.i, %while.cond.i.if.end.i235_crit_edge286 ]
  %incdec.ptr.i = getelementptr %struct.var_t, ptr %var.0.i, i32 1
  br label %while.cond.i

get_initstring.exit:                              ; preds = %while.cond.i
  %call12.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %cp.0.i, i32 noundef %len.0.i, ptr noundef nonnull @.str.33) #8
  %sub = sub i32 %count, %cond
  %tobool.not.not = xor i1 %tobool.not, true
  %34 = getelementptr inbounds [3 x i8], ptr %s113, i32 0, i32 1
  %35 = getelementptr inbounds [3 x i8], ptr %s113, i32 0, i32 2
  %36 = getelementptr inbounds [2 x i8], ptr %s, i32 0, i32 1
  br label %while.body50

while.body50:                                     ; preds = %do.body144.while.body50_crit_edge, %get_initstring.exit
  %chars_sent.0270 = phi i32 [ 0, %get_initstring.exit ], [ %chars_sent.4, %do.body144.while.body50_crit_edge ]
  %cp.0268 = phi ptr [ %buf, %get_initstring.exit ], [ %cp.4, %do.body144.while.body50_crit_edge ]
  %flags.1266 = phi i32 [ %flags.0, %get_initstring.exit ], [ %call151, %do.body144.while.body50_crit_edge ]
  %call51 = call ptr @synth_current() #8
  %cmp52.not = icmp eq ptr %call51, @synth_soft
  br i1 %cmp52.not, label %if.end55, label %while.body50.while.end156_crit_edge

while.body50.while.end156_crit_edge:              ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end156

if.end55:                                         ; preds = %while.body50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  %37 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool56.not = icmp eq i32 %37, 0
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  br label %if.end72

if.else:                                          ; preds = %if.end55
  %38 = load i32, ptr @init_pos, align 4
  %arrayidx = getelementptr i8, ptr @get_initstring.buf, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool58.not = icmp eq i8 %40, 0
  br i1 %tobool58.not, label %if.else62, label %if.then59

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %38, 1
  store i32 %inc, ptr @init_pos, align 4
  %conv61 = zext i8 %40 to i16
  br label %if.end72

if.else62:                                        ; preds = %if.else
  br i1 %tobool.not, label %if.then64, label %if.else62.if.end65_crit_edge

if.else62.if.end65_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then64:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  call void @synth_buffer_skip_nonlatin1() #8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.else62.if.end65_crit_edge
  %call66 = call i32 @synth_buffer_empty() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.while.end156_crit_edge

if.end65.while.end156_crit_edge:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end156

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = call zeroext i16 @synth_buffer_getc() #8
  br label %if.end72

if.end72:                                         ; preds = %if.end69, %if.then59, %if.then57
  %ch.0 = phi i16 [ 24, %if.then57 ], [ %conv61, %if.then59 ], [ %call70, %if.end69 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %flags.1266) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %ch.0)
  %cmp75 = icmp ult i16 %ch.0, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %ch.0)
  %cmp81 = icmp ult i16 %ch.0, 128
  %or.cond273 = select i1 %tobool.not, i1 %cmp75, i1 %cmp81
  br i1 %or.cond273, label %if.then83, label %if.else90

if.then83:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #8
  %conv84 = trunc i16 %ch.0 to i8
  %41 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv84, ptr %c, align 1
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then83.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.then83.copy_to_user.exit.thread_crit_edge:     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.then83
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %cp.0268, i32 1, i32 -1226833920) #12, !srcloc !185
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.then83.copy_to_user.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #8
  br label %cleanup163

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %c, i32 noundef 1) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %cp.0268, ptr noundef nonnull %c, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool86.not = icmp eq i32 %call.i12.i.i, 0
  %inc89 = add i32 %chars_sent.0270, 1
  %incdec.ptr = getelementptr i8, ptr %cp.0268, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #8
  br i1 %tobool86.not, label %copy_to_user.exit.do.body144_crit_edge, label %copy_to_user.exit.cleanup163_crit_edge

copy_to_user.exit.cleanup163_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup163

copy_to_user.exit.do.body144_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body144

if.else90:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %ch.0)
  %cmp94 = icmp ult i16 %ch.0, 2048
  %or.cond208 = select i1 %tobool.not.not, i1 %cmp94, i1 false
  br i1 %or.cond208, label %if.then96, label %if.else110

if.then96:                                        ; preds = %if.else90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %s) #8
  %43 = lshr i16 %ch.0, 6
  %44 = trunc i16 %43 to i8
  %conv98 = or i8 %44, -64
  %45 = ptrtoint ptr %s to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv98, ptr %s, align 1
  %46 = trunc i16 %ch.0 to i8
  %47 = and i8 %46, 63
  %conv102 = or i8 %47, -128
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv102, ptr %36, align 1
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #8
  %call.i.i213 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i213, label %if.then96.copy_to_user.exit221.thread_crit_edge, label %if.end.i.i216

if.then96.copy_to_user.exit221.thread_crit_edge:  ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit221.thread

if.end.i.i216:                                    ; preds = %if.then96
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %cp.0268, i32 2, i32 -1226833920) #12, !srcloc !185
  %asmresult.i.i214 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i214)
  %cmp.i6.i215 = icmp eq i32 %asmresult.i.i214, 0
  br i1 %cmp.i6.i215, label %copy_to_user.exit221, label %if.end.i.i216.copy_to_user.exit221.thread_crit_edge

if.end.i.i216.copy_to_user.exit221.thread_crit_edge: ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit221.thread

copy_to_user.exit221.thread:                      ; preds = %if.end.i.i216.copy_to_user.exit221.thread_crit_edge, %if.then96.copy_to_user.exit221.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s) #8
  br label %cleanup163

copy_to_user.exit221:                             ; preds = %if.end.i.i216
  %call.i.i.i217 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %s, i32 noundef 2) #8
  %call.i12.i.i218 = call i32 @arm_copy_to_user(ptr noundef %cp.0268, ptr noundef nonnull %s, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i218)
  %tobool104.not = icmp eq i32 %call.i12.i.i218, 0
  %add = add i32 %chars_sent.0270, 2
  %add.ptr = getelementptr i8, ptr %cp.0268, i32 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s) #8
  br i1 %tobool104.not, label %copy_to_user.exit221.do.body144_crit_edge, label %copy_to_user.exit221.cleanup163_crit_edge

copy_to_user.exit221.cleanup163_crit_edge:        ; preds = %copy_to_user.exit221
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup163

copy_to_user.exit221.do.body144_crit_edge:        ; preds = %copy_to_user.exit221
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body144

if.else110:                                       ; preds = %if.else90
  br i1 %tobool.not, label %if.else110.do.body144_crit_edge, label %if.then112

if.else110.do.body144_crit_edge:                  ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body144

if.then112:                                       ; preds = %if.else110
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %s113) #8
  %50 = lshr i16 %ch.0, 12
  %51 = trunc i16 %50 to i8
  %conv118 = or i8 %51, -32
  %52 = ptrtoint ptr %s113 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv118, ptr %s113, align 1
  %53 = lshr i16 %ch.0, 6
  %54 = trunc i16 %53 to i8
  %55 = and i8 %54, 63
  %conv124 = or i8 %55, -128
  %56 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv124, ptr %34, align 1
  %57 = trunc i16 %ch.0 to i8
  %58 = and i8 %57, 63
  %conv129 = or i8 %58, -128
  %59 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv129, ptr %35, align 1
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #8
  %call.i.i226 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i226, label %if.then112.copy_to_user.exit234.thread_crit_edge, label %if.end.i.i229

if.then112.copy_to_user.exit234.thread_crit_edge: ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit234.thread

if.end.i.i229:                                    ; preds = %if.then112
  %60 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %cp.0268, i32 3, i32 -1226833920) #12, !srcloc !185
  %asmresult.i.i227 = extractvalue { i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i227)
  %cmp.i6.i228 = icmp eq i32 %asmresult.i.i227, 0
  br i1 %cmp.i6.i228, label %copy_to_user.exit234, label %if.end.i.i229.copy_to_user.exit234.thread_crit_edge

if.end.i.i229.copy_to_user.exit234.thread_crit_edge: ; preds = %if.end.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit234.thread

copy_to_user.exit234.thread:                      ; preds = %if.end.i.i229.copy_to_user.exit234.thread_crit_edge, %if.then112.copy_to_user.exit234.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %s113) #8
  br label %cleanup163

copy_to_user.exit234:                             ; preds = %if.end.i.i229
  %call.i.i.i230 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %s113, i32 noundef 3) #8
  %call.i12.i.i231 = call i32 @arm_copy_to_user(ptr noundef %cp.0268, ptr noundef nonnull %s113, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i231)
  %tobool132.not = icmp eq i32 %call.i12.i.i231, 0
  %add135 = add i32 %chars_sent.0270, 3
  %add.ptr136 = getelementptr i8, ptr %cp.0268, i32 3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %s113) #8
  br i1 %tobool132.not, label %copy_to_user.exit234.do.body144_crit_edge, label %copy_to_user.exit234.cleanup163_crit_edge

copy_to_user.exit234.cleanup163_crit_edge:        ; preds = %copy_to_user.exit234
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup163

copy_to_user.exit234.do.body144_crit_edge:        ; preds = %copy_to_user.exit234
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body144

do.body144:                                       ; preds = %copy_to_user.exit234.do.body144_crit_edge, %if.else110.do.body144_crit_edge, %copy_to_user.exit221.do.body144_crit_edge, %copy_to_user.exit.do.body144_crit_edge
  %cp.4 = phi ptr [ %incdec.ptr, %copy_to_user.exit.do.body144_crit_edge ], [ %add.ptr, %copy_to_user.exit221.do.body144_crit_edge ], [ %add.ptr136, %copy_to_user.exit234.do.body144_crit_edge ], [ %cp.0268, %if.else110.do.body144_crit_edge ]
  %chars_sent.4 = phi i32 [ %inc89, %copy_to_user.exit.do.body144_crit_edge ], [ %add, %copy_to_user.exit221.do.body144_crit_edge ], [ %add135, %copy_to_user.exit234.do.body144_crit_edge ], [ %chars_sent.0270, %if.else110.do.body144_crit_edge ]
  %call151 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #8
  %cmp48.not = icmp ugt i32 %chars_sent.4, %sub
  br i1 %cmp48.not, label %do.body144.while.end156_crit_edge, label %do.body144.while.body50_crit_edge

do.body144.while.body50_crit_edge:                ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body50

do.body144.while.end156_crit_edge:                ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end156

while.end156:                                     ; preds = %do.body144.while.end156_crit_edge, %if.end65.while.end156_crit_edge, %while.body50.while.end156_crit_edge
  %flags.1.lcssa = phi i32 [ %flags.1266, %if.end65.while.end156_crit_edge ], [ %flags.1266, %while.body50.while.end156_crit_edge ], [ %call151, %do.body144.while.end156_crit_edge ]
  %chars_sent.0.lcssa = phi i32 [ %chars_sent.0270, %if.end65.while.end156_crit_edge ], [ %chars_sent.0270, %while.body50.while.end156_crit_edge ], [ %chars_sent.4, %do.body144.while.end156_crit_edge ]
  %conv157 = sext i32 %chars_sent.0.lcssa to i64
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %pos, align 8
  %add158 = add i64 %62, %conv157
  store i64 %add158, ptr %pos, align 8
  %call159 = call i32 @synth_buffer_empty() #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %flags.1.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %while.end156.cleanup163_crit_edge, label %if.then161

while.end156.cleanup163_crit_edge:                ; preds = %while.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup163

if.then161:                                       ; preds = %while.end156
  call void @__sanitizer_cov_trace_pc() #10
  call void @speakup_start_ttys() #8
  %63 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %pos, align 8
  br label %cleanup163

cleanup163:                                       ; preds = %if.then161, %while.end156.cleanup163_crit_edge, %copy_to_user.exit234.cleanup163_crit_edge, %copy_to_user.exit234.thread, %copy_to_user.exit221.cleanup163_crit_edge, %copy_to_user.exit221.thread, %copy_to_user.exit.cleanup163_crit_edge, %copy_to_user.exit.thread, %if.then31, %if.then25, %entry.cleanup163_crit_edge
  %retval.5 = phi i32 [ -11, %if.then25 ], [ -512, %if.then31 ], [ -22, %entry.cleanup163_crit_edge ], [ %chars_sent.0.lcssa, %if.then161 ], [ %chars_sent.0.lcssa, %while.end156.cleanup163_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ -14, %copy_to_user.exit221.thread ], [ -14, %copy_to_user.exit234.thread ], [ -14, %copy_to_user.exit.cleanup163_crit_edge ], [ -14, %copy_to_user.exit234.cleanup163_crit_edge ], [ -14, %copy_to_user.exit221.cleanup163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @synth_current() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_buffer_skip_nonlatin1() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_buffer_empty() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @synth_buffer_getc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_start_ttys() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softsynthu_read(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @softsynthx_read(ptr noundef %fp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__param_start, !1, !"__param_start", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 428, i32 1}
!2 = !{ptr @__UNIQUE_ID_starttype227, !1, !"__UNIQUE_ID_starttype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_start228, !4, !"__UNIQUE_ID_start228", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 430, i32 1}
!5 = !{ptr @__initcall__kmod_speakup_soft__229_432_synth_soft_init6, !6, !"__initcall__kmod_speakup_soft__229_432_synth_soft_init6", i1 false, i1 false}
!6 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 432, i32 1}
!7 = !{ptr @__exitcall_synth_soft_exit, !6, !"__exitcall_synth_soft_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author230, !9, !"__UNIQUE_ID_author230", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 434, i32 1}
!10 = !{ptr @__UNIQUE_ID_description231, !11, !"__UNIQUE_ID_description231", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 435, i32 1}
!12 = !{ptr @__UNIQUE_ID_file232, !13, !"__UNIQUE_ID_file232", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 436, i32 1}
!14 = !{ptr @__UNIQUE_ID_license233, !13, !"__UNIQUE_ID_license233", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version234, !16, !"__UNIQUE_ID_version234", i1 false, i1 false}
!16 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 437, i32 1}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @__param_str_start, !1, !"__param_str_start", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 117, i32 10}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 119, i32 15}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 120, i32 10}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 140, i32 14}
!30 = !{ptr @synth_soft, !31, !"synth_soft", i1 false, i1 false}
!31 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 116, i32 25}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 36, i32 24}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 37, i32 23}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 38, i32 19}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 39, i32 18}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 40, i32 19}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 41, i32 24}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 42, i32 17}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 43, i32 18}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 44, i32 19}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 45, i32 19}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 46, i32 23}
!54 = !{ptr @vars, !55, !"vars", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 35, i32 21}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 388, i32 22}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 391, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @softsynth_probe._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @softsynth_probe._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 397, i32 23}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 400, i32 3}
!68 = !{ptr @softsynth_probe._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @softsynth_probe._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 405, i32 2}
!72 = !{ptr @softsynth_probe._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @softsynth_probe._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 407, i32 2}
!76 = !{ptr @softsynth_probe._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @softsynth_probe._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"misc_registered", i1 false, i1 false}
!79 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 33, i32 12}
!80 = !{ptr @synth_device, !81, !"synth_device", i1 false, i1 false}
!81 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 31, i32 26}
!82 = !{ptr @softsynth_fops, !83, !"softsynth_fops", i1 false, i1 false}
!83 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 364, i32 37}
!84 = !{ptr @get_initstring.buf, !85, !"buf", i1 false, i1 false}
!85 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 153, i32 14}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 174, i32 31}
!88 = !{ptr @init_pos, !89, !"init_pos", i1 false, i1 false}
!89 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 32, i32 12}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!92 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!97 = !{ptr @last_index, !98, !"last_index", i1 false, i1 false}
!98 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 323, i32 12}
!99 = !{ptr @synthu_device, !100, !"synthu_device", i1 false, i1 false}
!100 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 31, i32 40}
!101 = !{ptr @softsynthu_fops, !102, !"softsynthu_fops", i1 false, i1 false}
!102 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 373, i32 37}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 417, i32 2}
!105 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @softsynth_release._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @softsynth_release._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 418, i32 2}
!110 = !{ptr @softsynth_release._entry.39, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @softsynth_release._entry_ptr.41, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @synth_attrs, !113, !"synth_attrs", i1 false, i1 false}
!113 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 96, i32 26}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 54, i32 2}
!116 = !{ptr @caps_start_attribute, !117, !"caps_start_attribute", i1 false, i1 false}
!117 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 53, i32 30}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 56, i32 2}
!120 = !{ptr @caps_stop_attribute, !121, !"caps_stop_attribute", i1 false, i1 false}
!121 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 55, i32 30}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 58, i32 2}
!124 = !{ptr @freq_attribute, !125, !"freq_attribute", i1 false, i1 false}
!125 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 57, i32 30}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 60, i32 2}
!128 = !{ptr @pitch_attribute, !129, !"pitch_attribute", i1 false, i1 false}
!129 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 59, i32 30}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 62, i32 2}
!132 = !{ptr @inflection_attribute, !133, !"inflection_attribute", i1 false, i1 false}
!133 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 61, i32 30}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 64, i32 2}
!136 = !{ptr @punct_attribute, !137, !"punct_attribute", i1 false, i1 false}
!137 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 63, i32 30}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 66, i32 2}
!140 = !{ptr @rate_attribute, !141, !"rate_attribute", i1 false, i1 false}
!141 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 65, i32 30}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 68, i32 2}
!144 = !{ptr @tone_attribute, !145, !"tone_attribute", i1 false, i1 false}
!145 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 67, i32 30}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 70, i32 2}
!148 = !{ptr @voice_attribute, !149, !"voice_attribute", i1 false, i1 false}
!149 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 69, i32 30}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 72, i32 2}
!152 = !{ptr @vol_attribute, !153, !"vol_attribute", i1 false, i1 false}
!153 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 71, i32 30}
!154 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 82, i32 2}
!156 = !{ptr @delay_time_attribute, !157, !"delay_time_attribute", i1 false, i1 false}
!157 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 81, i32 30}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 84, i32 2}
!160 = !{ptr @direct_attribute, !161, !"direct_attribute", i1 false, i1 false}
!161 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 83, i32 30}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 86, i32 2}
!164 = !{ptr @full_time_attribute, !165, !"full_time_attribute", i1 false, i1 false}
!165 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 85, i32 30}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 88, i32 2}
!168 = !{ptr @jiffy_delta_attribute, !169, !"jiffy_delta_attribute", i1 false, i1 false}
!169 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 87, i32 30}
!170 = !{ptr @.str.56, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 90, i32 2}
!172 = !{ptr @trigger_time_attribute, !173, !"trigger_time_attribute", i1 false, i1 false}
!173 = !{!"../drivers/accessibility/speakup/speakup_soft.c", i32 89, i32 30}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{i64 2152665861, i64 2152665886}
