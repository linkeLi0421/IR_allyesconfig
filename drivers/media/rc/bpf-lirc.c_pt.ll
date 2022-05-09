; ModuleID = '/llk/IR_all_yes/drivers/media/rc/bpf-lirc.c_pt.bc'
source_filename = "../drivers/media/rc/bpf-lirc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_prog_ops = type { ptr }
%struct.bpf_verifier_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.161, %union.anon.163, ptr, ptr }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32, i32 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.101 }
%union.anon.101 = type { i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.bpf_trace_run_ctx = type { %struct.bpf_run_ctx, i64 }
%struct.bpf_run_ctx = type {}
%struct.ir_raw_event_ctrl = type { %struct.list_head, ptr, %struct.anon.167, i64, ptr, %struct.spinlock, %struct.timer_list, %struct.ir_raw_event, %struct.ir_raw_event, i32, ptr, %struct.nec_dec, %struct.rc5_dec, %struct.rc6_dec, %struct.sony_dec, %struct.jvc_dec, %struct.sanyo_dec, %struct.sharp_dec, %struct.mce_kbd_dec, %struct.xmp_dec, %struct.imon_dec, %struct.rcmm_dec }
%struct.anon.167 = type { %union.anon.168, [512 x %struct.ir_raw_event] }
%union.anon.168 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.ir_raw_event = type { %union.anon.169, i8, i8 }
%union.anon.169 = type { i32 }
%struct.nec_dec = type { i32, i32, i32, i8, i8 }
%struct.rc5_dec = type { i32, i32, i32, i8 }
%struct.rc6_dec = type { i32, i8, i32, i8, i32, i32 }
%struct.sony_dec = type { i32, i32, i32 }
%struct.jvc_dec = type { i32, i16, i16, i32, i8, i8 }
%struct.sanyo_dec = type { i32, i32, i64 }
%struct.sharp_dec = type { i32, i32, i32, i32 }
%struct.mce_kbd_dec = type { %struct.spinlock, %struct.timer_list, i32, i8, i32, i32, i32 }
%struct.xmp_dec = type { i32, i32, [16 x i32] }
%struct.imon_dec = type { i32, i32, i32, i32, i8 }
%struct.rcmm_dec = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.68 }
%union.anon.68 = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.anon.154, [0 x %struct.sock_filter] }
%struct.anon.154 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.anon.111 = type { i32, i32, i32, i32, i32 }
%struct.anon.116 = type { i32, i32, i32, i32, i64, i32 }

