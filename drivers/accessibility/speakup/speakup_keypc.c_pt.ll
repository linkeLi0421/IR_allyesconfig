; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/speakup_keypc.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/speakup_keypc.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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

@__param_str_port = internal constant [19 x i8] c"speakup_keypc.port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@port_forced = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 2, %union.anon.68 { ptr @port_forced } }, section "__param", align 4
@__UNIQUE_ID_porttype229 = internal constant [32 x i8] c"speakup_keypc.parmtype=port:int\00", section ".modinfo", align 1
@__param_str_start = internal constant [20 x i8] c"speakup_keypc.start\00", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@synth_keypc = internal global { %struct.spk_synth, [40 x i8] } { %struct.spk_synth { %struct.list_head zeroinitializer, ptr @.str.3, ptr @.str.2, ptr @.str.4, ptr @.str.5, i8 31, i8 3, i32 500, i32 50, i32 50, i32 1000, i32 0, i32 0, ptr null, i16 0, i16 0, i32 20030716, ptr @vars, ptr null, ptr null, ptr @spk_serial_io_ops, ptr @synth_probe, ptr @keynote_release, ptr @synth_immediate, ptr @do_catch_up, ptr @synth_flush, ptr @spk_synth_is_alive_nop, ptr null, ptr null, ptr null, %struct.synth_indexing zeroinitializer, i32 0, %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @synth_attrs, ptr null }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_start = internal constant %struct.kernel_param { ptr @__param_str_start, ptr null, ptr @param_ops_short, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_keypc, i64 58) } }, section "__param", align 4
@__UNIQUE_ID_starttype230 = internal constant [35 x i8] c"speakup_keypc.parmtype=start:short\00", section ".modinfo", align 1
@__UNIQUE_ID_port231 = internal constant [77 x i8] c"speakup_keypc.parm=port:Set the port for the synthesizer (override probing).\00", section ".modinfo", align 1
@__UNIQUE_ID_start232 = internal constant [66 x i8] c"speakup_keypc.parm=start:Start the synthesizer once it is loaded.\00", section ".modinfo", align 1
@__initcall__kmod_speakup_keypc__233_312_synth_keypc_init6 = internal global ptr @synth_keypc_init, section ".initcall6.init", align 4
@__exitcall_synth_keypc_exit = internal global ptr @synth_keypc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [36 x i8] c"speakup_keypc.author=David Borowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [75 x i8] c"speakup_keypc.description=Speakup support for Keynote Gold PC synthesizers\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [63 x i8] c"speakup_keypc.file=drivers/accessibility/speakup/speakup_keypc\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [26 x i8] c"speakup_keypc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version238 = internal constant [27 x i8] c"speakup_keypc.version=2.10\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"speakup_keypc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.10\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"keypc\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Keynote PC\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[t][n7,1][n8,0]\00", [16 x i8] zeroinitializer }, align 32
@spk_serial_io_ops = external dso_local global %struct.spk_io_ops, align 4
@synth_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @rate_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr null], [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[f130]\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[f90]\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04%c \00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[f%d]\00", [26 x i8] zeroinitializer }, align 32
@vars = internal global { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }>, [32 x i8] } { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }> <{ { i32, { %struct.string_var_t, [24 x i8] } } { i32 38, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.6 }, [24 x i8] undef } }, { i32, { %struct.string_var_t, [24 x i8] } } { i32 39, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.7 }, [24 x i8] undef } }, %struct.var_t { i32 28, %union.anon.74 { %struct.num_var_t { ptr @.str.8, i32 8, i32 0, i32 10, i16 81, i16 -8, ptr null, i32 0 } } }, %struct.var_t { i32 29, %union.anon.74 { %struct.num_var_t { ptr @.str.9, i32 5, i32 0, i32 9, i16 40, i16 10, ptr null, i32 0 } } }, %struct.var_t { i32 36, %union.anon.74 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.74 zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@synth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016Probing for %s.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synth_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/accessibility/speakup/speakup_keypc.c\00", [50 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr = internal global ptr @synth_probe._entry, section ".printk_index", align 4
@synth_port = internal global { i32, [28 x i8] } zeroinitializer, align 32
@synth_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.13, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016probe forced to %x by kernel command line\0A\00", [51 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.16 = internal global ptr @synth_probe._entry.14, section ".printk_index", align 4
@synth_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.13, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014sorry, port already reserved\0A\00", [32 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.19 = internal global ptr @synth_probe._entry.17, section ".printk_index", align 4
@synth_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.13, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014request_region: failed with 0x%x, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.22 = internal global ptr @synth_probe._entry.20, section ".printk_index", align 4
@synth_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.13, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: not found\0A\00", [47 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.25 = internal global ptr @synth_probe._entry.23, section ".printk_index", align 4
@synth_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.13, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: %03x-%03x, driver version %s,\0A\00", [59 x i8] zeroinitializer }, align 32
@synth_probe._entry_ptr.28 = internal global ptr @synth_probe._entry.26, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@oops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.13, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014synth timeout %d %d %d %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"oops\00", [27 x i8] zeroinitializer }, align 32
@oops._entry_ptr = internal global ptr @oops._entry, section ".printk_index", align 4
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@caps_start_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@caps_stop_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@pitch_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@rate_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@delay_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@full_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@jiffy_delta_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@trigger_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"port_forced\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 33, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"synth_keypc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 85, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 317, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 86, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 88, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 89, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"synth_attrs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 72, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 37, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 38, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 39, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 40, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 36, i32 21 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 259, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"synth_port\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 32, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 262, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 265, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 273, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 286, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 291, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 139, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"caps_start_attribute\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 48, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c"caps_stop_attribute\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 50, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"pitch_attribute\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 52, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"rate_attribute\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 54, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"delay_time_attribute\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 57, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"direct_attribute\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 59, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"full_time_attribute\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 61, i32 30 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"jiffy_delta_attribute\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 63, i32 30 }
@___asan_gen_.161 = private unnamed_addr constant [23 x i8] c"trigger_time_attribute\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 65, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 49, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 51, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 53, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 55, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 58, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 60, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 62, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 64, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [49 x i8] c"../drivers/accessibility/speakup/speakup_keypc.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 66, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_port231, ptr @__UNIQUE_ID_porttype229, ptr @__UNIQUE_ID_start232, ptr @__UNIQUE_ID_starttype230, ptr @__UNIQUE_ID_version238, ptr @__exitcall_synth_keypc_exit, ptr @__initcall__kmod_speakup_keypc__233_312_synth_keypc_init6, ptr @__modver_attr, ptr @__param_port, ptr @__param_start, ptr @oops._entry, ptr @oops._entry_ptr, ptr @synth_keypc_exit, ptr @synth_probe._entry, ptr @synth_probe._entry.14, ptr @synth_probe._entry.17, ptr @synth_probe._entry.20, ptr @synth_probe._entry.23, ptr @synth_probe._entry.26, ptr @synth_probe._entry_ptr, ptr @synth_probe._entry_ptr.16, ptr @synth_probe._entry_ptr.19, ptr @synth_probe._entry_ptr.22, ptr @synth_probe._entry_ptr.25, ptr @synth_probe._entry_ptr.28, ptr @port_forced, ptr @synth_keypc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @synth_attrs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vars, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @synth_port, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @rate_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_forced to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_keypc to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vars to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_stop_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitch_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffy_delta_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_keypc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @synth_add(ptr noundef nonnull @synth_keypc) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synth_keypc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @synth_remove(ptr noundef nonnull @synth_keypc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_probe(ptr nocapture noundef %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %long_name = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 3
  %0 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %long_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %1) #8
  %2 = load i32, ptr @port_forced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %entry
  %call19 = tail call i32 @synth_request_region(i32 noundef 680, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %if.end41.thread79

if.then:                                          ; preds = %entry
  store i32 %2, ptr @synth_port, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %2) #8
  %3 = load i32, ptr @synth_port, align 4
  %sub = add i32 %3, -1
  %call6 = tail call i32 @synth_request_region(i32 noundef %sub, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %do.end11

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = load i32, ptr @synth_port, align 4
  %and = and i32 %4, 1048575
  %add = or i32 %and, -18874368
  %5 = inttoptr i32 %add to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  br label %if.end41

if.end41.thread79:                                ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 680, i32 noundef 4) #8
  br label %do.end47

if.end28:                                         ; preds = %for.body.preheader
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873688 to ptr)) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %7)
  %cmp = icmp eq i8 %7, -128
  br i1 %cmp, label %if.end41.thread, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41.thread:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  store i32 680, ptr @synth_port, align 4
  br label %do.end55

