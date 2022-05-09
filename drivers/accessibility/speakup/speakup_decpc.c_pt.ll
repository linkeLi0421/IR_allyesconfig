; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/speakup_decpc.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/speakup_decpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.spk_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.string_var_t = type { ptr }
%struct.var_t = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.num_var_t }
%struct.num_var_t = type { ptr, i32, i32, i32, i16, i16, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_start = internal constant [6 x i8] c"start\00", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@synth_dec_pc = internal global { %struct.spk_synth, [40 x i8] } { %struct.spk_synth { %struct.list_head zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 11, i8 0, i32 500, i32 50, i32 50, i32 1000, i32 0, i32 0, ptr null, i16 1, i16 1, i32 20030716, ptr @vars, ptr null, ptr null, ptr @spk_serial_io_ops, ptr @synth_probe, ptr @dtpc_release, ptr @synth_immediate, ptr @do_catch_up, ptr @synth_flush, ptr @spk_synth_is_alive_nop, ptr null, ptr null, ptr null, %struct.synth_indexing zeroinitializer, i32 0, %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @synth_attrs, ptr null }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_start = internal constant %struct.kernel_param { ptr @__param_str_start, ptr @__this_module, ptr @param_ops_short, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_dec_pc, i64 58) } }, section "__param", align 4
@__UNIQUE_ID_starttype229 = internal constant [21 x i8] c"parmtype=start:short\00", section ".modinfo", align 1
@__UNIQUE_ID_start230 = internal constant [52 x i8] c"parm=start:Start the synthesizer once it is loaded.\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [41 x i8] c"author=Kirk Reiser <kirk@braille.uwo.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [22 x i8] c"author=David Borowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [56 x i8] c"description=Speakup support for DECtalk PC synthesizers\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version235 = internal constant [13 x i8] c"version=2.12\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"decpc\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.12\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Dectalk PC\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[:pe -380]\00", [21 x i8] zeroinitializer }, align 32
@spk_serial_io_ops = external dso_local global %struct.spk_io_ops, align 4
@synth_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @inflection_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[:dv ap 200]\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[:dv ap 100]\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[:ra %d]\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[:dv ap %d]\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[:dv pr %d] \00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[:vo se %d]\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[:pu %c]\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nsa\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[:n%c]\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phfdburwkv\00", [21 x i8] zeroinitializer }, align 32
@vars = internal global { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }>, [64 x i8] } { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }> <{ { i32, { %struct.string_var_t, [24 x i8] } } { i32 38, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.4 }, [24 x i8] undef } }, { i32, { %struct.string_var_t, [24 x i8] } } { i32 39, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.5 }, [24 x i8] undef } }, %struct.var_t { i32 28, %union.anon.74 { %struct.num_var_t { ptr @.str.6, i32 9, i32 0, i32 18, i16 150, i16 25, ptr null, i32 0 } } }, %struct.var_t { i32 29, %union.anon.74 { %struct.num_var_t { ptr @.str.7, i32 80, i32 0, i32 100, i16 20, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 41, %union.anon.74 { %struct.num_var_t { ptr @.str.8, i32 100, i32 0, i32 10000, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 30, %union.anon.74 { %struct.num_var_t { ptr @.str.9, i32 5, i32 0, i32 9, i16 5, i16 10, ptr null, i32 0 } } }, %struct.var_t { i32 32, %union.anon.74 { %struct.num_var_t { ptr @.str.10, i32 0, i32 0, i32 2, i16 0, i16 0, ptr @.str.11, i32 0 } } }, %struct.var_t { i32 33, %union.anon.74 { %struct.num_var_t { ptr @.str.12, i32 0, i32 0, i32 9, i16 0, i16 0, ptr @.str.13, i32 0 } } }, %struct.var_t { i32 36, %union.anon.74 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.74 zeroinitializer } }>, [64 x i8] zeroinitializer }, align 32
@synth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016Probing for %s.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synth_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/accessibility/speakup/speakup_decpc.c\00", [50 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr = internal global ptr @synth_probe._entry, section ".printk_index", align 4
@synth_portlist = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 832, i32 848, i32 576, i32 592, i32 0], [44 x i8] zeroinitializer }, align 32
@synth_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.17, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014request_region: failed with 0x%x, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.20 = internal global ptr @synth_probe._entry.18, section ".printk_index", align 4
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@synth_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.17, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: not found\0A\00", [47 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.23 = internal global ptr @synth_probe._entry.21, section ".printk_index", align 4
@synth_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.17, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: %03x-%03x, Driver Version %s,\0A\00", [59 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.26 = internal global ptr @synth_probe._entry.24, section ".printk_index", align 4
@dt_stat = internal global { i32, [28 x i8] } zeroinitializer, align 32
@testkernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.17, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014dec_pc at 0x%x, software not loaded\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"testkernel\00", [21 x i8] zeroinitializer }, align 32
@testkernel._entry_ptr = internal global ptr @testkernel._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dma_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@do_catch_up.last = internal global { i8, [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@in_escape = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",.!?;:\00", [25 x i8] zeroinitializer }, align 32
@is_flushing = internal global { i1, [31 x i8] } zeroinitializer, align 32
@caps_start_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@caps_stop_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@pitch_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@inflection_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@punct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@rate_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@voice_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@vol_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@delay_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@full_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@jiffy_delta_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@trigger_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inflection\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"punct\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"voice\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 91, i64 93]
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"synth_dec_pc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 202, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 203, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 204, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 205, i32 15 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 206, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"synth_attrs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 185, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 138, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 139, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 140, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 141, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 142, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 143, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 144, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 144, i32 46 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 145, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 145, i32 44 }
@___asan_gen_.92 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 137, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 454, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"synth_portlist\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 133, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 457, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 467, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 470, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [8 x i8] c"dt_stat\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 135, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 355, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"dma_state\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 135, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 366, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"in_escape\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 413, i32 29 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"is_flushing\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"caps_start_attribute\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 153, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"caps_stop_attribute\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 155, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"pitch_attribute\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 157, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"inflection_attribute\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 159, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"punct_attribute\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 161, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"rate_attribute\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 163, i32 30 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"voice_attribute\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 165, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"vol_attribute\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 167, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"delay_time_attribute\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 170, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"direct_attribute\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 172, i32 30 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"full_time_attribute\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 174, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"jiffy_delta_attribute\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 176, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant [23 x i8] c"trigger_time_attribute\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 178, i32 30 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 154, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 156, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 158, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 160, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 162, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 164, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 166, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 168, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 171, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 173, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 175, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 177, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [49 x i8] c"../drivers/accessibility/speakup/speakup_decpc.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 179, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license234, ptr @__UNIQUE_ID_start230, ptr @__UNIQUE_ID_starttype229, ptr @__UNIQUE_ID_version235, ptr @__param_start, ptr @synth_probe._entry, ptr @synth_probe._entry.18, ptr @synth_probe._entry.21, ptr @synth_probe._entry.24, ptr @synth_probe._entry_ptr, ptr @synth_probe._entry_ptr.20, ptr @synth_probe._entry_ptr.23, ptr @synth_probe._entry_ptr.26, ptr @testkernel._entry, ptr @testkernel._entry_ptr, ptr @synth_dec_pc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @synth_attrs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vars, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @synth_portlist, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @dt_stat, ptr @.str.27, ptr @.str.28, ptr @dma_state, ptr @do_catch_up.last, ptr @in_escape, ptr @.str.30, ptr @is_flushing, ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @inflection_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_dec_pc to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vars to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_portlist to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_stat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testkernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_catch_up.last to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_escape to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_flushing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_stop_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitch_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inflection_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffy_delta_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @synth_add(ptr noundef nonnull @synth_dec_pc) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @synth_remove(ptr noundef nonnull @synth_dec_pc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_probe(ptr nocapture noundef %synth) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %long_name = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 3
  %0 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %long_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %1) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %failed.046 = phi i32 [ 0, %entry ], [ %failed.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr @synth_portlist, i32 0, i32 %i.047
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 @synth_request_region(i32 noundef %3, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef 8) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  store i32 %3, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i = and i32 %3, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %4 = inttoptr i32 %add.i.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i.i = zext i8 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i.i = add i32 %6, 1
  %and.i3.i.i = and i32 %add.i.i, 1048575
  %add.i4.i.i = or i32 %and.i3.i.i, -18874368
  %7 = inttoptr i32 %add.i4.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i.i = zext i8 %8 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  store i32 %or.i.i, ptr @dt_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or.i.i)
  %cmp.i = icmp eq i32 %or.i.i, 65535
  br i1 %cmp.i, label %if.end.testkernel.exit_crit_edge, label %if.end.i