@lirc_mode2_prog_ops = dso_local constant { %struct.bpf_prog_ops, [28 x i8] } zeroinitializer, align 32
@lirc_mode2_verifier_ops = dso_local constant { %struct.bpf_verifier_ops, [36 x i8] } { %struct.bpf_verifier_ops { ptr @lirc_mode2_func_proto, ptr @lirc_mode2_is_valid_access, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lirc_bpf_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ir_raw_handler_lock = external dso_local global %struct.mutex, align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/rc/bpf-lirc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@lirc_prog_query.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rc_repeat_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_rc_repeat, i8 1, i8 0, i32 0, %union.anon.161 { %struct.anon.162 { i32 9, i32 0, i32 0, i32 0, i32 0 } }, %union.anon.163 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rc_keydown_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_rc_keydown, i8 1, i8 0, i32 0, %union.anon.161 { %struct.anon.162 { i32 9, i32 10, i32 10, i32 10, i32 0 } }, %union.anon.163 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rc_pointer_rel_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_rc_pointer_rel, i8 1, i8 0, i32 0, %union.anon.161 { %struct.anon.162 { i32 9, i32 10, i32 10, i32 0, i32 0 } }, %union.anon.163 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_map_lookup_elem_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_map_update_elem_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_map_delete_elem_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_map_push_elem_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_map_pop_elem_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_map_peek_elem_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ktime_get_ns_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ktime_get_boot_ns_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_tail_call_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_get_prandom_u32_proto = external dso_local constant %struct.bpf_func_proto, align 4
@BPF_PROG_RUN_ARRAY.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/bpf.h\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@lirc_bpf_attach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lirc_bpf_detach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 12, i64 77, i64 78, i64 87, i64 88, i64 89, i64 92, i64 125]
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"lirc_mode2_prog_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 17, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"lirc_mode2_verifier_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 130, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 234, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"rc_repeat_proto\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 31, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"rc_keydown_proto\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 50, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"rc_pointer_rel_proto\00", align 1
@___asan_gen_.31 = private constant [31 x i8] c"../drivers/media/rc/bpf-lirc.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 73, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"../include/linux/bpf.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1356, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 695, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 723, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 613, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 271, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 174, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @lirc_mode2_prog_ops, ptr @lirc_mode2_verifier_ops, ptr @.str, ptr @.str.1, ptr @rc_repeat_proto, ptr @rc_keydown_proto, ptr @rc_pointer_rel_proto, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_mode2_prog_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_mode2_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_repeat_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_keydown_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_pointer_rel_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_rc_repeat(i64 noundef %sample, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sample to i32
  %0 = inttoptr i32 %conv to ptr
  %dev.i = getelementptr i8, ptr %0, i32 -112
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 8
  tail call void @rc_repeat(ptr noundef %2) #7
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_rc_keydown(i64 noundef %sample, i64 noundef %protocol, i64 noundef %scancode, i64 noundef %toggle, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sample to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %protocol to i32
  %conv2 = trunc i64 %toggle to i32
  %dev.i = getelementptr i8, ptr %0, i32 -112
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp.i = icmp ne i32 %conv2, 0
  %conv1.i = zext i1 %cmp.i to i8
  tail call void @rc_keydown(ptr noundef %2, i32 noundef %conv1, i64 noundef %scancode, i8 noundef zeroext %conv1.i) #7
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_rc_pointer_rel(i64 noundef %sample, i64 noundef %rel_x, i64 noundef %rel_y, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %sample to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %rel_x to i32
  %conv2 = trunc i64 %rel_y to i32
  %dev.i = getelementptr i8, ptr %0, i32 -112
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 8
  %input_dev.i = getelementptr inbounds %struct.rc_dev, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input_dev.i, align 8
  tail call void @input_event(ptr noundef %4, i32 noundef 2, i32 noundef 0, i32 noundef %conv1) #7
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  %input_dev2.i = getelementptr inbounds %struct.rc_dev, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %input_dev2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev2.i, align 8
  tail call void @input_event(ptr noundef %8, i32 noundef 2, i32 noundef 1, i32 noundef %conv2) #7
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %input_dev4.i = getelementptr inbounds %struct.rc_dev, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %input_dev4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input_dev4.i, align 8
  tail call void @input_event(ptr noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lirc_mode2_func_proto(i32 noundef %func_id, ptr nocapture noundef readnone %prog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %func_id, label %entry.sw.default_crit_edge [
    i32 77, label %entry.return_crit_edge
    i32 78, label %sw.bb1
    i32 92, label %sw.bb2
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
    i32 87, label %sw.bb6
    i32 88, label %sw.bb7
    i32 89, label %sw.bb8
    i32 5, label %sw.bb9
    i32 125, label %sw.bb10
    i32 12, label %sw.bb11
    i32 7, label %sw.bb12
    i32 6, label %sw.bb13
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb13:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 38) #7
  br i1 %call.i, label %sw.bb13.if.then_crit_edge, label %perfmon_capable.exit

sw.bb13.if.then_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

perfmon_capable.exit:                             ; preds = %sw.bb13
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call1.i, label %perfmon_capable.exit.if.then_crit_edge, label %perfmon_capable.exit.sw.default_crit_edge

perfmon_capable.exit.sw.default_crit_edge:        ; preds = %perfmon_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

perfmon_capable.exit.if.then_crit_edge:           ; preds = %perfmon_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %perfmon_capable.exit.if.then_crit_edge, %sw.bb13.if.then_crit_edge
  %call14 = tail call ptr @bpf_get_trace_printk_proto() #7
  br label %return

sw.default:                                       ; preds = %perfmon_capable.exit.sw.default_crit_edge, %entry.sw.default_crit_edge
  br label %return

return:                                           ; preds = %sw.default, %if.then, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %sw.default ], [ %call14, %if.then ], [ @bpf_get_prandom_u32_proto, %sw.bb12 ], [ @bpf_tail_call_proto, %sw.bb11 ], [ @bpf_ktime_get_boot_ns_proto, %sw.bb10 ], [ @bpf_ktime_get_ns_proto, %sw.bb9 ], [ @bpf_map_peek_elem_proto, %sw.bb8 ], [ @bpf_map_pop_elem_proto, %sw.bb7 ], [ @bpf_map_push_elem_proto, %sw.bb6 ], [ @bpf_map_delete_elem_proto, %sw.bb5 ], [ @bpf_map_update_elem_proto, %sw.bb4 ], [ @bpf_map_lookup_elem_proto, %sw.bb3 ], [ @rc_pointer_rel_proto, %sw.bb2 ], [ @rc_keydown_proto, %sw.bb1 ], [ @rc_repeat_proto, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lirc_mode2_is_valid_access(i32 noundef %off, i32 noundef %size, i32 noundef %type, ptr nocapture noundef readnone %prog, ptr nocapture noundef readnone %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %cmp1 = icmp eq i32 %off, 0
  %or.cond = and i1 %cmp1, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp2 = icmp eq i32 %size, 4
  %spec.select = and i1 %cmp2, %or.cond
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lirc_bpf_run(ptr nocapture noundef readonly %rcdev, i32 noundef %sample) local_unnamed_addr #0 align 64 {
entry:
  %array_rcu.addr.i = alloca ptr, align 4
  %run_ctx.i = alloca %struct.bpf_trace_run_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %raw1 = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 11
  %0 = ptrtoint ptr %raw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw1, align 4
  %bpf_sample = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bpf_sample to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sample, ptr %bpf_sample, align 8
  %progs = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %progs, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  %5 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %array_rcu.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %run_ctx.i) #7
  %6 = getelementptr inbounds %struct.bpf_trace_run_ctx, ptr %run_ctx.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %6, align 8, !annotation !53
  tail call void @migrate_disable() #7
  %8 = tail call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %12 = ptrtoint ptr %array_rcu.addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i = load volatile ptr, ptr %array_rcu.addr.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @BPF_PROG_RUN_ARRAY.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @BPF_PROG_RUN_ARRAY.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1356, ptr noundef nonnull @.str.3) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, null
  br i1 %tobool9.not.i, label %do.end7.i.out.i_crit_edge, label %if.end14.i, !prof !55

do.end7.i.out.i_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end14.i:                                       ; preds = %do.end7.i
  %13 = tail call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %bpf_ctx.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 217
  %17 = ptrtoint ptr %bpf_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bpf_ctx.i.i, align 8
  store ptr %run_ctx.i, ptr %bpf_ctx.i.i, align 8
  %items.i = getelementptr inbounds %struct.bpf_prog_array, ptr %array_rcu.addr.i.0.array_rcu.addr.i.0.array_rcu.addr.0.array_rcu.addr.0.array_rcu.addr.0..i, i32 0, i32 1
  %19 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %items.i, align 8
  %tobool22.not16.i = icmp eq ptr %20, null
  br i1 %tobool22.not16.i, label %if.end14.i.while.end.i_crit_edge, label %if.end14.i.while.body.i_crit_edge

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  br label %while.body.i

if.end14.i.while.end.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %bpf_prog_run.exit.i.while.body.i_crit_edge, %if.end14.i.while.body.i_crit_edge
  %21 = phi ptr [ %90, %bpf_prog_run.exit.i.while.body.i_crit_edge ], [ %20, %if.end14.i.while.body.i_crit_edge ]
  %item.017.i = phi ptr [ %incdec.ptr.i, %bpf_prog_run.exit.i.while.body.i_crit_edge ], [ %items.i, %if.end14.i.while.body.i_crit_edge ]
  %22 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %item.017.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %6, align 8
  call void @__cant_migrate(ptr noundef nonnull @.str.7, i32 noundef 613) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@lirc_bpf_run, %if.then.i.i.i)) #7
          to label %if.else.i.i.i [label %if.then.i.i.i], !srcloc !56

if.then.i.i.i:                                    ; preds = %while.body.i
  %call3.i.i.i = call i64 @sched_clock() #7
  %insnsi.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %21, i32 1
  %bpf_func.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %21, i32 0, i32 9
  %26 = ptrtoint ptr %bpf_func.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bpf_func.i.i.i, align 4
  %call.i.i.i.i = call i32 %27(ptr noundef %bpf_sample, ptr noundef %insnsi.i.i.i) #7
  %stats9.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %21, i32 0, i32 7
  %28 = ptrtoint ptr %stats9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats9.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %36, %30
  %37 = inttoptr i32 %add.i.i.i to ptr
  %syncp.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %37, i32 0, i32 3
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !57
  %and.i.i.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i.i.i.do.body12.i.i.i.i_crit_edge

if.then.i.i.i.do.body12.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_off() #7
  br label %do.body12.i.i.i.i

do.body12.i.i.i.i:                                ; preds = %if.then.i.i.i.i, %if.then.i.i.i.do.body12.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %39 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body12.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

do.body12.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge: ; preds = %do.body12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %do.body12.i.i.i.i
  %40 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %44 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i2.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i2.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %49, ptrtoint (ptr @lockdep_recursion to i32)
  %50 = inttoptr i32 %add.i.i.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  %53 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i7.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %57 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge

land.rhs.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i.i

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %61 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i9.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %64, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %65 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %68, ptrtoint (ptr @hardirqs_enabled to i32)
  %69 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %72 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i12.i.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i.i

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !62

land.rhs58.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %u64_stats_update_begin_irqsave.exit.i.i.i

u64_stats_update_begin_irqsave.exit.i.i.i:        ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge, %land.rhs22.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge, %land.rhs.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge, %do.body12.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i.i_crit_edge
  %76 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %77, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %37, i32 0, i32 3, i32 0, i32 1
  %78 = call ptr @llvm.returnaddress(i32 0) #7
  %79 = ptrtoint ptr %78 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %79) #7
  %80 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %37, align 8
  %inc.i.i.i.i = add i64 %81, 1
  store i64 %inc.i.i.i.i, ptr %37, align 8
  %nsecs.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %37, i32 0, i32 1
  %call13.i.i.i = call i64 @sched_clock() #7
  %sub.i.i.i = sub i64 %call13.i.i.i, %call3.i.i.i
  %conv.i.i.i.i = and i64 %sub.i.i.i, 4294967295
  %82 = ptrtoint ptr %nsecs.i.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %nsecs.i.i.i, align 8
  %add.i.i.i3.i = add i64 %conv.i.i.i.i, %83
  store i64 %add.i.i.i3.i, ptr %nsecs.i.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %79) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %84 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br i1 %tobool.not.i.i.i.i, label %if.then8.i.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.i.do.body10.i.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.i.do.body10.i.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %u64_stats_update_begin_irqsave.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_on() #7
  br label %do.body10.i.i.i.i

do.body10.i.i.i.i:                                ; preds = %if.then8.i.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.i.do.body10.i.i.i.i_crit_edge
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !65
  %and.i.i.i4.i.i.i = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i.i)
  %tobool18.not.i.i.i.i = icmp eq i32 %and.i.i.i4.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i, label %if.then22.i.i.i.i, label %do.body10.i.i.i.i.u64_stats_update_end_irqrestore.exit.i.i.i_crit_edge, !prof !55