if.end41:                                         ; preds = %if.end28.if.end41_crit_edge, %if.end
  %port_val.2.in = phi i8 [ %6, %if.end ], [ %7, %if.end28.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %port_val.2.in)
  %cmp42.not = icmp eq i8 %port_val.2.in, -128
  br i1 %cmp42.not, label %if.end41.do.end55_crit_edge, label %if.end41.do.end47_crit_edge

if.end41.do.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

if.end41.do.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.end47:                                         ; preds = %if.end41.do.end47_crit_edge, %if.end41.thread79
  %8 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %long_name, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %9) #8
  %10 = load i32, ptr @synth_port, align 4
  %call51 = tail call i32 @synth_release_region(i32 noundef %10, i32 noundef 4) #5
  store i32 0, ptr @synth_port, align 4
  br label %cleanup

do.end55:                                         ; preds = %if.end41.do.end55_crit_edge, %if.end41.thread
  %11 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %long_name, align 4
  %13 = load i32, ptr @synth_port, align 4
  %sub59 = add i32 %13, 3
  %version = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 2
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %version, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %12, i32 noundef %13, i32 noundef %sub59, ptr noundef %15) #8
  %alive = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 31
  %16 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %alive, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end47, %do.end11
  %retval.0 = phi i32 [ -16, %do.end11 ], [ -19, %do.end47 ], [ 0, %do.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keynote_release(ptr nocapture noundef readnone %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @spk_stop_serial_interrupt() #5
  %0 = load i32, ptr @synth_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @synth_release_region(i32 noundef %0, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i32 0, ptr @synth_port, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @synth_immediate(ptr nocapture noundef readnone %synth, ptr noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not23 = icmp eq i8 %1, 0
  br i1 %tobool.not23, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %26, %while.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %buf.addr.024 = phi ptr [ %incdec.ptr, %while.end.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp = icmp eq i8 %2, 10
  %spec.store.select = select i1 %cmp, i8 31, i8 %2
  %3 = load i32, ptr @synth_port, align 4
  %and.i.i = and i32 %3, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp sgt i8 %5, -1
  br i1 %cmp.i, label %while.body.cleanup_crit_edge, label %while.body.while.cond4_crit_edge

while.body.while.cond4_crit_edge:                 ; preds = %while.body
  br label %while.cond4

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond4:                                      ; preds = %while.body6.while.cond4_crit_edge, %while.body.while.cond4_crit_edge
  %timeout.0 = phi i32 [ %dec, %while.body6.while.cond4_crit_edge ], [ 1000, %while.body.while.cond4_crit_edge ]
  %6 = load i32, ptr @synth_port, align 4
  %and.i.i17 = and i32 %6, 1048575
  %add.i.i18 = or i32 %and.i.i17, -18874368
  %7 = inttoptr i32 %add.i.i18 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i19.not = icmp eq i8 %9, 0
  br i1 %cmp.i19.not, label %while.end, label %while.body6

while.body6:                                      ; preds = %while.cond4
  %dec = add nsw i32 %timeout.0, -1
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then9, label %while.body6.while.cond4_crit_edge

while.body6.while.cond4_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond4

if.then9:                                         ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #7
  %10 = load i32, ptr @synth_port, align 4
  %and.i.i20 = and i32 %10, 1048575
  %add.i.i21 = or i32 %and.i.i20, -18874368
  %11 = inttoptr i32 %add.i.i21 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv.i = zext i8 %12 to i32
  %13 = load i32, ptr @synth_port, align 4
  %add.i = add i32 %13, 1
  %and.i1.i = and i32 %add.i, 1048575
  %add.i2.i = or i32 %and.i1.i, -18874368
  %14 = inttoptr i32 %add.i2.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv2.i = zext i8 %15 to i32
  %16 = load i32, ptr @synth_port, align 4
  %add3.i = add i32 %16, 2
  %and.i3.i = and i32 %add3.i, 1048575
  %add.i4.i = or i32 %and.i3.i, -18874368
  %17 = inttoptr i32 %add.i4.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv5.i = zext i8 %18 to i32
  %19 = load i32, ptr @synth_port, align 4
  %add6.i = add i32 %19, 3
  %and.i5.i = and i32 %add6.i, 1048575
  %add.i6.i = or i32 %and.i5.i, -18874368
  %20 = inttoptr i32 %add.i6.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv8.i = zext i8 %21 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv5.i, i32 noundef %conv8.i) #8
  br label %cleanup

while.end:                                        ; preds = %while.cond4
  %22 = load i32, ptr @synth_port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %and.i = and i32 %22, 1048575
  %add.i22 = or i32 %and.i, -18874368
  %23 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %spec.store.select) #5, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 15032360) #5
  %incdec.ptr = getelementptr i8, ptr %buf.addr.024, i32 1
  %25 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %if.then9, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %entry.cleanup_crit_edge ], [ %buf.addr.024, %while.body.cleanup_crit_edge ], [ null, %while.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_catch_up(ptr noundef %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spk_get_var(i32 noundef 14) #5
  %call1 = tail call ptr @spk_get_var(i32 noundef 12) #5
  %call2 = tail call ptr @spk_get_var(i32 noundef 15) #5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #5
  %value = getelementptr inbounds %struct.var_t, ptr %call, i32 0, i32 1, i32 0, i32 7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call8357 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call8357, label %entry.while.cond257.preheader_crit_edge, label %do.body10.lr.ph

entry.while.cond257.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond257.preheader

do.body10.lr.ph:                                  ; preds = %entry
  %add = add i32 %2, %1
  %flush = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 25
  %value96 = getelementptr inbounds %struct.var_t, ptr %call2, i32 0, i32 1, i32 0, i32 7
  %value251 = getelementptr inbounds %struct.var_t, ptr %call1, i32 0, i32 1, i32 0, i32 7
  br label %do.body10

do.body10:                                        ; preds = %while.cond.backedge.do.body10_crit_edge, %do.body10.lr.ph
  %jiff_max.0358 = phi i32 [ %add, %do.body10.lr.ph ], [ %jiff_max.0.be, %while.cond.backedge.do.body10_crit_edge ]
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 2), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call17) #5
  %4 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush, align 4
  tail call void %5(ptr noundef %synth) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end234, %do.body196.while.cond.backedge_crit_edge, %if.else.i, %if.then
  %jiff_max.0.be = phi i32 [ %jiff_max.0358, %if.then ], [ %jiff_max.0358, %if.else.i ], [ %add254, %if.end234 ], [ %jiff_max.0358, %do.body196.while.cond.backedge_crit_edge ]
  %call8 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call8, label %while.cond.backedge.while.cond257.preheader_crit_edge, label %while.cond.backedge.do.body10_crit_edge

while.cond.backedge.do.body10_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

while.cond.backedge.while.cond257.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond257.preheader

if.end:                                           ; preds = %do.body10
  tail call void @synth_buffer_skip_nonlatin1() #5
  %call22 = tail call i32 @synth_buffer_empty() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %__here, label %if.then24

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call17) #5
  br label %while.cond257.preheader

while.cond257.preheader:                          ; preds = %if.then232, %if.then192, %if.then24, %while.cond.backedge.while.cond257.preheader_crit_edge, %entry.while.cond257.preheader_crit_edge
  br label %while.cond257

__here:                                           ; preds = %if.end
  %6 = tail call i32 @llvm.read_register.i32(metadata !125) #5
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !141
  %13 = ptrtoint ptr %value96 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value96, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call17) #5
  %15 = load i32, ptr @synth_port, align 4
  %and.i.i = and i32 %15, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp.i299 = icmp sgt i8 %17, -1
  br i1 %cmp.i299, label %if.else.i, label %__here153