if.end.testkernel.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %testkernel.exit

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i.i13.i = and i32 %9, 1048575
  %add.i.i14.i = or i32 %and.i.i13.i, -18874368
  %10 = inttoptr i32 %add.i.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i15.i = add i32 %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i4.i.i = and i32 %add.i15.i, 1048575
  %add.i5.i.i = or i32 %and.i4.i.i, -18874368
  %12 = inttoptr i32 %add.i5.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 96) #6, !srcloc !156
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end.i
  %dec3.i.i = phi i32 [ 99, %if.end.i ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i.i = and i32 %13, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %14 = inttoptr i32 %add.i.i.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i.i.i = zext i8 %15 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %16 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i.i16.i = add i32 %16, 1
  %and.i3.i.i.i = and i32 %add.i.i16.i, 1048575
  %add.i4.i.i.i = or i32 %and.i3.i.i.i, -18874368
  %17 = inttoptr i32 %add.i4.i.i.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i.i.i = zext i8 %18 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  store i32 %or.i.i.i, ptr @dt_stat, align 4
  %and.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.not.i, label %if.end.i.i, label %if.else.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #6
  %dec.i.i = add nsw i32 %dec3.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.testkernel.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end.i.i.testkernel.exit_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %testkernel.exit

if.else.i:                                        ; preds = %while.body.i.i
  %20 = and i32 %conv2.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.i, label %if.else5.i, label %if.else.i.do.end25_crit_edge

if.else.i.do.end25_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3564, i32 %or.i.i.i)
  %cmp6.i = icmp eq i32 %or.i.i.i, 3564
  br i1 %cmp6.i, label %do.end.i, label %if.else5.i.testkernel.exit_crit_edge