do.body10.i.i.i.i.u64_stats_update_end_irqrestore.exit.i.i.i_crit_edge: ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i.i

if.then22.i.i.i.i:                                ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %u64_stats_update_end_irqrestore.exit.i.i.i

u64_stats_update_end_irqrestore.exit.i.i.i:       ; preds = %if.then22.i.i.i.i, %do.body10.i.i.i.i.u64_stats_update_end_irqrestore.exit.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #7, !srcloc !66
  br label %bpf_prog_run.exit.i

if.else.i.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %insnsi15.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %21, i32 1
  %bpf_func17.i.i.i = getelementptr inbounds %struct.bpf_prog, ptr %21, i32 0, i32 9
  %87 = ptrtoint ptr %bpf_func17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bpf_func17.i.i.i, align 4
  %call.i1.i.i.i = call i32 %88(ptr noundef %bpf_sample, ptr noundef %insnsi15.i.i.i) #7
  br label %bpf_prog_run.exit.i

bpf_prog_run.exit.i:                              ; preds = %if.else.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i.i
  %incdec.ptr.i = getelementptr %struct.bpf_prog_array_item, ptr %item.017.i, i32 1
  %89 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %incdec.ptr.i, align 8
  %tobool22.not.i = icmp eq ptr %90, null
  br i1 %tobool22.not.i, label %bpf_prog_run.exit.i.while.end.i_crit_edge, label %bpf_prog_run.exit.i.while.body.i_crit_edge