if.else.i:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #5
  %call100 = tail call i32 @schedule_timeout(i32 noundef %call2.i) #5
  br label %while.cond.backedge

__here153:                                        ; preds = %__here
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change157 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change157 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@do_catch_up, %__here153) to i32), ptr %task_state_change157, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %21, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !142
  br label %while.cond183

while.cond183:                                    ; preds = %while.body185.while.cond183_crit_edge, %__here153
  %timeout.0 = phi i32 [ 1000, %__here153 ], [ %dec, %while.body185.while.cond183_crit_edge ]
  %23 = load i32, ptr @synth_port, align 4
  %and.i.i300 = and i32 %23, 1048575
  %add.i.i301 = or i32 %and.i.i300, -18874368
  %24 = inttoptr i32 %add.i.i301 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %26 = and i8 %25, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i302.not = icmp eq i8 %26, 0
  br i1 %cmp.i302.not, label %do.body196, label %while.body185

while.body185:                                    ; preds = %while.cond183
  %dec = add nsw i32 %timeout.0, -1
  %cmp186 = icmp eq i32 %dec, 0
  br i1 %cmp186, label %if.then192, label %while.body185.while.cond183_crit_edge

while.body185.while.cond183_crit_edge:            ; preds = %while.body185
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond183

if.then192:                                       ; preds = %while.body185
  call void @__sanitizer_cov_trace_pc() #7
  %27 = load i32, ptr @synth_port, align 4
  %and.i.i303 = and i32 %27, 1048575
  %add.i.i304 = or i32 %and.i.i303, -18874368
  %28 = inttoptr i32 %add.i.i304 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv.i = zext i8 %29 to i32
  %30 = load i32, ptr @synth_port, align 4
  %add.i = add i32 %30, 1
  %and.i1.i = and i32 %add.i, 1048575
  %add.i2.i = or i32 %and.i1.i, -18874368
  %31 = inttoptr i32 %add.i2.i to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv2.i = zext i8 %32 to i32
  %33 = load i32, ptr @synth_port, align 4
  %add3.i = add i32 %33, 2
  %and.i3.i = and i32 %add3.i, 1048575
  %add.i4.i = or i32 %and.i3.i, -18874368
  %34 = inttoptr i32 %add.i4.i to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv5.i = zext i8 %35 to i32
  %36 = load i32, ptr @synth_port, align 4
  %add6.i = add i32 %36, 3
  %and.i5.i = and i32 %add6.i, 1048575
  %add.i6.i = or i32 %and.i5.i, -18874368
  %37 = inttoptr i32 %add.i6.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv8.i = zext i8 %38 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv5.i, i32 noundef %conv8.i) #8
  br label %while.cond257.preheader