if.else5.i.testkernel.exit_crit_edge:             ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %testkernel.exit

do.end.i:                                         ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %21 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %21) #9
  br label %testkernel.exit

testkernel.exit:                                  ; preds = %do.end.i, %if.else5.i.testkernel.exit_crit_edge, %if.end.i.i.testkernel.exit_crit_edge, %if.end.testkernel.exit_crit_edge
  %status.0.i = phi i32 [ -1, %if.end.testkernel.exit_crit_edge ], [ -3, %do.end.i ], [ -3, %if.else5.i.testkernel.exit_crit_edge ], [ -3, %if.end.i.i.testkernel.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %22 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %call12.i = tail call i32 @synth_release_region(i32 noundef %22, i32 noundef 8) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  br label %for.inc

for.inc:                                          ; preds = %testkernel.exit, %do.end6
  %failed.1 = phi i32 [ %failed.046, %do.end6 ], [ %status.0.i, %testkernel.exit ]
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failed.1)
  %tobool14.not = icmp eq i32 %failed.1, 0
  br i1 %tobool14.not, label %for.end.do.end25_crit_edge, label %do.end18

for.end.do.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %long_name, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %24) #9
  br label %cleanup

do.end25:                                         ; preds = %for.end.do.end25_crit_edge, %if.else.i.do.end25_crit_edge
  %25 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %long_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %27 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %27, 7
  %version = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 2
  %28 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %version, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %26, i32 noundef %27, i32 noundef %add, ptr noundef %29) #9
  %alive = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 31
  %30 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %alive, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end18
  %retval.0 = phi i32 [ -19, %do.end18 ], [ 0, %do.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtpc_release(ptr nocapture noundef readnone %synth) #1 align 64 {
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
  %call = tail call i32 @synth_release_region(i32 noundef %0, i32 noundef 8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @synth_immediate(ptr nocapture noundef readnone %synth, ptr noundef readonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not8 = icmp eq i8 %1, 0
  br i1 %tobool.not8, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %4, %if.end4.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %buf.addr.09 = phi ptr [ %incdec.ptr, %if.end4.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp = icmp eq i8 %2, 10
  %spec.store.select = select i1 %cmp, i8 11, i8 %2
  %call = tail call fastcc i32 @dt_sendchar(i8 noundef zeroext %spec.store.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %buf.addr.09, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ %buf.addr.09, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_catch_up(ptr noundef %synth) #1 align 64 {
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
  %call7289 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %call7289, label %entry.while.end_crit_edge, label %do.body9.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body9.lr.ph:                                   ; preds = %entry
  %add = add i32 %2, %1
  %flush = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 25
  %value97 = getelementptr inbounds %struct.var_t, ptr %call1, i32 0, i32 1, i32 0, i32 7
  br label %do.body9

do.body9:                                         ; preds = %while.cond.backedge.do.body9_crit_edge, %do.body9.lr.ph
  %jiff_max.0290 = phi i32 [ %add, %do.body9.lr.ph ], [ %jiff_max.0.be, %while.cond.backedge.do.body9_crit_edge ]
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

while.cond.backedge:                              ; preds = %if.end254, %if.else.i, %if.then
  %jiff_max.0.be = phi i32 [ %jiff_max.0290, %if.then ], [ %jiff_max.0290, %if.else.i ], [ %jiff_max.1, %if.end254 ]
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
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call16) #6
  br label %while.end

if.end24:                                         ; preds = %if.end
  %call25 = tail call zeroext i16 @synth_buffer_peek() #6
  br label %__here

__here:                                           ; preds = %if.end24
  %conv26 = trunc i16 %call25 to i8
  %6 = tail call i32 @llvm.read_register.i32(metadata !143) #6
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !157
  %13 = ptrtoint ptr %value97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value97, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call16) #6
  %conv26.mask = and i16 %call25, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv26.mask)
  %cmp99 = icmp eq i16 %conv26.mask, 10
  %spec.store.select = select i1 %cmp99, i8 13, i8 %conv26
  %call103 = tail call fastcc i32 @dt_sendchar(i8 noundef zeroext %spec.store.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %__here160, label %if.else.i

if.else.i:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #6
  %call107 = tail call i32 @schedule_timeout(i32 noundef %call2.i) #6
  br label %while.cond.backedge

__here160:                                        ; preds = %__here
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change164 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change164 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@do_catch_up, %__here160) to i32), ptr %task_state_change164, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %18, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !158
  %call198 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #6
  %call203 = tail call zeroext i16 @synth_buffer_getc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call198) #6
  %20 = zext i8 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %spec.store.select, label %if.else212 [
    i8 91, label %if.then207
    i8 93, label %if.then211
  ]