bpf_prog_run.exit.i.while.body.i_crit_edge:       ; preds = %bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

bpf_prog_run.exit.i.while.end.i_crit_edge:        ; preds = %bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %bpf_prog_run.exit.i.while.end.i_crit_edge, %if.end14.i.while.end.i_crit_edge
  %91 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i4.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i4.i to ptr
  %task.i5.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task.i5.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task.i5.i, align 8
  %bpf_ctx.i6.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 217
  %95 = ptrtoint ptr %bpf_ctx.i6.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %18, ptr %bpf_ctx.i6.i, align 8
  br label %out.i

out.i:                                            ; preds = %while.end.i, %do.end7.i.out.i_crit_edge
  %call.i7.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i7.i, label %out.i.BPF_PROG_RUN_ARRAY.exit_crit_edge, label %land.lhs.true.i10.i

out.i.BPF_PROG_RUN_ARRAY.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BPF_PROG_RUN_ARRAY.exit

land.lhs.true.i10.i:                              ; preds = %out.i
  %call1.i8.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call1.i8.i, 0
  br i1 %tobool.not.i9.i, label %land.lhs.true.i10.i.BPF_PROG_RUN_ARRAY.exit_crit_edge, label %land.lhs.true2.i12.i

land.lhs.true.i10.i.BPF_PROG_RUN_ARRAY.exit_crit_edge: ; preds = %land.lhs.true.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BPF_PROG_RUN_ARRAY.exit