do.body196:                                       ; preds = %while.cond183
  %call203 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #5
  %call208 = tail call zeroext i16 @synth_buffer_getc() #5
  %conv209 = trunc i16 %call208 to i8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call203) #5
  %conv209.mask = and i16 %call208, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv209.mask)
  %cmp211 = icmp eq i16 %conv209.mask, 10
  %spec.store.select = select i1 %cmp211, i8 31, i8 %conv209
  %39 = load i32, ptr @synth_port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %and.i305 = and i32 %39, 1048575
  %add.i306 = or i32 %and.i305, -18874368
  %40 = inttoptr i32 %add.i306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %spec.store.select) #5, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 15032360) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %42, %jiff_max.0358
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp215 = icmp sgt i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %spec.store.select)
  %cmp218 = icmp eq i8 %spec.store.select, 32
  %or.cond = and i1 %cmp218, %cmp215
  br i1 %or.cond, label %do.body196.while.cond221_crit_edge, label %do.body196.while.cond.backedge_crit_edge

do.body196.while.cond.backedge_crit_edge:         ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

do.body196.while.cond221_crit_edge:               ; preds = %do.body196
  br label %while.cond221

while.cond221:                                    ; preds = %while.body223.while.cond221_crit_edge, %do.body196.while.cond221_crit_edge
  %timeout.2 = phi i32 [ %dec224, %while.body223.while.cond221_crit_edge ], [ 1000, %do.body196.while.cond221_crit_edge ]
  %43 = load i32, ptr @synth_port, align 4
  %and.i.i307 = and i32 %43, 1048575
  %add.i.i308 = or i32 %and.i.i307, -18874368
  %44 = inttoptr i32 %add.i.i308 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %46 = and i8 %45, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i309.not = icmp eq i8 %46, 0
  br i1 %cmp.i309.not, label %if.end234, label %while.body223