if.then207:                                       ; preds = %__here160
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @in_escape, align 4
  br label %if.end254

if.then211:                                       ; preds = %__here160
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @in_escape, align 4
  br label %if.end254

if.else212:                                       ; preds = %__here160
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %spec.store.select)
  %cmp214 = icmp ult i8 %spec.store.select, 33
  br i1 %cmp214, label %if.then216, label %if.else212.if.end254_crit_edge

if.else212.if.end254_crit_edge:                   ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

if.then216:                                       ; preds = %if.else212
  %.b279 = load i1, ptr @in_escape, align 4
  br i1 %.b279, label %if.then216.if.end223_crit_edge, label %land.lhs.true

if.then216.if.end223_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

land.lhs.true:                                    ; preds = %if.then216
  %21 = load i8, ptr @do_catch_up.last, align 1
  %conv218 = zext i8 %21 to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.30, i32 %conv218, i32 7) #10
  %tobool220.not = icmp eq ptr %memchr, null
  br i1 %tobool220.not, label %land.lhs.true.if.end223_crit_edge, label %if.then221

land.lhs.true.if.end223_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

if.then221:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call222 = tail call fastcc i32 @dt_sendchar(i8 noundef zeroext 11)
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %land.lhs.true.if.end223_crit_edge, %if.then216.if.end223_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %22, %jiff_max.0290
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp224 = icmp sgt i32 %sub, -1
  br i1 %cmp224, label %if.then226, label %if.end223.if.end254_crit_edge

if.end223.if.end254_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

if.then226:                                       ; preds = %if.end223
  %.b278 = load i1, ptr @in_escape, align 4
  br i1 %.b278, label %if.then226.do.body232_crit_edge, label %if.then228

if.then226.do.body232_crit_edge:                  ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body232

if.then228:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #8
  %call229 = tail call fastcc i32 @dt_sendchar(i8 noundef zeroext 11)
  br label %do.body232

do.body232:                                       ; preds = %if.then228, %if.then226.do.body232_crit_edge
  %call239 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #6
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  %25 = ptrtoint ptr %value97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value97, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call239) #6
  %call2.i285 = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #6
  %call249 = tail call i32 @schedule_timeout(i32 noundef %call2.i285) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add250 = add i32 %27, %24
  br label %if.end254

if.end254:                                        ; preds = %do.body232, %if.end223.if.end254_crit_edge, %if.else212.if.end254_crit_edge, %if.then211, %if.then207
  %jiff_max.1 = phi i32 [ %jiff_max.0290, %if.then207 ], [ %jiff_max.0290, %if.then211 ], [ %add250, %do.body232 ], [ %jiff_max.0290, %if.end223.if.end254_crit_edge ], [ %jiff_max.0290, %if.else212.if.end254_crit_edge ]
  store i8 %spec.store.select, ptr @do_catch_up.last, align 1
  br label %while.cond.backedge

while.end:                                        ; preds = %if.then23, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %.b = load i1, ptr @in_escape, align 4
  br i1 %.b, label %while.end.if.end258_crit_edge, label %if.then256

while.end.if.end258_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end258