land.lhs.true2.i12.i:                             ; preds = %land.lhs.true.i10.i
  %.b4.i11.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11.i, label %land.lhs.true2.i12.i.BPF_PROG_RUN_ARRAY.exit_crit_edge, label %if.then.i13.i

land.lhs.true2.i12.i.BPF_PROG_RUN_ARRAY.exit_crit_edge: ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %BPF_PROG_RUN_ARRAY.exit

if.then.i13.i:                                    ; preds = %land.lhs.true2.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %BPF_PROG_RUN_ARRAY.exit

BPF_PROG_RUN_ARRAY.exit:                          ; preds = %if.then.i13.i, %land.lhs.true2.i12.i.BPF_PROG_RUN_ARRAY.exit_crit_edge, %land.lhs.true.i10.i.BPF_PROG_RUN_ARRAY.exit_crit_edge, %out.i.BPF_PROG_RUN_ARRAY.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !67
  %96 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i14.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i14.i to ptr
  %preempt_count.i.i.i.i15.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i15.i, align 4
  %sub.i.i.i.i = add i32 %99, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i15.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @migrate_enable() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %run_ctx.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %array_rcu.addr.i)
  br label %if.end

if.end:                                           ; preds = %BPF_PROG_RUN_ARRAY.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lirc_bpf_free(ptr nocapture noundef readonly %rcdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ir_raw_handler_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @lirc_bpf_free.__warned, align 1
  br i1 %.b16, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lirc_bpf_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %raw = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %progs = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %progs, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %items, align 8
  %tobool8.not17 = icmp eq ptr %5, null
  br i1 %tobool8.not17, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %6 = phi ptr [ %8, %for.body.for.body_crit_edge ], [ %5, %if.end7.for.body_crit_edge ]
  %item.018 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %items, %if.end7.for.body_crit_edge ]
  tail call void @bpf_prog_put(ptr noundef nonnull %6) #7
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %item.018, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr, align 8
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  tail call void @bpf_prog_array_free(ptr noundef nonnull %3) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_array_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lirc_prog_attach(ptr nocapture noundef readonly %attr, ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  %new_array.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attach_flags = getelementptr inbounds %struct.anon.111, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %attach_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attach_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %call = tail call ptr @rc_dev_get_from_fd(i32 noundef %3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_array.i) #7
  %5 = ptrtoint ptr %new_array.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_array.i, align 4, !annotation !53
  %driver_type.i = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %driver_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end4.lirc_bpf_attach.exit_crit_edge

if.end4.lirc_bpf_attach.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %lirc_bpf_attach.exit

if.end.i:                                         ; preds = %if.end4
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @ir_raw_handler_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.lirc_bpf_attach.exit_crit_edge

if.end.i.lirc_bpf_attach.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lirc_bpf_attach.exit

if.end2.i:                                        ; preds = %if.end.i
  %raw3.i = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 11
  %8 = ptrtoint ptr %raw3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %raw3.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.end2.i.unlock.i_crit_edge, label %do.body.i

if.end2.i.unlock.i_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

do.body.i:                                        ; preds = %if.end2.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ir_raw_handler_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b77.i = load i1, ptr @lirc_bpf_attach.__warned, align 1
  br i1 %.b77.i, label %land.lhs.true11.i.do.end.i_crit_edge, label %if.then13.i

land.lhs.true11.i.do.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lirc_bpf_attach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i, %land.lhs.true11.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %progs.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %progs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %progs.i, align 4
  %tobool15.not.i = icmp eq ptr %11, null
  br i1 %tobool15.not.i, label %do.end.i.if.end20.i_crit_edge, label %land.lhs.true16.i

do.end.i.if.end20.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

land.lhs.true16.i:                                ; preds = %do.end.i
  %call17.i = tail call i32 @bpf_prog_array_length(ptr noundef nonnull %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call17.i)
  %cmp18.i = icmp sgt i32 %call17.i, 63
  br i1 %cmp18.i, label %land.lhs.true16.i.unlock.i_crit_edge, label %land.lhs.true16.i.if.end20.i_crit_edge

land.lhs.true16.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

land.lhs.true16.i.unlock.i_crit_edge:             ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

if.end20.i:                                       ; preds = %land.lhs.true16.i.if.end20.i_crit_edge, %do.end.i.if.end20.i_crit_edge
  %call21.i = call i32 @bpf_prog_array_copy(ptr noundef %11, ptr noundef null, ptr noundef %prog, i64 noundef 0, ptr noundef nonnull %new_array.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end20.i.unlock.i_crit_edge, label %do.body25.i

if.end20.i.unlock.i_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

do.body25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %new_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_array.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  %14 = ptrtoint ptr %progs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %progs.i, align 4
  call void @bpf_prog_array_free(ptr noundef %11) #7
  br label %unlock.i

unlock.i:                                         ; preds = %do.body25.i, %if.end20.i.unlock.i_crit_edge, %land.lhs.true16.i.unlock.i_crit_edge, %if.end2.i.unlock.i_crit_edge
  %ret.0.i = phi i32 [ %call21.i, %if.end20.i.unlock.i_crit_edge ], [ %call21.i, %do.body25.i ], [ -19, %if.end2.i.unlock.i_crit_edge ], [ -7, %land.lhs.true16.i.unlock.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ir_raw_handler_lock) #7
  br label %lirc_bpf_attach.exit

lirc_bpf_attach.exit:                             ; preds = %unlock.i, %if.end.i.lirc_bpf_attach.exit_crit_edge, %if.end4.lirc_bpf_attach.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %unlock.i ], [ -22, %if.end4.lirc_bpf_attach.exit_crit_edge ], [ %call.i, %if.end.i.lirc_bpf_attach.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_array.i) #7
  call void @put_device(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %lirc_bpf_attach.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then2 ], [ %retval.0.i, %lirc_bpf_attach.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_dev_get_from_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lirc_prog_detach(ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %new_array.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attach_flags = getelementptr inbounds %struct.anon.111, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %attach_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attach_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach_bpf_fd = getelementptr inbounds %struct.anon.111, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %attach_bpf_fd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attach_bpf_fd, align 4
  %call.i = tail call ptr @bpf_prog_get_type_dev(i32 noundef %3, i32 noundef 20, i1 noundef zeroext false) #7
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr, align 8
  %call5 = tail call ptr @rc_dev_get_from_fd(i32 noundef %6) #7
  %cmp.i22 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bpf_prog_put(ptr noundef %call.i) #7
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_array.i) #7
  %8 = ptrtoint ptr %new_array.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_array.i, align 4, !annotation !53
  %driver_type.i = getelementptr inbounds %struct.rc_dev, ptr %call5, i32 0, i32 13
  %9 = ptrtoint ptr %driver_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end9.lirc_bpf_detach.exit_crit_edge

if.end9.lirc_bpf_detach.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %lirc_bpf_detach.exit

if.end.i:                                         ; preds = %if.end9
  %call.i23 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @ir_raw_handler_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.lirc_bpf_detach.exit_crit_edge

if.end.i.lirc_bpf_detach.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lirc_bpf_detach.exit

if.end2.i:                                        ; preds = %if.end.i
  %raw3.i = getelementptr inbounds %struct.rc_dev, ptr %call5, i32 0, i32 11
  %11 = ptrtoint ptr %raw3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raw3.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %if.end2.i.unlock.i_crit_edge, label %do.body.i

if.end2.i.unlock.i_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

do.body.i:                                        ; preds = %if.end2.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ir_raw_handler_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b69.i = load i1, ptr @lirc_bpf_detach.__warned, align 1
  br i1 %.b69.i, label %land.lhs.true11.i.do.end.i_crit_edge, label %if.then13.i

land.lhs.true11.i.do.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lirc_bpf_detach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i, %land.lhs.true11.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %progs.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %progs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %progs.i, align 4
  %call15.i = call i32 @bpf_prog_array_copy(ptr noundef %14, ptr noundef %call.i, ptr noundef null, i64 noundef 0, ptr noundef nonnull %new_array.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body19.i, label %do.end.i.unlock.i_crit_edge

do.end.i.unlock.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.i

do.body19.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %new_array.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_array.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  %17 = ptrtoint ptr %progs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %progs.i, align 4
  call void @bpf_prog_array_free(ptr noundef %14) #7
  call void @bpf_prog_put(ptr noundef %call.i) #7
  br label %unlock.i

unlock.i:                                         ; preds = %do.body19.i, %do.end.i.unlock.i_crit_edge, %if.end2.i.unlock.i_crit_edge
  %ret.0.i = phi i32 [ %call15.i, %do.end.i.unlock.i_crit_edge ], [ 0, %do.body19.i ], [ -19, %if.end2.i.unlock.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ir_raw_handler_lock) #7
  br label %lirc_bpf_detach.exit

lirc_bpf_detach.exit:                             ; preds = %unlock.i, %if.end.i.lirc_bpf_detach.exit_crit_edge, %if.end9.lirc_bpf_detach.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %unlock.i ], [ -22, %if.end9.lirc_bpf_detach.exit_crit_edge ], [ %call.i23, %if.end.i.lirc_bpf_detach.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_array.i) #7
  call void @bpf_prog_put(ptr noundef %call.i) #7
  call void @put_device(ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %lirc_bpf_detach.exit, %if.then7, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then2 ], [ %7, %if.then7 ], [ %retval.0.i, %lirc_bpf_detach.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lirc_prog_query(ptr nocapture noundef readonly %attr, ptr noundef %uattr) local_unnamed_addr #0 align 64 {
entry:
  %cnt = alloca i32, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prog_ids2 = getelementptr inbounds %struct.anon.116, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %prog_ids2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %prog_ids2, align 8
  %conv3 = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv3 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #7
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cnt, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 4
  %query_flags = getelementptr inbounds %struct.anon.116, ptr %attr, i32 0, i32 2
  %5 = ptrtoint ptr %query_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %query_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 8
  %call = tail call ptr @rc_dev_get_from_fd(i32 noundef %8) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp8.not = icmp eq i32 %11, 1
  br i1 %cmp8.not, label %if.end11, label %if.end7.put_crit_edge

if.end7.put_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %put

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @ir_raw_handler_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body, label %if.end11.put_crit_edge

if.end11.put_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %put

do.body:                                          ; preds = %if.end11
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ir_raw_handler_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true20

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b67 = load i1, ptr @lirc_prog_query.__warned, align 1
  br i1 %.b67, label %land.lhs.true20.do.end_crit_edge, label %if.then22

land.lhs.true20.do.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @lirc_prog_query.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 315, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then22, %land.lhs.true20.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %raw = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 11
  %12 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %raw, align 4
  %progs25 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %progs25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %progs25, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @bpf_prog_array_length(ptr noundef nonnull %15) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %call27, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %16 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %cnt, align 4
  %prog_cnt = getelementptr inbounds %struct.anon.116, ptr %uattr, i32 0, i32 5
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %cond.end.unlock_crit_edge, label %if.end.i.i

cond.end.unlock_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end.i.i:                                       ; preds = %cond.end
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %prog_cnt, i32 4, i32 -1226833920) #10, !srcloc !70
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.unlock_crit_edge

if.end.i.i.unlock_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cnt, i32 noundef 4) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %prog_cnt, ptr noundef nonnull %cnt, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool29.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool29.not, label %if.end31, label %copy_to_user.exit.unlock_crit_edge

copy_to_user.exit.unlock_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end31:                                         ; preds = %copy_to_user.exit
  %attach_flags = getelementptr inbounds %struct.anon.116, ptr %uattr, i32 0, i32 3
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #7
  %call.i.i70 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i70, label %if.end31.unlock_crit_edge, label %if.end.i.i74

if.end31.unlock_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end.i.i74:                                     ; preds = %if.end31
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %attach_flags, i32 4, i32 -1226833920) #10, !srcloc !70
  %asmresult.i.i72 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i72)
  %cmp.i.i73 = icmp eq i32 %asmresult.i.i72, 0
  br i1 %cmp.i.i73, label %copy_to_user.exit79, label %if.end.i.i74.unlock_crit_edge