while.body223:                                    ; preds = %while.cond221
  %dec224 = add nsw i32 %timeout.2, -1
  %cmp225 = icmp eq i32 %dec224, 0
  br i1 %cmp225, label %if.then232, label %while.body223.while.cond221_crit_edge

while.body223.while.cond221_crit_edge:            ; preds = %while.body223
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond221

if.then232:                                       ; preds = %while.body223
  call void @__sanitizer_cov_trace_pc() #7
  %47 = load i32, ptr @synth_port, align 4
  %and.i.i310 = and i32 %47, 1048575
  %add.i.i311 = or i32 %and.i.i310, -18874368
  %48 = inttoptr i32 %add.i.i311 to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv.i312 = zext i8 %49 to i32
  %50 = load i32, ptr @synth_port, align 4
  %add.i313 = add i32 %50, 1
  %and.i1.i314 = and i32 %add.i313, 1048575
  %add.i2.i315 = or i32 %and.i1.i314, -18874368
  %51 = inttoptr i32 %add.i2.i315 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv2.i316 = zext i8 %52 to i32
  %53 = load i32, ptr @synth_port, align 4
  %add3.i317 = add i32 %53, 2
  %and.i3.i318 = and i32 %add3.i317, 1048575
  %add.i4.i319 = or i32 %and.i3.i318, -18874368
  %54 = inttoptr i32 %add.i4.i319 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv5.i320 = zext i8 %55 to i32
  %56 = load i32, ptr @synth_port, align 4
  %add6.i321 = add i32 %56, 3
  %and.i5.i322 = and i32 %add6.i321, 1048575
  %add.i6.i323 = or i32 %and.i5.i322, -18874368
  %57 = inttoptr i32 %add.i6.i323 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv8.i324 = zext i8 %58 to i32
  %call9.i325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv.i312, i32 noundef %conv2.i316, i32 noundef %conv5.i320, i32 noundef %conv8.i324) #8
  br label %while.cond257.preheader