if.then256:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call257 = tail call fastcc i32 @dt_sendchar(i8 noundef zeroext 11)
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %while.end.if.end258_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synth_flush(ptr nocapture noundef readnone %synth) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @is_flushing, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, ptr @is_flushing, align 4
  store i1 false, ptr @in_escape, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.end
  %timeout.0 = phi i32 [ 10, %if.end ], [ %dec, %if.end3 ]
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.cond
  %dec3.i.i = phi i32 [ 99, %while.cond ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i.i = and i32 %0, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %1 = inttoptr i32 %add.i.i.i.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i.i.i = zext i8 %2 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i.i.i = add i32 %3, 1
  %and.i3.i.i.i = and i32 %add.i.i.i, 1048575
  %add.i4.i.i.i = or i32 %and.i3.i.i.i, -18874368
  %4 = inttoptr i32 %add.i4.i.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i.i.i = zext i8 %5 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  store i32 %or.i.i.i, ptr @dt_stat, align 4
  %and.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.not.i, label %if.end.i.i, label %if.end.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #6
  %dec.i.i = add nsw i32 %dec3.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %while.body, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end.i:                                         ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i = add i32 %7, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i1.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i1.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add1.i = add i32 %9, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i2.i = and i32 %add1.i, 1048575
  %add.i3.i = or i32 %and.i2.i, -18874368
  %10 = inttoptr i32 %add.i3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i = and i32 %11, 1048575
  %add.i.i4.i = or i32 %and.i.i.i, -18874368
  %12 = inttoptr i32 %add.i.i4.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i.i = zext i8 %13 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %14 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i5.i = add i32 %14, 1
  %and.i3.i.i = and i32 %add.i5.i, 1048575
  %add.i4.i.i = or i32 %and.i3.i.i, -18874368
  %15 = inttoptr i32 %add.i4.i.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i.i = zext i8 %16 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  store i32 %or.i.i, ptr @dt_stat, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %17 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i.i6.i = and i32 %17, 1048575
  %add.i.i7.i = or i32 %and.i.i6.i, -18874368
  %18 = inttoptr i32 %add.i.i7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %19 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i8.i = add i32 %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i4.i.i = and i32 %add.i8.i, 1048575
  %add.i5.i.i = or i32 %and.i4.i.i, -18874368
  %20 = inttoptr i32 %add.i5.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 22) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %21 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add3.i = add i32 %21, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i9.i = and i32 %add3.i, 1048575
  %add.i10.i = or i32 %and.i9.i, -18874368
  %22 = inttoptr i32 %add.i10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #6, !srcloc !156
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end.i
  %timeout.0.i = phi i32 [ 10, %if.end.i ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i11.i = and i32 %23, 1048575
  %add.i.i12.i = or i32 %and.i.i11.i, -18874368
  %24 = inttoptr i32 %add.i.i12.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i13.i = zext i8 %25 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %26 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i14.i = add i32 %26, 1
  %and.i3.i15.i = and i32 %add.i14.i, 1048575
  %add.i4.i16.i = or i32 %and.i3.i15.i, -18874368
  %27 = inttoptr i32 %add.i4.i16.i to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i17.i = zext i8 %28 to i32
  %shl.i18.i = shl nuw nsw i32 %conv2.i17.i, 8
  %or.i19.i = or i32 %shl.i18.i, %conv.i13.i
  store i32 %or.i19.i, ptr @dt_stat, align 4
  %and.i = and i32 %conv.i13.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %while.cond.i.dt_ctrl.exit.thread_crit_edge, label %while.body.i

while.cond.i.dt_ctrl.exit.thread_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt_ctrl.exit.thread

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 4294960) #6
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i.dt_ctrl.exit.thread_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.dt_ctrl.exit.thread_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt_ctrl.exit.thread

dt_ctrl.exit.thread:                              ; preds = %while.body.i.dt_ctrl.exit.thread_crit_edge, %while.cond.i.dt_ctrl.exit.thread_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %30 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i.i20.i = and i32 %30, 1048575
  %add.i.i21.i = or i32 %and.i.i20.i, -18874368
  %31 = inttoptr i32 %add.i.i21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 0) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %32 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i22.i = add i32 %32, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i4.i23.i = and i32 %add.i22.i, 1048575
  %add.i5.i24.i = or i32 %and.i4.i23.i, -18874368
  %33 = inttoptr i32 %add.i5.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #6, !srcloc !156
  br label %while.body.i36.preheader.preheader

while.body.i36.preheader.preheader:               ; preds = %while.body.while.body.i36.preheader.preheader_crit_edge, %dt_ctrl.exit.thread
  br label %while.body.i36.preheader

while.body:                                       ; preds = %if.end.i.i
  %dec = add nsw i32 %timeout.0, -1
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %while.body.while.body.i36.preheader.preheader_crit_edge, label %if.end3

while.body.while.body.i36.preheader.preheader_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i36.preheader.preheader

if.end3:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 10737400) #6
  br label %while.cond