if.end.i.i74.unlock_crit_edge:                    ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

copy_to_user.exit79:                              ; preds = %if.end.i.i74
  %call.i.i.i75 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %flags, i32 noundef 4) #7
  %call.i1.i.i76 = call i32 @arm_copy_to_user(ptr noundef %attach_flags, ptr noundef nonnull %flags, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i76)
  %tobool33.not = icmp eq i32 %call.i1.i.i76, 0
  br i1 %tobool33.not, label %if.end35, label %copy_to_user.exit79.unlock_crit_edge

copy_to_user.exit79.unlock_crit_edge:             ; preds = %copy_to_user.exit79
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end35:                                         ; preds = %copy_to_user.exit79
  %prog_cnt36 = getelementptr inbounds %struct.anon.116, ptr %attr, i32 0, i32 5
  %19 = ptrtoint ptr %prog_cnt36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prog_cnt36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp37.not = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool40.not = icmp eq i32 %conv3, 0
  %or.cond = select i1 %cmp37.not, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %if.end35.unlock_crit_edge, label %land.lhs.true41

if.end35.unlock_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true41:                                  ; preds = %if.end35
  %21 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool42.not = icmp eq i32 %22, 0
  br i1 %tobool42.not, label %land.lhs.true41.unlock_crit_edge, label %if.then43