if.end234:                                        ; preds = %while.cond221
  call void @__sanitizer_cov_trace_pc() #7
  %59 = load i32, ptr @synth_port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %and.i326 = and i32 %59, 1048575
  %add.i327 = or i32 %and.i326, -18874368
  %60 = inttoptr i32 %add.i327 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 31) #5, !srcloc !140
  %call243 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #5
  %61 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value, align 4
  %63 = ptrtoint ptr %value251 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %value251, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call243) #5
  %call2.i295 = tail call i32 @__msecs_to_jiffies(i32 noundef %64) #5
  %call253 = tail call i32 @schedule_timeout(i32 noundef %call2.i295) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add254 = add i32 %65, %62
  br label %while.cond.backedge

while.cond257:                                    ; preds = %while.body259.while.cond257_crit_edge, %while.cond257.preheader
  %timeout.4 = phi i32 [ %dec260, %while.body259.while.cond257_crit_edge ], [ 1000, %while.cond257.preheader ]
  %66 = load i32, ptr @synth_port, align 4
  %and.i.i328 = and i32 %66, 1048575
  %add.i.i329 = or i32 %and.i.i328, -18874368
  %67 = inttoptr i32 %add.i.i329 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %69 = and i8 %68, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i330.not = icmp eq i8 %69, 0
  br i1 %cmp.i330.not, label %if.else, label %while.body259