while.body.i36.preheader:                         ; preds = %if.end8.while.body.i36.preheader_crit_edge, %while.body.i36.preheader.preheader
  %timeout.161 = phi i32 [ %inc, %if.end8.while.body.i36.preheader_crit_edge ], [ 0, %while.body.i36.preheader.preheader ]
  br label %while.body.i36

while.body.i36:                                   ; preds = %if.end.i38.while.body.i36_crit_edge, %while.body.i36.preheader
  %dec3.i = phi i32 [ %dec.i37, %if.end.i38.while.body.i36_crit_edge ], [ 99, %while.body.i36.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %35 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i26 = and i32 %35, 1048575
  %add.i.i.i27 = or i32 %and.i.i.i26, -18874368
  %36 = inttoptr i32 %add.i.i.i27 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i.i28 = zext i8 %37 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %38 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i.i29 = add i32 %38, 1
  %and.i3.i.i30 = and i32 %add.i.i29, 1048575
  %add.i4.i.i31 = or i32 %and.i3.i.i30, -18874368
  %39 = inttoptr i32 %add.i4.i.i31 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i.i32 = zext i8 %40 to i32
  %shl.i.i33 = shl nuw nsw i32 %conv2.i.i32, 8
  %or.i.i34 = or i32 %shl.i.i33, %conv.i.i28
  store i32 %or.i.i34, ptr @dt_stat, align 4
  %and.i35 = and i32 %conv.i.i28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %cmp1.i.not = icmp eq i32 %and.i35, 0
  br i1 %cmp1.i.not, label %if.end.i38, label %while.body.i36.for.end_crit_edge

while.body.i36.for.end_crit_edge:                 ; preds = %while.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.i38:                                       ; preds = %while.body.i36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 10737400) #6
  %dec.i37 = add nsw i32 %dec3.i, -1
  %cmp.not.i = icmp eq i32 %dec.i37, 0
  br i1 %cmp.not.i, label %if.end8, label %if.end.i38.while.body.i36_crit_edge

if.end.i38.while.body.i36_crit_edge:              ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i36

if.end8:                                          ; preds = %if.end.i38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 10737400) #6
  %inc = add nuw nsw i32 %timeout.161, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end8.for.end_crit_edge, label %if.end8.while.body.i36.preheader_crit_edge

if.end8.while.body.i36.preheader_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i36.preheader

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %while.body.i36.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %43 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %43, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i40 = and i32 %add, 1048575
  %add.i41 = or i32 %and.i40, -18874368
  %44 = inttoptr i32 %add.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 6) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %45 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add9 = add i32 %45, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i42 = and i32 %add9, 1048575
  %add.i43 = or i32 %and.i42, -18874368
  %46 = inttoptr i32 %add.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 0) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 21474800) #6
  br label %for.body12

for.body12:                                       ; preds = %if.end16.for.body12_crit_edge, %for.end
  %timeout.262 = phi i32 [ 0, %for.end ], [ %inc18, %if.end16.for.body12_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %48 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i44 = and i32 %48, 1048575
  %add.i.i45 = or i32 %and.i.i44, -18874368
  %49 = inttoptr i32 %add.i.i45 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i = zext i8 %50 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %51 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i46 = add i32 %51, 1
  %and.i3.i = and i32 %add.i46, 1048575
  %add.i4.i = or i32 %and.i3.i, -18874368
  %52 = inttoptr i32 %add.i4.i to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i = zext i8 %53 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  store i32 %or.i, ptr @dt_stat, align 4
  %54 = and i32 %conv2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool14.not = icmp eq i32 %54, 0
  br i1 %tobool14.not, label %for.body12.for.end19_crit_edge, label %if.end16

for.body12.for.end19_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

if.end16:                                         ; preds = %for.body12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 10737400) #6
  %inc18 = add nuw nsw i32 %timeout.262, 1
  %exitcond64.not = icmp eq i32 %inc18, 10
  br i1 %exitcond64.not, label %if.end16.for.end19_crit_edge, label %if.end16.for.body12_crit_edge

if.end16.for.body12_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

if.end16.for.end19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