land.lhs.true41.unlock_crit_edge:                 ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call i32 @bpf_prog_array_copy_to_user(ptr noundef %15, ptr noundef nonnull %2, i32 noundef %20) #7
  br label %unlock

unlock:                                           ; preds = %if.then43, %land.lhs.true41.unlock_crit_edge, %if.end35.unlock_crit_edge, %copy_to_user.exit79.unlock_crit_edge, %if.end.i.i74.unlock_crit_edge, %if.end31.unlock_crit_edge, %copy_to_user.exit.unlock_crit_edge, %if.end.i.i.unlock_crit_edge, %cond.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call45, %if.then43 ], [ 0, %land.lhs.true41.unlock_crit_edge ], [ 0, %if.end35.unlock_crit_edge ], [ -14, %copy_to_user.exit.unlock_crit_edge ], [ -14, %copy_to_user.exit79.unlock_crit_edge ], [ -14, %cond.end.unlock_crit_edge ], [ -14, %if.end.i.i.unlock_crit_edge ], [ -14, %if.end31.unlock_crit_edge ], [ -14, %if.end.i.i74.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ir_raw_handler_lock) #7
  br label %put

put:                                              ; preds = %unlock, %if.end11.put_crit_edge, %if.end7.put_crit_edge
  %ret.1 = phi i32 [ %call12, %if.end11.put_crit_edge ], [ %ret.0, %unlock ], [ -22, %if.end7.put_crit_edge ]
  call void @put_device(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %put, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then5 ], [ %ret.1, %put ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_get_trace_printk_proto() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_array_copy(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !32, !34, !36, !38, !39, !41}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @lirc_mode2_prog_ops, !1, !"lirc_mode2_prog_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/bpf-lirc.c", i32 17, i32 27}