while.body259:                                    ; preds = %while.cond257
  %dec260 = add nsw i32 %timeout.4, -1
  %cmp261 = icmp eq i32 %dec260, 0
  br i1 %cmp261, label %if.then268, label %while.body259.while.cond257_crit_edge

while.body259.while.cond257_crit_edge:            ; preds = %while.body259
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond257

if.then268:                                       ; preds = %while.body259
  call void @__sanitizer_cov_trace_pc() #7
  %70 = load i32, ptr @synth_port, align 4
  %and.i.i331 = and i32 %70, 1048575
  %add.i.i332 = or i32 %and.i.i331, -18874368
  %71 = inttoptr i32 %add.i.i332 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv.i333 = zext i8 %72 to i32
  %73 = load i32, ptr @synth_port, align 4
  %add.i334 = add i32 %73, 1
  %and.i1.i335 = and i32 %add.i334, 1048575
  %add.i2.i336 = or i32 %and.i1.i335, -18874368
  %74 = inttoptr i32 %add.i2.i336 to ptr
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv2.i337 = zext i8 %75 to i32
  %76 = load i32, ptr @synth_port, align 4
  %add3.i338 = add i32 %76, 2
  %and.i3.i339 = and i32 %add3.i338, 1048575
  %add.i4.i340 = or i32 %and.i3.i339, -18874368
  %77 = inttoptr i32 %add.i4.i340 to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv5.i341 = zext i8 %78 to i32
  %79 = load i32, ptr @synth_port, align 4
  %add6.i342 = add i32 %79, 3
  %and.i5.i343 = and i32 %add6.i342, 1048575
  %add.i6.i344 = or i32 %and.i5.i343, -18874368
  %80 = inttoptr i32 %add.i6.i344 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #5, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv8.i345 = zext i8 %81 to i32
  %call9.i346 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv.i333, i32 noundef %conv2.i337, i32 noundef %conv5.i341, i32 noundef %conv8.i345) #8
  br label %if.end270

if.else:                                          ; preds = %while.cond257
  call void @__sanitizer_cov_trace_pc() #7
  %82 = load i32, ptr @synth_port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %and.i347 = and i32 %82, 1048575
  %add.i348 = or i32 %and.i347, -18874368
  %83 = inttoptr i32 %add.i348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 31) #5, !srcloc !140
  br label %if.end270