for.end19:                                        ; preds = %if.end16.for.end19_crit_edge, %for.body12.for.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %56 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i47 = and i32 %56, 1048575
  %add.i.i48 = or i32 %and.i.i47, -18874368
  %57 = inttoptr i32 %add.i.i48 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i49 = zext i8 %58 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %59 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i50 = add i32 %59, 1
  %and.i3.i51 = and i32 %add.i50, 1048575
  %add.i4.i52 = or i32 %and.i3.i51, -18874368
  %60 = inttoptr i32 %add.i4.i52 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i53 = zext i8 %61 to i32
  %shl.i54 = shl nuw nsw i32 %conv2.i53, 8
  %or.i55 = or i32 %shl.i54, %conv.i49
  store i32 %or.i55, ptr @dt_stat, align 4
  %and21 = and i32 %shl.i54, 256
  %xor = xor i32 %and21, 256
  store i32 %xor, ptr @dma_state, align 4
  store i1 false, ptr @is_flushing, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_synth_is_alive_nop(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_request_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_release_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_stop_serial_interrupt() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt_sendchar(i8 noundef zeroext %ch) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dma_state, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry
  %dec3.i.i = phi i32 [ 99, %entry ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i.i = and i32 %1, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %2 = inttoptr i32 %add.i.i.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i.i.i = zext i8 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i.i.i = add i32 %4, 1
  %and.i3.i.i.i = and i32 %add.i.i.i, 1048575
  %add.i4.i.i.i = or i32 %and.i3.i.i.i, -18874368
  %5 = inttoptr i32 %add.i4.i.i.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  store i32 %or.i.i.i, ptr @dt_stat, align 4
  %and.i.i = and i32 %conv.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.not.i, label %if.end.i.i, label %while.body.i.i.while.body.i_crit_edge

while.body.i.i.while.body.i_crit_edge:            ; preds = %while.body.i.i
  br label %while.body.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #6
  %dec.i.i = add nsw i32 %dec3.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.return_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.body.i.i.while.body.i_crit_edge
  %dec21.i = phi i32 [ %dec.i, %if.end4.i.while.body.i_crit_edge ], [ 99, %while.body.i.i.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i.i = and i32 %8, 1048575
  %add.i.i8.i = or i32 %and.i.i.i, -18874368
  %9 = inttoptr i32 %add.i.i8.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i.i = zext i8 %10 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i.i = add i32 %11, 1
  %and.i3.i.i = and i32 %add.i.i, 1048575
  %add.i4.i.i = or i32 %and.i3.i.i, -18874368
  %12 = inttoptr i32 %add.i4.i.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i.i = zext i8 %13 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  store i32 %or.i.i, ptr @dt_stat, align 4
  %and.i = and i32 %shl.i.i, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %0)
  %cmp2.i = icmp eq i32 %and.i, %0
  br i1 %cmp2.i, label %while.body.i.if.end_crit_edge, label %if.end4.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end4.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 10737400) #6
  %dec.i = add nsw i32 %dec21.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.end.i, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i.i9.i = and i32 %15, 1048575
  %add.i.i10.i = or i32 %and.i.i9.i, -18874368
  %16 = inttoptr i32 %add.i.i10.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv.i11.i = zext i8 %17 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i12.i = add i32 %18, 1
  %and.i3.i13.i = and i32 %add.i12.i, 1048575
  %add.i4.i14.i = or i32 %and.i3.i13.i, -18874368
  %19 = inttoptr i32 %add.i4.i14.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv2.i15.i = zext i8 %20 to i32
  %shl.i16.i = shl nuw nsw i32 %conv2.i15.i, 8
  %or.i17.i = or i32 %shl.i16.i, %conv.i11.i
  store i32 %or.i17.i, ptr @dt_stat, align 4
  %and6.i = and i32 %shl.i16.i, 256
  store i32 %and6.i, ptr @dma_state, align 4
  br label %if.end

if.end:                                           ; preds = %while.end.i, %while.body.i.if.end_crit_edge
  %21 = load i32, ptr @dt_stat, align 4
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %22 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %22, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i5 = and i32 %add, 1048575
  %add.i = or i32 %and.i5, -18874368
  %23 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 1) #6, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add4 = add i32 %24, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %and.i6 = and i32 %add4, 1048575
  %add.i7 = or i32 %and.i6, -18874368
  %25 = inttoptr i32 %add.i7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %ch) #6, !srcloc !156
  %26 = load i32, ptr @dma_state, align 4
  %xor = xor i32 %26, 256
  store i32 %xor, ptr @dma_state, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %if.end.i.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -2, %if.end.return_crit_edge ], [ -1, %if.end.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_get_var(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_buffer_skip_nonlatin1() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_buffer_empty() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @synth_buffer_peek() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @synth_buffer_getc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__param_start, !1, !"__param_start", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 485, i32 1}
!2 = !{ptr @__UNIQUE_ID_starttype229, !1, !"__UNIQUE_ID_starttype229", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_start230, !4, !"__UNIQUE_ID_start230", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 487, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 491, i32 1}
!7 = !{ptr @__UNIQUE_ID_author232, !8, !"__UNIQUE_ID_author232", i1 false, i1 false}
!8 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 492, i32 1}
!9 = !{ptr @__UNIQUE_ID_description233, !10, !"__UNIQUE_ID_description233", i1 false, i1 false}
!10 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 493, i32 1}
!11 = !{ptr @__UNIQUE_ID_license234, !12, !"__UNIQUE_ID_license234", i1 false, i1 false}
!12 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 494, i32 1}
!13 = !{ptr @__UNIQUE_ID_version235, !14, !"__UNIQUE_ID_version235", i1 false, i1 false}
!14 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 495, i32 1}
!15 = !{ptr @__param_str_start, !1, !"__param_str_start", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 203, i32 10}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 204, i32 13}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 205, i32 15}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 206, i32 10}
!24 = !{ptr @synth_dec_pc, !25, !"synth_dec_pc", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 202, i32 25}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 138, i32 24}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 139, i32 23}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 140, i32 18}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 141, i32 19}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 142, i32 24}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 143, i32 17}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 144, i32 19}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 144, i32 46}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 145, i32 19}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 145, i32 44}
!46 = !{ptr @vars, !47, !"vars", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 137, i32 21}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 454, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @synth_probe._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @synth_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 457, i32 4}
!56 = !{ptr @synth_probe._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @synth_probe._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 467, i32 3}
!60 = !{ptr @synth_probe._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @synth_probe._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 470, i32 2}
!64 = !{ptr @synth_probe._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @synth_probe._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @synth_portlist, !67, !"synth_portlist", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 133, i32 12}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 355, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @testkernel._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @testkernel._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @dt_stat, !74, !"dt_stat", i1 false, i1 false}
!74 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 135, i32 12}
!75 = !{ptr @dma_state, !76, !"dma_state", i1 false, i1 false}
!76 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 135, i32 21}
!77 = !{ptr @do_catch_up.last, !78, !"last", i1 false, i1 false}
!78 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 366, i32 16}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 395, i32 3}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 404, i32 3}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 413, i32 29}
!85 = distinct !{null, !86, !"in_escape", i1 false, i1 false}
!86 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 134, i32 12}
!87 = distinct !{null, !88, !"is_flushing", i1 false, i1 false}
!88 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 134, i32 23}
!89 = !{ptr @synth_attrs, !90, !"synth_attrs", i1 false, i1 false}
!90 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 185, i32 26}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 154, i32 2}
!93 = !{ptr @caps_start_attribute, !94, !"caps_start_attribute", i1 false, i1 false}
!94 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 153, i32 30}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 156, i32 2}
!97 = !{ptr @caps_stop_attribute, !98, !"caps_stop_attribute", i1 false, i1 false}
!98 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 155, i32 30}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 158, i32 2}
!101 = !{ptr @pitch_attribute, !102, !"pitch_attribute", i1 false, i1 false}
!102 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 157, i32 30}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 160, i32 2}
!105 = !{ptr @inflection_attribute, !106, !"inflection_attribute", i1 false, i1 false}
!106 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 159, i32 30}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 162, i32 2}
!109 = !{ptr @punct_attribute, !110, !"punct_attribute", i1 false, i1 false}
!110 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 161, i32 30}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 164, i32 2}
!113 = !{ptr @rate_attribute, !114, !"rate_attribute", i1 false, i1 false}
!114 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 163, i32 30}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 166, i32 2}
!117 = !{ptr @voice_attribute, !118, !"voice_attribute", i1 false, i1 false}
!118 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 165, i32 30}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 168, i32 2}
!121 = !{ptr @vol_attribute, !122, !"vol_attribute", i1 false, i1 false}
!122 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 167, i32 30}
!123 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 171, i32 2}
!125 = !{ptr @delay_time_attribute, !126, !"delay_time_attribute", i1 false, i1 false}
!126 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 170, i32 30}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 173, i32 2}
!129 = !{ptr @direct_attribute, !130, !"direct_attribute", i1 false, i1 false}
!130 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 172, i32 30}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 175, i32 2}
!133 = !{ptr @full_time_attribute, !134, !"full_time_attribute", i1 false, i1 false}
!134 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 174, i32 30}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 177, i32 2}
!137 = !{ptr @jiffy_delta_attribute, !138, !"jiffy_delta_attribute", i1 false, i1 false}
!138 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 176, i32 30}
!139 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 179, i32 2}
!141 = !{ptr @trigger_time_attribute, !142, !"trigger_time_attribute", i1 false, i1 false}
!142 = !{!"../drivers/accessibility/speakup/speakup_decpc.c", i32 178, i32 30}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 6468688}
!154 = !{i64 2154002364}
!155 = !{i64 2154004349}
!156 = !{i64 6468293}
!157 = !{i64 2154068816}
!158 = !{i64 2154073566}