!2 = !{ptr @lirc_mode2_verifier_ops, !3, !"lirc_mode2_verifier_ops", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/bpf-lirc.c", i32 130, i32 31}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/bpf-lirc.c", i32 234, i32 10}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/media/rc/bpf-lirc.c", i32 315, i32 10}
!10 = !{ptr @rc_repeat_proto, !11, !"rc_repeat_proto", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/bpf-lirc.c", i32 31, i32 36}
!12 = !{ptr @rc_keydown_proto, !13, !"rc_keydown_proto", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/bpf-lirc.c", i32 50, i32 36}
!14 = !{ptr @rc_pointer_rel_proto, !15, !"rc_pointer_rel_proto", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/bpf-lirc.c", i32 73, i32 36}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/bpf.h", i32 1356, i32 10}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/filter.h", i32 613, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/bpf-lirc.c", i32 157, i32 14}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/bpf-lirc.c", i32 195, i32 14}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{i64 2149681279}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2149251284, i64 2149251289, i64 2149251302, i64 2149251346, i64 2149251380, i64 2149251401}
!57 = !{i64 1093658, i64 1093719}
!58 = !{i64 2150049456}
!59 = !{i64 2150054388}
!60 = !{i64 2150076100}
!61 = !{i64 2150080992}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2150161510}
!64 = !{i64 2150161835}
!65 = !{i64 1096390}
!66 = !{i64 1096675}
!67 = !{i64 2149681545}
!68 = !{i64 2157228912}
!69 = !{i64 2157237240}
!70 = !{i64 2153321586, i64 2153321611}