if.end270:                                        ; preds = %if.else, %if.then268
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synth_flush(ptr nocapture noundef readnone %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @synth_port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %and.i = and i32 %0, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 3) #5, !srcloc !140
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_synth_is_alive_nop(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_request_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_release_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_stop_serial_interrupt() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123}
!llvm.named.register.sp = !{!125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__param_port, !1, !"__param_port", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 306, i32 1}
!2 = !{ptr @__UNIQUE_ID_porttype229, !1, !"__UNIQUE_ID_porttype229", i1 false, i1 false}
!3 = !{ptr @__param_start, !4, !"__param_start", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 307, i32 1}
!5 = !{ptr @__UNIQUE_ID_starttype230, !4, !"__UNIQUE_ID_starttype230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_port231, !7, !"__UNIQUE_ID_port231", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 309, i32 1}
!8 = !{ptr @__UNIQUE_ID_start232, !9, !"__UNIQUE_ID_start232", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 310, i32 1}
!10 = !{ptr @__initcall__kmod_speakup_keypc__233_312_synth_keypc_init6, !11, !"__initcall__kmod_speakup_keypc__233_312_synth_keypc_init6", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 312, i32 1}
!12 = !{ptr @__exitcall_synth_keypc_exit, !11, !"__exitcall_synth_keypc_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author234, !14, !"__UNIQUE_ID_author234", i1 false, i1 false}
!14 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 314, i32 1}
!15 = !{ptr @__UNIQUE_ID_description235, !16, !"__UNIQUE_ID_description235", i1 false, i1 false}
!16 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 315, i32 1}
!17 = !{ptr @__UNIQUE_ID_file236, !18, !"__UNIQUE_ID_file236", i1 false, i1 false}
!18 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 316, i32 1}
!19 = !{ptr @__UNIQUE_ID_license237, !18, !"__UNIQUE_ID_license237", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_version238, !21, !"__UNIQUE_ID_version238", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 317, i32 1}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @port_forced, !27, !"port_forced", i1 false, i1 false}
!27 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 33, i32 12}
!28 = !{ptr @__param_str_port, !1, !"__param_str_port", i1 false, i1 false}
!29 = !{ptr @__param_str_start, !4, !"__param_str_start", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 86, i32 10}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 88, i32 15}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 89, i32 10}
!36 = !{ptr @synth_keypc, !37, !"synth_keypc", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 85, i32 25}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 37, i32 24}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 38, i32 23}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 39, i32 18}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 40, i32 19}
!46 = !{ptr @vars, !47, !"vars", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 36, i32 21}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 259, i32 2}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @synth_probe._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @synth_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 262, i32 3}
!56 = !{ptr @synth_probe._entry.14, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @synth_probe._entry_ptr.16, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 265, i32 4}
!60 = !{ptr @synth_probe._entry.17, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @synth_probe._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 273, i32 5}
!64 = !{ptr @synth_probe._entry.20, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @synth_probe._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 286, i32 3}
!68 = !{ptr @synth_probe._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @synth_probe._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 291, i32 2}
!72 = !{ptr @synth_probe._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @synth_probe._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @synth_port, !75, !"synth_port", i1 false, i1 false}
!75 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 32, i32 12}
!76 = distinct !{null, !77, !"synth_portlist", i1 false, i1 false}
!77 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 34, i32 21}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 139, i32 2}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @oops._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @oops._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 198, i32 3}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 205, i32 3}
!87 = !{ptr @synth_attrs, !88, !"synth_attrs", i1 false, i1 false}
!88 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 72, i32 26}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 49, i32 2}
!91 = !{ptr @caps_start_attribute, !92, !"caps_start_attribute", i1 false, i1 false}
!92 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 48, i32 30}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 51, i32 2}
!95 = !{ptr @caps_stop_attribute, !96, !"caps_stop_attribute", i1 false, i1 false}
!96 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 50, i32 30}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 53, i32 2}
!99 = !{ptr @pitch_attribute, !100, !"pitch_attribute", i1 false, i1 false}
!100 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 52, i32 30}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 55, i32 2}
!103 = !{ptr @rate_attribute, !104, !"rate_attribute", i1 false, i1 false}
!104 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 54, i32 30}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 58, i32 2}
!107 = !{ptr @delay_time_attribute, !108, !"delay_time_attribute", i1 false, i1 false}
!108 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 57, i32 30}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 60, i32 2}
!111 = !{ptr @direct_attribute, !112, !"direct_attribute", i1 false, i1 false}
!112 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 59, i32 30}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 62, i32 2}
!115 = !{ptr @full_time_attribute, !116, !"full_time_attribute", i1 false, i1 false}
!116 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 61, i32 30}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 64, i32 2}
!119 = !{ptr @jiffy_delta_attribute, !120, !"jiffy_delta_attribute", i1 false, i1 false}
!120 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 63, i32 30}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 66, i32 2}
!123 = !{ptr @trigger_time_attribute, !124, !"trigger_time_attribute", i1 false, i1 false}
!124 = !{!"../drivers/accessibility/speakup/speakup_keypc.c", i32 65, i32 30}
!125 = !{!"sp"}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i64 6478176}
!136 = !{i64 2154081903}
!137 = !{i64 2154083961}
!138 = !{i64 2154011852}
!139 = !{i64 2154013837}
!140 = !{i64 6477781}
!141 = !{i64 2154070326}
!142 = !{i64 2154075076}
